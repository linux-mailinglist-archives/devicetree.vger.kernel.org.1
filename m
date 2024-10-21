Return-Path: <devicetree+bounces-113431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C31F29A594E
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 05:45:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2296FB229E9
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 03:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C41208A9;
	Mon, 21 Oct 2024 03:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NmWdDzTq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B89414A90
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 03:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729482352; cv=none; b=FcrFV6CI+Rz4xtYfe1GSrejlFD0T6phc67JoQz4MIsmstBqDLFTqoNI2sGoj/kkHfnzKbuKbtT0bddF5Z26qzSWW2wCNo9Fr6iD/b4zfYknqNERGPj6BLg/Vr6xIPBnIyAZdlhWLTURkH1t3Bhir0Gq/NpCGyUlp5cra0Sfsgs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729482352; c=relaxed/simple;
	bh=48iY/6ng3rTzT7U04tDz7oSoPrX/GbikNPGW32/rZAA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=as5A4DrrkKS4KQM4s5K5/2KUv5DX5ANhxKuR8DtXIWvSH4QsX7hFehbXyGcAL71Aav59pH4SNKfMZ4uSv+59/Xu4TTAY8fxfCdDuhTXmPGRYu8NauM2nTjkC6++SPBHlXDszNiM4h1ikOHgLpexz3ZbbYfd2EVvKOTJbDaUqAfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NmWdDzTq; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539e13375d3so4240672e87.3
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2024 20:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729482348; x=1730087148; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=89Lxjo33WwYCyROnc52VTFVbjS1T4gfA10xmJgnrxhg=;
        b=NmWdDzTqrJPsSNZtkgBY9I+4vBcVXDRTTUWPhSX0V0hpX+7zIz1bjqYe/xA73bpaEA
         h3unMx/ThOT5iczvngGbgPBDvG4BXSTt7uL+L7uQi4MuoGECYtoiA3391ShWi8cDJvns
         g1WbMfwluIsCAqhNtoWrqiU/+FwFJE+Z6WKA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729482348; x=1730087148;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=89Lxjo33WwYCyROnc52VTFVbjS1T4gfA10xmJgnrxhg=;
        b=t4cPEBDLeGqSIHO3iJ8XSbYOfvwO8vl9YSdZU2CYdzzEhq7lHpZybCkOPFVF4FIgLI
         LdIVD/ZT5zcB8mdY4Y+wPboqinPP86Xom/k47Q/0uJLNAuN9QtqvH0gRmTcfxUXzdSH5
         DkPWAPDYlbX2rcPSU6OWrKPdOAL//aAZFGeLQwEYLUOzLQsCaSpe7/HNMdF4XxZ/DT1E
         6HGp4HhBlLAY51KvIvB+UGKupE8k4KqdvoDN8A0PbgkFc9ZxtSvqh22XmPRe21mvvf8j
         EAVuGqLsXMpuItqsCnuvPYzo9E/00xsgNPx1I/+cBHiDhSMwR1CAVR645BrjudrLwcFw
         vowQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQbQjxSpytc/GuKopkBkbP+HNO4z2T93Ksr+fyRtdTRsfBw23chs6TCk8dlzNBzp28myuWw4DnZ4XY@vger.kernel.org
X-Gm-Message-State: AOJu0YxzJ7m5mpgjFghlHFzN8OEShQ8yr8HuB6ZIrZySHnvUyHgZCVQR
	4bRvJZS27MZnbWJ0zRJRR4i5DBkVJQ0969/Lrx3AHVk7SIidTZ6fUOWbGIi+GODIJo+wez3ZKCR
	T3At2Zj5XfMD7+k8DcT6j1FhkPBEWa6boQ3wc
X-Google-Smtp-Source: AGHT+IFr3BTScNBvrlXGBOGqM+cE1Teqf7FcPXjAUV8dGB205MgAEef5pC1n9sNjZsWzyh87run40PkmJjJ9p+SS0Hs=
X-Received: by 2002:a05:6512:3b93:b0:539:fb49:c48e with SMTP id
 2adb3069b0e04-53a15441716mr4720141e87.11.1729482347886; Sun, 20 Oct 2024
 20:45:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241018094234.2633366-1-jakiela@google.com>
