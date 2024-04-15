Return-Path: <devicetree+bounces-59421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D5D8A55E3
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 17:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A36181C21042
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 026D01D524;
	Mon, 15 Apr 2024 15:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="CdvLdgUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1FC7603F
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 15:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713193426; cv=none; b=PDh1Ey3jFMVWPCYsMPpwI4yFXrpk1XKqi60Acz2YnJNp3VeU9WQQSPrh7p9iZRFKqHUGWWV/Q/Badn8QHi8VCXN2yNvb9GPZxiNrHakbSK4wRk1VkFD30IceW9EdGAcgBglb4p/FpeD7mgTNMw2keZCftCHS2ulf0ZXMS8YVs64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713193426; c=relaxed/simple;
	bh=pU++4IxYsVnGikg4srGsNsJnC2IV60SAxiU5f+DCCcw=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=r0YE2L7FZU326qjFZ6jSzSpyEOXBw31kwSRgl668ndMNU28TUyZP15SWNtDTX/bG394cB32Lslwq0LBAuytB8pgT6+663VKPZ5ncAGu8y0A89yRBQxSnbtBD31Aou5qbRQOhNcHzc0zoIEDwqV8uXYL4JXGbMyMrfcz1h7hnEz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=CdvLdgUo; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43FF0BQj008473;
	Mon, 15 Apr 2024 15:03:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=zOk8xJi928OveSk9rEcnWkeEMwO03Kpga/cH9y35RmA=;
 b=CdvLdgUonCMctMRR5fD7jjEu4OcWRpRieO1od2Qnq8PeLlMoCafdOdOEHz5sDROku3jp
 MI7o4AQoJ304BLit/FxIhdjthK4OoY2NV/KjZgQigLeoIVyTRXu+Lm+pp9qK60Z3Mk1a
 fo3gakWH31mdvpCZlhDrx6rxm2F85IusyBkmidiqEhXSMGg5Yn4IBx2BYEeWjFLdhqER
 DLahYEVoSaZFar6VJx0fGGSWQEHw+RGyzNEWgCmm6C4eRSv0J1kLRQwWqyIa9/7UzX7C
 Z4X/p9J3hl7uODW5B8nFiEP4Uv8r0kVeoUV1Nee2GybuZb1T5PogbTEmqdirzl7y0XPV /Q== 
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xh6g680ab-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Apr 2024 15:03:18 +0000
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43FCxcU3023555;
	Mon, 15 Apr 2024 15:03:17 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xg5cnrg42-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Apr 2024 15:03:17 +0000
Received: from smtpav02.dal12v.mail.ibm.com (smtpav02.dal12v.mail.ibm.com [10.241.53.101])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43FF3F9u44761566
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 15 Apr 2024 15:03:17 GMT
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 18BEA5805E;
	Mon, 15 Apr 2024 15:03:15 +0000 (GMT)
Received: from smtpav02.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id AA15558074;
	Mon, 15 Apr 2024 15:03:14 +0000 (GMT)
Received: from [9.61.157.174] (unknown [9.61.157.174])
	by smtpav02.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Mon, 15 Apr 2024 15:03:14 +0000 (GMT)
Message-ID: <0752bfea-af49-4483-81a2-0b6fba2feb91@linux.ibm.com>
Date: Mon, 15 Apr 2024 10:03:14 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
To: Andrew Jeffery <andrew@codeconstruct.com.au>,
        linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org,
        robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        jk@ozlabs.org, alistair@popple.id.au, lakshmiy@us.ibm.com
References: <20240412144358.204129-1-eajames@linux.ibm.com>
 <20240412144358.204129-2-eajames@linux.ibm.com>
 <95510c550a31305ae192640ce54ed86544e79f12.camel@codeconstruct.com.au>
Content-Language: en-US
From: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <95510c550a31305ae192640ce54ed86544e79f12.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: QwOgh6n4GaNW1GW3PPlU8mExiCKbcLu_
X-Proofpoint-GUID: QwOgh6n4GaNW1GW3PPlU8mExiCKbcLu_
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-15_12,2024-04-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 mlxscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404150098


On 4/14/24 19:50, Andrew Jeffery wrote:
> On Fri, 2024-04-12 at 09:43 -0500, Eddie James wrote:
>> The SBEFIFO engine provides an interface to the POWER processor
>> Self Boto Engine (SBE).
>>
>> Signed-off-by: Eddie James <eajames@linux.ibm.com>
>> ---
>>   .../devicetree/bindings/fsi/ibm,sbefifo.yaml  | 39 +++++++++++++++++++
>>   1 file changed, 39 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml b/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
>> new file mode 100644
>> index 000000000000..d70012e42d79
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
>> @@ -0,0 +1,39 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/fsi/ibm,sbefifo.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: IBM FSI-attached SBEFIFO engine
>> +
>> +maintainers:
>> +  - Eddie James <eajames@linux.ibm.com>
>> +
>> +description: |
>> +  This binding describes an FSI CFAM engine called the SBEFIFO. Therefore this
>> +  node will always be a child of an FSI CFAM node; see fsi.txt for details on
>> +  FSI slave and CFAM nodes. This SBEFIFO engine provides an interface to the
>> +  POWER processor Self Boot Engine (SBE).
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - ibm,p9-sbefifo
>> +      - ibm,ody-sbefifo
> Bit of a nitpick, but: Is there any argument against using
> `ibm,odyssey-sbefifo`? Feels less cryptic.


True, that might be better.


>
> Andrew

