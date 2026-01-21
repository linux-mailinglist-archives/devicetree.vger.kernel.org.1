Return-Path: <devicetree+bounces-258030-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OJ8ArAKcWmPcQAAu9opvQ
	(envelope-from <devicetree+bounces-258030-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:19:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3695A70F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CC487AEBA19
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 15:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DDFF44BCB5;
	Wed, 21 Jan 2026 15:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P4U2sjQQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z2HcvOWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4204943DA35
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 15:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769009487; cv=none; b=uLfJe6M2PZFZFxcV7PR1AXRPMcWcSa77ygHmVXoI9xybdgApuCPxE71OEy1eHCC+QfClGvbqp/iDWc6K57BvRFDKc7V/6Eeukxx/XUjP9HSfEPE65Sh6xgVN6WPdAdGd7hPH0mlKADXbuRczkS+ARniKVrjyQxJLZrR+cT7jAK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769009487; c=relaxed/simple;
	bh=zsX27Mca8HN9B5bADNfbbpGBalcAWHy5dbS4xUpZk6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZK45cBAvkblYBDDLdSk/eATnk8h8t+aifhH/OK0mfaHYRX4ASMiLJCQfXTbadGBoWp3dPah+QTFs8jVvjVs+2LPZzsriqV83nSKH2Kdc/f87GPLdjv97ChbgIYdRhRIUXwvUP59Zo1x4rw/2aip4xc8dle+FqYXrmXEV7NDd1eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P4U2sjQQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z2HcvOWZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LAEHUb3229089
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 15:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zsX27Mca8HN9B5bADNfbbpGBalcAWHy5dbS4xUpZk6w=; b=P4U2sjQQcdRJ3zjO
	mCaMrL0+DW/1ael+/16AELa0KpX3EPSOh/lUK2074ig18a1gIFj3pcs1VKvaS+fk
	KMdmTn4HBrmY3U+XQbkMOLTAFQeyJEx/zaAcb7AzOrb8OyA4+uggiMlJPT3rCCmc
	xnpKfgAC1GiO/U2qEO7cG6z1URsAMRKT3+UcwuI8EUvcIFYuJmfCDfZzohe68GEK
	3hMKrYYaSMB7wMDAufPfIA8kiji+4VvVdVwPeAMBnkf7Bq0KzpJrVsGz0es1HSrb
	FSNUAOPDN3C40fqwO8pcFVuVec/kiqw2e91xBtjn6ertO09waJn5mMRIlAEx+AeQ
	Sh1r+Q==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqvpa9s4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 15:31:23 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-9481cb46f60so58631241.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769009483; x=1769614283; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zsX27Mca8HN9B5bADNfbbpGBalcAWHy5dbS4xUpZk6w=;
        b=Z2HcvOWZxlq0bqbF0GIaiTXrkZFle5ccsXM6HcdawV+e0JfbFU3ZfPeack8RMrYaDW
         Aaw1/FJV5NvDwetkwbdXyyISQH/eexZ8ROQT1NJAKx+WlrwupwsNgfih36vqOypBSD4Y
         afKNVD09FhVqUOQrBZwpzaIjS2sxzPnA0kpVwfnY679l1sU1t/jbKFDRk65rUakJU6Gn
         dWt5LaNeo9GT5R4h/fxIGwccb+wiM/mCtEMKd0HBRrbtbndRFRolKLwClTAF+LYsOWPv
         7YBJnRD1jsoYUADUMhLGpMj6wcyldRuttE6KanX3e3WpsCyYWqrt+cQuu9+3mZZFZVL6
         fspQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769009483; x=1769614283;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zsX27Mca8HN9B5bADNfbbpGBalcAWHy5dbS4xUpZk6w=;
        b=u1Y6nq7izX+nw/0KVUq8osdb0Zj+fK/tyl+m45Lq6G/PDxVgdSsKZ4K40hO78cY1tp
         ItCyptvmyFqJgSLb3hpiqt9deQr/KID+nKFe+Y+GpcvKnLmwbu+3ALbptY4PEPEGNgZj
         0xHjw+c7li5flRSQt6ywVpa/HQzTRxEVKlwZYwIH6i2iNrilw9NUo5HWtrzl5Bp7Qpoc
         jsvhxpV6nSVDlXTx5essE9yNNPwjZl+LTRaawQDoMR6PPWX5rw79z1BqI2moowMemgOK
         nQZJlJlxZPVLxdEMRahs0LdEyKG9u6PqTAr5pyfKsUrPkl465suCF5Tr4WXda0lYE9uB
         YrqA==
X-Forwarded-Encrypted: i=1; AJvYcCVic4MLmRArD01FDO5SBSxcsTA7h8PPEYCybWD0bybBU1EsxQkfD8YIATjlRzrVBiruCblUunNcx2R2@vger.kernel.org
X-Gm-Message-State: AOJu0YxgL9hsdkkwCB9isvqmzCRpcZ6kQBnSdlHTKWJteLVybeOgIjpm
	qq1SvZc61+8gCsJBOpo/NCqMwzfO7AQDyxVjfeT9XQoePFymV5chRozcDjLLAPdbTbL63eUp2YP
	donSDOPEeZX2WMjcQfzUrXwihKF86abaWx3QZjrL3T98uyaiA/2/y/hSVjxYdCFJ4
X-Gm-Gg: AZuq6aLKDOhORuYaQKeyiRgZ7BojsHE88nwgWtMv/bYWMIeQF0mz37l8poTWWl9i3D+
	5PlOzUcYXCQSE1WngDJ8Q0uN34qx86F0aRs028p1UIQi6HivXINICwuM0RiAbIr2KxRAYRnzcYX
	3ltNmvNKYzSjKzy2YRqqJpOrJNeTlk+KVj+uXYKaVSzbG3hxXdkskNJ1iUcBZRuaFp4+gmeASqy
	QT3KuLYuvSX18XTw2EZsAYOI3z3zs0M1+Bibmee5O4YGZoxSZfO+f54KFci4jXgvOVplJ2kPOAX
	TWGQsXl36KOY9JPy4z+1JWItcgM+DwqfI3Wa4fFcwXuDPwg59dXGjtXz7rnA+cnlkWvddWEp8pP
	hRO5mQNYxRFvGTypqkyabBxGbYJBhoWxFd37MAtUVdLHRUKmeQuZflsiwc1ffvixIkaY=
X-Received: by 2002:a05:6102:370e:b0:5e4:9555:8984 with SMTP id ada2fe7eead31-5f1a556805bmr3562929137.6.1769009483224;
        Wed, 21 Jan 2026 07:31:23 -0800 (PST)
X-Received: by 2002:a05:6102:370e:b0:5e4:9555:8984 with SMTP id ada2fe7eead31-5f1a556805bmr3562900137.6.1769009482784;
        Wed, 21 Jan 2026 07:31:22 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6580eabee8dsm2085168a12.30.2026.01.21.07.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 07:31:21 -0800 (PST)
Message-ID: <a51b1fab-c630-48b8-8b58-2a906ee31424@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 16:31:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Correct
 reserved memory ranges
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
References: <20260116-xiaomi-willow-v2-0-4694feb70cdb@mainlining.org>
 <20260116-xiaomi-willow-v2-2-4694feb70cdb@mainlining.org>
 <01d254f7-8c62-4061-ba7e-f358f1904ba5@oss.qualcomm.com>
 <90a74369a2c4d9453de733a46fdd0ef1@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <90a74369a2c4d9453de733a46fdd0ef1@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: UV-rS6nffhYKDnKOzqDxamXSCNX_5xV0
X-Proofpoint-ORIG-GUID: UV-rS6nffhYKDnKOzqDxamXSCNX_5xV0
X-Authority-Analysis: v=2.4 cv=cdPfb3DM c=1 sm=1 tr=0 ts=6970f14c cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=tG82vpoCcTU8gc5Gbs4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=TOPH6uDL9cOC6tEoww4z:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEzMSBTYWx0ZWRfX4t60WdURMSAe
 mOm8cyhDF+BtF9O8YvMTbMqTQCRpwzVHZL1PZRKjsDA0rqHIlEFHnn89oc2bXNho+WbWlCHmdW/
 Exr4pCcZuHhqvsRLKzIWymzEVM9b1DyAwVcjR1Qi1fqYjGsuAmY7NwOngf0FYBSxwN8nMm3hl6t
 e9J6mwbCxomWtlNVzEhSBlfrj/C2+GrJQqM6sQMN9l4Dl6H1sBW73JeAEKguqscW0k8RU098p9B
 vxu+WuuZJ4w+HTEzZwLR/nR67VDnYvG418HxRvrnVJjQGCoFZ+Ft0KravJxbn0oufxg0WnEr3i5
 rjobuFZPpcmB887rAcBa2tIwFeIvuJ7wDMxoOodQWXOHv/eG1tBhJKv6SWAHxlZQp0k6OE0egnS
 L640cvRZg1WHfKdPjhpiSwPGUoJ70kNUBUWMKcyiiY7NkQ1e7Md513gK+5Nl5GArJdLaCMT4E80
 RSv/B0Djt7c3Rksocxw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210131
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,disroot.org,intel.com,igalia.com,gmail.com,vger.kernel.org,lists.sr.ht,mainlining.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258030-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mainlining.org:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6A3695A70F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/21/26 3:21 PM, barnabas.czeman@mainlining.org wrote:
> On 2026-01-21 13:45, Konrad Dybcio wrote:
>> On 1/16/26 4:54 PM, Barnabás Czémán wrote:
>>> The device was crashing on high memory load because the reserved memory
>>> ranges was wrongly defined. Correct the ranges for avoid the crashes.
>>> Change the ramoops memory range to match with the values from the recovery
>>> to be able to get the results from the device.
>>>
>>> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> ---
>>
>> Have you verified this new and improved(tm) map e.g. by booting up
>> the kernel with memtest=1 in cmdline?
> I have verified with cat /dev/zero | tail | sleep 5
> I can test with memtest=1 also

thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


