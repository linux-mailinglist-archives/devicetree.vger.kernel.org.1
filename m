Return-Path: <devicetree+bounces-152720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAAFA49F40
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 17:47:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 332113A21EB
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 16:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC5601A76D0;
	Fri, 28 Feb 2025 16:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="j1BFRv7y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C78C189B84
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 16:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740761222; cv=none; b=m50tiiUm0a8rLC8WWNNHhKn/3ix5YtVHBMAy/oJRRPFcQl3pZnM3cw0Y69oDdWmZ+jX0zarA64liwP8wAOoLZMHdlQw+33LAGX7GvHGa1wTjsf03Ljcwh/ydm6kDxUu7SUbnpzkcLg1r49DUgJFyJIo85nA0EwqZ0/fpbxSWT5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740761222; c=relaxed/simple;
	bh=lmwKkqmfhLNN+cpXqtWAS0sLqcEZWuMj/yBHPYRwlLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lx6ZOJzFGkXlN3oIh7HIieWRDV99NDaZF8iMoCaujlrUhYjsGdjOpz5PEnNy/Tc78I1FQFYY6RnaXcC1IHQFkhYqrJVsg5qsa208pAajSraG87JRFIBpOBilqYAcxcDFhPBnX1f3p+Do8SBNhXHBopdwGs35Hsel+ffKK/J5yqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=j1BFRv7y; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51SFDbPc032549;
	Fri, 28 Feb 2025 16:46:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=+H8arJ
	gm1Hx44iQ3rpK2gt7mSY2oUIXNRWZYBdYXAug=; b=j1BFRv7y6EZPYF5E5jypfP
	l2jm6uMqz39CEtIvlfx2SbcvJw1ixsGIc3w3YPew1fKMltl59v2UuFu8/k2JRQV7
	S70gQDFaH6X6RKLhiZ+/XpQQnYY3Db5+4PQeVVCFAkcYY+ck7dVSdzB0DSWp1FR4
	Jv49S7Nf8O7gJI2nfT77eVi35l8Px2qWfFwyKqUiVHdCtSsa4FvQ+j5lAqHMw8gO
	wrCbxidHog9YhfbMvWff80Qun0iq/W3Ukz735xS+PH4TM+AE9HNMQbaxdc5pYR66
	CAuhJJVWCHoMjhowy3g9XfJ1AUVYO6vfjn8pmFBVdwpuKwDk+wAJvaaSermDSyTg
	==
Received: from ppma11.dal12v.mail.ibm.com (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4536y8bccc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Feb 2025 16:46:51 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
	by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 51SFY1Ct027340;
	Fri, 28 Feb 2025 16:46:50 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
	by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 44yum2f2b8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Feb 2025 16:46:50 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 51SGknj440829588
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 28 Feb 2025 16:46:49 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3AF9558061;
	Fri, 28 Feb 2025 16:46:49 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 16EE158059;
	Fri, 28 Feb 2025 16:46:49 +0000 (GMT)
Received: from [9.61.100.89] (unknown [9.61.100.89])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 28 Feb 2025 16:46:49 +0000 (GMT)
Message-ID: <0801c8fc-97c8-4331-b31a-b60a90d683e5@linux.ibm.com>
Date: Fri, 28 Feb 2025 10:46:47 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] ARM: dts: aspeed: Add Balcones system
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        conor+dt@kernel.org
References: <20250220205948.1777200-1-eajames@linux.ibm.com>
 <174015998324.3469672.1009055817022487781.robh@kernel.org>
 <52f6f6fc93144b6bd93870e9ef054da19d809b05.camel@codeconstruct.com.au>
Content-Language: en-US
From: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <52f6f6fc93144b6bd93870e9ef054da19d809b05.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: tgZdCnYJM9IiR7e7flD6BitVf1tyQbQZ
X-Proofpoint-ORIG-GUID: tgZdCnYJM9IiR7e7flD6BitVf1tyQbQZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-28_04,2025-02-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502280120


On 2/24/25 22:34, Andrew Jeffery wrote:
> On Fri, 2025-02-21 at 12:11 -0600, Rob Herring (Arm) wrote:
>> On Thu, 20 Feb 2025 14:59:45 -0600, Eddie James wrote:
>>> The Balcones system is similar to Bonnell but with a POWER11 processor.
>>>
>>> Changes since v1:
>>>   - Add all the ucd9000 driver supported compatible strings
>>>   - Fix node ordering in Balcones device tree
>>>   - Improve commit message to explain addition of ibm-power11-dual.dtsi
>>>
>>> Eddie James (3):
>>>    dt-bindings: arm: aspeed: add IBM Balcones board
>>>    dt-bindings: hwmon: ucd90320: Add additional compatible strings
>>>    ARM: dts: aspeed: Add Balcones system
>>>
>>>   .../bindings/arm/aspeed/aspeed.yaml           |   1 +
>>>   .../bindings/hwmon/pmbus/ti,ucd90320.yaml     |   6 +
>>>   arch/arm/boot/dts/aspeed/Makefile             |   1 +
>>>   .../dts/aspeed/aspeed-bmc-ibm-balcones.dts    | 594 +++++++++++++
>>>   .../arm/boot/dts/aspeed/ibm-power11-dual.dtsi | 779 ++++++++++++++++++
>>>   .../arm/boot/dts/aspeed/ibm-power11-quad.dtsi | 769 +----------------
>>>   6 files changed, 1383 insertions(+), 767 deletions(-)
>>>   create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dts
>>>   create mode 100644 arch/arm/boot/dts/aspeed/ibm-power11-dual.dtsi
>>>
>>> --
>>> 2.43.5
>>>
>>>
>>>
>>
>> My bot found new DTB warnings on the .dts files added or changed in this
>> series.
>>
> ...
>
>> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: gpio@1e780000: 'usb-power-hog' does not match any of the regexes: 'pinctrl-[0-9]+'
>>          from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
> Ah, can you address this one?
>
>> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: /ahb/apb/bus@1e78a000/i2c@400/pwm@53: failed to match any schema with compatible: ['maxim,max31785a']
>> arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-balcones.dtb: pressure-sensor@76: '#io-channel-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
>>          from schema $id: http://devicetree.org/schemas/trivial-devices.yaml#
> And these also?
>
> The rest looked like the usual noise.


Well, all of these errors are also present in Blueridge. I would need to 
write a new binding for dps310, move max31785 to yaml format, and I'm 
not sure how to fix the gpio hog one. I don't see that error when I run 
CHECK_DTBS myself... any suggestions?


Thanks!

Eddie


>
> Andrew
>

