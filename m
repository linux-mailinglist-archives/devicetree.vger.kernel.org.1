Return-Path: <devicetree+bounces-25464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 912C98134F1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CA6F1F218A1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 431A05D8E8;
	Thu, 14 Dec 2023 15:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="bPy4wOu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1250D124;
	Thu, 14 Dec 2023 07:38:40 -0800 (PST)
Received: from pps.filterd (m0353722.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3BEFLPlQ007022;
	Thu, 14 Dec 2023 15:37:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=uz6ec5HrnlcYzCx5JnYZo6Re5AuuAPgFQGb9I0NsfXw=;
 b=bPy4wOu9PcGWVlkiXDKQ2uaw2LndkKUgiwq3bsiny9ilAqggrsF6B7wmZyspKlBtxpph
 oac/hdVWCt7j52DC29K+NDamq6FkJpWCtRBFPYXgeXE3kUJkFz8Q01Bzl4gyuWQTTzaO
 4CdBRjlCLwNmHCm8q9zeqG5c2K+IFJoRHiiv8+XquyqGIH+3NFhuo4335EXqqWARoFPJ
 QHnQ9mq0ns5GpbFXnjG1B9g4Gs4vLVXwc6UlFMMzXZNBiLKDOw00jw6HKnpRyi9Fjtm+
 gl+8Og+3CVu3yfxavayU3RuIKRcDSZg2zFyfx0taZ6dmnJKT2mlf721FuhVAW4ae43xJ Vg== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3v03xh165x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 15:37:55 +0000
Received: from m0353722.ppops.net (m0353722.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3BEFG0we018952;
	Thu, 14 Dec 2023 15:37:54 GMT
Received: from ppma13.dal12v.mail.ibm.com (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3v03xh15we-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 15:37:53 +0000
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
	by ppma13.dal12v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 3BEDnf3H004101;
	Thu, 14 Dec 2023 15:37:24 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
	by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 3uw4sks2xf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 15:37:24 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 3BEFbOIA3605028
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 14 Dec 2023 15:37:24 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0135558065;
	Thu, 14 Dec 2023 15:37:24 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D90EE58056;
	Thu, 14 Dec 2023 15:37:20 +0000 (GMT)
Received: from [9.67.23.198] (unknown [9.67.23.198])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Thu, 14 Dec 2023 15:37:20 +0000 (GMT)
Message-ID: <46fcba11-5766-4c7c-91dd-0dfb5ae0e110@linux.ibm.com>
Date: Thu, 14 Dec 2023 09:37:20 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/8] dt-bindings: tpm: Add schema for TIS I2C devices
Content-Language: en-US
To: Guenter Roeck <linux@roeck-us.net>, Conor Dooley <conor@kernel.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        joel@jms.id.au, andrew@codeconstruct.com.au, peterhuewe@gmx.de,
        jarkko@kernel.org, jgg@ziepe.ca, keescook@chromium.org,
        tony.luck@intel.com, gpiccoli@igalia.com,
        johannes.holland@infineon.com, broonie@kernel.org,
        patrick.rudolph@9elements.com, vincent@vtremblay.dev,
        peteryin.openbmc@gmail.com, lakshmiy@us.ibm.com, bhelgaas@google.com,
        naresh.solanki@9elements.com, alexander.stein@ew.tq-group.com,
        festevam@denx.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, linux-integrity@vger.kernel.org,
        linux-hardening@vger.kernel.org, geissonator@yahoo.com
References: <20231212164004.1683589-1-ninad@linux.ibm.com>
 <20231212164004.1683589-3-ninad@linux.ibm.com>
 <20231212-amusement-elevation-28e42bcccc35@spud>
 <874d4416-86e5-48cc-9c84-97357e4caefe@roeck-us.net>
From: Ninad Palsule <ninad@linux.ibm.com>
In-Reply-To: <874d4416-86e5-48cc-9c84-97357e4caefe@roeck-us.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: N5HwoJhnLEiSRi1lKuDoBdgPJnvRTJ9W
X-Proofpoint-ORIG-GUID: 1JHEuYFTWGM-GFNRj-F9Cr370n6gV1gY
Content-Transfer-Encoding: 7bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-14_10,2023-12-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2312140110

Hello Guenter,

On 12/12/23 12:20, Guenter Roeck wrote:
> On Tue, Dec 12, 2023 at 05:14:26PM +0000, Conor Dooley wrote:
>> Hey,
>>
>> On Tue, Dec 12, 2023 at 10:39:58AM -0600, Ninad Palsule wrote:
>>> From: Johannes Holland <johannes.holland@infineon.com>
>>>
>>> Add a dt schema to support device tree bindings
>> "Add bindings for..."
>>
>>> for the generic I2C
>>> physical layer. Refer to the TCG PC Client Platform TPM Profile (PTP)
>>> Specification for TPM 2.0 v1.04 Revision 14.
>>>
>>> This includes descriptions for the Nuvoton and Infineon devices.
>>>
>>> OpenBMC-Staging-Count: 3
>> I have no idea what this is, but it needs to be removed from the patch.
>>
>>> Signed-off-by: Johannes Holland <johannes.holland@infineon.com>
>>> Signed-off-by: Joel Stanley <joel@jms.id.au>
>>> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
>>> ---
>>>   .../bindings/security/tpm/tpm-tis-i2c.yaml    | 50 +++++++++++++++++++
>>>   1 file changed, 50 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/security/tpm/tpm-tis-i2c.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/security/tpm/tpm-tis-i2c.yaml b/Documentation/devicetree/bindings/security/tpm/tpm-tis-i2c.yaml
>>> new file mode 100644
>>> index 000000000000..de1e34065748
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/security/tpm/tpm-tis-i2c.yaml
>>> @@ -0,0 +1,50 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/security/tpm/tpm-tis-i2c.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: I2C PTP based TPM Devices
>>> +
>>> +maintainers:
>>> +  - Johannes Holland <johannes.holland@infineon.com>
>>> +
>>> +description:
>>> +  Device Tree Bindings for I2C based Trusted Platform Module (TPM).
>> s/Device Tree Bindings for //. Doesn't dt_binding_check now complain if
>> you have this in a title or description?
>>
>>> +properties:
>>> +  $nodename:
>>> +    pattern: "^tpm(@[0-9a-f]+)?$"
>>> +
>>> +  compatible:
>>> +    oneOf:
>>> +      - description: Infineon's Trusted Platform Module (TPM) (SLB9673).
>>> +        items:
>>> +          - const: infineon,slb9673
>>> +          - const: tcg,tpm-tis-i2c
>>> +      - description: Nuvoton's Trusted Platform Module (TPM) (NPCT75x).
>>> +        items:
>>> +          - const: nuvoton,npct75x
>>> +          - const: tcg,tpm-tis-i2c
>>> +      - const: tcg,tpm-tis-i2c
>> IMO this should be removed and this fallback should only be used in
>> combination with device specific compatibles, like you have here for the
>> infineon and nuvoton devices.
> As mentioned in my response to the other patch, "only" isn't sufficient
> since the tacoma devicetree file only references the generic entry.
> It would also make support for chips from other vendors unnecessarily
> complex.
>
> Question should in my opinion be if the non-fallback entries are really
> needed.

Thanks for the response. I think generic option is in-case we have a 
chip whose specific driver is not available.

Regards,

Ninad

>
> Thanks,
> Guenter

