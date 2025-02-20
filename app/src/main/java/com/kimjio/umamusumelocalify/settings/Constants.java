package com.kimjio.umamusumelocalify.settings;

import java.util.List;

public final class Constants {
    public static final String PREF_NAME = "pref_settings";

    public static final String PKG_JAP = "jp.co.cygames.umamusume";
    public static final String PKG_JAP_PCR_GM = "jp.co.cygames.priconnegrandmasters";
    public static final String PKG_KOR = "com.kakaogames.umamusume";
    public static final String PKG_TWN_GOOGLE = "com.komoe.kmumamusumegp";
    public static final String PKG_TWN_MY_CARD = "com.komoe.kmumamusumemc";
    public static final String PKG_TWN_OFFICIAL = "com.komoe.umamusumeofficial";
    public static final String PKG_CHN_BILI = "com.bilibili.umamusu";

    public static final List<String> targetPackageNames = List.of(
            PKG_JAP,
            PKG_JAP_PCR_GM,
            PKG_KOR,
            PKG_TWN_GOOGLE,
            PKG_TWN_MY_CARD,
            PKG_TWN_OFFICIAL,
            PKG_CHN_BILI
            // TODO Package by region
    );
}
