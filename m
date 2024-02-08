Return-Path: <devicetree+bounces-39715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 948F184DF81
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 12:14:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B792D1C26A9D
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6F76A35B;
	Thu,  8 Feb 2024 11:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sq04pULv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6896E2C9
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 11:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707390891; cv=none; b=nzaxfj1qPWVLagGhqG5CA4sB8X9tFDB8CBvEcVM5C+AviQ1/Osxb5Xc2rFsReYRoeSs/XO/KjyWoevbz+rgiQwCkkt/27j60WAi/un6tnzEKj+uMzvWh64SYXyUmzBDAH4ECyX1qQS01VF41EUUCJ+rDOf8P1zt24T4X5A+8zI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707390891; c=relaxed/simple;
	bh=YF3AwsIziMoJKgQELRqtTwJWt1NnnUaynRdJ8slMOqI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=if3n+G5/eEg8divrgHn8gMx6UCr61u2IwumSS5tAhRP8jSik6jUOt897hWGC6C8PXnqeplJ3gf92mQYiWdxAfuAGEtmnlIVL7ZafW6+KSHMTy0+vT9hBIU5dJpnFgvQGeF2VuimMUNBTA/m/JXMu/c7QBoz8a9IYEm1mKdFc2lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sq04pULv; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-42a4516ec5dso11787221cf.3
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 03:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707390889; x=1707995689; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fJRRGrWXukyhlF5rwheSnxZvpxEuo/Z7R1gl3W8UWUQ=;
        b=sq04pULvblqHu4kWBeiJdO6vHV0SKQlctGNFtwz05DF+uIcLUU/O9/yqKgJe3CQ+9p
         CLVyjW92w/1VvphUIUBSCWfayoog/v6Vxlbnha6Tr9QYidbMjaC6jJdqU4sMKYIazfVH
         uNflA91IVUP20ePu3FgvK/szHB57H1U7Izey7ft4Kelke7lJdN3uDZ0M8CEbgyYohL1e
         zFSUerc81Aqbyedoz8j8zoYCjj6ARSQl67QbChgYlVPZ7E8V+e4MGcD3QHU+dp+A/0N7
         cPZjMv5lYuFNt+Is7LXKQokl1/fG5TXu4+otcY9+nEwbightM3m/gVHQ5s2txUCC8iD5
         FT+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707390889; x=1707995689;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJRRGrWXukyhlF5rwheSnxZvpxEuo/Z7R1gl3W8UWUQ=;
        b=FyFBMmOJF/iEsMdHhytjcz1sc7036wEkTCZm6QPAstjZFqYYxWwBOKk9R3N64zQFIw
         sMrXe1MTZlXTuDHsucDciDmpCA+0igIBWh0Rc9emXHqnsqhWBB/jFG0ll1eH9YPPBiIy
         VApDTxndbwuDl/Gr+mNPOv9mqBxEU6z0CJ6nVRLnIN45/FOAsV5r3BEpdN/JQs1Ced6U
         FHm4+FbKZSJAj6WIBwHEBx60yLrK07RO8tfBmp1zfDiPaKiV2NdPdNFO/LP48Wvyp67m
         hd3Cm4i3+/3abg1bETeWOH+o4RG+BVVI94+fytDKyGIrGh8ltZhGZKv8rvlTLKpgkFMJ
         novA==
X-Gm-Message-State: AOJu0Yy6wXZBAC4J6HbooQrQocDoHUGF2SmWqa6ucqDiAujJVqpNsHhG
	v18sId/VPAHE7/r4qaOj4NuVYSW+TB2V6DqcLiVvyy/Tm3BgBAydEK/UXRJ9vabGhKchS6TJWO8
	vtUJK2pgxjfcvGJxdu+k5ATEMPJZq9UN4sUkljQ==
X-Google-Smtp-Source: AGHT+IGZDj75tdfnjsfYjBWALjP4rXBAPdM4LZKlPAJGJ98niyWndw03uuCQ9KxHtey2Vh4PRD2Iwgtkrgu5pOd+iYU=
X-Received: by 2002:a05:6214:19e7:b0:68c:96ab:5672 with SMTP id
 q7-20020a05621419e700b0068c96ab5672mr10954168qvc.17.1707390889086; Thu, 08
 Feb 2024 03:14:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240208105243.128875-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240208105243.128875-1-krzysztof.kozlowski@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 8 Feb 2024 11:14:37 +0000
