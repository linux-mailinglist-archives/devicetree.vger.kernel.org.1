Return-Path: <devicetree+bounces-62269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3463F8B0841
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 13:23:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2C50289184
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 11:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3924A15A4AA;
	Wed, 24 Apr 2024 11:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ULMeqJtG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61988158DBE
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 11:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713957816; cv=none; b=nOZRG3TWY5ZcVt4RxVeLwOcpgIW+k+i5SJ9XmCdt9TWbMPdTVphrIgJU0oWB3zwzUXc0LvNa+5X4UWy2n8sOl29amlYCZZxrxlWqQBGSwWVioYYbtRm/jsiQw1M7SOL1UPN0HdSADFQxcnB1QNCiMK9b/V4DGIQiQNd0+6k4q9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713957816; c=relaxed/simple;
	bh=jO1+xmcyT5I9v4tZVZ1d96pbFPmBoJZzFcDtl1zowAU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kfgcANsSiNjeXxH10WaYjSTiH4dAOIHmbB311SAzV9E5G5IxQS9qRtE90y0ImSb6pHLw0LD8yX8of80Ee5lIqexhadx3Ha0K+6mEU8UaBBGXl9EbxNDVdf4N2zdkOzBds3QrsHoAc5B87QQL4ArQZKh+W01X3ozySNBovsCK3Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ULMeqJtG; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-61af74a010aso70155857b3.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 04:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713957812; x=1714562612; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ln9+pg397axOqdZ8donOOoy2lTHgumZvva3u8wpOyis=;
        b=ULMeqJtGGk8VtJdWNpblq5XHhxwlHRSxkvm9vTS14PXWx0aDNlx1yvPv0+GKtYAe1L
         OkK/bKR8Xio/TZbXLDPug643BFq3lyWyNXkfiTp5t2kZP/ulS5inDET5ubv00bOAeuYr
         hyJEpPQKem+3gupTwXAkqs9jk1QhnWz9BNISy9RDsrAEhveAQi80gTUtyxAKPHtp3xiB
         bS9kDaNpdL15NOPwaUuXmrNZhggS2LTK3wyKUXFcgTnG5Y+hHUGRTMMQjodZohyZymBZ
         w2FZeiKruxaS4jf59XIvI0CeTmW1yrfp9xFN5oV4jKlmMC1Ox9lD7skVZtYQRzJQqwp7
         k6bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713957812; x=1714562612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ln9+pg397axOqdZ8donOOoy2lTHgumZvva3u8wpOyis=;
        b=A7Oyd37rYBiIGfxnkiCkbtRfRExEPIRy0TxIrCDfGftSvpZUYMUrb/qGMGpvDRexaC
         M2kotMZAcTrXMOxyJMeJKZft8+6Rp9oW8UHW0DccWDdTemDLJ6i0c10t360uv8GqdeX2
         pwhwob2NRFRb78RBqkibjrOZ8i7FJH8DRcCb7sn7lu+TGvifJfeu1wNtdY+tOcewOgnG
         +B6PazF4LEDZcF3oN3v0NOVNj59D56SgGWWVjNCXm2BG7Eu7Vsy8LpJjiL2aHYRd5L9C
         q+ZoS1KNT8hSPy26h2YdvrutbXh/VeD5yYWFtffi7y75rdG0eQ/6bh0ZkiDlUb55eg4D
         0I7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVeE9VKbVwPDy64FiEKOMioxBe5e1vvJCxzq4Z0dX0Y8RqWo49U8tzPT6go1HfVRoQvd5ln9TFoCka7US/lXIEkcdiqnE49fJYQTg==
X-Gm-Message-State: AOJu0Yz03t60Oqsy6cw9/hfYFYcsTHIDzTUu6TbJtG1n+SsN2PoB8W61
	TGu18Bljbq0vogF4PPq60zi0gWrVWJR9uWMo0Ydbns5NmfMSHaX7uSDB05rs6XvoLZd/4HPMmk9
	l6WsfusHQF9yRgf8IyklNHWLbfxo7i+VxVP27gA==
