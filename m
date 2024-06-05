Return-Path: <devicetree+bounces-72634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 776C28FC6E8
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 221462854F0
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB44B4965D;
	Wed,  5 Jun 2024 08:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="wroejdHY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10B413AD39
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717577275; cv=none; b=gI4mRIGKIeTw0MGTzSBbEDbQgLyNFDB3vxwIWG+R8Zvu1PRF/WQz1qeaMxr1IixTaNK4Yo5CG0CI+SuqV02dDK+SnIhLLbAuEvurkeKDp0PZKNzekbwAaVYi/AAj1FWm4d2TCAb9fBz2dlkOY9iphOCalNBF0zBHnQeGrKji/KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717577275; c=relaxed/simple;
	bh=HfuukDY4P4Jc+uzxr/RCOVspd6zU1RCa0bOQ4OkUfsg=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=my+ScDYOsy9ksdEsqEv8u3k50mXPokPSX40ZqygdSbaQ0thtF6FHLg/PPMxRCe73CIQjxyhpXWs8Pao88l1SHOi5bNPr5+PL7w3UMUbgOFsb8lx/W6g2YEJiXEwRT5txoJJN7aer3T7H8romlpezIICI/DR6P4VuJhTRwIUS7K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=wroejdHY; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4558AUWj012942;
	Wed, 5 Jun 2024 10:47:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	4FAJWk9M1sMhP2MhVo4vKkv5W9zTiSVeTuDHaxc7GHU=; b=wroejdHY+uXewoNK
	NWSaRx0sXuDcdBVtCxYpz00WwXCKuuxxnbyF6wWTO0vK/hn8FftTO2ma197xQ+7o
	VU0HlymlEdF9AEfn3g82apdVXdgXt5qkLAsM+bRgafhl/LE09ax41qLXY/xVDD4y
	TQQoRXh7RSV8rO0jgXqAtxs72p1TAlVC0d/y3bEGVe/K1K2SIasKTW7a9fNjliWa
	TacnlnT7ffPri997CoLj1ZCn1i5J8VtMaMsed3Gc1UH9wQ1jP8MSY5QhLQvBDtV3
	7TCBcY0JnhpC2aXjj+3cy3rv6IMs9gAwKqjVgCm6nqrcBWZnoeKFcUUAafvuuT2k
	+eCWVQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3yfw3wqvyj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jun 2024 10:47:31 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id B65E940047;
	Wed,  5 Jun 2024 10:46:19 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8CDDD2132DA;
	Wed,  5 Jun 2024 10:45:45 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 5 Jun
 2024 10:45:45 +0200
Message-ID: <6445fbc0-1833-438b-a73f-0192e3a60677@foss.st.com>
Date: Wed, 5 Jun 2024 10:45:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Add arm,no-tick-in-suspend to
 STM32MP15xx STGEN timer
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob
 Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240513215835.183402-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240513215835.183402-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-04_11,2024-06-05_01,2024-05-17_01

Hi Marek

On 5/13/24 23:58, Marek Vasut wrote:
> STM32MP15xx RM0436 Rev 6 section 46.3 System timer generator (STGEN) states
> "
> Arm recommends that the system counter is in an always-on power domain.
> This is not supported in the current implementation, therefore STGEN should
> be saved and restored before Standby mode entry, and restored at Standby
> exit by secure software.
> ...
> "
> Instead of piling up workarounds in the firmware which is difficult to
> update, add "arm,no-tick-in-suspend" DT property into the timer node to
> indicate the timer is stopped in suspend, and let the kernel fix the
> timer up.
> 
> Fixes: 8471a20253eb ("ARM: dts: stm32: add stm32mp157c initial support")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/st/stm32mp151.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp151.dtsi b/arch/arm/boot/dts/st/stm32mp151.dtsi
> index 3b705e7fe5c0d..68846699b26fd 100644
> --- a/arch/arm/boot/dts/st/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp151.dtsi
> @@ -50,6 +50,7 @@ timer {
>   			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>,
>   			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_LOW)>;
>   		interrupt-parent = <&intc>;
> +		arm,no-tick-in-suspend;
>   	};
>   
>   	clocks {

Applied on stm32-next.

Thanks
Alex

