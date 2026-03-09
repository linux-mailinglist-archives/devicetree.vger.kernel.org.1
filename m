Return-Path: <devicetree+bounces-272865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJK3B7CwrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:36:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A474F238004
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC5D13064DA4
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8059E395244;
	Mon,  9 Mar 2026 11:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jl8hfwlC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="geXjl7xS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3C73859CC
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056123; cv=none; b=JfrBPkO0OeDxDenEFyctaELlRd2l1/YVCK5xxOcE5sNg2HtP1H8oZdHpasFxFWOh9wt0EJNtVAZz9xAA1wmKabGjwzKP2PjVbcpkZE4z7L5+h///s83EwNypq/DLsXPgQl9am5wGUFEsiXKXt+l7kyF+mbzd0G0flEzv/ijl8qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056123; c=relaxed/simple;
	bh=IjKB0RY1F7a9g2zBFRyurkKPqU1OSnC1fFvV7yeNsx4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tgq9krkzyXgMW2kpn2DSnAS/8YikdfeboeXa/7pRyhQUFteGKcsi820EOaVLSLFPnRXViZbTykfiSj4dRTbKNk/TXk25CKdlCIHFxwLosWl95YeDz5d6V7czddAnSs/Jw++em5O7WaqJsrK1xm312MyvzZ22idsJJF8YIBqtUKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jl8hfwlC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=geXjl7xS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6297kt3V4129718
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 11:35:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G3+rstJ/ZdS7C8kBoFMmuPACxGCxopy6Lc4ZaIJW+ZY=; b=jl8hfwlCwYb8dApe
	yTiKjIcLS/poBp86vwfjLXe04EVGEb5ymRgl1pD0B5r7fOHGGtpnfApXh4cWBqGk
	nq2phhZkWCv9utPft0N6Nl9eo+kHwgMTaN1ANPuxlig4QUUmDq0S/xJtqzYO5C+9
	3Y10UkZmxstGGiJZx622xkoJ4LxTKDHNc3ssk0Tf3AdVOr8fhitSKVgtJWjdCdnK
	KMmi3w6rXLi8itMip9irWe/yeqIhLKyfxRnzA2AZhsci27Mlyu7F/o9+6zWj0OQo
	IoeRWjr2QfF7e0jkpAogumXvD/9k1wtuuwGitBlLMyQspsVz7UPWjP20RMi3uGLw
	a8nTFg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crd6fd3m9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:35:20 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae44db60c2so81005175ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773056120; x=1773660920; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G3+rstJ/ZdS7C8kBoFMmuPACxGCxopy6Lc4ZaIJW+ZY=;
        b=geXjl7xSvfxo4L4uw9hfxsxTqBU2W4OjtwmjMA/ZXvWTvA0pqtbRm1U49MqTI1Fxsx
         KZEoGv4YO5QEkrdpUHRcO+KYJWghl2pJvocjwuxVkHtDclQBRW/UafUjFtXt06k6p/io
         8CnsOq0aGCZRgSdv6ApJBfq07EMvOhfP7lWFnmGvVnB93x506mKa3JSzQ7sxDXZqu5c5
         z9QmaWumOCgnBLr9CmrZ+gcZ5i3k55MBTJg2Y7LfBdFJJi1lKMAByumyCuWmuY18jvrp
         j2GWp8zYaDHJRpDgShEIH0sUQx/tkoJYTFuugpf8DuKX4IT1s3YrXzxnMPGAL9UM4ZxQ
         7QJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773056120; x=1773660920;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G3+rstJ/ZdS7C8kBoFMmuPACxGCxopy6Lc4ZaIJW+ZY=;
        b=YDBWGV7TRkRNVD/8ZR4yKdTwZQLjeFj4RZjkCQ9mNocCGonSlZ0aMiH5vMZyLpx07c
         pj880mU+lBHXHS6BzGjyVqz7leIZB7uIaP2gH66dRYw78XBWr1ejgbq42Fi0uyv9cssh
         +MDf8Kr21hljUph0oV2hWpvdZ5pPynBpCdltcleKvpAa7O1gTnn4T5+sZqmq2ZL/s68k
         IM2bK5bDGVC3vQkrFXSjYrJq/i8EniiT45IOpL3Z2cSNad7O29Ccqd2Sw5svAcMWVUxl
         AsThz3JnDOE6OGjQ9P9GdSbaESyB5tf4KDY7BWEmQduFHwL9LYZWjTaz6tNtTdmQZg4k
         8evg==
X-Forwarded-Encrypted: i=1; AJvYcCUnWuUwrguD7ew0LUauJXa0N0zYfDiBpqXLSj78EJV69VeYNRu/zEwH0BQE3Z0TgK/wvM1kBYX+PqVL@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf9m/BerD7WiZ2GpHnDMvD/EeKGUB5L7OPz4Pq22bmhBX4QEr9
	q0hImHlpoIopWtOU5hsly/2BXep0bL09ge8T2E0Ff3wBAc3GPaYWO+MGbgv8+XamMHM/Ap4Tk8Q
	Z2d7yvkUV3fIhRb/f3BXYZjf/Z80+SucagffWOy36ryzzx4MFHTEM6z0TdnX14OJE
