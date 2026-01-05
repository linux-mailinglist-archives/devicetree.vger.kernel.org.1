Return-Path: <devicetree+bounces-251521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C44CF3D01
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42F643010FC8
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D362B335062;
	Mon,  5 Jan 2026 13:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ozcm6Uqz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bLRk/MCb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6911E2356A4
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619583; cv=none; b=rO4dqsCjoFdW+ApzriQrtSZtSwCGlM5D+dRVImnOwqwImrleKkYPs3bDHveIQNlDmNqaIufJmT8tz/qpNb8HWIAl5nzMUGHgI1+wYPbKXO5PMj+Eh4M08d66+5gvSTNKYJHNQjutuz+zq8uJMRC4StXEcfqegBLwY6wSNeZoBLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619583; c=relaxed/simple;
	bh=XdODEbnLlL5C0gjswTCm0zMSIpx604EmXMrNX6HxiPk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sRKYMxYdyKqT8SF6B5+OFISlKXaenThvgDBekbSrMWfJ6yqdWPfoUppSMwnZDc4tb3KhA4cgoV5oViGccuR12EjNTYE3icuQMsBEipjp32T0fz8yTgpjChN1GhRn3GmbLQI14pkKeToF2yxf4tOpSj3ThG+xvMv9fzDp16FKkkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ozcm6Uqz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bLRk/MCb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605Bm1nH4032703
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:26:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KzfOUhq2mcOWRDiSVc3Wvaj00KfyV/c9k6ws456a7bg=; b=Ozcm6UqzMsCic61e
	DFgXz2o12dgCgzl/ShIctTILzeG+jlESqAUnkBymQ9tTXVIgUuCMmxEsO75Ny74L
	I9VDgGCQlKNZCjpKpQGwVXAUUBCIh73l5RwQdZh+bB5qF8AEiMWvz2amdKYZ22ot
	7FBf5smhN6Q9+EWs6d68xiEw0el0AUJnesF19MlDMQZEMo7w3vF05eVkSWLus8ls
	RRAV+GzOsbsLZV7dWKTr1X/ZZcGf2Y3at20l3DmzNlPHteZwZPRHebhsabor3lRJ
	KmtEQqFYYh0ouh+RtMxnPZQU6pWmTV3Cu1Skrbdt82ViLCfHvRVsmG5Ntm7WLLV0
	Ogu7+w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg79nh9uj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:26:21 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7bf5cdef41dso24258135b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619580; x=1768224380; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KzfOUhq2mcOWRDiSVc3Wvaj00KfyV/c9k6ws456a7bg=;
        b=bLRk/MCbRKhWgTrMka9lg0OmaxxhMPo/ujOlJ0pnjBHKqBiv64Lu8/4f1GNKD0RtkR
         6SELxagOaFwcsV5VALDD4rXf8Z8qTaWyBGhUWF1XvPsuwks1AgTySObkDKejjhL3AgFg
         5jW9VasIL6PwrQvTa/eX52QQivKee1CZdUyvV9LfSZXGdq8m8JReL4AmRnetvsKfdSH8
         B2GlLDZspZIFaMUamaEW3icrNq+djHGmYSKWLq7OjcspLEUtSFX+97+y91q/2t4ri1vV
         aOaKZ0AkKcCeiavbgHBCqwZeFK0ed7IpEQ//rpSf0pXfUZDYJmqRDLhZezzJP1J/kn5A
         hXug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619580; x=1768224380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KzfOUhq2mcOWRDiSVc3Wvaj00KfyV/c9k6ws456a7bg=;
        b=TPD/TcJ1QaRquIikj8YD2EEOLhieQw/kWVXoRdk5khyqQVFrIVIHDQkk+4BoPp2urP
         goaeQIqS+OgQEB+rD37JvzSABmiD1Ulx0dQtc1dci6srIpb41LSWK2ZA2jr7fvhM0LbV
         8jJELH+J4qac79/Y/otZAeGlEBDJelyCncMy4imArgHjFeWJ828omgvOQ2RdCuN5lYRL
         kisNAhiJGLuEuuz5PCIUvSDGHF63lP6EDg86ann4nIXueGragEdTh8zNCFWNwRFszkRN
         xEH1u72NZgRZpOXxgVUioWddLGW+mmYl9NvfLExizm1HpD2yVVB6JEtNN3SUxefHoUf6
         d2mw==
X-Forwarded-Encrypted: i=1; AJvYcCXhQgdMn0YMZ9aBfICIx3PmIcLlobwEyfOeP4/RTbBDDnDteG6BW+kvMMZW+WYymYoGhxtmi86Ywu3k@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4e0N2XaG9fLrcI3ss+mNM/6RcUbILl+8qEzcIKRazO7k2T72v
	nD0Zh5B61QkDL7CtOK8ksFx6pUnW2MeKgWYzs8rZXt02SUK2/JZ4EkBdMMnoP3FlNgIJM6g6TyK
	DVm+MDw4SbWsmX3LW238atgS5DsSSYuyNYqJHa0LlPBJvuSUG/vLWDlW8BMYgzmbp
