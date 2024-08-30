Return-Path: <devicetree+bounces-98223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4B9965562
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 04:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 304FF2844AD
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 02:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B775133987;
	Fri, 30 Aug 2024 02:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b="FMo5kMCe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B960312F59C
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 02:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724985967; cv=none; b=pmoIifZld9Fvbd1pSnC9wOVbbogGa49B08/AGUprLLz739FXSOREdjbIVzBPU/NQnBT5ZJyTVkYvLs53vfxp4Kpd/ypHzB7zZ6nUuEy+6pgM6eikJGw4P0g6U90leD4KILz0QA4xXzDM/w/Eou85Uy+8dA0O2tqJYh5sj8cdR2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724985967; c=relaxed/simple;
	bh=wtWkvGSjlXZXTYQKx6/38CslYo9+83dsq1V6yyUkNPk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pFM9r8xO3pi+mB/5kX3DHhXu1hymWTgIdm58xB6KJlk3DsHzx3Tt6dEuaGe2oL8AXVih1bFHw+YM3MWXP0FP7OeWQaJ9EyLgocPF7M2MgRk2uKq86fXK2tnHKJegrknrZt2xd5JbTB4s5pBK5j2nEWyffoOEF160WNA2lR/ym30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org; spf=pass smtp.mailfrom=kali.org; dkim=pass (2048-bit key) header.d=kali.org header.i=@kali.org header.b=FMo5kMCe; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kali.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kali.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5c210e23651so1441164a12.3
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 19:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google; t=1724985962; x=1725590762; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2NLQbhC1282ULxsCaBihcnXu9jioILEFI4pw0BnUik0=;
        b=FMo5kMCe2wHvALEzR1tRQnMP3pT7lKmX26ULOP6oA6xolEBb8PvyBXBC+tAJiNpNnZ
         rM7XGbV8kJMeL1QBQMbLrfMMWTiLgzyRMJJgz6bSegEge9vptAMSnJMbLAkAMOVNs8d1
         SBhYyMZo8xOLWCJfhkKPzQHSbCBMyM2x2CNemeppo/RWXaZeXUnkcwmAbwk7Eq45yQib
         4/md9SCyKXoJgYKDtWqsXYEyuOv5JB+EbpugQbzxS101KpKLiCcFnkksjIGguNA51ipO
         hrdIp/A7pTE70+gUkGpsV6qFmEYdRbBJ6/bNvfoSi0rtnJYuit6L80H7fUxsdtAh869j
         7d0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724985962; x=1725590762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2NLQbhC1282ULxsCaBihcnXu9jioILEFI4pw0BnUik0=;
        b=b+1pA1sg/xRW3Xyr16ArEonMgW5j6klwemZnywKWVfxEmUG899J1JH05NvwCXZbLSF
         +LRcLQfN/5CwPoMaKi+brcQ7mn5LPS7OHBCB8hjPscPgAPG1HAMwGWSzj6z8LuGuL+Qp
         K7aVyA/eqdToDBufq/7dsRWiWP2ezqdVMJYX2pCMMZNyGDQVVK1blB2rxIbXEBqTA5Md
         qYyFGS3Z9sVNTT880wc37yFl+DA/Guck5SXQH0MG7l0pEYcNS2UE4YeCiuOO/J4M88qC
         N5bVblCZ9/tV/6Cf9jbmTgabHhuXgg1JkjdQL3Lms3OesRtNu4vDuTZMlqpXOP/vMCLY
         ckTw==
X-Forwarded-Encrypted: i=1; AJvYcCX3XYgsmTH7/c5wyJC6iTHAN966EI516+5qtrcRH1ZQoMftnnSXUzpeYz9yMahFZJD629eDPOXiUqTq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2RmYfgRkhkHJ3J2sw4SO9z1HFJ7ojMSzsvI8ea83fCgmQ92ru
	J7YboiOKejjkPJXDZDpyEfUIqVNMq9lGMk/rszloUQKuiMuvpG7K91OFpRmLTtZk3Zb+HNC1ZPa
	bMhBgwSf1iPd+8gEWQf5sCW95cAHFPbIATnnJ4A==
