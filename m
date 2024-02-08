Return-Path: <devicetree+bounces-39744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB9884E0D6
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 13:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62DF51C204DB
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 12:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F21D71B2E;
	Thu,  8 Feb 2024 12:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uassgZjt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A176171B30
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 12:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707396084; cv=none; b=mGl08bsnxaM8TkaSID2DAwYHfKxPoHcrB5+bjktj1CrVxHbXA7hmcIjTL8YPlaLdmkmhOkAKjVdxtJx/asHtGgzAtCtgGRWn9G8ZoeLupYuXsThXzErVv9FTalUvj30H478+6TFD+D2+YHTV7YQIP9IZjnQUg8A6XjWWqyburzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707396084; c=relaxed/simple;
	bh=qDk7UEWrlqaGwCuD8ABX2X5AjVW+Rcn6ztsH2olqobc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=izN+uJ0n6mBT6lYyVXlcM2P8XqJGm+MLQoWK4c+ug1mqgVJ3ukUAwQI1yVEc9Bi30xMQTjngeJMN/zemDcXMJW2/3ITGkwKCfB1xWOMBHV91YqhiBEPsXnciXq3OhYuSw4oPAmBAdd/fCNEIOqgdN8ax3l6u4FLSUy3cmldxO+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uassgZjt; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-290da27f597so1210668a91.2
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 04:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707396082; x=1708000882; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Py4LQQCjOD+63xICQgoe8LGjtYSfgfgYUdsYohF9IsI=;
        b=uassgZjtbWN7S7eEJl7Oc7Wk+gn19vhaaInRkry38+Qqvp2nZSgOWtERJtdusd7mfC
         5KV829x0o3/qdAGOlVolWRwoZNJksuOygT5XAiU67evpnqAO5nkiC6w3JqEb9IWlqmns
         jmYFsMEfqiDgM484LEaokB+Bo49/nO1sgx3e33HNmR0RTizGxtIDQR7SfuPBHVQ8XPMv
         RZfYO7QJE3DeR/+la0EhNb+yzXz9RaJKUBKQ+HGvtrdfOIm5vWQ5+Juohjr1vHUUQ5f2
         s+53DCPEJDmrZJinscCJHq+d/jighw4oE6xka2tTmtODdEbE4YwmSEiP+sz6a3AoCH9P
         CLlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707396082; x=1708000882;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Py4LQQCjOD+63xICQgoe8LGjtYSfgfgYUdsYohF9IsI=;
        b=DwKsI0dFuD5hYDn6afu9ygmV6iMtMIhlZ7V3QBC1Wod7W1bUNWaIkTkpAQ7IQcy0Po
         L6gSMzD9ZpS/tTz0NRJ+/FppmQbg0Sm8NXc8Bj7o1aKpAVVYjuRHiaa4mi0XC3mzLnl+
         VeoBHNmbhvK+9/Sgh9E+OZyARffMxQEH4hNzxswGtpbuzjOurJ8ao1NpA/Qo2tOHe21R
         YIaNbBfwVW+rKhd5IfgXd7EunqtTDOhL4fMMKGbxX3GM/mnZFmMWW4eU/0Lr7Ccc5vt1
         y3DD8KFmDvSPCyMWz2jPxQJrK2aKKM5TpGYxImrkw/AwTlAFHrRtdsSeCgBxYbCmo1Io
         RBCQ==
X-Gm-Message-State: AOJu0YxvrWzSZb/tDcu8PLhpUdVyr0xre3iovMTIlAbk4jDvbRWkUO4B
	KyjNDtQfhK9wr6X/016AYnVD2Zh0m3xznwNQb2YRE5yp8XEYnUNoYRP5Lznf8Mlb+0PoApZ4+i8
	j2OAddIq52IQeldi8eURJCbUBh+Dt1xiZTeBMrg==
X-Google-Smtp-Source: AGHT+IFTVbn9MROnjZ4NEuMlDyJg8O7OWSiIXi5sJ9EP3ohJj7o0qEJihfhAu8IXeI2TFNlGpHudI04RAgjFiq2t5+0=
X-Received: by 2002:a17:90a:fb87:b0:290:7739:b886 with SMTP id
 cp7-20020a17090afb8700b002907739b886mr5369282pjb.29.1707396081873; Thu, 08
 Feb 2024 04:41:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240208105243.128875-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240208105243.128875-1-krzysztof.kozlowski@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Thu, 8 Feb 2024 06:41:10 -0600
