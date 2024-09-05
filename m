Return-Path: <devicetree+bounces-100277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8CE96D086
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:36:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2985D1C246DF
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 07:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9178419307D;
	Thu,  5 Sep 2024 07:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="bxfBW3nH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78F418A94F
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 07:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725521812; cv=none; b=A8sJzb74Xq3l9Xgkmmg2xxfb40Plgdq978SMTpoDiuErJuEY9Ce1lHesyhDZfmjTER0lx1gKW+sVdSR/e0r5T63S+Ud+LFULgiMsA1kmF0a+10IM9Egmydabovecqx7txrPTPz7BnZvBQSWf28Z7XMJTTGIEhDbc2XfkOdFjoe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725521812; c=relaxed/simple;
	bh=mF9UwhhtajqVK1Ys5oxYkwnsCo2A/VqmFSSJvDvU3ow=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=a24ryS0+mnU62lg5SGSli6oSXUuQ4fL+zmkA1QivJrp85uo3M92OAJAZ1cxGKRHi9ET0Tu8C9EorS6mss2pf58HBvzRG6wC3V4U/M/XYSJPB5hObpfeL+p/zFy5Tb6PDzxGASMH09opVf35x0rN7zyuWepjj6yz4blSs21MwJSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=bxfBW3nH; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4857Xx6D018650;
	Thu, 5 Sep 2024 09:36:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	KjkakOszw+d3m2thfD6inylI6ygEJzIsOxIYoDK0ALw=; b=bxfBW3nHZj5NfhuI
	d36WBhM/6cEGBAtbL+Qtqzw/vW8qBsR35yKUUuAOIW1m59OFJmDorfDATgp7wxO6
	4eLSiqkw/CCeGl7K1nw+37qJkBlwEcp3N3AK9acNHxQnb6hnJ3xd+IDYmpqrWP0V
	iBRX4J2QiUyc6KvpUzZ0TTSnakJbj3JpvYwPliSURaOPS9fwpCxpwCfTTUkYK74b
	9hOAShZPPjPx/aCZyhJIgZT/P+rQNx2n85FN5RxojhlOhGj5IS9bHOpIsyPR3Jmy
	Zfakk0WYJxVbZVH9JH4+3x8/moWwn7mwnq1GiNfG8P9SWWnGCD+oR+GzbHjv1KdH
	qpAcEg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41btgy533w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Sep 2024 09:36:10 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 7C34C40047;
	Thu,  5 Sep 2024 09:35:05 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 79DAD23F480;
	Thu,  5 Sep 2024 09:34:30 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Thu, 5 Sep
 2024 09:34:29 +0200
Message-ID: <10cc8788-260a-43a3-9f46-12a730962449@foss.st.com>
Date: Thu, 5 Sep 2024 09:34:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: stm32: Use SAI to generate bit and frame
 clock on STM32MP15xx DHCOM PDK2
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob
 Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240830215701.103262-1-marex@denx.de>
 <20240830215701.103262-3-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240830215701.103262-3-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-05_04,2024-09-04_01,2024-09-02_01

Hi Marek

On 8/30/24 23:56, Marek Vasut wrote:
> By default the SGTL5000 derives bit and frame clock from MCLK, which
> does not produce particularly accurate results. The SGTL5000 PLL does
> improve the accuracy, but also increases power consumption. Using the
> SoC SAI interface as bit and frame clock source results in the best
> accuracy without the power consumption increase downside. Switch the
> bit and frame clock direction from SAI to SGTL5000, reduce mclk-fs to
> match.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)

3 PHDK2 patches applied on stm32-next.

Thanks
Alex

