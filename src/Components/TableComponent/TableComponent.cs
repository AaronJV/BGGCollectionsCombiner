using System.Collections.Generic;
using Microsoft.AspNetCore.Components;

namespace BGGCollections.Components.TableComponent {
    public delegate RenderFragment ColumnDisplay<T>(object val, T row);
    public class TableColumn<T> {
        public string Field { get; set; }
        public string Display { get; set; }
        public bool Sortable { get; set; } = false;
        public ColumnDisplay<T> DisplayFunc;

    }

    public class TableData<T> {
        public IEnumerable<TableColumn<T>> Columns;
        public IEnumerable<T> Rows; 
    }
}