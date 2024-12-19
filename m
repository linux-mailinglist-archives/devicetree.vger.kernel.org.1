Return-Path: <devicetree+bounces-132574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E98C59F77C8
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41C2216E4D4
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82A122144B;
	Thu, 19 Dec 2024 08:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="r0NPr/Ua"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45752165E4;
	Thu, 19 Dec 2024 08:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734598560; cv=none; b=QP/5tPJR6t+RuKIWNhaX701yDXjqmy6BQ45s2IC1SCjekrZYaS2NtD314pc6QfOuxCiKN/LE5TAW5MYi257o0pcHN09WHlA1B5GOLqalPM4tZ5YcLR6LxW9lMa7m1j3WKezdmhJHrJP/ZD+SdXuTH7mzK1qNgRnnNu3t3mUbNNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734598560; c=relaxed/simple;
	bh=rElFZunKyOeqvSduX0Ih6J3fuL1PExrrcfkAKFsI3ew=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=XbAy3paaWDUk8fjccJ7JZpwBH1FzbNfMA6aBFIZvwxtUVDTpVbPDwReT05xvercvPzoXHNFIyfcliIrYn47DKRO50G9PFGWL93pNrNNW9/bwpz2dX1YsFS3pYzcqgD9JaJk7ps6LYE7tFVxI+dYFr29khW4xw51rLPB1imwxpo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=r0NPr/Ua; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJ74BUE030261;
	Thu, 19 Dec 2024 09:55:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	XSP1i4Lkz0rGvHcNwMWUKOJJ90fMoethAw45GkcmGoY=; b=r0NPr/UaypnBGk7b
	xeNvFt3gt2Omw8BekjKcBxFdzXl9HdlxmDA12apbeeCi7NswXrZdvwJy9nRda9bQ
	8dKQGTJjZ6uvEJjfiyRfg39DcwX6uH9DINFDiUvwypbFaJSB9g5EeHyOHSopChOc
	IQjZhXDxf/yJ5jLoAd6Kv60wPgVzCmTDax2S6qrmxM00L9xxt5iVXNTBq14hRWHw
	p/V1jhnNVn1yuuV7GQEb1w7ptRVymrpJj6s1GqvMWprDkBF1Gf4f9RcACOawIT6Q
	rtR6P7n6/6YwvQTm//eJ9XQepRme6k9zpvvEBC4+a3tYiwjgHJWs+2oOWj7skpYx
	PGe82g==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 43mes98g5v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Dec 2024 09:55:29 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1062F4004B;
	Thu, 19 Dec 2024 09:54:29 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B594825F51B;
	Thu, 19 Dec 2024 09:53:59 +0100 (CET)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Thu, 19 Dec
 2024 09:53:59 +0100
Message-ID: <11ea410e-a7df-4f1e-87df-8487b5532229@foss.st.com>
Date: Thu, 19 Dec 2024 09:53:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] ARM: dts: stm32: add counter nodes on stm32mp13 and
 stm32mp15
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
CC: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <olivier.moysan@foss.st.com>
References: <20241216153908.3069548-1-fabrice.gasnier@foss.st.com>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20241216153908.3069548-1-fabrice.gasnier@foss.st.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01

Hi Fabrice

On 12/16/24 16:39, Fabrice Gasnier wrote:
> Counter driver originally had support limited to quadrature interface
> and simple counter. It has been improved[1], so populate and enable
> stm32 timer counter nodes on stm32mp13 and stm32mp15.
> 
> [1] https://lore.kernel.org/linux-arm-kernel/20240307133306.383045-1-fabrice.gasnier@foss.st.com/
> 
> Fabrice Gasnier (5):
>    ARM: dts: stm32: populate all timer counter nodes on stm32mp13
>    ARM: dts: stm32: populate all timer counter nodes on stm32mp15
>    ARM: dts: stm32: add counter subnodes on stm32mp135f-dk
>    ARM: dts: stm32: add counter subnodes on stm32mp157c-ev1
>    ARM: dts: stm32: add counter subnodes on stm32mp157 dk boards
> 
>   arch/arm/boot/dts/st/stm32mp131.dtsi      | 40 ++++++++++++++++++++++
>   arch/arm/boot/dts/st/stm32mp135f-dk.dts   | 12 +++++++
>   arch/arm/boot/dts/st/stm32mp151.dtsi      | 41 +++++++++++++++++++++++
>   arch/arm/boot/dts/st/stm32mp157c-ev1.dts  |  9 +++++
>   arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi | 18 ++++++++++
>   5 files changed, 120 insertions(+)
> 

Series applied on stm32-next.

Thanks!
Alex

