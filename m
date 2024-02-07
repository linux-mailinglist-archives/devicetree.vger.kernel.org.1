Return-Path: <devicetree+bounces-39425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF2B84C9E7
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 12:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 421271C25B0E
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 11:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD9F1B7E4;
	Wed,  7 Feb 2024 11:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XrmXKPIA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B92E1B7E1
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 11:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707306447; cv=none; b=sfBdF6VtkZzx0XVp4uj/M6HoYqj0oJwB6dSMZVuwkzvTd2IMsRcQ+mQUNTkZKRVhC+BPbVb2jK6A6ZxHVUyWkxAeqx13l9Xd/K1vQNKNZMBp442XPvdXlWphEz5Z0qUILg0dLLZbNyjQshEy9JB27cNsWnHHoX/iDzQDqmCs/DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707306447; c=relaxed/simple;
	bh=bk9mKLUBkiVeKV9Jlt3UQtxCYxjxQfDKf8LJgvf2SIs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HHrp9E/WOzJkcXcvRoirJAuHV1BfWrR5ydehnXZeZWp9CusdOUfsqx+LDGu6Zv5v+KTLeWYD5M6tdKWaVHpPFWFIT4y9QPGRDtrH7gFPnHkZoDLSo5EjlNVXJup0SujZig6UPWhYOhi62wz0cEZ9RoQSN9mFt9Cjz4eow6mnlsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XrmXKPIA; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-60492003050so4451217b3.0
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 03:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707306443; x=1707911243; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IBdEAORytiIoqLtaxVLqe0PceqtibKVmrzJCQ1csK14=;
        b=XrmXKPIA6wddI6GfdCcknuhhKrRiCBJPgpzRp9jfg7HxQS21Ly9HBuu0cgIbqwGCCL
         ZNUFeeOWZkIn9NobtdkNOlZ9TaM+TYYbzw6M39IeCb/D05YXX8RPhznw8Aatl/XfHVU4
         JPkfGTFtei7Kf6mI4I7fBUEkOKuTxkmZ8mEChxoeHsM8OEBkr+bLBL6SLRdEtBL3t/pz
         jLtbPpDpcDAKfppSOoVJXaRRF8o5KXBv6sdxJfaBRvbx/O4QkKteh2lsYqC+ok4mqKiJ
         Av3pPgwnRQ9TDQhku83bcaFIgbW8hFtOz8KS02Cz7+lgnL5PPi6vh8srrWEZ9GG71PE8
         dOFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707306443; x=1707911243;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IBdEAORytiIoqLtaxVLqe0PceqtibKVmrzJCQ1csK14=;
        b=g1VA4II6VJ+xoeea2JAuMC4L1ORJQdaoZeWLqhHJS5UguKP4Wc73z9NDKOI0bAoL10
         qi9ioO/Qbqi8Y7N++p1l9jqeN5bCLYlQ6mPFxaKwb/4f3rKRv0rtdvaX1ttDU08RNbFg
         7tcm7ZS8n7YV2QpvpTV3mwtzu7KkwLEGB5UmbVBqBQblXymiWvbtGoiujATHTKy76CGS
         8ZGH5z4ouoR6GmxICVx7dEtetQ7NvPJ6fygvy7C+WHUs9d5F3tVn6Yxiy0JFX5uqc++x
         1mT1iMBsGHOOgYEpZs3u0i5N1zLK4inVFYGv3Krx6HFAfvBvuBuP2rymGouUb0y26ted
         LGrw==
X-Forwarded-Encrypted: i=1; AJvYcCX6jrjSjuGtaAMbnQKSgeK59DgvDMEOgv9FzX2X75Q3X/HnjxwoRFI9kN9+sTsD7KO89TyMvL9Xdg+ozHSBNFF3XQwy98NFm5sPsQ==
X-Gm-Message-State: AOJu0Yye3faiSvzR8+xlV/UP2J8Z87xxdsC1XzyZwAse/dzJE4n+aXtn
	b1JpxGwTrDXQ/jGVio0yaCKBde4iF0otSSZnORgxuyBx6+XrnU8we/0KIT1Vc+wPR9rdk6+q6ie
	c2DO9vErYrPew8ktfBsBpQk93kfSYiN0FFKyg/w==
