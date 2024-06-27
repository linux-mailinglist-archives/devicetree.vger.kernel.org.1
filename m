Return-Path: <devicetree+bounces-80722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9409F91A451
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:50:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C46F21C2039F
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F064A13E40D;
	Thu, 27 Jun 2024 10:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="xd3XmK4T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387BD487BC
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719485395; cv=none; b=AnbNeeLa8c0aaTF1lvssdAM0b/iyxn03l62Evh/c4+WpHXriIGXpbuortx/f7d5WyPM/PwbuCnKvuAni0PXkCcSL4GROUZ5tdwqP5c9xPeDZJ78mBBHClG0dR5a3uK/JJImXltnp/nVXh/oFN4nCBIThM7qEOPcEyGNAk3wYX2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719485395; c=relaxed/simple;
	bh=XiJ1V4+qRfu4ihgVyfYmujCQnZxcaoHmYDvu78+qk4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=iwc7+sK3BBK+CP6JFBZTHjOy9eUuXg8uA3wpwM69KKAPldY4xdLBAOy3SRcfSX0mOG7RV78TcZ4eDcV+MgJPKf8tMF98uD1TqalA2HzlqB5Katd3NUrebD0UcHnP00E4PfAkpx4nPKQcditV+YO6fLKMwxlCU7aCx1pZSuhGZMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=xd3XmK4T; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45RAkHeG009985;
	Thu, 27 Jun 2024 12:49:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	gbAOqMMd/GKKZwl4EkJm54U6+0PC0rBSSFJsic/lrUk=; b=xd3XmK4TKl7wyPkV
	N2Otz8I9a3JYdRjkCeSwp93B6xVmSh+52je5y//zNMhFTqSOUOogN88bfVILxn/f
	Qa/CIlL3XLaI3ZKo2LEIR6QrDqbvis7h1CYY9qPirpQZgEy3JBiumheHsxo3nPVj
	fotenzSFVj/rZT98Ii/WEctGcnStQWZgiRpe2emtUsRLelDMxx1EQGXdv2eFL737
	G4pPZyscaFJ6r36xy5axqikm6arjVH/wyuKoOz5rlOLTwIiCyGVdLBCHNJCVJd1z
	Uc1V6udbjoj0T17viLP1j7F9EDa/aiuKlNE2XHs3Y7yZzY80Dq5Fkw2depVBnLP8
	Mok49w==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3yx9jjjk78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jun 2024 12:49:08 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 6988B4002D;
	Thu, 27 Jun 2024 12:49:04 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4E3C7216EE6;
	Thu, 27 Jun 2024 12:48:24 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 27 Jun
 2024 12:48:23 +0200
Message-ID: <0ab8fe8a-2017-432f-80fc-5c2c381d1fd0@foss.st.com>
Date: Thu, 27 Jun 2024 12:48:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Deduplicate rproc mboxes and IRQs
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob
 Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240623194954.79988-1-marex@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240623194954.79988-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-27_06,2024-06-27_02,2024-05-17_01

Hi Marek

On 6/23/24 21:49, Marek Vasut wrote:
> Pull mboxes, mbox-names, interrupt-parent, interrupts properties of the
> m4_rproc into stm32mp151.dtsi to deduplicate multiple copies of the same
> in multiple board files. Worse, those copies were starting to get out of
> sync, so this should prevent any such issues in the future.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/st/stm32mp151.dtsi                        | 4 ++++
>   arch/arm/boot/dts/st/stm32mp157a-icore-stm32mp1.dtsi        | 2 --
>   arch/arm/boot/dts/st/stm32mp157a-microgea-stm32mp1.dtsi     | 2 --
>   arch/arm/boot/dts/st/stm32mp157c-ed1.dts                    | 4 ----
>   arch/arm/boot/dts/st/stm32mp157c-emstamp-argon.dtsi         | 4 ----
>   arch/arm/boot/dts/st/stm32mp157c-odyssey-som.dtsi           | 4 ----
>   arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi | 4 ----
>   arch/arm/boot/dts/st/stm32mp15xx-dhcom-som.dtsi             | 4 ----
>   arch/arm/boot/dts/st/stm32mp15xx-dhcor-som.dtsi             | 4 ----
>   arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi                   | 4 ----
>   arch/arm/boot/dts/st/stm32mp15xx-osd32.dtsi                 | 4 ----
>   11 files changed, 4 insertions(+), 36 deletions(-)
> 
...

It is an old story we already discussed in the past:

https://lore.kernel.org/linux-arm-kernel/81f4574d-38c2-21f2-b947-d13e5fc99c60@denx.de/T/#mef3a4050ab4ff181416fe5681f1d5cb9fb744573 


My position remains the same. Those interrupts depends on your 
system/firmware you plan to use. So we give one example in our ST board 
which relies on firmware we load in OpenSTLinux. But it is just an 
example. For example depending the firmware used, the detach could be 
used or not.

So I would prefer to not take it.

Regards
Alex



