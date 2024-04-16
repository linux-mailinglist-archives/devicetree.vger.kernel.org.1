Return-Path: <devicetree+bounces-59743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 357DD8A6EF0
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 16:50:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66CA71C21EAB
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C1F131750;
	Tue, 16 Apr 2024 14:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="hkGOeIZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A22561311AA
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 14:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713278920; cv=none; b=qui/8kQM78lrTvobSc8iJzCHiCqQFAaMzvM+lwlT5fMX9mui/iwIwfG14k0czZSIEbnEiUoFNlRh8llaLUp63aQgFgza2SwSzNMSokMbzgXw3dHujW5evZ/gfortcM72LNSPYtTOgQ6P15qS+ywg7zAChD2bLoYgyNUxhG6NTxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713278920; c=relaxed/simple;
	bh=Ze2qit/Mdbe+XG6nMaSdD7BXLHYygNw82z6IuyiJAmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ioXI68hmPB5NVz48YBoRHfOSWMtkiKaTzDQXH14w8XXj8TMEu1Ws7LQGWgtLCxamSqIJn3lVCslTFlPv45w916N6PeQzlw2UDUrdvikIzoXDm3Qltj8qlI8J/CMz/CeBE29HK7K6MbrrYoB75/cklHLI5SrYxTDEGnr/kAvBHQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=hkGOeIZJ; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353728.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43GEgIPL018068;
	Tue, 16 Apr 2024 14:48:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=yZt6MkvLg7nYmZ4oyJG7VlSIDFFNonAFGQ2Q/dtRc4U=;
 b=hkGOeIZJZ+65WuDAgI1VBwplKjnrWMtoSWIkf3fna4pYzXzxkWSIhW5JybYaVJmW40hw
 DeaA9Zt9+6ec2KXszE94HHVWDXThIwuYi6o5ufLP1IczFvkdKmbRqfZ2nQObjep5urbP
 mScy//Bi89BZrh0/9Tk94eW4MGn6Ct4Zw9ytE3J/F4nTMRIaw3ZyXpMzUNtF7vTxvQxq
 LRDruQddqchG31ojQnQ5sCFViFtwKDDeGvAN3fWqcao6zIUV7Z9xFWG0CyXmex+qKXt3
 OOzhewK9LL2V4EW3/GgSOvqN12Sy4K92hjaUWVyuQJtd7rc9nHkqjyf1dmQmX/uTzvQ4 OQ== 
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xhuatg0et-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Apr 2024 14:48:20 +0000
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43GDrVEu021366;
	Tue, 16 Apr 2024 14:48:19 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 3xg6kkea5f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Apr 2024 14:48:19 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com [10.241.53.101])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43GEmGrG42271404
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 16 Apr 2024 14:48:18 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A7F875805F;
	Tue, 16 Apr 2024 14:48:16 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6CE3058070;
	Tue, 16 Apr 2024 14:48:16 +0000 (GMT)
Received: from [9.61.157.174] (unknown [9.61.157.174])
	by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue, 16 Apr 2024 14:48:16 +0000 (GMT)
Message-ID: <2ee4084d-1891-4ea4-ba3d-b99ee1d7b5fb@linux.ibm.com>
Date: Tue, 16 Apr 2024 09:48:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: aspeed: Update Odyssey SBEFIFO compatible
 strings
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
        linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org,
        robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        jk@ozlabs.org, alistair@popple.id.au, lakshmiy@us.ibm.com
References: <20240412144358.204129-1-eajames@linux.ibm.com>
 <20240412144358.204129-4-eajames@linux.ibm.com>
 <5c6f58cc13492988d307504d55cc5d31a512ab8c.camel@codeconstruct.com.au>
 <0363badd-f5b0-42bd-bdd5-de6e7b5ee8c6@linux.ibm.com>
 <90ced7e271213da481f7c0ec883d0189671563e8.camel@codeconstruct.com.au>
Content-Language: en-US
From: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <90ced7e271213da481f7c0ec883d0189671563e8.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: l5nYePDoWbcmQxnqdJY4-VQBK8fY8w0m
X-Proofpoint-ORIG-GUID: l5nYePDoWbcmQxnqdJY4-VQBK8fY8w0m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-16_10,2024-04-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 adultscore=0 phishscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2404010000 definitions=main-2404160090


On 4/15/24 19:06, Andrew Jeffery wrote:
> On Mon, 2024-04-15 at 09:59 -0500, Eddie James wrote:
>> On 4/14/24 19:54, Andrew Jeffery wrote:
>>> On Fri, 2024-04-12 at 09:43 -0500, Eddie James wrote:
>>>> Set the new compatible string for Odyssey SBEFIFOs so that they
>>>> don't collect async FFDC.
>>>>
>>>> Signed-off-by: Eddie James <eajames@linux.ibm.com>
>>>> ---
>>>>    .../dts/aspeed/aspeed-bmc-ibm-everest.dts     | 64 +++++++++----------
>>>>    .../arm/boot/dts/aspeed/ibm-power10-quad.dtsi | 64 +++++++++----------
>>>>    2 files changed, 64 insertions(+), 64 deletions(-)
>>>>
>>>> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
>>>> index 214b2e6a4c6d..3a2bfdf035cb 100644
>>>> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
>>>> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
>>>> @@ -2545,7 +2545,7 @@ scom500: scom@1000 {
>>>>    						};
>>>>    
>>>>    						sbefifo500: sbefifo@2400 {
>>>> -							compatible = "ibm,p9-sbefifo";
>>>> +							compatible = "ibm,ody-sbefifo";
>>>>    							reg = <0x2400 0x400>;
>>>>    							#address-cells = <1>;
>>>>    							#size-cells = <0>;
>>> Bit of a drive-by comment as I'm not really holding any stakes here,
>>> but did the hardware actually change?
>>
>> Yes, the hardware did change in the Odyssey version.
> Should there not be a new platform DTS then? Seems a bit puzzling, but
> again this is a bit of a drive-by comment.


Ah, I should clarify. The SBE hardware was changed between P9/P10 and 
Odyssey versions. The Odyssey hasn't changed. The difference in the SBE 
wasn't apparent when we initially added support for Odyssey, so this is 
effectively a bug fix on the new hardware. There is no new platform.


Thanks,

Eddie


>
> Andrew

