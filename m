Return-Path: <devicetree+bounces-193078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B47AF921F
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 14:05:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A688C1896BFA
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 12:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AEE32C3255;
	Fri,  4 Jul 2025 12:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="e0bixpQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6464F1DDC1B
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 12:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751630594; cv=none; b=fRs9vr+YKUMvzUU8qgBpjnRgRM6Y2gLehrcPNq1f++j9UkZ439U3MWv0SX2+9SGGJBdzG501AjGkO3ctuZdov/ZhBoCvyDIjtVoDmlG+pYbd2jfpYO7G1Ug9wSIzp6msgPyWQ9nhDi0DLIp0pU4CH4aPx9jKd4LTMgdQzckZ37s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751630594; c=relaxed/simple;
	bh=xfntfnrU2j/jtmtJBQ4wUwiec61ddgqQRiQlITDmBJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=OFFCSHne783Me1pAL0Sd4seRBgYyMCKC6Abfr96zJSFmBUDvfl1lDN/pwogdFJEEVCJM0XAkrlCX4rXBhHKRcXBym9PHB+gWPv+2LHwNLtV5JEZM/DO9xqck+mjCjCJZXf8GaBj+yOx7oBzqOacakBWp7ND0yqB+j40uQ5IxDlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=e0bixpQT; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5649WjHN020818;
	Fri, 4 Jul 2025 14:02:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	56GsPBQvVA4QiW2Jib2O4rUkRF8B4Pup7H07w5D3GmI=; b=e0bixpQTk/P5gctP
	2AZP8cwVd1OkWcQ90pio0HQohpNjoeoXjfo6bx8BdsgNla5NIIil1qHgzvJymdbS
	DXWZSK8Eea9RyjZCrRn83Uc7ewgLzpnxS5Fo/W61vgArDnh/vb+Qa6vP/1M5yZfU
	aKbhoSm/D5tpq7+d4TrFd9Gsj/4iE4rp5N/hG95eMw0OEfOKfaZikvKmaIvVvxLh
	vmkykhGAr/7v1uukapfFThx649gET9lqTI0tekKQ7bLMtc+XRHglMRSQgwwWSJiy
	mxQSNBcWT4bd8T8SKEA6q2AQfAZOZnQIkO+JzM8JT32yRslbTyUVR8ofZOWBkiDT
	FHaWTQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 47j5tmnak7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 04 Jul 2025 14:02:58 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1BB1840046;
	Fri,  4 Jul 2025 14:01:59 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EC641B30054;
	Fri,  4 Jul 2025 14:01:26 +0200 (CEST)
Received: from [10.48.87.141] (10.48.87.141) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Fri, 4 Jul
 2025 14:01:26 +0200
Message-ID: <21d921b8-be8b-48a2-9c30-a3633f25b21d@foss.st.com>
Date: Fri, 4 Jul 2025 14:01:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Access controllers: differentiate between access checks and
 grants?
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Oleksii Moisieiev
	<Oleksii_Moisieiev@epam.com>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
CC: Rob Herring <robh@kernel.org>,
        "kernel@pengutronix.de"
	<kernel@pengutronix.de>,
        Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <a89f387d-bf81-459e-979e-d97afe25dea3@pengutronix.de>
 <08bbbcaa-4a23-471b-bffb-39f71dc5160e@epam.com>
 <d60d1735-7080-4763-876b-6571b023a247@pengutronix.de>
Content-Language: en-US
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
In-Reply-To: <d60d1735-7080-4763-876b-6571b023a247@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_04,2025-07-04_01,2025-03-28_01

Hello,

On 7/4/25 12:41, Ahmad Fatoum wrote:
> Hi Oleksii,
> 
> On 7/4/25 12:07, Oleksii Moisieiev wrote:
>>> Quoting access-controllers.yaml:
>>>
>>>     Access controllers are typically used to set/read the permissions of a
>>>     hardware block and grant access to it.
>>>

To be honest, I would like to separate the "set" permissions aspect from
this property before it's used in too many context because it makes it
impossible to distinguish whether we use this property for setting a
controller configuration in a secure context e.g: TEE at boot and only
granting access to a peripheral.
Granting access may include acquisition of some resources but these
resources should not be the controller configuration itself. Here's an
attempt [1] that did not receive feedback yet to add a dedicated
pattern property for setting configurations.

I'd be grateful if you guys can provide me feedback on this.

>>> I am afraid that having the exact same binding for both granting and
>>> checking accesses complicates matters:
>>>
>>>     1) Harder to reason about device trees: Does this property actually
>>>        modify hardware state or not?
>>   From my standpoint driver should decide this. The main purpose of the
>> device-tree is to provide information, not runtime data.
> 
> It's an aspect of the hardware if a device is accessible or not.
> We have status and secure-status for example for devices strictly
> partitioned for either normal or secure world.
> There is also prior art for restricting usage of nodes, e.g.
> protect-exec for SRAM or read-only for NVMEM.
> 
> So this is not misaligned with existing practice.
> 
>>>     2) More difficult migration: If access granting is added initially to
>>>        Linux, but later moved into the secure world. How to reflect in
>>>        the DT that the access controller has become read-only and that the
>>>        driver should not attempt writes?
>> This sounds to me more as runtime configuration. I mean that in this
>> case we should handle 2 device-trees:
>> - configuration where HW didn't migrate to the Secure World
>> - configuration where read-only access is needed.
> 
> A migrated device tree might still want to describe the access
> controller, e.g. so the probe of devices known to be off limits can be
> skipped. Then we are back at square one of defining a binding on how to
> differentiate between an access controller that does modification and
> one that only does access checks.
> 
>>> My suggestion would be adding an `access-checks-only;` or similar
>>> property for access controllers that are read-only.
>>>
> 
>>> access-checks-only could be that way.
>>>
>> I've taken this example from [1]:
>>             access-controllers = <&aips5
>>                   IMX8MP_AIPSTZ_HIFI4
>>                   IMX8MP_AIPSTZ_MASTER
>>                   (IMX8MP_AIPSTZ_MPL | IMX8MP_AIPSTZ_MTW | IMX8MP_AIPSTZ_MTR)
>>               >;
>> What if just define some *_RO flag and add it for example with u-boot?
>>> Thoughts?
> 
> As extra cell or as value that's OR'd into the last cell with the flags?
> An extra cell would be an option, but I rather think it's a property
> of the controller if it's read-only or not and not of the consumers?
> 

IMO, adding an extra cell (simple boolean value) dedicated to this
purpose for your case is a good idea. The bindings states that it's
used to grant access to a hardware block. Whether the "granting"
process is just checking or having to acquire some resources is up
to each controller. Does that seem fair to you? It should address
both 1) and 2).

> Thanks,
> Ahmad
>

>>>
>>> [1]:
>>> https://lore.kernel.org/all/20250610160152.1113930-1-laurentiumihalcea111@gmail.com/
>>>
>>> Thanks,
>>> Ahmad
>>>
>>>
>>>
>>> --
>>> Pengutronix e.K.                       |                             |
>>> Steuerwalder Str. 21                   | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany              | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-5555 |
>>>
> 

[1]:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250523-access-controllers-conf-v3-1-4382e69819cf@foss.st.com/

(I'm sorry I can't find the kernel lore link even using filters on the
URL)

Best regards,
Gatien

