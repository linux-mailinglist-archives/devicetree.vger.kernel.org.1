Return-Path: <devicetree+bounces-61030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 812A48AB602
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 22:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA68E1F21A6B
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 20:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64AF610A2C;
	Fri, 19 Apr 2024 20:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="JOKOWyhY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AE310A2E
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 20:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713558766; cv=none; b=XeMy4BWH51XvqtT+FDrXoAK9BXZXPj3JrX/0/YPGhPKUK7qHrPaAaHWwbeh8dNEzFHnjuoeSc0xZWgatQ8BgFHBAzh9kKHNtoAW/aeX4zQyQwdeKjExfK2ebPeTvKISma37NddH0nRJAlieB5LwKruXXoeLwwoBD4XbG3mIpOyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713558766; c=relaxed/simple;
	bh=qANyF0MfnSoqiIGwcJR08TrdWTsCQzlauedjspuw/oU=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=Cthza+QE7Y9d2U0yj1LZpJSP9QyP/qOSMJRFQvGi+8QR2urj8t26f47K9Zr2yydv/eTfljRp6EVZ0Uq6W9IJo/4fjo4x3fxcUyOrcuDpwNM9WxQz8aX3blaeyPNjqFyFz1ia7jk8Hi/QIgWzNA6i4kGwav79+X5cL2UjiDfFyBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=JOKOWyhY; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353729.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43JKRWol027269;
	Fri, 19 Apr 2024 20:32:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=DPqHixwHyTS1PGw7hY3SyQbtbCZSG9kVzOIrtq0sWgI=;
 b=JOKOWyhYXjpDmYa6uK7q68LQdaltWY1ibBkRvhi5VrUlSpEIF3xo3j7DRiKAzIuXxxFI
 ARXMGWAWyTisjTf0QkrXJoGUCLPYYy8OPEb1d3uBxXuOZj9CnwChcbNIlPid1EWj6is7
 azJSjCdMaU2cjCdarJSONFUPzgcf88EySrAGwLyM8EOFYKFHVmMT7ggr3zHka623H6Dt
 GxmkUWfUrW1d0JANVHCjCp+Ye5wO7fntFdNdYv+m/SSq7q1LjCa9FBsHLAAXPB3gASVj
 ZX3I9sK8XYAjhMNWN2zSxZ8umG/yGSk/Xs2zs0YQPLOR4UtJLXmmN9KEw0deBF5Xp8lB xg== 
Received: from ppma22.wdc07v.mail.ibm.com (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xkynk80e7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 20:32:25 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43JIVKOc020834;
	Fri, 19 Apr 2024 20:32:24 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
	by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xkbm9nvgp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 20:32:24 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com [10.39.53.232])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43JKWLgV26804756
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 19 Apr 2024 20:32:23 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C0B4E58053;
	Fri, 19 Apr 2024 20:32:21 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 208C558043;
	Fri, 19 Apr 2024 20:32:21 +0000 (GMT)
Received: from [9.61.157.174] (unknown [9.61.157.174])
	by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 19 Apr 2024 20:32:21 +0000 (GMT)
Message-ID: <6d604d36-8960-4abf-a75d-a097ef0a00b4@linux.ibm.com>
Date: Fri, 19 Apr 2024 15:32:20 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
To: Conor Dooley <conor@kernel.org>
Cc: linux-aspeed@lists.ozlabs.org, joel@jms.id.au, andrew@codeconstruct.com.au,
        devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org,
        robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        jk@ozlabs.org, alistair@popple.id.au, lakshmiy@us.ibm.com
References: <20240415153907.10051-1-eajames@linux.ibm.com>
 <20240415153907.10051-2-eajames@linux.ibm.com>
 <20240416-askew-slapstick-994453ecbf73@spud>
Content-Language: en-US
From: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <20240416-askew-slapstick-994453ecbf73@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: riFHLh5-xdKKzfQXdlLgtSYOfHOMbUAN
X-Proofpoint-ORIG-GUID: riFHLh5-xdKKzfQXdlLgtSYOfHOMbUAN
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-19_15,2024-04-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 clxscore=1011 phishscore=0 priorityscore=1501 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404190159


On 4/16/24 12:25, Conor Dooley wrote:
> On Mon, Apr 15, 2024 at 10:39:05AM -0500, Eddie James wrote:
>> The SBEFIFO engine provides an interface to the POWER processor
>> Self Boot Engine (SBE).
>>
>> Signed-off-by: Eddie James <eajames@linux.ibm.com>
>> ---
>> Changes since v1:
>>   - Chance "ody" to "odyssey"
>>   - Fix typo in commit message
>>   - Reword description to describe the hardware only
>>
>>   .../devicetree/bindings/fsi/ibm,sbefifo.yaml  | 39 +++++++++++++++++++
>>   1 file changed, 39 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml b/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
>> new file mode 100644
>> index 000000000000..69521b1cfb25
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/fsi/ibm,sbefifo.yaml
> Filename matching a compatible please.


Ack, and ack to your comments below. I'll send v3.


Thanks,

Eddie


>
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
> This | should not be needed, there's no formatting to preserve.
>
>> +  The SBEFIFO is an FSI CFAM engine that provides an interface to the
>> +  POWER processor Self Boot Engine (SBE). This node will always be a child
>> +  of an FSI CFAM node; see fsi.txt for details on FSI slave and CFAM
>> +  nodes.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - ibm,p9-sbefifo
>> +      - ibm,odyssey-sbefifo
>> +
>> +  reg:
>> +    items:
>> +      - description: FSI slave address
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    sbefifo@2400 {
> Per fsi.txt, the generic node name looks like it should be
> "fsi-slave-engine"?
>
> Cheers,
> Conor.
>
>> +        compatible = "ibm,p9-sbefifo";
>> +        reg = <0x2400 0x400>;
>> +    };
>> -- 
>> 2.39.3
>>