X-Gm-Gg: AY/fxX4U4RtiY8Qf2qQtxxPBURwjnJNzoJ0t16D5WOa5Vn7ok6h5t3QxU9CE/0UrSWz
	UDdDuj6Vu/TtHPEdXr3cHuG7efIcoRvnXiFw5A7Kol3fNmsga7mqvrdabAG2aZvcSNhwCcOFKiv
	1pa0pFo6oZEfPK62Dvx3gWU4bcOD54sCtRGNHvaCwntTvJza7LV6fTDPnfjbINJnD1gyG+nBgpu
	tubk83aiiMpiuUlQ7uxh9YlhAY6unbeo1A6A5uw1CFpxO0KjMjwnEIweiRaXO3wv8Fqy9AWHWPg
	gtCi6ns8lAc+MD5EUkkgoMRYs7KhoZXlj37nV97l1sQ9XWXlZ2HQo2kwt6MzJvS/OujfLUUBuHN
	rII39wLY76vFQWTLl7/mmer9VFzr39uxrauMxXReSZ04dGfG1Gj7A+p8cMxTWlMfQZUPwS63+Wd
	du7A9MtTR+dvvu1oBwWGzIwwIhpX0=
X-Received: by 2002:a05:6a20:3d87:b0:334:87c2:445 with SMTP id adf61e73a8af0-376a94c6ba0mr48568736637.36.1767619580154;
        Mon, 05 Jan 2026 05:26:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEgQzxbk7avCcONcGWc0WCwW7J7Tn3fO5wRh7m5YKxkZBrYvCEInWufPa55qZRloEGv1Jrs0w==
X-Received: by 2002:a05:6a20:3d87:b0:334:87c2:445 with SMTP id adf61e73a8af0-376a94c6ba0mr48568699637.36.1767619579665;
        Mon, 05 Jan 2026 05:26:19 -0800 (PST)
Received: from [10.190.201.90] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c7263a3sm41614884a12.32.2026.01.05.05.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 05:26:19 -0800 (PST)
Message-ID: <2c348e64-f1d6-45e0-928c-106e19a9a9a0@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 18:56:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: interrupt-controller: arm: Drop redundant
 node name restrictions
To: Rob Herring <robh@kernel.org>
Cc: maz@kernel.org, tglx@linutronix.de, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251231113026.2480092-1-pankaj.patil@oss.qualcomm.com>
 <20260102214710.GA226653-robh@kernel.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <20260102214710.GA226653-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vHp2ORipIBLNHYktxUvIzbsHu4TVu0gg
X-Proofpoint-ORIG-GUID: vHp2ORipIBLNHYktxUvIzbsHu4TVu0gg
X-Authority-Analysis: v=2.4 cv=Y8P1cxeN c=1 sm=1 tr=0 ts=695bbbfd cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=IkR06btErTndNstgeJ4A:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExOCBTYWx0ZWRfX8Zs2xpDjcwLV
 lyE6LvgsJNCVDPj5L/CFHZqXO8lhwCMPmmyuxpBfa/z43NXLmaS2QvCIE1TFGxmCtjYQa7f9Tkj
 +YIbYkxokMkA4adyOn9c3fCP4WP50w6MD6Myul8WNcWGsXO1B02BqI8pUy7Cbjds13OgAzzMkqP
 bG+p8v2MocDdRCuwb1kRZybHT2SYWXkKb3qdw8oumM5LM76wMLFjAozSbIXzvmqWxJHeCseKQ7c
 ++Pj/TwEbYP9ofez12zhe5Z3S3aeIpgovHg7Q5B2JRG1bkW8LkaGSdMS+gKhN3uWWvEBP4b/gHA
 skWYzYYT8QgiMy4tI7NK7Y7fkW3WyYvdp2tbap0M8m54LBjRfAkdRfmS/Tey4wDm3SjKZc18oJj
 Af3GIlbDrqAMHtQp82+8Io8IKeJ4JPkz5NznasU4vVEypevXAWYIqzGwutM0xFTAfb8mKtohwX/
 iTzKu9hm5caAUKP+taw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050118

On 1/3/2026 3:17 AM, Rob Herring wrote:
> On Wed, Dec 31, 2025 at 05:00:26PM +0530, Pankaj Patil wrote:
>> Drop the redundant 'false' patterns so that allowed names
>> ('msi-controller', 'gic-its', and 'interrupt-controller') work as intended
>>
>> GICv3 binding currently disallows child nodes named 'gic-its@' and
>> 'interrupt-controller@' via patternProperties set to 'false'. However,
>> these names are already permitted (though not preferred) by a subsequent
>> pattern that applies the correct schema.
>>
>> Since the 'false' patterns take precedence, valid nodes such as
>> 'gic-its@<addr>' and 'interrupt-controller@<addr>' fail dtbs_check with
>> "False schema does not allow" errors
> The reason it is done this way is so that we both check the child nodes 
> and warn on deprecated names. 
>
> Fix your .dts files ITS node name to be "msi-controller".
>
> If the node names are fixed everywhere now, then we could just change 
> this to "^msi-controller@[0-9a-f]+$".
>
> Rob

Sure, Will rename to "msi-controller" in .dtsi