X-Gm-Gg: ATEYQzwiHOd6Wy/5d6rUpNNc+XxLU5LNThJ+BI4ze8b1oZ7+8SskNjD8h42r5Z2kUii
	57DjUX+iONxwPxX79XV/AY4nSZEsd6HIBqRhRn5/05/X+U/GBthuUEIfog9tWnqJuDPKPxR6S4D
	hUDtaOSbuYzqIPDnwMrxRZZZTYMN6Hwo3aQmrOGs0Rscj3PE1tuNg77mV0JIX8TF8NLDf1XZqFq
	II5rXA54WPHMCC2G/BfCXwchUd/KxPGsqQcEYvb/Wost1S4BITaDFVeoHhby2AzKgupEMn4OpBA
	PLKRCDLYIphnczdXJVMbH/483jiTz0i65nQ+Sf4XfqfyBzGX4d70ceH0KnR/fRtD2rHsH/ktNSz
	4iTz1CW5+z2ZgFEPb5v9Tf1o58kD1mNkASSfxRqU/2tLvOuNyCTQ16XC+Tyqs4vqEe0SbxTIcyo
	bxI4ZP5x6+5mvANVjnOi20whcNrek8X/ZS6B1u1uU=
X-Received: by 2002:a17:903:182:b0:2ae:4fb6:bb21 with SMTP id d9443c01a7336-2ae8242e961mr120563625ad.15.1773056119681;
        Mon, 09 Mar 2026 04:35:19 -0700 (PDT)
X-Received: by 2002:a17:903:182:b0:2ae:4fb6:bb21 with SMTP id d9443c01a7336-2ae8242e961mr120563325ad.15.1773056119026;
        Mon, 09 Mar 2026 04:35:19 -0700 (PDT)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae840aefbdsm149900975ad.82.2026.03.09.04.35.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 04:35:18 -0700 (PDT)
Message-ID: <c6820604-d1a9-42dc-bcd7-821aeb1b09c7@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 17:05:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/5] dt-bindings: embedded-controller: Add EC bindings
 for Qualcomm reference devices
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-2-sibi.sankar@oss.qualcomm.com>
 <20260309-amorphous-archetypal-impala-8a0e1d@quoll>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <20260309-amorphous-archetypal-impala-8a0e1d@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CDePHlWxL2MGMZMBCqP4ZZUiXCbPSsjd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwNiBTYWx0ZWRfXxuSYlr5Umjje
 0Sb8cDoowOmUZAwT2sxrJpDPkDdATGZUi3JDFf4kN7zk3zXOQo9+jKHW8IZMh9UrtQ6BmKATPff
 QB+mn7J4nW1oYD9J7wQ7d6hXu5O9HWtYQJF/2xoe0f9ThVY9DVk+cYt3cBEY38aKEmNDJI6p0nT
 HLa515W1OhIgmfANPAMoFbZo+CYOXWmrzuCSGyHM8GUeo8Q2DUzCDrzBZHxCXmzHYDj3bFXN0Rg
 YKAUl/+bTUqh+kM//mblq1gmuEV9aqPGHdGP7/Nlccd/WxGWHt2//yKltrR9NqUXd7ipZNaf/91
 CwXLJ5vi/K9mHl5VEiSW/6ZgPhKq7kP5K7WneKFL4ClQiqZQD5Q2O0+csOjHI6elYULd+EHZXtF
 99vTx4L+t/nv7QxRnfb9mE9eg0O2TJCkdg6wY5WKdL2OOh4qrMbI8ZhZOaVyQfhPvsGfHlY1M2V
 8QznvmIyRRZynrg4eSw==
X-Proofpoint-GUID: CDePHlWxL2MGMZMBCqP4ZZUiXCbPSsjd
X-Authority-Analysis: v=2.4 cv=RP++3oi+ c=1 sm=1 tr=0 ts=69aeb078 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=gEfo2CItAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=1qf01Qjrl_d0v0_Yp50A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090106
X-Rspamd-Queue-Id: A474F238004
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272865-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/9/2026 12:53 PM, Krzysztof Kozlowski wrote:
> On Mon, Mar 09, 2026 at 05:06:42AM +0530, Sibi Sankar wrote:
>> From: Maya Matuszczyk <maccraft123mc@gmail.com>
>>
>> Add bindings for the EC firmware running on Hamoa/Purwa and Glymur
>> reference devices, which run on IT8987 and Nuvoton MCUs respectively.
>>
>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>   .../embedded-controller/qcom,hamoa-ec.yaml    | 52 +++++++++++++++++++
>>   1 file changed, 52 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
>> new file mode 100644
>> index 000000000000..ea093b71d269
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
>> @@ -0,0 +1,52 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/embedded-controller/qcom,hamoa-ec.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Hamoa Embedded Controller.
> Please implement the feedback from v2.

Ack, sorry missed it.

>
>> +
>> +maintainers:
>> +  - Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> +
>> +description:
>> +  Qualcomm Snapdragon based Hamoa/Purwa and Glymur reference devices have an
>> +  EC running on IT8987 and Nuvoton MCU chips respectively. The EC handles things
>> +  like fan control, temperature sensors, access to EC internal state changes.
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - enum:
>> +          - qcom,glymur-nuvoton-ec
> nuvoton is name of the company, so it's too generic to describe a
> component. It's like calling it "qcom,glymur-qcom-ec". How many EC do
> you have there?

Ack, will get this updated.

>> +          - qcom,hamoa-it8987-ec
> I don't understand this compatible. You already have hamoa.
>
>> +      - const: qcom,hamoa-ec
> So which EC is this?

Will update the compatibles when consensus is achieved
on patch 4 thread.

>
> Best regards,
> Krzysztof
>