Message-ID: <CAPLW+4n5LqENFgUZYDb2rF+Db59Ry4tdAfKLiL-W-ZG6mP=kjw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: exynos: gs101: minor whitespace cleanup
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 8, 2024 at 4:55=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The DTS code coding style expects exactly one space before '{' and
> around '=3D' characters.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../boot/dts/exynos/google/gs101-pinctrl.dtsi    |  2 +-
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi     | 16 ++++++++--------
>  2 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pinctrl.dtsi b/arch/=
arm64/boot/dts/exynos/google/gs101-pinctrl.dtsi
> index e6a9776d4d62..a675f822acec 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101-pinctrl.dtsi
> @@ -251,7 +251,7 @@ gph1: gph1-gpio-bank {
>                 #interrupt-cells =3D <2>;
>         };
>
> -       pcie0_clkreq: pcie0-clkreq-pins{
> +       pcie0_clkreq: pcie0-clkreq-pins {
>                 samsung,pins =3D "gph0-1";
>                 samsung,pin-function =3D <GS101_PIN_FUNC_2>;
>                 samsung,pin-pud =3D <GS101_PIN_PULL_UP>;
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/bo=
ot/dts/exynos/google/gs101.dtsi
> index c7a9e81d23b9..80cc933cca3d 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -73,7 +73,7 @@ cpu0: cpu@0 {
>                         compatible =3D "arm,cortex-a55";
>                         reg =3D <0x0000>;
>                         enable-method =3D "psci";
> -                       cpu-idle-states =3D  <&ANANKE_CPU_SLEEP>;
> +                       cpu-idle-states =3D <&ANANKE_CPU_SLEEP>;
>                         capacity-dmips-mhz =3D <250>;
>                         dynamic-power-coefficient =3D <70>;
>                 };
> @@ -83,7 +83,7 @@ cpu1: cpu@100 {
>                         compatible =3D "arm,cortex-a55";
>                         reg =3D <0x0100>;
>                         enable-method =3D "psci";
> -                       cpu-idle-states =3D  <&ANANKE_CPU_SLEEP>;
> +                       cpu-idle-states =3D <&ANANKE_CPU_SLEEP>;
>                         capacity-dmips-mhz =3D <250>;
>                         dynamic-power-coefficient =3D <70>;
>                 };
> @@ -93,7 +93,7 @@ cpu2: cpu@200 {
>                         compatible =3D "arm,cortex-a55";
>                         reg =3D <0x0200>;
>                         enable-method =3D "psci";
> -                       cpu-idle-states =3D  <&ANANKE_CPU_SLEEP>;
> +                       cpu-idle-states =3D <&ANANKE_CPU_SLEEP>;
>                         capacity-dmips-mhz =3D <250>;
>                         dynamic-power-coefficient =3D <70>;
>                 };
> @@ -103,7 +103,7 @@ cpu3: cpu@300 {
>                         compatible =3D "arm,cortex-a55";
>                         reg =3D <0x0300>;
>                         enable-method =3D "psci";
> -                       cpu-idle-states =3D  <&ANANKE_CPU_SLEEP>;
> +                       cpu-idle-states =3D <&ANANKE_CPU_SLEEP>;
>                         capacity-dmips-mhz =3D <250>;
>                         dynamic-power-coefficient =3D <70>;
>                 };
> @@ -113,7 +113,7 @@ cpu4: cpu@400 {
>                         compatible =3D "arm,cortex-a76";
>                         reg =3D <0x0400>;
>                         enable-method =3D "psci";
> -                       cpu-idle-states =3D  <&ENYO_CPU_SLEEP>;
> +                       cpu-idle-states =3D <&ENYO_CPU_SLEEP>;
>                         capacity-dmips-mhz =3D <620>;
>                         dynamic-power-coefficient =3D <284>;
>                 };
> @@ -123,7 +123,7 @@ cpu5: cpu@500 {
>                         compatible =3D "arm,cortex-a76";
>                         reg =3D <0x0500>;
>                         enable-method =3D "psci";
> -                       cpu-idle-states =3D  <&ENYO_CPU_SLEEP>;
> +                       cpu-idle-states =3D <&ENYO_CPU_SLEEP>;
>                         capacity-dmips-mhz =3D <620>;
>                         dynamic-power-coefficient =3D <284>;
>                 };
> @@ -133,7 +133,7 @@ cpu6: cpu@600 {
>                         compatible =3D "arm,cortex-x1";
>                         reg =3D <0x0600>;
>                         enable-method =3D "psci";
> -                       cpu-idle-states =3D  <&HERA_CPU_SLEEP>;
> +                       cpu-idle-states =3D <&HERA_CPU_SLEEP>;
>                         capacity-dmips-mhz =3D <1024>;
>                         dynamic-power-coefficient =3D <650>;
>                 };
> @@ -143,7 +143,7 @@ cpu7: cpu@700 {
>                         compatible =3D "arm,cortex-x1";
>                         reg =3D <0x0700>;
>                         enable-method =3D "psci";
> -                       cpu-idle-states =3D  <&HERA_CPU_SLEEP>;
> +                       cpu-idle-states =3D <&HERA_CPU_SLEEP>;
>                         capacity-dmips-mhz =3D <1024>;
>                         dynamic-power-coefficient =3D <650>;
>                 };
> --
> 2.34.1
>
>

