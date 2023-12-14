Return-Path: <devicetree+bounces-25490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B738135EE
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E2A51F21C90
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B145F1D6;
	Thu, 14 Dec 2023 16:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="2OqAvHNb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6956C115
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 08:14:55 -0800 (PST)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BEFUWU9028453;
	Thu, 14 Dec 2023 17:14:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=c+4JDYOAWPGwGzrS2qgUpBZK/hN1dkyExfSzdEqAmz0=; b=2O
	qAvHNbAAH3lYaaHkFesV/i9BdKLXGmUDfVPeFvrZ57ZcXZAxPLiYDDRhYMOwCnSP
	TYB18SD9hSJYnXEZ7TN/UOvDXcQi4mJcVpUDhI8B6yTtnm2auU9B0vc7k8squwrA
	pU5vI1HuJCT8vFQDhemgWlrnaMRyxyOrRPVXZVOlWplrfc5pniXryW13F5EEMLwR
	AOnWpRQGg3nWxdWUdrV6TxbRpp9y0z557U5IR0v1C1kmprSM9QRH82pmKPdnH+Ut
	178ipAqw8HcAVOHoP1dhI4UrrzkCsQyfdbjRDNBlxF4VrqDHFO5HzF9ijl8AR1qa
	JkeivICbTI28LxJboWRw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uvehmpdch-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 17:14:32 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6BC27100053;
	Thu, 14 Dec 2023 17:14:31 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 53E872721CE;
	Thu, 14 Dec 2023 17:14:31 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 14 Dec
 2023 17:14:30 +0100
Message-ID: <31a82fc0-814e-456d-83e2-a4daf111a648@foss.st.com>
Date: Thu, 14 Dec 2023 17:14:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32mp15x: Consolidate usbh_[eo]hci phy
 properties
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>
CC: Marek Vasut <marex@denx.de>, <devicetree@vger.kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <kernel@pengutronix.de>,
        <kernel@dh-electronics.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20231206083142.1476340-2-u.kleine-koenig@pengutronix.de>
 <20231206084853.q4dfbp5twpe235se@pengutronix.de>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20231206084853.q4dfbp5twpe235se@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-14_11,2023-12-14_01,2023-05-22_02

Hi Uwe

On 12/6/23 09:48, Uwe Kleine-König wrote:
> Hello,
> 
> On Wed, Dec 06, 2023 at 09:31:43AM +0100, Uwe Kleine-König wrote:
>> diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
>> index 511113f2e399..704c0d0cfe5f 100644
>> --- a/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
>> +++ b/arch/arm/boot/dts/st/stm32mp15xx-dkx.dtsi
>> @@ -680,8 +680,6 @@ &usart3 {
>>   };
>>   
>>   &usbh_ehci {
>> -	phys = <&usbphyc_port0>;
>> -	status = "okay";
> 
> the status property must be kept. I will wait a bit for further review
> and then resend (unless this patch is picked up with this issue fixed
> up).

Applied with the fix. First I had a small doubt about the patch as we 
can also choose usbphyc_port1 for USB host but as usbphyc_port0 remains 
always connected to the USB host then your patch makes completely sens.

Regards
Alex


> Best regards
> Uwe
> 

