package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public final class ${className}Fragment extends BaseFragment implements ${className}Contract.View{

    private ${className}Contract.Presenter mPresenter;

    // Your presenter is available using the mPresenter variable
    public ${className}Fragment()
    {
        // Required empty public constructor
    }

    public static ${className}Fragment newInstance() {
        return new ${className}Fragment();
    }

    @Override
    public void setPresenter(${className}Contract.Presenter presenter) {
        this.mPresenter = presenter;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        return inflater.inflate(R.layout.${fragmentLayoutName}_layout, container, false);
    }

    /**
     * This interface must be implemented by activities that contain this
     * fragment to allow an interaction in this fragment to be communicated
     * to the activity and potentially other fragments contained in that
     * activity.
     * <p>
     * See the Android Training lesson <a href=
     * "http://developer.android.com/training/basics/fragments/communicating.html"
     * >Communicating with Other Fragments</a> for more information.
     */
    public interface On${className}FragmentInteractionListener {
        // TODO: Update argument type and name
        void on${className}FragmentInteraction();
    }
}