X-Google-Smtp-Source: AGHT+IGQmgN4lJV2lpVJU3mhUKZlqNZeXns1+EfXYUyDWZiVaRGvSCitx9bvLEZ6p75HORpuQBSnccf5GLqoIeuTOxw=
X-Received: by 2002:a81:d80b:0:b0:5fa:564:afad with SMTP id
 d11-20020a81d80b000000b005fa0564afadmr4599487ywj.7.1707306443214; Wed, 07 Feb
 2024 03:47:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240207-enable_pcie-v1-1-b684afa6371c@quicinc.com>
In-Reply-To: <20240207-enable_pcie-v1-1-b684afa6371c@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 7 Feb 2024 13:47:11 +0200
Message-ID: <CAA8EJpqjm_2aE+7BtMkFUdet11q7v_jyHbUEpiDHSBSnzhndYA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Add PCIe nodes
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, quic_skananth@quicinc.com, 
	quic_parass@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 7 Feb 2024 at 12:42, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> Enable PCIe1 controller and its corresponding PHY nodes on
> qcs6490-rb3g2 platform.
>
> PCIe switch is connected to PCIe1, PCIe switch has multiple endpoints
> connected. For each endpoint a unique BDF will be assigned and should
> assign unique smmu id. So for each BDF add smmu id.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 42 ++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 8bb7d13d85f6..0082a3399453 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -413,6 +413,32 @@ vreg_bob_3p296: bob {
>         };
>  };
>
> +&pcie1 {
> +       perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +
> +       pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
> +       pinctrl-names = "default";
> +
> +       iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
> +                   <0x100 &apps_smmu 0x1c81 0x1>,
> +                   <0x208 &apps_smmu 0x1c84 0x1>,
> +                   <0x210 &apps_smmu 0x1c85 0x1>,
> +                   <0x218 &apps_smmu 0x1c86 0x1>,
> +                   <0x300 &apps_smmu 0x1c87 0x1>,
> +                   <0x400 &apps_smmu 0x1c88 0x1>,
> +                   <0x500 &apps_smmu 0x1c89 0x1>,
> +                   <0x501 &apps_smmu 0x1c90 0x1>;

Is the iommu-map really board specific?

> +
> +       status = "okay";
> +};
> +
> +&pcie1_phy {
> +       vdda-phy-supply = <&vreg_l10c_0p88>;
> +       vdda-pll-supply = <&vreg_l6b_1p2>;
> +
> +       status = "okay";
> +};
> +
>  &qupv3_id_0 {
>         status = "okay";
>  };
> @@ -420,6 +446,22 @@ &qupv3_id_0 {
>  &tlmm {
>         gpio-reserved-ranges = <32 2>, /* ADSP */
>                                <48 4>; /* NFC */
> +
> +       pcie1_reset_n: pcie1-reset-n-state {
> +               pins = "gpio2";
> +               function = "gpio";
> +               drive-strength = <16>;
> +               output-low;
> +               bias-disable;
> +       };
> +
> +       pcie1_wake_n: pcie1-wake-n-state {
> +               pins = "gpio3";
> +               function = "gpio";
> +               drive-strength = <2>;
> +               bias-pull-up;
> +       };
> +
>  };
>
>  &uart5 {
>
> ---
> base-commit: 70d201a40823acba23899342d62bc2644051ad2e
> change-id: 20240207-enable_pcie-95b1d6612b27
>
> Best regards,
> --
> Krishna chaitanya chundru <quic_krichai@quicinc.com>
>
>


-- 
With best wishes
Dmitry

