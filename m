Return-Path: <devicetree+bounces-202470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55346B1D9B4
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 16:11:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F144462071D
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 14:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B12262FE4;
	Thu,  7 Aug 2025 14:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="mJBKLLYS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF3E1400C
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 14:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754575866; cv=none; b=jAGBhuwq8c4DKN5fSqM/d5PRZqr+DFIW9D+iPEkfKzN/aZr0Ds10b18Fcsqd/plW6Gw7mf/GN6eBDXVNmfymMptt3asFBJkMMBrJfGdjUgyiQubXFXs0/x9yeGn8gyhIU7xFUl7wwhY/Fu1Gyuz3j1m7ac5RNC4sOLv3vYHCBsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754575866; c=relaxed/simple;
	bh=HzFCR8qIbtdhnZ6X4A/0afYLZkMez/jG33vKoCGIbaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J8G0U0cdgXrtjtCcQB8BWahIEHBBd22h9QE9Txibij6332DDR1uSWe9LScMt6/ATGDMXP8LbDk+PNgXiovDU1UiRIlZZsn+32BywCimc2a4v9V2I5726diSjGup2Rg4LCH0XOabMZ6vyPXQtXSMl7/NPBVM47Co3PLdZZi7uu50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=mJBKLLYS; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360083.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 577DYtvA009977;
	Thu, 7 Aug 2025 14:10:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pp1; bh=uaVLiY
	spnYWDuI13bWNGEm5rQbPJSHbjCGX5H7vdxtQ=; b=mJBKLLYSXn/bhMBhPt1FhG
	aTEmzVBBRUk+FDweBa1KoY/yammJONzoVcbZVNKUVY2LTsgV+eS5h1CUf972DE8b
	1ZlQ4eQGeoDdtMZ8NvFhNQ1PNUwW6INaE88OGUMNVxEOhCrn+SRw/3UHrDb97Md+
	coHXluwpZZvLuXYL5xKhGXr6aYUtLLAkvsak99ouf4qdbVRLMTxCYscL5h81Im3Q
	dcXM6mVcYVYIilZe/4/j5tI5UankKZ8/7ERRcPU9GJV0XVqVk6iMsUBhS9VjvoBa
	hn3bnmJDds45/izA498NYZ1bHuCSLenGNTJeDmV+O/MsZlNHeSkVj2TD33pXnG9g
	==
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 48bq612pbd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Aug 2025 14:10:52 +0000 (GMT)
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 577DcdbB022699;
	Thu, 7 Aug 2025 14:10:51 GMT
Received: from smtprelay05.dal12v.mail.ibm.com ([172.16.1.7])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 48bpwqgyfs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 07 Aug 2025 14:10:51 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com [10.241.53.105])
	by smtprelay05.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 577EAo9t17433284
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 7 Aug 2025 14:10:50 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5147358059;
	Thu,  7 Aug 2025 14:10:50 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 239C258055;
	Thu,  7 Aug 2025 14:10:50 +0000 (GMT)
Received: from [9.61.15.215] (unknown [9.61.15.215])
	by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Thu,  7 Aug 2025 14:10:50 +0000 (GMT)
Message-ID: <dd4a521e-f122-4122-af62-20ce113497ac@linux.ibm.com>
Date: Thu, 7 Aug 2025 09:10:49 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] dt-bindings: trivial-devices: Document max31785
 sensors
To: Rob Herring <robh@kernel.org>
Cc: linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
        andrew@codeconstruct.com.au, conor+dt@kernel.org, krzk+dt@kernel.org
References: <20250806184711.1882725-1-eajames@linux.ibm.com>
 <20250806184711.1882725-4-eajames@linux.ibm.com>
 <CAL_Jsq+JBhak=YS33tG=KFtbb+Ckz69s5Chz6daEUY0O95QOSQ@mail.gmail.com>
 <CAL_JsqKa6R2WQQsaJ-Rm8NwVAt7gk2yRSyjnZ44yYn1un2C12Q@mail.gmail.com>
