Return-Path: <devicetree+bounces-83357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DB9928279
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:06:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D84E28143B
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 07:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86CD9144316;
	Fri,  5 Jul 2024 07:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="4UU3Iab3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90DAF144303
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 07:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720163204; cv=none; b=eL3aAghQ++hGYK8M58rW7w5+mm08dwstka61jAt3QPB2BJDlL13TeEqGnYwI0AlUKZ/QxW3r/qkR2Jsg2Pul0NwGO7FyGx2h/zM5tpe6NoQnbQRZj1zo9quPMNYTYh9dzASiNP8lowzgQ+u1oA4HqTWFT6WH0mLahGGtiPn1Llg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720163204; c=relaxed/simple;
	bh=mrnWReC0b1yO9nTYPT/qEMnYAOpMnyzDITemPTuDFZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=FRkAW9N7KRZvw+ejoKuIugFT+y4c845FPOnEhnA5HdMDVnk0YDUDZ4TJTBg7ZnjcyM2frPFJbE5oBxYuMQHF884aj/K10ErRRTqHRo/TPb1hjaNGS+D7sGxWSa0DHrKYAI/RGcj1FBdqi+/pXaqXVdj95YR7AuuTbPDl4Zlt4RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=4UU3Iab3; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 464HIL81007347;
	Fri, 5 Jul 2024 09:06:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	dj6RaNDsTFrHTb+rVCe0Rma/sFq7Xd4ZdhBU2KZqmiU=; b=4UU3Iab3GCZ59F+G
	83hx7BXF7c7wmCHjb30dNEpFkKt71lk37Mgdtd0uleYbcuwvJ00Yf2FphbmS5MWv
	lmpAg610iG4seBT4bVEPxk1iOYJYdsQJCQXhfCc0vRVGM7Xp9H+r/20T4X5mC7wk
	K/obadVxHNN4CrtSzU8brpXw4p2I+/B5tgLFUyNpragMtEkuIVeqcZUP9wFA6Ko6
	Vi+dT0IYs++e3o09mY+ARRqm74xT5nF2oM0X/kfnAhjJcHjSdH0Qd/05awDgcF9E
	g2hdxWwfO39o0l7lTIWhKwFBymmB6+S77k+nNvBUJk4KahcN9u9EP5W0mvqc4Yv4
	q+ktcQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 40295dqrst-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Jul 2024 09:06:08 +0200 (MEST)
Received: from euls16034.sgp.st.com (unknown [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BE68F10004D;
	Fri,  5 Jul 2024 09:06:05 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9C7E6215BD0;
	Fri,  5 Jul 2024 09:06:04 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Fri, 5 Jul
 2024 09:06:04 +0200
Message-ID: <daad8a12-5822-4008-9418-0287476ff424@foss.st.com>
Date: Fri, 5 Jul 2024 09:06:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: omit unused pinctrl groups from
 stm32mp13 dtb files
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC: Christophe Roullier <christophe.roullier@foss.st.com>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20240629203706.93145-1-marex@denx.de>
 <f303a45a-3844-485c-8971-f71a46b8b0fb@foss.st.com>
 <f2a1f9c0-3234-4839-b99c-dd33b8dfc268@denx.de>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <f2a1f9c0-3234-4839-b99c-dd33b8dfc268@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-05_03,2024-07-03_01,2024-05-17_01



On 7/4/24 19:56, Marek Vasut wrote:
> On 7/4/24 6:40 PM, Alexandre TORGUE wrote:
>> Hi Marek
> 
> Hi,
> 
>> On 6/29/24 22:36, Marek Vasut wrote:
>>> stm32mp13-pinctrl.dtsi contains nearly all pinctrl groups collected from
>>> all boards. Most of them end up unused by a board and only waste binary
>>> space. Add /omit-if-no-ref/ to the groups to scrub the unused groups
>>> from the dtbs.
>>>
>>> Use the following regex to update the file and drop two useless 
>>> newlines too:
>>> s@^\t[^:]\+: [^ ]\+ {$@\t/omit-if-no-ref/\r&@
>>
>> I understand the aim of this patch but I'm just wondering about DT 
>> overlay that would need one of those configurations. IMO, in this case 
>> the DT overlay will not apply.
> 
> It is always a compromise, either we will have massive ever-growing base 
> DTs or DTOs would have to ship their own pinmux settings. I think I am 
> fine with the later option, also that's what the MP15 is doing already.

Yes, it is probably the best solution to define pinmux in DTSO that 
would need a new pin config. For some use case, we will have pinconfig 
duplication in dtso but as you said it is a good compromise.

