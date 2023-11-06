Return-Path: <devicetree+bounces-14199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E967E2A91
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:02:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54E23B20CAE
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD97129415;
	Mon,  6 Nov 2023 17:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gCOXWxg/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1211A15AF2
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 17:02:19 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4025A191
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:02:18 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-507973f3b65so6265770e87.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 09:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699290136; x=1699894936; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ONrkCNODdlggpLA5mWEcjOQapfgKfPxTrYxnVyq0KIA=;
        b=gCOXWxg/C2HU/XiLxZpUvINvwvJtFwDM4OMQLVnGU4vbrvrMR8gpVlsuMhyhkN5TH0
         y9i3t/kjZ6PjT8lufCBdGlhJHLVKq9d0YGettdhXdhnI1fqeS0qg+dOd4CVm8eaEmTr0
         gnhfZ9HdLDoQrZ0rVstWaF6gQ5+VrRUya9xpE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699290136; x=1699894936;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ONrkCNODdlggpLA5mWEcjOQapfgKfPxTrYxnVyq0KIA=;
        b=SKQcyYqQi3nwSmTzlAy++6KmEgY1dUI3Fink74jQxTUS9YHi+lIgrVF8oKVZFlP4Qb
         tV2amBtikTIA3MQfkVm8thCDzlDWugpH0PygtPvlurIVjT/oRDrtwoa6P5w8dMIJjiPc
         R27kOx+ZUqJXrFzWsCiInUnyOvMAr8Ai4U2NQoCUQ4Tiv9xeGziy5Rs1oGUd+tqNuv3U
         Wp1/vAWfTDvVV2FwRyfqTV/IE7DrD2ewRZRoykTE0i7mbnY8wDBErFCKYbeY/BIaLdmP
         47fh6CLgh5meWMy5mamTYRyRO3ByUogrcIr8IJ++nwyGN8+/uJJk7xVmGMx1XbzswEfa
         P1FA==
X-Gm-Message-State: AOJu0YyK9AjwaQlWipS/i8AOkqz0WlzqynFCKLkKqkDK9eOMSOGKN8mu
	E3Own4B0OJYGV1nYsmJAKzXEci/uJ4IEZ0GTzzxp6IZb
X-Google-Smtp-Source: AGHT+IFD70MLhYYJebdmfL57HRlmJPdhYrNJWXTud3awD3sVOSWF04mwu8DP9Kz89wHg/7//FEUQUg==
X-Received: by 2002:a05:6512:3287:b0:500:aed0:cb1b with SMTP id p7-20020a056512328700b00500aed0cb1bmr22919339lfe.24.1699290135772;
        Mon, 06 Nov 2023 09:02:15 -0800 (PST)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004f85d80ca64sm25499lfp.221.2023.11.06.09.02.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Nov 2023 09:02:15 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-507c9305727so6003e87.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 09:02:15 -0800 (PST)
X-Received: by 2002:a05:600c:4c19:b0:3f6:f4b:d4a6 with SMTP id
 d25-20020a05600c4c1900b003f60f4bd4a6mr146334wmp.7.1699289651347; Mon, 06 Nov
 2023 08:54:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231103105440.23904-1-quic_anshar@quicinc.com>
In-Reply-To: <20231103105440.23904-1-quic_anshar@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 6 Nov 2023 08:53:59 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XOyHr9hNA0gEdssGz5qqyXHU75K9TUH3HSHK3+jpfswg@mail.gmail.com>
Message-ID: <CAD=FV=XOyHr9hNA0gEdssGz5qqyXHU75K9TUH3HSHK3+jpfswg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add capacity and DPC properties
To: Ankit Sharma <quic_anshar@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, agross@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_ashayj@quicinc.com, 
	quic_atulpant@quicinc.com, quic_rgottimu@quicinc.com, 
	quic_shashim@quicinc.com, quic_pkondeti@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 3, 2023 at 3:54=E2=80=AFAM Ankit Sharma <quic_anshar@quicinc.co=
