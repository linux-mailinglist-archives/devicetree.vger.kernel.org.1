Return-Path: <devicetree+bounces-25705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6448143DC
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 09:41:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3A441C2276C
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 08:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC69411C83;
	Fri, 15 Dec 2023 08:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="2la1d7wK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1CA171DE
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 08:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BF3A19E028453;
	Fri, 15 Dec 2023 09:23:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=xcAiWo/a18DOKV2t+LlI0pMtcGFpe6qJlE6ADF/4v7Y=; b=2l
	a1d7wKV+EobPTyM7kYIML2qkQg+vYzkuTCzz+A83OWkxFJ/KOKsol3eGeHOt5vZk
	IeB0GBO3Ij2E2wuTyXyHNUCcmGduCrECSDEJb+emAb8KwLFEuOaKCSBM9zCUncG0
	FIZFemEysrP/jsnV4u5gSYXYlzrR6BoMmmEr2pob9zWrGf7HLOKrRcXlPrJOW13n
	DbBu7YI7D5wusFggNPBMSNKgzTcunEc43QwfnF2LrF/RtY6yYHCeYPtkEKalxHTP
	f6qsHmA+GrKEt3qVxyDEXYsz6xF7gges/hbMXqFAPPm6zgAa6tr9K1tYL1kk7r1M
	24AhhQpLf9djhAbarrKQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uvehms3pk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Dec 2023 09:23:53 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8F64A10005D;
	Fri, 15 Dec 2023 09:23:46 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 82AFF208D6F;
	Fri, 15 Dec 2023 09:23:46 +0100 (CET)
Received: from [10.201.20.59] (10.201.20.59) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 15 Dec
 2023 09:23:45 +0100
Message-ID: <34e78d6c-5a1e-4507-b827-15f74c02f758@foss.st.com>
Date: Fri, 15 Dec 2023 09:23:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Linux-stm32] [PATCH] ARM: dts: stm32mp15x: Consolidate
 usbh_[eo]hci phy properties
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
        =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>
CC: Marek Vasut <marex@denx.de>, <devicetree@vger.kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, <kernel@dh-electronics.com>,
        <kernel@pengutronix.de>, <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20231206083142.1476340-2-u.kleine-koenig@pengutronix.de>
 <20231206084853.q4dfbp5twpe235se@pengutronix.de>
 <31a82fc0-814e-456d-83e2-a4daf111a648@foss.st.com>
Content-Language: en-US
From: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <31a82fc0-814e-456d-83e2-a4daf111a648@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-15_04,2023-12-14_01,2023-05-22_02

On 12/14/23 17:14, Alexandre TORGUE wrote:
> Hi Uwe
> 
> On 12/6/23 09:48, Uwe Kleine-König wrote:
>> Hello,
>>
>> On Wed, Dec 06, 2023 at 09:31:43AM +0100, Uwe Kleine-König wrote:
>>> diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
>>> b/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
>>> index 511113f2e399..704c0d0cfe5f 100644
>>> --- a/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
>>> +++ b/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
>>> @@ -680,8 +680,6 @@ &usart3 {
>>>   };
>>>     &usbh_ehci {
>>> -    phys = <&usbphyc_port0>;
>>> -    status = "okay";
>>
>> the status property must be kept. I will wait a bit for further review
>> and then resend (unless this patch is picked up with this issue fixed
>> up).
> 
> Applied with the fix. First I had a small doubt about the patch as we
> can also choose usbphyc_port1 for USB host but as usbphyc_port0 remains
> always connected to the USB host then your patch makes completely sens.

Hi UWe, Alex,

I tested it, with the fix, on stm32mp157c-ev1 and stm32mp157c-dk2. You
can add my:
Tested-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>

Best Regards,
Fabrice
> 
> Regards
> Alex
> 
> 
>> Best regards
>> Uwe
>>
> _______________________________________________
> Linux-stm32 mailing list
> Linux-stm32@st-md-mailman.stormreply.com
> https://st-md-mailman.stormreply.com/mailman/listinfo/linux-stm32

