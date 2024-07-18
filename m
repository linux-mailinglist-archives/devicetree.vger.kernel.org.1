Return-Path: <devicetree+bounces-86588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF51934D8F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 14:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63DDB1C21BA9
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 12:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C80513C80B;
	Thu, 18 Jul 2024 12:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kiO1KRkE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E392B13AA2B
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 12:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721307460; cv=none; b=PTAX8NsIZumzNB51KpBt4Jns9k/zJlDjeT8bg4g+q56t6cZYKff1Kp2xrV4K8UUMU993LOdo66V25+cSNXA4XwOk339FfkZx8Lt3MmzNTUeB59QxsBssQFgmEUFtoP0O8eCaPD9/UA6qHCoI7gylRo7dGWifM/87a0C1VlKzv2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721307460; c=relaxed/simple;
	bh=6t33ExFXMVqeGGgCcowq/z2Ijk+S8jKWguFiKLwxv5g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mpVjczQ4wjX+XD1Xh7x7wMCmRFBBqES29iV15iTPvUmH0eX5fzG/BQ52gCMziH5U35IZlPRamtGShHD71Sguhlr4bGyvNp7AFzxwLywR1TTcdpMDgULzDiZ4xvCfh9vsQT1l9y3PsGnK5u84v4kRxEyQTUn1kQM0Q7J5ZgVuOaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kiO1KRkE; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-820f7c6eaa5so293741241.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 05:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721307458; x=1721912258; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZVInjStjvITEQ5VnpuqHo8nXnIumN5+C3sE443bU/vk=;
        b=kiO1KRkEYBJuFPangZqYcEgBuxHChwnPks6T9DCs3EISZWy3O+ndZvHEtNpcx0gBKK
         EP0HKEWtTLKildmILDD9bt9ioOn1AqmIImAzxRmEPgwt3avKiaM293Nr/XeBA0x/8RHy
         jJ7k5Z28GQPZMNskRg+tghM72lDivuvIUKlblrdVCYuKn8jjAVWZgWPSrOs4sQ4jnR/3
         Mt3eY5fN/XZSvGnbzAThs4gEP9T+MJE6vfFmc+D+DobeG9cHLKITmw6ckWvsBdaEVY79
         1mAVLWonBEj2mx7waQGgp3l32zw3t9V/M9gLD9+6Wz7ez5pAhzUX87ySxobzFRDsECRf
         Q8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721307458; x=1721912258;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZVInjStjvITEQ5VnpuqHo8nXnIumN5+C3sE443bU/vk=;
        b=FB6eBvQFrN8K2AIddBZMxe4+zjutiL7J73QodXZG/fSvQQ1m2xy5G6Nx40fcDfcNWt
         3oJt3vcQMgd69gS6s9JRT40nEtvncHLIBK4YOa93AovuYkD1y6rYhiu5lZkBa2EI/3oZ
         lpZ9hawKBedqgJ1v7NBBJ+9BuxY8vuQjKtuLXEekNsc01y5JRFpYk0UsQIsC9mdCuG5V
         T70YWxOLImfAppDWgDRgKKHG79+4ILGQZz9cLUsYvuImeWinmHNRdPQAwJNA49yK/5v/
         h2fhMEg1YaV8yy/tE3jkyzB0igbNNVEEU1XbiQzI8fbAkfr+Sr5bYfqlC4Ty4/eqggrx
         xv3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXAXWbnoO9pRC/0ZIu6RQD5Bb2DRYKlESgXZxEvoFyuj4WMnZSS8fx/AsFF+/f3a3N9hMGsn31D7yMl0PtvOb50nnsMxAUitcIQng==
X-Gm-Message-State: AOJu0YyKfJ1mOW3j5FI5mWfZx6/n+0N9bbcL4eZyazC9+PEDR2S7ZD8I
	PAYTmp5x0pGZdrv/INPkDSEECqpTLaEYxSShkhO6I9zjxWwXjB1zGL+nBL5DrmrKKANUJYWDruD
	NMwhjRuEomu8Zswpta+DfoxfaKbBfnkL0RHblbA==