X-Google-Smtp-Source: AGHT+IGfVznspNbF11C2UWiJwxcg9xhRwrx6BhnGzJT7LtCnIoWZZZeWx2FrkQDENIrKQGJO62nbFjB2O+t212QmwtM=
X-Received: by 2002:a05:6402:4313:b0:5c0:ad94:1d3 with SMTP id
 4fb4d7f45d1cf-5c21eda3e88mr4451621a12.32.1724985961666; Thu, 29 Aug 2024
 19:46:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240829-dts-qcom-label-v2-0-5deaada3e6b2@linaro.org> <20240829-dts-qcom-label-v2-5-5deaada3e6b2@linaro.org>
In-Reply-To: <20240829-dts-qcom-label-v2-5-5deaada3e6b2@linaro.org>
From: Steev Klimaszewski <steev@kali.org>
Date: Thu, 29 Aug 2024 21:45:50 -0500
Message-ID: <CAKXuJqiT-6WXSV3aFeMqRp0K3Nr16OKQKX+gwypsnoiRxj-GfA@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] arm64: dts: qcom: sc8280xp: change labels to lower-case
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2024 at 7:41=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> DTS coding style expects labels to be lowercase.  No functional impact.
> Verified with comparing decompiled DTB (dtx_diff and fdtdump+diff).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |  16 +--
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 158 ++++++++++-----=
------
>  2 files changed, 87 insertions(+), 87 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b=
/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index 6a28cab97189..83208b10f994 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -346,18 +346,18 @@ skin-temp-crit {
>                         cooling-maps {
>                                 map0 {
>                                         trip =3D <&skin_temp_alert0>;
> -                                       cooling-device =3D <&CPU4 THERMAL=
_NO_LIMIT THERMAL_NO_LIMIT>,
> -                                                        <&CPU5 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>,
> -                                                        <&CPU6 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>,
> -                                                        <&CPU7 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>;
> +                                       cooling-device =3D <&cpu4 THERMAL=
_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu5 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu6 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu7 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>;
>                                 };
>
>                                 map1 {
>                                         trip =3D <&skin_temp_alert1>;
> -                                       cooling-device =3D <&CPU4 THERMAL=
_NO_LIMIT THERMAL_NO_LIMIT>,
> -                                                        <&CPU5 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>,
> -                                                        <&CPU6 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>,
> -                                                        <&CPU7 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>;
> +                                       cooling-device =3D <&cpu4 THERMAL=
_NO_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu5 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu6 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>,
> +                                                        <&cpu7 THERMAL_N=
O_LIMIT THERMAL_NO_LIMIT>;
>                                 };
>                         };
>                 };
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts=
/qcom/sc8280xp.dtsi
> index 80a57aa22839..2f2fb074d804 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -44,7 +44,7 @@ cpus {
>                 #address-cells =3D <2>;
>                 #size-cells =3D <0>;
>
> -               CPU0: cpu@0 {
> +               cpu0: cpu@0 {
>                         device_type =3D "cpu";
>                         compatible =3D "arm,cortex-a78c";
>                         reg =3D <0x0 0x0>;
> @@ -52,19 +52,19 @@ CPU0: cpu@0 {
>                         enable-method =3D "psci";
>                         capacity-dmips-mhz =3D <981>;
>                         dynamic-power-coefficient =3D <549>;
> -                       next-level-cache =3D <&L2_0>;
> -                       power-domains =3D <&CPU_PD0>;
> +                       next-level-cache =3D <&l2_0>;
> +                       power-domains =3D <&cpu_pd0>;
>                         power-domain-names =3D "psci";
>                         qcom,freq-domain =3D <&cpufreq_hw 0>;
>                         operating-points-v2 =3D <&cpu0_opp_table>;
>                         interconnects =3D <&epss_l3 MASTER_EPSS_L3_APPS &=
epss_l3 SLAVE_EPSS_L3_SHARED>;
>                         #cooling-cells =3D <2>;
> -                       L2_0: l2-cache {
> +                       l2_0: l2-cache {
>                                 compatible =3D "cache";
>                                 cache-level =3D <2>;
>                                 cache-unified;
> -                               next-level-cache =3D <&L3_0>;
> -                               L3_0: l3-cache {
> +                               next-level-cache =3D <&l3_0>;
> +                               l3_0: l3-cache {
>                                         compatible =3D "cache";
>                                         cache-level =3D <3>;
>                                         cache-unified;
> @@ -72,7 +72,7 @@ L3_0: l3-cache {
>                         };
>                 };
>
> -               CPU1: cpu@100 {
> +               cpu1: cpu@100 {
>                         device_type =3D "cpu";
>                         compatible =3D "arm,cortex-a78c";
>                         reg =3D <0x0 0x100>;
> @@ -80,22 +80,22 @@ CPU1: cpu@100 {
>                         enable-method =3D "psci";
>                         capacity-dmips-mhz =3D <981>;
>                         dynamic-power-coefficient =3D <549>;
> -                       next-level-cache =3D <&L2_100>;
> -                       power-domains =3D <&CPU_PD1>;
> +                       next-level-cache =3D <&l2_100>;
> +                       power-domains =3D <&cpu_pd1>;
>                         power-domain-names =3D "psci";
>                         qcom,freq-domain =3D <&cpufreq_hw 0>;
>                         operating-points-v2 =3D <&cpu0_opp_table>;
>                         interconnects =3D <&epss_l3 MASTER_EPSS_L3_APPS &=
epss_l3 SLAVE_EPSS_L3_SHARED>;
>                         #cooling-cells =3D <2>;
> -                       L2_100: l2-cache {
> +                       l2_100: l2-cache {
>                                 compatible =3D "cache";
>                                 cache-level =3D <2>;
>                                 cache-unified;
> -                               next-level-cache =3D <&L3_0>;
> +                               next-level-cache =3D <&l3_0>;
>                         };
>                 };
>
> -               CPU2: cpu@200 {
> +               cpu2: cpu@200 {
>                         device_type =3D "cpu";
>                         compatible =3D "arm,cortex-a78c";
>                         reg =3D <0x0 0x200>;
> @@ -103,22 +103,22 @@ CPU2: cpu@200 {
>                         enable-method =3D "psci";
>                         capacity-dmips-mhz =3D <981>;
>                         dynamic-power-coefficient =3D <549>;
> -                       next-level-cache =3D <&L2_200>;
> -                       power-domains =3D <&CPU_PD2>;
> +                       next-level-cache =3D <&l2_200>;
> +                       power-domains =3D <&cpu_pd2>;
>                         power-domain-names =3D "psci";
>                         qcom,freq-domain =3D <&cpufreq_hw 0>;
>                         operating-points-v2 =3D <&cpu0_opp_table>;
>                         interconnects =3D <&epss_l3 MASTER_EPSS_L3_APPS &=
epss_l3 SLAVE_EPSS_L3_SHARED>;
>                         #cooling-cells =3D <2>;
> -                       L2_200: l2-cache {
> +                       l2_200: l2-cache {
>                                 compatible =3D "cache";
>                                 cache-level =3D <2>;
>                                 cache-unified;
> -                               next-level-cache =3D <&L3_0>;
> +                               next-level-cache =3D <&l3_0>;
>                         };
>                 };
>
> -               CPU3: cpu@300 {
> +               cpu3: cpu@300 {
>                         device_type =3D "cpu";
>                         compatible =3D "arm,cortex-a78c";
>                         reg =3D <0x0 0x300>;
> @@ -126,22 +126,22 @@ CPU3: cpu@300 {
>                         enable-method =3D "psci";
>                         capacity-dmips-mhz =3D <981>;
>                         dynamic-power-coefficient =3D <549>;
> -                       next-level-cache =3D <&L2_300>;
> -                       power-domains =3D <&CPU_PD3>;
> +                       next-level-cache =3D <&l2_300>;
> +                       power-domains =3D <&cpu_pd3>;
>                         power-domain-names =3D "psci";
>                         qcom,freq-domain =3D <&cpufreq_hw 0>;
>                         operating-points-v2 =3D <&cpu0_opp_table>;
>                         interconnects =3D <&epss_l3 MASTER_EPSS_L3_APPS &=
epss_l3 SLAVE_EPSS_L3_SHARED>;
>                         #cooling-cells =3D <2>;
> -                       L2_300: l2-cache {
> +                       l2_300: l2-cache {
>                                 compatible =3D "cache";
>                                 cache-level =3D <2>;
>                                 cache-unified;
> -                               next-level-cache =3D <&L3_0>;
> +                               next-level-cache =3D <&l3_0>;
>                         };
>                 };
>
> -               CPU4: cpu@400 {
> +               cpu4: cpu@400 {
>                         device_type =3D "cpu";
>                         compatible =3D "arm,cortex-x1c";
>                         reg =3D <0x0 0x400>;
> @@ -149,22 +149,22 @@ CPU4: cpu@400 {
>                         enable-method =3D "psci";
>                         capacity-dmips-mhz =3D <1024>;
>                         dynamic-power-coefficient =3D <590>;
> -                       next-level-cache =3D <&L2_400>;
> -                       power-domains =3D <&CPU_PD4>;
> +                       next-level-cache =3D <&l2_400>;
> +                       power-domains =3D <&cpu_pd4>;
>                         power-domain-names =3D "psci";
>                         qcom,freq-domain =3D <&cpufreq_hw 1>;
>                         operating-points-v2 =3D <&cpu4_opp_table>;
>                         interconnects =3D <&epss_l3 MASTER_EPSS_L3_APPS &=
epss_l3 SLAVE_EPSS_L3_SHARED>;
>                         #cooling-cells =3D <2>;
> -                       L2_400: l2-cache {
> +                       l2_400: l2-cache {
>                                 compatible =3D "cache";
>                                 cache-level =3D <2>;
>                                 cache-unified;
> -                               next-level-cache =3D <&L3_0>;
> +                               next-level-cache =3D <&l3_0>;
>                         };
>                 };
>
> -               CPU5: cpu@500 {
> +               cpu5: cpu@500 {
>                         device_type =3D "cpu";
>                         compatible =3D "arm,cortex-x1c";
>                         reg =3D <0x0 0x500>;
> @@ -172,22 +172,22 @@ CPU5: cpu@500 {
>                         enable-method =3D "psci";
>                         capacity-dmips-mhz =3D <1024>;
>                         dynamic-power-coefficient =3D <590>;
> -                       next-level-cache =3D <&L2_500>;
> -                       power-domains =3D <&CPU_PD5>;
> +                       next-level-cache =3D <&l2_500>;
> +                       power-domains =3D <&cpu_pd5>;
>                         power-domain-names =3D "psci";
>                         qcom,freq-domain =3D <&cpufreq_hw 1>;
>                         operating-points-v2 =3D <&cpu4_opp_table>;
>                         interconnects =3D <&epss_l3 MASTER_EPSS_L3_APPS &=
epss_l3 SLAVE_EPSS_L3_SHARED>;
>                         #cooling-cells =3D <2>;
> -                       L2_500: l2-cache {
> +                       l2_500: l2-cache {
>                                 compatible =3D "cache";
>                                 cache-level =3D <2>;
>                                 cache-unified;
> -                               next-level-cache =3D <&L3_0>;
> +                               next-level-cache =3D <&l3_0>;
>                         };
>                 };
>
> -               CPU6: cpu@600 {
> +               cpu6: cpu@600 {
>                         device_type =3D "cpu";
>                         compatible =3D "arm,cortex-x1c";
>                         reg =3D <0x0 0x600>;
> @@ -195,22 +195,22 @@ CPU6: cpu@600 {
>                         enable-method =3D "psci";
>                         capacity-dmips-mhz =3D <1024>;
>                         dynamic-power-coefficient =3D <590>;
> -                       next-level-cache =3D <&L2_600>;
> -                       power-domains =3D <&CPU_PD6>;
> +                       next-level-cache =3D <&l2_600>;
> +                       power-domains =3D <&cpu_pd6>;
>                         power-domain-names =3D "psci";
>                         qcom,freq-domain =3D <&cpufreq_hw 1>;
>                         operating-points-v2 =3D <&cpu4_opp_table>;
>                         interconnects =3D <&epss_l3 MASTER_EPSS_L3_APPS &=
epss_l3 SLAVE_EPSS_L3_SHARED>;
>                         #cooling-cells =3D <2>;
> -                       L2_600: l2-cache {
> +                       l2_600: l2-cache {
>                                 compatible =3D "cache";
>                                 cache-level =3D <2>;
>                                 cache-unified;
> -                               next-level-cache =3D <&L3_0>;
> +                               next-level-cache =3D <&l3_0>;
>                         };
>                 };
>
> -               CPU7: cpu@700 {
> +               cpu7: cpu@700 {
>                         device_type =3D "cpu";
>                         compatible =3D "arm,cortex-x1c";
>                         reg =3D <0x0 0x700>;
> @@ -218,53 +218,53 @@ CPU7: cpu@700 {
>                         enable-method =3D "psci";
>                         capacity-dmips-mhz =3D <1024>;
>                         dynamic-power-coefficient =3D <590>;
> -                       next-level-cache =3D <&L2_700>;
> -                       power-domains =3D <&CPU_PD7>;
> +                       next-level-cache =3D <&l2_700>;
> +                       power-domains =3D <&cpu_pd7>;
>                         power-domain-names =3D "psci";
>                         qcom,freq-domain =3D <&cpufreq_hw 1>;
>                         operating-points-v2 =3D <&cpu4_opp_table>;
>                         interconnects =3D <&epss_l3 MASTER_EPSS_L3_APPS &=
epss_l3 SLAVE_EPSS_L3_SHARED>;
>                         #cooling-cells =3D <2>;
> -                       L2_700: l2-cache {
> +                       l2_700: l2-cache {
>                                 compatible =3D "cache";
>                                 cache-level =3D <2>;
>                                 cache-unified;
> -                               next-level-cache =3D <&L3_0>;
> +                               next-level-cache =3D <&l3_0>;
>                         };
>                 };
>
>                 cpu-map {
>                         cluster0 {
>                                 core0 {
> -                                       cpu =3D <&CPU0>;
> +                                       cpu =3D <&cpu0>;
>                                 };
>
>                                 core1 {
> -                                       cpu =3D <&CPU1>;
> +                                       cpu =3D <&cpu1>;
>                                 };
>
>                                 core2 {
> -                                       cpu =3D <&CPU2>;
> +                                       cpu =3D <&cpu2>;
>                                 };
>
>                                 core3 {
> -                                       cpu =3D <&CPU3>;
> +                                       cpu =3D <&cpu3>;
>                                 };
>
>                                 core4 {
> -                                       cpu =3D <&CPU4>;
> +                                       cpu =3D <&cpu4>;
>                                 };
>
>                                 core5 {
> -                                       cpu =3D <&CPU5>;
> +                                       cpu =3D <&cpu5>;
>                                 };
>
>                                 core6 {
> -                                       cpu =3D <&CPU6>;
> +                                       cpu =3D <&cpu6>;
>                                 };
>
>                                 core7 {
> -                                       cpu =3D <&CPU7>;
> +                                       cpu =3D <&cpu7>;
>                                 };
>                         };
>                 };
> @@ -272,7 +272,7 @@ core7 {
>                 idle-states {
>                         entry-method =3D "psci";
>
> -                       LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
> +                       little_cpu_sleep_0: cpu-sleep-0-0 {
>                                 compatible =3D "arm,idle-state";
>                                 idle-state-name =3D "little-rail-power-co=
llapse";
>                                 arm,psci-suspend-param =3D <0x40000004>;
> @@ -282,7 +282,7 @@ LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
>                                 local-timer-stop;
>                         };
>
> -                       BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
> +                       big_cpu_sleep_0: cpu-sleep-1-0 {
>                                 compatible =3D "arm,idle-state";
>                                 idle-state-name =3D "big-rail-power-colla=
pse";
>                                 arm,psci-suspend-param =3D <0x40000004>;
> @@ -294,7 +294,7 @@ BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
>                 };
>
>                 domain-idle-states {
> -                       CLUSTER_SLEEP_0: cluster-sleep-0 {
> +                       cluster_sleep_0: cluster-sleep-0 {
>                                 compatible =3D "domain-idle-state";
>                                 arm,psci-suspend-param =3D <0x4100c344>;
>                                 entry-latency-us =3D <3263>;
> @@ -593,57 +593,57 @@ psci {
>                 compatible =3D "arm,psci-1.0";
>                 method =3D "smc";
>
> -               CPU_PD0: power-domain-cpu0 {
> +               cpu_pd0: power-domain-cpu0 {
>                         #power-domain-cells =3D <0>;
> -                       power-domains =3D <&CLUSTER_PD>;
> -                       domain-idle-states =3D <&LITTLE_CPU_SLEEP_0>;
> +                       power-domains =3D <&cluster_pd>;
> +                       domain-idle-states =3D <&little_cpu_sleep_0>;
>                 };
>
> -               CPU_PD1: power-domain-cpu1 {
> +               cpu_pd1: power-domain-cpu1 {
>                         #power-domain-cells =3D <0>;
> -                       power-domains =3D <&CLUSTER_PD>;
> -                       domain-idle-states =3D <&LITTLE_CPU_SLEEP_0>;
> +                       power-domains =3D <&cluster_pd>;
> +                       domain-idle-states =3D <&little_cpu_sleep_0>;
>                 };
>
> -               CPU_PD2: power-domain-cpu2 {
> +               cpu_pd2: power-domain-cpu2 {
>                         #power-domain-cells =3D <0>;
> -                       power-domains =3D <&CLUSTER_PD>;
> -                       domain-idle-states =3D <&LITTLE_CPU_SLEEP_0>;
> +                       power-domains =3D <&cluster_pd>;
> +                       domain-idle-states =3D <&little_cpu_sleep_0>;
>                 };
>
> -               CPU_PD3: power-domain-cpu3 {
> +               cpu_pd3: power-domain-cpu3 {
>                         #power-domain-cells =3D <0>;
> -                       power-domains =3D <&CLUSTER_PD>;
> -                       domain-idle-states =3D <&LITTLE_CPU_SLEEP_0>;
> +                       power-domains =3D <&cluster_pd>;
> +                       domain-idle-states =3D <&little_cpu_sleep_0>;
>                 };
>
> -               CPU_PD4: power-domain-cpu4 {
> +               cpu_pd4: power-domain-cpu4 {
>                         #power-domain-cells =3D <0>;
> -                       power-domains =3D <&CLUSTER_PD>;
> -                       domain-idle-states =3D <&BIG_CPU_SLEEP_0>;
> +                       power-domains =3D <&cluster_pd>;
> +                       domain-idle-states =3D <&big_cpu_sleep_0>;
>                 };
>
> -               CPU_PD5: power-domain-cpu5 {
> +               cpu_pd5: power-domain-cpu5 {
>                         #power-domain-cells =3D <0>;
> -                       power-domains =3D <&CLUSTER_PD>;
> -                       domain-idle-states =3D <&BIG_CPU_SLEEP_0>;
> +                       power-domains =3D <&cluster_pd>;
> +                       domain-idle-states =3D <&big_cpu_sleep_0>;
>                 };
>
> -               CPU_PD6: power-domain-cpu6 {
> +               cpu_pd6: power-domain-cpu6 {
>                         #power-domain-cells =3D <0>;
> -                       power-domains =3D <&CLUSTER_PD>;
> -                       domain-idle-states =3D <&BIG_CPU_SLEEP_0>;
> +                       power-domains =3D <&cluster_pd>;
> +                       domain-idle-states =3D <&big_cpu_sleep_0>;
>                 };
>
> -               CPU_PD7: power-domain-cpu7 {
> +               cpu_pd7: power-domain-cpu7 {
>                         #power-domain-cells =3D <0>;
> -                       power-domains =3D <&CLUSTER_PD>;
> -                       domain-idle-states =3D <&BIG_CPU_SLEEP_0>;
> +                       power-domains =3D <&cluster_pd>;
> +                       domain-idle-states =3D <&big_cpu_sleep_0>;
>                 };
>
> -               CLUSTER_PD: power-domain-cpu-cluster0 {
> +               cluster_pd: power-domain-cpu-cluster0 {
>                         #power-domain-cells =3D <0>;
> -                       domain-idle-states =3D <&CLUSTER_SLEEP_0>;
> +                       domain-idle-states =3D <&cluster_sleep_0>;
>                 };
>         };
>
> @@ -5111,7 +5111,7 @@ apps_rsc: rsc@18200000 {
>                         qcom,tcs-config =3D <ACTIVE_TCS  2>, <SLEEP_TCS  =
 3>,
>                                           <WAKE_TCS    3>, <CONTROL_TCS 1=
>;
>                         label =3D "apps_rsc";
> -                       power-domains =3D <&CLUSTER_PD>;
> +                       power-domains =3D <&cluster_pd>;
>
>                         apps_bcm_voter: bcm-voter {
>                                 compatible =3D "qcom,bcm-voter";
>
> --
> 2.43.0
>
>
Tested on the Thinkpad X13s
Tested-by: Steev Klimaszewski <steev@kali.org>