Content-Language: en-US
From: Eddie James <eajames@linux.ibm.com>
In-Reply-To: <CAL_JsqKa6R2WQQsaJ-Rm8NwVAt7gk2yRSyjnZ44yYn1un2C12Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: TLZo-HDNly3k3Yu_lJEb-DARaXrKBVMZ
X-Proofpoint-ORIG-GUID: TLZo-HDNly3k3Yu_lJEb-DARaXrKBVMZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA3MDExMiBTYWx0ZWRfXzp9GJPLSuRpm
 UTXvHi+NyGwkwhhVKYDSBefHMYzX7s9/599Kbdm2u6/+mfutv4E2tz+XljAImSVoE+5yhBRNSbQ
 M6wsaWROtK60Z9WrW7byCNaZUcqCV6svi1cojyWbCVz3zoHLOdja3xrBe/T3bs/zNyjh5QTA7we
 p3Km6IrQZ1tOGuF7mgE0PjtojiwroVWY6/vY8G3QDUY+SqfL/mjop/gW2n2Fc6Ftibw/kHjld13
 yd70OZfWcvl15QK5btI7jfJRJNaEcYf3ND/WnpMVlzLOLV1i7XF8N4NydkDyVryB/TiZFObB0Lw
 nbYzobBC7/UFfBW6GdL2rsdgeh+y8XKipkmnhkXB5Uu8neSt9VgsKe/ZbP1xwwRyyfqJUbPVHst
 63c+9mkIwy2Ns45cREY2AjDcBPZEm3StCYRWMXrHZj0e/XZZsCisqHakQsLn0DpVOH4k5XmM
X-Authority-Analysis: v=2.4 cv=TayWtQQh c=1 sm=1 tr=0 ts=6894b3ec cx=c_pps
 a=3Bg1Hr4SwmMryq2xdFQyZA==:117 a=3Bg1Hr4SwmMryq2xdFQyZA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=jtbBNqsHAAAA:8 a=VwQbUJbxAAAA:8
 a=VnNF1IyMAAAA:8 a=rfOngFd2pyIVqCWdBOYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=RWaeYqt-Cn-VcsFsiLGo:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 phishscore=0 impostorscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2507300000
 definitions=main-2508070112


On 8/6/25 5:59 PM, Rob Herring wrote:
> On Wed, Aug 6, 2025 at 5:04 PM Rob Herring <robh@kernel.org> wrote:
>> On Wed, Aug 6, 2025 at 1:47 PM Eddie James <eajames@linux.ibm.com> wrote:
>>> Remove the old .txt max31785 documentation and add the compatibles
>>> to trivial-devices.yaml.
>>>
>>> Signed-off-by: Eddie James <eajames@linux.ibm.com>
>>> ---
>>>   .../devicetree/bindings/hwmon/max31785.txt    | 22 -------------------
>>>   .../devicetree/bindings/trivial-devices.yaml  |  4 ++++
>>>   2 files changed, 4 insertions(+), 22 deletions(-)
>>>   delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt
>>>
>>> diff --git a/Documentation/devicetree/bindings/hwmon/max31785.txt b/Documentation/devicetree/bindings/hwmon/max31785.txt
>>> deleted file mode 100644
>>> index 106e08c56aaa..000000000000
>>> --- a/Documentation/devicetree/bindings/hwmon/max31785.txt
>>> +++ /dev/null
>>> @@ -1,22 +0,0 @@
>>> -Bindings for the Maxim MAX31785 Intelligent Fan Controller
>>> -==========================================================
>>> -
>>> -Reference:
>>> -
>>> -https://datasheets.maximintegrated.com/en/ds/MAX31785.pdf
>>> -
>>> -The Maxim MAX31785 is a PMBus device providing closed-loop, multi-channel fan
>>> -management with temperature and remote voltage sensing. Various fan control
>>> -features are provided, including PWM frequency control, temperature hysteresis,
>>> -dual tachometer measurements, and fan health monitoring.
>> While technically the binding is trivial, I don't think this device
>> really is. It has got 6 PWMs and 6 tach inputs, a reset line, 2
>> interrupts (alert and fault?), and an I2C master. Not really trivial.
>>
>> However, better to have this documented as a schema than not, so I'll apply it.
> I take that back. You already have 'fan' child nodes, so this isn't a
> trivial device/binding.


That's true, I will add a proper binding.


Thanks,

Eddie


>
> Rob