X-Google-Smtp-Source: AGHT+IGyMvZRrFQqm2rU9lrkFEVJeFfiWq/kBNzRzDGPLliI2awpe//wjMSlt7lzbgaKuWjFkR6/B06yPkXjykP9pGQ=
X-Received: by 2002:a25:6841:0:b0:ddd:696a:8656 with SMTP id
 d62-20020a256841000000b00ddd696a8656mr2219684ybc.41.1713957812276; Wed, 24
 Apr 2024 04:23:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424101503.635364-1-quic_tengfan@quicinc.com> <20240424101503.635364-4-quic_tengfan@quicinc.com>
In-Reply-To: <20240424101503.635364-4-quic_tengfan@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 24 Apr 2024 14:23:21 +0300
Message-ID: <CAA8EJpqiXqsNq0B6EHnqubPcUzwJ0bc0y3rJ4RfrRimKifPf0Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm4450: Supply clock from cpufreq
 node to CPUs
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: rafael@kernel.org, viresh.kumar@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, manivannan.sadhasivam@linaro.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Apr 2024 at 13:17, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
> Qualcomm platforms making use of CPUFreq HW Engine (EPSS/OSM) supply
> clocks to the CPU cores. But this relationship is not represented in DTS
> so far.
>
> So let's make cpufreq node as the clock provider and CPU nodes as the
> consumers. The clock index for each CPU node is based on the frequency
> domain index.

Is there any reason why this is not a part of the previous patch?

>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm4450.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm4450.dtsi b/arch/arm64/boot/dts/qcom/sm4450.dtsi
> index 92badfd5b0e1..8d75c4f9731c 100644
> --- a/arch/arm64/boot/dts/qcom/sm4450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm4450.dtsi
> @@ -47,6 +47,7 @@ CPU0: cpu@0 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x0>;
> +                       clocks = <&cpufreq_hw 0>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_0>;
>                         power-domains = <&CPU_PD0>;
> @@ -72,6 +73,7 @@ CPU1: cpu@100 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x100>;
> +                       clocks = <&cpufreq_hw 0>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_100>;
>                         power-domains = <&CPU_PD0>;
> @@ -91,6 +93,7 @@ CPU2: cpu@200 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x200>;
> +                       clocks = <&cpufreq_hw 0>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_200>;
>                         power-domains = <&CPU_PD0>;
> @@ -110,6 +113,7 @@ CPU3: cpu@300 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x300>;
> +                       clocks = <&cpufreq_hw 0>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_300>;
>                         power-domains = <&CPU_PD0>;
> @@ -129,6 +133,7 @@ CPU4: cpu@400 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x400>;
> +                       clocks = <&cpufreq_hw 0>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_400>;
>                         power-domains = <&CPU_PD0>;
> @@ -148,6 +153,7 @@ CPU5: cpu@500 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a55";
>                         reg = <0x0 0x500>;
> +                       clocks = <&cpufreq_hw 0>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_500>;
>                         power-domains = <&CPU_PD0>;
> @@ -167,6 +173,7 @@ CPU6: cpu@600 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a78";
>                         reg = <0x0 0x600>;
> +                       clocks = <&cpufreq_hw 1>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_600>;
>                         power-domains = <&CPU_PD0>;
> @@ -186,6 +193,7 @@ CPU7: cpu@700 {
>                         device_type = "cpu";
>                         compatible = "arm,cortex-a78";
>                         reg = <0x0 0x700>;
> +                       clocks = <&cpufreq_hw 1>;
>                         enable-method = "psci";
>                         next-level-cache = <&L2_700>;
>                         power-domains = <&CPU_PD0>;
> --
> 2.25.1
>
>


-- 
With best wishes
Dmitry