Message-ID: <CADrjBPqscNwMpGmDiHSnAti_RzJZRCQNpcjJ+9vrPt7TAyctVQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: exynos: gs101: minor whitespace cleanup
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Feb 2024 at 10:52, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The DTS code coding style expects exactly one space before '{' and
> around '=' characters.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

>  .../boot/dts/exynos/google/gs101-pinctrl.dtsi    |  2 +-
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi     | 16 ++++++++--------
>  2 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pinctrl.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pinctrl.dtsi
> index e6a9776d4d62..a675f822acec 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101-pinctrl.dtsi
> @@ -251,7 +251,7 @@ gph1: gph1-gpio-bank {
>                 #interrupt-cells = <2>;
>         };
>
> -       pcie0_clkreq: pcie0-clkreq-pins{
> +       pcie0_clkreq: pcie0-clkreq-pins {
>                 samsung,pins = "gph0-1";
>                 samsung,pin-function = <GS101_PIN_FUNC_2>;
>                 samsung,pin-pud = <GS101_PIN_PULL_UP>;
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> index c7a9e81d23b9..80cc933cca3d 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -73,7 +73,7 @@ cpu0: cpu@0 {
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0000>;
>                         enable-method = "psci";
> -                       cpu-idle-states =  <&ANANKE_CPU_SLEEP>;
> +                       cpu-idle-states = <&ANANKE_CPU_SLEEP>;
>                         capacity-dmips-mhz = <250>;
>                         dynamic-power-coefficient = <70>;
>                 };
> @@ -83,7 +83,7 @@ cpu1: cpu@100 {
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0100>;
>                         enable-method = "psci";
> -                       cpu-idle-states =  <&ANANKE_CPU_SLEEP>;
> +                       cpu-idle-states = <&ANANKE_CPU_SLEEP>;
>                         capacity-dmips-mhz = <250>;
>                         dynamic-power-coefficient = <70>;
>                 };
> @@ -93,7 +93,7 @@ cpu2: cpu@200 {
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0200>;
>                         enable-method = "psci";
> -                       cpu-idle-states =  <&ANANKE_CPU_SLEEP>;
> +                       cpu-idle-states = <&ANANKE_CPU_SLEEP>;
>                         capacity-dmips-mhz = <250>;
>                         dynamic-power-coefficient = <70>;
>                 };
> @@ -103,7 +103,7 @@ cpu3: cpu@300 {
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0300>;
>                         enable-method = "psci";
> -                       cpu-idle-states =  <&ANANKE_CPU_SLEEP>;
> +                       cpu-idle-states = <&ANANKE_CPU_SLEEP>;
>                         capacity-dmips-mhz = <250>;
>                         dynamic-power-coefficient = <70>;
>                 };
> @@ -113,7 +113,7 @@ cpu4: cpu@400 {
>                         compatible = "arm,cortex-a76";
>                         reg = <0x0400>;
>                         enable-method = "psci";
> -                       cpu-idle-states =  <&ENYO_CPU_SLEEP>;
> +                       cpu-idle-states = <&ENYO_CPU_SLEEP>;
>                         capacity-dmips-mhz = <620>;
>                         dynamic-power-coefficient = <284>;
>                 };
> @@ -123,7 +123,7 @@ cpu5: cpu@500 {
>                         compatible = "arm,cortex-a76";
>                         reg = <0x0500>;
>                         enable-method = "psci";
> -                       cpu-idle-states =  <&ENYO_CPU_SLEEP>;
> +                       cpu-idle-states = <&ENYO_CPU_SLEEP>;
>                         capacity-dmips-mhz = <620>;
>                         dynamic-power-coefficient = <284>;
>                 };
> @@ -133,7 +133,7 @@ cpu6: cpu@600 {
>                         compatible = "arm,cortex-x1";
>                         reg = <0x0600>;
>                         enable-method = "psci";
> -                       cpu-idle-states =  <&HERA_CPU_SLEEP>;
> +                       cpu-idle-states = <&HERA_CPU_SLEEP>;
>                         capacity-dmips-mhz = <1024>;
>                         dynamic-power-coefficient = <650>;
>                 };
> @@ -143,7 +143,7 @@ cpu7: cpu@700 {
>                         compatible = "arm,cortex-x1";
>                         reg = <0x0700>;
>                         enable-method = "psci";
> -                       cpu-idle-states =  <&HERA_CPU_SLEEP>;
> +                       cpu-idle-states = <&HERA_CPU_SLEEP>;
>                         capacity-dmips-mhz = <1024>;
>                         dynamic-power-coefficient = <650>;
>                 };
> --
> 2.34.1
>

