Return-Path: <devicetree+bounces-73073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 401AC8FDF2F
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 08:57:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3798E1C21A78
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 06:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8A16433D5;
	Thu,  6 Jun 2024 06:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="eFS0yGza"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E870119D898
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 06:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717657025; cv=none; b=mbKuQgG/ghDfuJFGPW+lvFArLNFzltAmwTIFw3LJMu5Gcp+KaQcFp+O//h6IerCA9lZ2JnvGaK55AdfJhe66ruIkCEjivC6VtWSCZVtjfQJP3qIeTPr0agEs/SsfhV1aww+EiTFvl6O7c8qtVYZbffWpe49ower6esdA4KWTjFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717657025; c=relaxed/simple;
	bh=yFX5RUHWuOzTFfSFBdcspw6D6wGUNCnLLGmgsQCe6bQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=rBBaAX9GqK/gfIvIHkdravWWN6j3V2wL1XEBz+EHxF5kfCJ51j/2dOFuEKykUs1Z+tLrsDp1E6XbLAf1GVoRQRi39za31vG9BfcnFz4g0qIdDJq60EaXTeQs3xKqRO843u2iTV8BQgYOfteKr66nFcjrHAizzGcB+zQlZdDGxBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=eFS0yGza; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45661ISi018429;
	Thu, 6 Jun 2024 08:56:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	q0pHrhrEV2nvppmu5Y5o14Zk3kbzMDqiybbgUNzqXQI=; b=eFS0yGzaw+mUJO06
	Qrc3cVuEAifZjh5JTSKnXkihS6HaP0kZMIRgvcgJLM/WBrayNW/BFTVpc+dVkssD
	j02nIkGfuXSB4yeQHZfMTdiuXbvUZvcwqOjI/lblCIV794azupfJifz0Iqy53CDm
	9h6R0yb2qdlRShE46VCiYAzx/cQwSogw6XuIrhgSWCt0JRw+KkV/xAbTeKAvLRwX
	9pJODzzcFAcLNZe4XR9WkDHd4EeMLC/YNLX3m624txcNssdowGP1i5Pfng+lnkBY
	PjKQVL+H346IlvMZzgIcFIW6qDEDUElIWzUrD361f7gQuaBi3qpt073gT1l13Lp3
	PG+Pfg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ygekj2hmr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Jun 2024 08:56:07 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id DB8D140049;
	Thu,  6 Jun 2024 08:56:01 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EC7DD20F2D3;
	Thu,  6 Jun 2024 08:54:51 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 6 Jun
 2024 08:54:51 +0200
Message-ID: <dce9b2fb-9a63-4e75-aa97-d1c6d2a319bc@foss.st.com>
Date: Thu, 6 Jun 2024 08:54:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Fix STM32MP13xx DHCOR DHSBC Makefile
 entry
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
        Ahmad Fatoum
	<a.fatoum@pengutronix.de>,
        Andre Przywara <andre.przywara@arm.com>,
        Conor
 Dooley <conor+dt@kernel.org>,
        Dario Binacchi
	<dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, Sean
 Nyekjaer <sean@geanix.com>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Stephen Rothwell <sfr@canb.auug.org.au>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240605232809.169927-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240605232809.169927-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-06_01,2024-06-06_01,2024-05-17_01



On 6/6/24 01:27, Marek Vasut wrote:
> Fix stm32mp135f-dhcor-dhsbc board Makefile entry,
> replace 'dhsom' with 'dhcor' typo.
> 
> Fixes: 12ff8e167641 ("ARM: dts: stm32: Add support for STM32MP13xx DHCOR SoM and DHSBC board")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: "Leonard Göhrs" <l.goehrs@pengutronix.de>
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Andre Przywara <andre.przywara@arm.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sean Nyekjaer <sean@geanix.com>
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/st/Makefile | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/st/Makefile b/arch/arm/boot/dts/st/Makefile
> index db9718059ae2f..015903d09323f 100644
> --- a/arch/arm/boot/dts/st/Makefile
> +++ b/arch/arm/boot/dts/st/Makefile
> @@ -29,7 +29,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
>   	stm32h743i-eval.dtb \
>   	stm32h743i-disco.dtb \
>   	stm32h750i-art-pi.dtb \
> -	stm32mp135f-dhsom-dhsbc.dtb \
> +	stm32mp135f-dhcor-dhsbc.dtb \
>   	stm32mp135f-dk.dtb \
>   	stm32mp151a-prtt1a.dtb \
>   	stm32mp151a-prtt1c.dtb \

Applied on stm32-next.

Thanks
Alex

