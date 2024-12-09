Return-Path: <devicetree+bounces-128914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BEC9E9D38
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 18:42:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52905166A81
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BF211552E7;
	Mon,  9 Dec 2024 17:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="6VyUfRMo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6266113AA2F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 17:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733766150; cv=none; b=fj5RTmEWpZVjfK35ZT1+CWySt+rstgzKKXDXhVY64SdxhzsT6SSaCakrktpHgBa7B47hPwoKsjuGiH+c7t7Pri0N90jbU/ZKMw/aSiEyWFCTu1o7d44aDjK9TYdGicZ4JTu4SLpgeIhB6qBw9lSWEx8xiLlGxvR5z0Vypk5GcRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733766150; c=relaxed/simple;
	bh=o56sGJO08PgW4hYf+VT98BktB4r2mV4ro7j6nuSWxPU=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=pJRx1ZSFjmsFqMyVS1D1eW0ejzZYgb3MvAPX0+a9R48+oHnAypG41siQjkFytVrSZbNe6j9narg/wf9xBsrHIlt9geO4FLVTKinyK1NHY4LOPn3yX6kH+YboIjaCzn99K+LZkOolJxXz2ti/V6jBD5A6x0tZadkczVUQmas5vo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=6VyUfRMo; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B9GD8a2003740;
	Mon, 9 Dec 2024 18:42:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	k7PPrERAdht9tlxv/xVeZk5zWfuWmo4pCFcm1v1cFEU=; b=6VyUfRMol3Ii9cZX
	v4hjddSd3Ygg+U3ZMLb6sBBvC8Ak3CSPomkFZ1mw+QkbAJ+gkBstImDnfoyJkUmz
	hdZ5J72JNS7uP5MEMlv93VdN2e40K9QkBJpEkux3qNgRHLJTMSDPeoT/i5vaJCQq
	5kp49oZV8mJ25uC1XtW0x/NXKnhG5CtPuX93Y6mX9N0LtB1KXDqLadLbHoIGKMok
	/DfGG7RZkbG212VUpJw/SA+Yi/FsK52XkBqEsMQUSV6uPNn6xI1PJxS7+YJ9nL71
	f3B/JVF/8FNZ8bB4lQgE2IJDSjoOHY6ZT4gDcEQnrs7abEarHlHj930fqDgzx8Eg
	R2NCvw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 43ccnm18yt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Dec 2024 18:42:02 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 874204004A;
	Mon,  9 Dec 2024 18:40:57 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 55A362A2FD8;
	Mon,  9 Dec 2024 18:39:31 +0100 (CET)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 9 Dec
 2024 18:39:30 +0100
Message-ID: <4a5ce71f-bdb1-473d-8fea-9c07389b47ca@foss.st.com>
Date: Mon, 9 Dec 2024 18:39:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Deduplicate serial aliases and chosen
 node for STM32MP15xx DHCOM SoM
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob
 Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20241105233026.161463-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20241105233026.161463-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01

Hi Marek

On 11/6/24 00:29, Marek Vasut wrote:
> Deduplicate /aliases { serialN = ... } and /chosen node into
> stm32mp15xx-dhcom-som.dtsi , since the content is identical
> on all carrier boards using the STM32MP15xx DHCOM SoM. No
> functional change.
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
>   arch/arm/boot/dts/st/stm32mp15xx-dhcom-drc02.dtsi   | 12 ------------
>   arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi    | 10 ----------
>   arch/arm/boot/dts/st/stm32mp15xx-dhcom-picoitx.dtsi | 10 ----------
>   arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi     |  7 +++++++
>   4 files changed, 7 insertions(+), 32 deletions(-)
> 

Applied on stm32-next.

Thanks!

Alex