X-Google-Smtp-Source: AGHT+IE646b9knV3NyerMzOxtymWvWfzL4uzox56mIVkmCycSdvNmnfz7nxmOgZQS2I/2F0Z0lVpvWR4zo+8YyHHc+s=
X-Received: by 2002:a05:6102:571a:b0:48f:a83f:7d10 with SMTP id
 ada2fe7eead31-49159883121mr5585168137.10.1721307457682; Thu, 18 Jul 2024
 05:57:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240702091655.278974-1-amit.pundir@linaro.org> <d3416be5-b97f-4db6-a779-9c436e41dd72@linaro.org>
In-Reply-To: <d3416be5-b97f-4db6-a779-9c436e41dd72@linaro.org>
From: Amit Pundir <amit.pundir@linaro.org>
Date: Thu, 18 Jul 2024 18:27:00 +0530
Message-ID: <CAMi1Hd1Tinhd-dXS3dXjvSWqe6rNZgPJF+3kZOXQj03LkuMPcA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8550-hdk: add the Wifi node
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, dt <devicetree@vger.kernel.org>, 
	lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Jul 2024 at 15:10, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Hi,
>
> On 02/07/2024 11:16, Amit Pundir wrote:
> > Describe the ath12k WLAN on-board the WCN7850 module present on the
> > board.
> >
> > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > ---
> > Kanged verbatim from 490812872449 ("arm64: dts: qcom: sm8550-qrd: add the Wifi node").
> >
> >   arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 97 +++++++++++++++++++++++++
> >   1 file changed, 97 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> > index 12d60a0ee095..c453d081a2df 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> > @@ -279,6 +279,68 @@ platform {
> >                       };
> >               };
> >       };
> > +
> > +     wcn7850-pmu {
> > +             compatible = "qcom,wcn7850-pmu";
> > +
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&wlan_en>, <&pmk8550_sleep_clk>;
> > +
> > +             wlan-enable-gpios = <&tlmm 80 GPIO_ACTIVE_HIGH>;
> > +             /*
> > +              * TODO Add bt-enable-gpios once the Bluetooth driver is
> > +              * converted to using the power sequencer.
> > +              */
>
> <snip>
>
> Now [1] driver & bindings changes were merged, could you resend with the following squashed:

Done. Thank you very much Neil.

>
> [1] https://lore.kernel.org/all/20240709-hci_qca_refactor-v3-0-5f48ca001fed@linaro.org/
>
> ====><=====================================
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> index 0fa0b79de741..01c921602605 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
> @@ -284,13 +284,10 @@ wcn7850-pmu {
>                 compatible = "qcom,wcn7850-pmu";
>
>                 pinctrl-names = "default";
> -               pinctrl-0 = <&wlan_en>, <&pmk8550_sleep_clk>;
> +               pinctrl-0 = <&wlan_en>, <&bt_default>, <&pmk8550_sleep_clk>;
>
>                 wlan-enable-gpios = <&tlmm 80 GPIO_ACTIVE_HIGH>;
> -               /*
> -                * TODO Add bt-enable-gpios once the Bluetooth driver is
> -                * converted to using the power sequencer.
> -                */
> +               bt-enable-gpios = <&tlmm 81 GPIO_ACTIVE_HIGH>;
>
>                 vdd-supply = <&vreg_s5g_0p85>;
>                 vddio-supply = <&vreg_l15b_1p8>;
> @@ -1312,20 +1309,15 @@ &uart14 {
>         bluetooth {
>                 compatible = "qcom,wcn7850-bt";
>
> -               vddio-supply = <&vreg_l15b_1p8>;
> -               vddaon-supply = <&vreg_s4e_0p95>;
> -               vdddig-supply = <&vreg_s4e_0p95>;
> -               vddrfa0p8-supply = <&vreg_s4e_0p95>;
> -               vddrfa1p2-supply = <&vreg_s4g_1p25>;
> -               vddrfa1p9-supply = <&vreg_s6g_1p86>;
> +               vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> +               vddaon-supply = <&vreg_pmu_aon_0p59>;
> +               vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +               vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> +               vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +               vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +               vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
>
>                 max-speed = <3200000>;
> -
> -               enable-gpios = <&tlmm 81 GPIO_ACTIVE_HIGH>;
> -               swctrl-gpios = <&tlmm 82 GPIO_ACTIVE_HIGH>;
> -
> -               pinctrl-0 = <&bt_default>;
> -               pinctrl-names = "default";
>         };
>   };
> ====><=====================================
>
> Thanks,
> Neil