m> wrote:
>
> The "capacity-dmips-mhz" and "dynamic-power-coefficient" are
> used to build Energy Model which in turn is used by EAS to take
> placement decisions. So add it to SC7280 soc.
>
> Signed-off-by: Ankit Sharma <quic_anshar@quicinc.com>
> ---
> changes in v2: https://lore.kernel.org/all/20231103095358.29312-1-quic_an=
shar@quicinc.com/
>  - updated commit message and subject.
>
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/q=
com/sc7280.dtsi
> index 8601253aec70..b1890824188c 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -176,6 +176,8 @@
>                                            &CLUSTER_SLEEP_0>;
>                         next-level-cache =3D <&L2_0>;
>                         operating-points-v2 =3D <&cpu0_opp_table>;
> +                       capacity-dmips-mhz =3D <1024>;
> +                       dynamic-power-coefficient =3D <100>;
>                         interconnects =3D <&gem_noc MASTER_APPSS_PROC 3 &=
mc_virt SLAVE_EBI1 3>,
>                                         <&epss_l3 MASTER_EPSS_L3_APPS &ep=
ss_l3 SLAVE_EPSS_L3_SHARED>;
>                         qcom,freq-domain =3D <&cpufreq_hw 0>;
> @@ -204,6 +206,8 @@
>                                            &CLUSTER_SLEEP_0>;
>                         next-level-cache =3D <&L2_100>;
>                         operating-points-v2 =3D <&cpu0_opp_table>;
> +                       capacity-dmips-mhz =3D <1024>;
> +                       dynamic-power-coefficient =3D <100>;
>                         interconnects =3D <&gem_noc MASTER_APPSS_PROC 3 &=
mc_virt SLAVE_EBI1 3>,
>                                         <&epss_l3 MASTER_EPSS_L3_APPS &ep=
ss_l3 SLAVE_EPSS_L3_SHARED>;
>                         qcom,freq-domain =3D <&cpufreq_hw 0>;
> @@ -227,6 +231,8 @@
>                                            &CLUSTER_SLEEP_0>;
>                         next-level-cache =3D <&L2_200>;
>                         operating-points-v2 =3D <&cpu0_opp_table>;
> +                       capacity-dmips-mhz =3D <1024>;
> +                       dynamic-power-coefficient =3D <100>;
>                         interconnects =3D <&gem_noc MASTER_APPSS_PROC 3 &=
mc_virt SLAVE_EBI1 3>,
>                                         <&epss_l3 MASTER_EPSS_L3_APPS &ep=
ss_l3 SLAVE_EPSS_L3_SHARED>;
>                         qcom,freq-domain =3D <&cpufreq_hw 0>;
> @@ -250,6 +256,8 @@
>                                            &CLUSTER_SLEEP_0>;
>                         next-level-cache =3D <&L2_300>;
>                         operating-points-v2 =3D <&cpu0_opp_table>;
> +                       capacity-dmips-mhz =3D <1024>;
> +                       dynamic-power-coefficient =3D <100>;
>                         interconnects =3D <&gem_noc MASTER_APPSS_PROC 3 &=
mc_virt SLAVE_EBI1 3>,
>                                         <&epss_l3 MASTER_EPSS_L3_APPS &ep=
ss_l3 SLAVE_EPSS_L3_SHARED>;
>                         qcom,freq-domain =3D <&cpufreq_hw 0>;
> @@ -273,6 +281,8 @@
>                                            &CLUSTER_SLEEP_0>;
>                         next-level-cache =3D <&L2_400>;
>                         operating-points-v2 =3D <&cpu4_opp_table>;
> +                       capacity-dmips-mhz =3D <1946>;

Though I don't think it's technically required, in other systems
(including the examples in the documentation) the biggest CPU gets
1024 "capacity-dmips-mhz" and the other ones are scaled to that.


> +                       dynamic-power-coefficient =3D <520>;
>                         interconnects =3D <&gem_noc MASTER_APPSS_PROC 3 &=
mc_virt SLAVE_EBI1 3>,
>                                         <&epss_l3 MASTER_EPSS_L3_APPS &ep=
ss_l3 SLAVE_EPSS_L3_SHARED>;
>                         qcom,freq-domain =3D <&cpufreq_hw 1>;
> @@ -296,6 +306,8 @@
>                                            &CLUSTER_SLEEP_0>;
>                         next-level-cache =3D <&L2_500>;
>                         operating-points-v2 =3D <&cpu4_opp_table>;
> +                       capacity-dmips-mhz =3D <1946>;
> +                       dynamic-power-coefficient =3D <520>;
>                         interconnects =3D <&gem_noc MASTER_APPSS_PROC 3 &=
mc_virt SLAVE_EBI1 3>,
>                                         <&epss_l3 MASTER_EPSS_L3_APPS &ep=
ss_l3 SLAVE_EPSS_L3_SHARED>;
>                         qcom,freq-domain =3D <&cpufreq_hw 1>;
> @@ -319,6 +331,8 @@
>                                            &CLUSTER_SLEEP_0>;
>                         next-level-cache =3D <&L2_600>;
>                         operating-points-v2 =3D <&cpu4_opp_table>;
> +                       capacity-dmips-mhz =3D <1946>;
> +                       dynamic-power-coefficient =3D <520>;
>                         interconnects =3D <&gem_noc MASTER_APPSS_PROC 3 &=
mc_virt SLAVE_EBI1 3>,
>                                         <&epss_l3 MASTER_EPSS_L3_APPS &ep=
ss_l3 SLAVE_EPSS_L3_SHARED>;
>                         qcom,freq-domain =3D <&cpufreq_hw 1>;
> @@ -342,6 +356,8 @@
>                                            &CLUSTER_SLEEP_0>;
>                         next-level-cache =3D <&L2_700>;
>                         operating-points-v2 =3D <&cpu7_opp_table>;
> +                       capacity-dmips-mhz =3D <1985>;
> +                       dynamic-power-coefficient =3D <552>;

The fact that cpu7 has different values for capacity-dmips-mhz and
dynamic-power-coefficient is surprising to me. I think what this means
is that at the same MHz this core can process more instructions than
the other big CPUs but that (at the same MHz) it burns more power
doing so. Is that really true? I thought that this core was
essentially the same as the other big cores but was simply anointed to
be able to run a little faster.


-Doug

