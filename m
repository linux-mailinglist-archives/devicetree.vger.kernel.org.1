Return-Path: <devicetree+bounces-90357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C9C94507C
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 18:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1BD36B26727
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 16:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147C91B4C45;
	Thu,  1 Aug 2024 16:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="m64DJuSJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DC81B3742
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 16:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722529510; cv=none; b=qEsQosE/SYwxX6NDklfrvkcfX+I+aD9/ZRg6JjjqkpcFhr48MVTe4x18vUSubwQghDU6q1p4xJb+R78QwCWUI+hgher5bQgLqsf8f72CsFI3/mgzdQu2qTHCFhVyQuMG2OYqKDxsf394i5XVAHZclxSTxgWUG6mJ+0npeuBwh1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722529510; c=relaxed/simple;
	bh=wjo3ON0VfxE+s11j6ilSqGgI5waMkg/AzmlXcxinWIw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IyCwseY4kg4FUit0QV7g7vID+IDPbtHsNHxWG6s79ydpbk5418CZOpeV86IjSZ4S3tVR7dyatMb3o4WRnYlSCLhhvDbt78UHAuSe6s7n07vgSl5RptgPtUscrkPWIyFozW9dlWIsow2creMnR5ClKIZtnBZNRKJdtp3tSn609Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=m64DJuSJ; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 471FJaMe020856;
	Thu, 1 Aug 2024 16:24:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=pp1; bh=v
	4CcbqHLngoW1/Jmw+QAuAQqicEbMgOfe5K/pVdvfXU=; b=m64DJuSJvPtDkz65H
	9tbpCeA2W3muOJaendKzGTLTGUPrsH7ZNm0OtB+YYO2AS+uIkCR4wGOj5Jzp4pTW
	dsG9FckjMGar9BX86jgpNsA4YkRmhi7wDKycMwGnhivcSaNdiuZ+S8iq8p6G3RLq
	pYVFaK3thrO8socPxLoCE9EJHPjqeEGDSvNiEKdipXg0sf11FZyL88qipxc9QVuT
	CGPs84/esRIdrIC+6oQdmIqp8YIRE66BR5gy1R515ChgH0kgqp0TrKbIQXwH/qNn
	H/WQ86iKFmn5kmZH6enVRo9F87vRTAzTEpopKWCiHWWu0o3nE9Oex1Nw9Jc/SqRL
	xaT+A==
Received: from ppma11.dal12v.mail.ibm.com (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 40rc5dg9te-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 01 Aug 2024 16:24:52 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
	by ppma11.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 471Fpnqt009176;
	Thu, 1 Aug 2024 16:24:51 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 40ndx3aev2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 01 Aug 2024 16:24:51 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com [10.39.53.229])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 471GOmWg44171948
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 1 Aug 2024 16:24:51 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B775358059;
	Thu,  1 Aug 2024 16:24:48 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D4D955805B;
	Thu,  1 Aug 2024 16:24:47 +0000 (GMT)
Received: from [9.24.12.86] (unknown [9.24.12.86])
	by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Thu,  1 Aug 2024 16:24:47 +0000 (GMT)
Message-ID: <4d5b8958-2d33-42df-ac97-82bb63fdff38@linux.ibm.com>
Date: Thu, 1 Aug 2024 11:24:47 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/1] ARM: dts: aspeed: system1: IBM System1 BMC update
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: andrew@codeconstruct.com.au, eajames@linux.ibm.com, robh+dt@kernel.org,
        joel@jms.id.au, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org
References: <20240731214737.986010-1-ninad@linux.ibm.com>
 <172252600790.120672.12772438670145461296.robh@kernel.org>
Content-Language: en-US
From: Ninad Palsule <ninad@linux.ibm.com>
In-Reply-To: <172252600790.120672.12772438670145461296.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: q0X4F6LpRLN63_GgOY9djDZjxvrzNu0Z
X-Proofpoint-ORIG-GUID: q0X4F6LpRLN63_GgOY9djDZjxvrzNu0Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-01_14,2024-08-01_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 adultscore=0 bulkscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408010104

Hi Rob,

On 8/1/24 10:29, Rob Herring (Arm) wrote:
> On Wed, 31 Jul 2024 16:47:28 -0500, Ninad Palsule wrote:
>> Hello,
>>
>> This patch only applies to openbmc/linux. The max31785 pmbus driver
>> changes are not available in the upstream yet. I will try to send those
>> changes upstream.
>>
>> Ninad Palsule (1):
>>    ARM: dts: aspeed: system1: IBM System1 BMC update
>>
>>   .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 96 +++++++++++++++++++
>>   1 file changed, 96 insertions(+)
>>
>> --
>> 2.43.0
>>
>>
>>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>    pip3 install dtschema --upgrade
>
>
> New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-ibm-system1.dtb' for 20240731214737.986010-1-ninad@linux.ibm.com:
>
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a000/i2c@380/fan-controller@52/fan@0: failed to match any schema with compatible: ['pmbus-fan']
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a000/i2c@380/fan-controller@52/fan@1: failed to match any schema with compatible: ['pmbus-fan']
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a000/i2c@380/fan-controller@52/fan@2: failed to match any schema with compatible: ['pmbus-fan']
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a000/i2c@380/fan-controller@52/fan@3: failed to match any schema with compatible: ['pmbus-fan']
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a000/i2c@380/fan-controller@52/fan@4: failed to match any schema with compatible: ['pmbus-fan']
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a000/i2c@380/fan-controller@54/fan@0: failed to match any schema with compatible: ['pmbus-fan']
> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: /ahb/apb/bus@1e78a000/i2c@380/fan-controller@54/fan@1: failed to match any schema with compatible: ['pmbus-fan']
>
I have seen these warning. I am not sure how to fix them as it is 
already documented in the following file.

Documentation/devicetree/bindings/hwmon/pmbus/max31785.txt

May be because its not converted to YAML yet?

Thanks & Rehads,

Ninad Palsule