In-Reply-To: <20241018094234.2633366-1-jakiela@google.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 21 Oct 2024 11:45:36 +0800
Message-ID: <CAGXv+5G2kc5vkAuMC2JqLRSdjCeHMCpu8_E7DccJd2VoCqY1VQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8186: Update regulators voltages
To: =?UTF-8?Q?Albert_Jakie=C5=82a?= <jakiela@google.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2024 at 5:44=E2=80=AFPM Albert Jakie=C5=82a <jakiela@google=
.com> wrote:
>
> Update minimum and maximum voltages and add
> missing regulators.
>
> Signed-off-by: Albert Jakie=C5=82a <jakiela@google.com>
> ---
>  .../boot/dts/mediatek/mt8186-corsola.dtsi     | 107 +++++++++++-------
>  1 file changed, 63 insertions(+), 44 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm6=
4/boot/dts/mediatek/mt8186-corsola.dtsi
> index 682c6ad2574d..62158eac45d0 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> @@ -1302,8 +1302,8 @@ mt6366_regulators: regulators {
>
>                         vcore {
>                                 regulator-name =3D "pp0750_dvdd_core";
> -                               regulator-min-microvolt =3D <550000>;
> -                               regulator-max-microvolt =3D <800000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1293750>;

No. The voltage range has been correctly limited to the consumer's range.
The voltage constraints are supposed to be the voltage range supported
by all its consumers, not what the regulator can actually provide. The
latter is already implied by the compatible string and the regulator
node name.

>                                 regulator-ramp-delay =3D <6250>;
>                                 regulator-enable-ramp-delay =3D <200>;
>                                 regulator-allowed-modes =3D <MT6397_BUCK_=
MODE_AUTO
> @@ -1313,8 +1313,8 @@ vcore {
>
>                         mt6366_vdram1_reg: vdram1 {
>                                 regulator-name =3D "pp1125_emi_vdd2";
> -                               regulator-min-microvolt =3D <1125000>;
> -                               regulator-max-microvolt =3D <1125000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <2087500>;

Same thing about the voltage ranges.

>                                 regulator-ramp-delay =3D <12500>;
>                                 regulator-enable-ramp-delay =3D <0>;
>                                 regulator-allowed-modes =3D <MT6397_BUCK_=
MODE_AUTO
> @@ -1322,6 +1322,16 @@ mt6366_vdram1_reg: vdram1 {
>                                 regulator-always-on;
>                         };
>
> +                       mt6366_vpa_reg: vpa {
> +                               regulator-name =3D "ppvar_dvdd_vpa";
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <3650000>;
> +                               regulator-ramp-delay =3D <50000>;
> +                               regulator-enable-ramp-delay =3D <250>;
> +                               regulator-allowed-modes =3D <MT6397_BUCK_=
MODE_AUTO
> +                                                          MT6397_BUCK_MO=
DE_FORCE_PWM>;
> +                       };
> +

This regulator is not used in the design and was purposefully omitted
when the board was upstreamed.

>                         mt6366_vgpu_reg: vgpu {
>                                 /*
>                                  * Called "ppvar_dvdd_gpu" in the schemat=
ic.
> @@ -1330,19 +1340,17 @@ mt6366_vgpu_reg: vgpu {
>                                  */
>                                 regulator-name =3D "ppvar_dvdd_vgpu";
>                                 regulator-min-microvolt =3D <500000>;
> -                               regulator-max-microvolt =3D <950000>;
> +                               regulator-max-microvolt =3D <1293750>;

Why? The datasheet has a lower value and the OPPs only go up to 0.95V.

>                                 regulator-ramp-delay =3D <6250>;
>                                 regulator-enable-ramp-delay =3D <200>;
>                                 regulator-allowed-modes =3D <MT6397_BUCK_=
MODE_AUTO
>                                                            MT6397_BUCK_MO=
DE_FORCE_PWM>;
> -                               regulator-coupled-with =3D <&mt6366_vsram=
_gpu_reg>;
> -                               regulator-coupled-max-spread =3D <10000>;

Definitely not. Please read

    https://lore.kernel.org/all/20230301095523.428461-1-angelogioacchino.de=
lregno@collabora.com/

and understand that things have been solved differently compared to the
ChromeOS downstream kernel.

>                         };
>
>                         mt6366_vproc11_reg: vproc11 {
>                                 regulator-name =3D "ppvar_dvdd_proc_bc_mt=
6366";
> -                               regulator-min-microvolt =3D <600000>;
> -                               regulator-max-microvolt =3D <1200000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1293750>;

Same thing about the voltage ranges.

>                                 regulator-ramp-delay =3D <6250>;
>                                 regulator-enable-ramp-delay =3D <200>;
>                                 regulator-allowed-modes =3D <MT6397_BUCK_=
MODE_AUTO
> @@ -1352,8 +1360,8 @@ mt6366_vproc11_reg: vproc11 {
>
>                         mt6366_vproc12_reg: vproc12 {
>                                 regulator-name =3D "ppvar_dvdd_proc_lc";
> -                               regulator-min-microvolt =3D <600000>;
> -                               regulator-max-microvolt =3D <1200000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1293750>;

Same thing about the voltage ranges.

>                                 regulator-ramp-delay =3D <6250>;
>                                 regulator-enable-ramp-delay =3D <200>;
>                                 regulator-allowed-modes =3D <MT6397_BUCK_=
MODE_AUTO
> @@ -1361,10 +1369,21 @@ mt6366_vproc12_reg: vproc12 {
>                                 regulator-always-on;
>                         };
>
> +                       mt6366_vmodem_reg: vmodem {
> +                               regulator-name =3D "ppvar_vmodem";
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1293750>;
> +                               regulator-ramp-delay =3D <6250>;
> +                               regulator-enable-ramp-delay =3D <900>;
> +                               regulator-allowed-modes =3D <MT6397_BUCK_=
MODE_AUTO
> +                                                          MT6397_BUCK_MO=
DE_FORCE_PWM>;
> +                               regulator-always-on;
> +                       };
> +

This regulator is not used in the design and was purposefully omitted
when the board was upstreamed.

>                         mt6366_vs1_reg: vs1 {
>                                 regulator-name =3D "pp2000_vs1";
> -                               regulator-min-microvolt =3D <2000000>;
> -                               regulator-max-microvolt =3D <2000000>;
> +                               regulator-min-microvolt =3D <1000000>;
> +                               regulator-max-microvolt =3D <2587500>;

Same thing about the voltage ranges.

>                                 regulator-ramp-delay =3D <12500>;
>                                 regulator-enable-ramp-delay =3D <0>;
>                                 regulator-always-on;
> @@ -1372,8 +1391,8 @@ mt6366_vs1_reg: vs1 {
>
>                         mt6366_vs2_reg: vs2 {
>                                 regulator-name =3D "pp1350_vs2";
> -                               regulator-min-microvolt =3D <1350000>;
> -                               regulator-max-microvolt =3D <1350000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <2087500>;

Same thing about the voltage ranges. Furthermore, the power rail says
"pp1350", which is a big hint why this change is wrong.

>                                 regulator-ramp-delay =3D <12500>;
>                                 regulator-enable-ramp-delay =3D <0>;
>                                 regulator-always-on;
> @@ -1397,7 +1416,7 @@ mt6366_vaud28_reg: vaud28 {
>                         mt6366_vaux18_reg: vaux18 {
>                                 regulator-name =3D "pp1840_vaux18";
>                                 regulator-min-microvolt =3D <1800000>;
> -                               regulator-max-microvolt =3D <1840000>;
> +                               regulator-max-microvolt =3D <1800000>;

The correct voltage is 1.84 V, however since earlier kernels did not
support the 0.01 steps, the minimum was kept at 1.8V. The 0.04V offset
is set either by bootloader or is the hardware default.

>                                 regulator-enable-ramp-delay =3D <270>;
>                         };
>
> @@ -1410,8 +1429,8 @@ mt6366_vbif28_reg: vbif28 {
>
>                         mt6366_vcn18_reg: vcn18 {
>                                 regulator-name =3D "pp1800_vcn18_x";
> -                               regulator-min-microvolt =3D <1800000>;
> -                               regulator-max-microvolt =3D <1800000>;
> +                               regulator-min-microvolt =3D <600000>;
> +                               regulator-max-microvolt =3D <2100000>;

Same thing about the voltage ranges. Furthermore, the power rail
says "pp1800", which is a big hint why this change is wrong.

>                                 regulator-enable-ramp-delay =3D <270>;
>                         };
>
> @@ -1424,8 +1443,8 @@ mt6366_vcn28_reg: vcn28 {
>
>                         mt6366_vefuse_reg: vefuse {
>                                 regulator-name =3D "pp1800_vefuse";
> -                               regulator-min-microvolt =3D <1800000>;
> -                               regulator-max-microvolt =3D <1800000>;
> +                               regulator-min-microvolt =3D <1700000>;
> +                               regulator-max-microvolt =3D <1900000>;

Same thing about the voltage ranges.

>                                 regulator-enable-ramp-delay =3D <270>;
>                         };
>
> @@ -1438,15 +1457,15 @@ mt6366_vfe28_reg: vfe28 {
>
>                         mt6366_vemc_reg: vemc {
>                                 regulator-name =3D "pp3000_vemc";
> -                               regulator-min-microvolt =3D <3000000>;
> -                               regulator-max-microvolt =3D <3000000>;
> +                               regulator-min-microvolt =3D <2900000>;
> +                               regulator-max-microvolt =3D <3300000>;

Same thing about the voltage ranges. Furthermore, the power rail
says "pp3000", which is a big hint why this change is wrong.

>                                 regulator-enable-ramp-delay =3D <60>;
>                         };
>
>                         mt6366_vibr_reg: vibr {
>                                 regulator-name =3D "pp2800_vibr_x";
> -                               regulator-min-microvolt =3D <2800000>;
> -                               regulator-max-microvolt =3D <2800000>;
> +                               regulator-min-microvolt =3D <1200000>;
> +                               regulator-max-microvolt =3D <3300000>;

Same thing about the voltage ranges. Furthermore, the power rail
says "pp2800", which is a big hint why this change is wrong.

>                                 regulator-enable-ramp-delay =3D <60>;
>                         };
>
> @@ -1482,30 +1501,30 @@ mt6366_vmc_reg: vmc {
>
>                         mt6366_vmddr_reg: vmddr {
>                                 regulator-name =3D "pm0750_emi_vmddr";
> -                               regulator-min-microvolt =3D <700000>;
> -                               regulator-max-microvolt =3D <750000>;
> +                               regulator-min-microvolt =3D <600000>;
> +                               regulator-max-microvolt =3D <2100000>;

Same thing about the voltage ranges.

>                                 regulator-enable-ramp-delay =3D <325>;
>                                 regulator-always-on;
>                         };
>
>                         mt6366_vmch_reg: vmch {
>                                 regulator-name =3D "pp3000_vmch";
> -                               regulator-min-microvolt =3D <3000000>;
> -                               regulator-max-microvolt =3D <3000000>;
> +                               regulator-min-microvolt =3D <2900000>;
> +                               regulator-max-microvolt =3D <3300000>;

Same thing about the voltage ranges. Furthermore, the power rail
says "pp3000", which is a big hint why this change is wrong.

>                                 regulator-enable-ramp-delay =3D <60>;
>                         };
>
>                         mt6366_vcn33_reg: vcn33 {
>                                 regulator-name =3D "pp3300_vcn33_x";
>                                 regulator-min-microvolt =3D <3300000>;
> -                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-max-microvolt =3D <3500000>;

Same thing about the voltage ranges. Furthermore, the power rail
says "pp3300", which is a big hint why this change is wrong.

>                                 regulator-enable-ramp-delay =3D <270>;
>                         };
>
>                         vdram2 {
>                                 regulator-name =3D "pp0600_emi_vddq";
>                                 regulator-min-microvolt =3D <600000>;
> -                               regulator-max-microvolt =3D <600000>;
> +                               regulator-max-microvolt =3D <1800000>;

Same thing about the voltage ranges. Furthermore, the power rail
says "pp0600", which is a big hint why this change is wrong.

>                                 regulator-enable-ramp-delay =3D <3300>;
>                                 regulator-always-on;
>                         };
> @@ -1518,6 +1537,7 @@ mt6366_vrf12_reg: vrf12 {
>                         };
>
>                         mt6366_vrf18_reg: vrf18 {
> +                               compatible =3D "regulator-fixed";

No. This is incorrect.

>                                 regulator-name =3D "pp1800_vrf18_x";
>                                 regulator-min-microvolt =3D <1800000>;
>                                 regulator-max-microvolt =3D <1800000>;
> @@ -1526,8 +1546,8 @@ mt6366_vrf18_reg: vrf18 {
>
>                         vsim1 {
>                                 regulator-name =3D "pp1860_vsim1_x";
> -                               regulator-min-microvolt =3D <1800000>;
> -                               regulator-max-microvolt =3D <1860000>;
> +                               regulator-min-microvolt =3D <1700000>;
> +                               regulator-max-microvolt =3D <3100000>;

The correct voltage is 1.86 V, however since earlier kernels did not
support the 0.01 steps, the minimum was kept at 1.8V. The 0.06V offset
is set either by bootloader or is the hardware default.

>                                 regulator-enable-ramp-delay =3D <540>;
>                         };
>
> @@ -1540,18 +1560,17 @@ mt6366_vsim2_reg: vsim2 {
>
>                         mt6366_vsram_gpu_reg: vsram-gpu {
>                                 regulator-name =3D "pp0900_dvdd_sram_gpu"=
;
> -                               regulator-min-microvolt =3D <850000>;
> -                               regulator-max-microvolt =3D <1050000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1293750>;

Same thing about the voltage ranges.

>                                 regulator-ramp-delay =3D <6250>;
>                                 regulator-enable-ramp-delay =3D <240>;
> -                               regulator-coupled-with =3D <&mt6366_vgpu_=
reg>;
> -                               regulator-coupled-max-spread =3D <10000>;
> +                               regulator-always-on;

No and no. See above about why it is coupled, and there is no need to
keep the GPU always on.

>                         };
>
>                         mt6366_vsram_others_reg: vsram-others {
>                                 regulator-name =3D "pp0900_dvdd_sram_core=
";
> -                               regulator-min-microvolt =3D <900000>;
> -                               regulator-max-microvolt =3D <900000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1293750>;

Same thing about the voltage ranges. Furthermore, the power rail
says "pp0900", which is a big hint why this change is wrong.

>                                 regulator-ramp-delay =3D <6250>;
>                                 regulator-enable-ramp-delay =3D <240>;
>                                 regulator-always-on;
> @@ -1559,8 +1578,8 @@ mt6366_vsram_others_reg: vsram-others {
>
>                         mt6366_vsram_proc11_reg: vsram-proc11 {
>                                 regulator-name =3D "pp0900_dvdd_sram_bc";
> -                               regulator-min-microvolt =3D <850000>;
> -                               regulator-max-microvolt =3D <1120000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1293750>;

Same thing about the voltage ranges.

>                                 regulator-ramp-delay =3D <6250>;
>                                 regulator-enable-ramp-delay =3D <240>;
>                                 regulator-always-on;
> @@ -1568,8 +1587,8 @@ mt6366_vsram_proc11_reg: vsram-proc11 {
>
>                         mt6366_vsram_proc12_reg: vsram-proc12 {
>                                 regulator-name =3D "pp0900_dvdd_sram_lc";
> -                               regulator-min-microvolt =3D <850000>;
> -                               regulator-max-microvolt =3D <1120000>;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1293750>;

Same thing about the voltage ranges.

>                                 regulator-ramp-delay =3D <6250>;
>                                 regulator-enable-ramp-delay =3D <240>;
>                                 regulator-always-on;
> @@ -1578,7 +1597,7 @@ mt6366_vsram_proc12_reg: vsram-proc12 {
>                         vusb {
>                                 regulator-name =3D "pp3070_vusb";
>                                 regulator-min-microvolt =3D <3000000>;
> -                               regulator-max-microvolt =3D <3070000>;
> +                               regulator-max-microvolt =3D <3100000>;

The correct voltage is 3.07 V, however since earlier kernels did not
support the 0.01V steps, the minimum was kept at 3.0V. The 0.07V offset
is set either by bootloader or is the hardware default.

>                                 regulator-enable-ramp-delay =3D <270>;
>                                 regulator-always-on;
>                         };
> @@ -1586,7 +1605,7 @@ vusb {
>                         vxo22 {
>                                 regulator-name =3D "pp2240_vxo22";
>                                 regulator-min-microvolt =3D <2200000>;
> -                               regulator-max-microvolt =3D <2240000>;
> +                               regulator-max-microvolt =3D <2200000>;

Same thing about the voltage ranges.

>                                 regulator-enable-ramp-delay =3D <120>;
>                                 /* Feeds DCXO internally */
>                                 regulator-always-on;

So basically you are undoing all the cleanups that I did to get the
dtsi to fit upstream conventions and solutions that we have.


ChenYu

