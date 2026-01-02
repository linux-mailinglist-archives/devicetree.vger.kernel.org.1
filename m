Return-Path: <devicetree+bounces-250999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6C8CEDA55
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 05:23:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 419AA30054B5
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 04:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A922C08C5;
	Fri,  2 Jan 2026 04:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eME5FXjv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hs1xu0W0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D832C0307
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 04:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767327837; cv=none; b=UHruGZYrsFHLVLfBJri70+qg6d/ApqDOuZofnqHgb130IGKfr9AxwC1rRYJDKTahnHaQwGIvaewKnSsJofafXsXYUw7iuy9Q+hbFvGBb4+eE24r2GVP1YjHY/R3CpXiFi6a5eVuAknXSx8R/VzSlO+5jJwZ1jaCZfp1j9icNMdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767327837; c=relaxed/simple;
	bh=ggAYSskf+7Hb2q0ayaGfuC6x127BT1FHJI+Hnd/lwvs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JkyJDr5+0BdrnHT6IGxD2x2jP852HL3mmf2AlPG7gqkpAYOm2h8Vgd7Q92h/i5aDFZtJJS7cYM4C97JgXg+gzhuYw+27erHuXNhQSpbZuw0NMTMl5mtiPnqmY5q3xYLr9Fjndha3hw8d7pAbWjkw9qeJ8lqMCkMv2wxnnUIh0Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eME5FXjv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hs1xu0W0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601NYGIJ1115610
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 04:23:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4JdQqBWRzKQMrfV3g9F0VDsmSz9eUhaYH5ps/MsW8VI=; b=eME5FXjv5ZIajhuL
	Xve62hxIDgtlYiUQOtSyvW5C4PiItrB9jys+A2CT+BqF8pBTPZyzTp0ndeFEJZgn
	R9DyC2q6TBgNugc/OXyBofGdWmTDClCaLTYPbKQJSbdNMjggmJFPwScAIE9+yJS7
	UzOIvYd+Gx/eiRIqhJPVOL19TxvGP2qZLwFiSBUKy8u9WcpH+vT7tkCwbwo0jakE
	p1koNmQ/ezasFJ1ayISuif03NEcR7DQejfXKha7f5prcE+WK+SRNDxwI3kjtQEyl
	5uN73vnMCMwiQqGVDvUiJv6HMfShCmdEOmKj+xW6z8Z+sbsc0jF3MImMIKpPJuSH
	PywhdA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bdsc9s46v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 04:23:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f13989cd3so351489035ad.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 20:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767327835; x=1767932635; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4JdQqBWRzKQMrfV3g9F0VDsmSz9eUhaYH5ps/MsW8VI=;
        b=Hs1xu0W0bsAxIbA23GG7uha+FT3x1xz/sr6QsEww5hZOEeMNrp6Bi5Le+SLJZw2z9t
         BB1mBN77CmKKbKUvJlODJy991UacjlKrJ8wilcuTwTr6MmnRtPasTZCGeXsJ82ofSD5s
         8T011DPrd9FhwEzpIlXQbORdMLecSbFURU81EISEfuR5FJ7oT/ZTEmrW5rwOwS+DMF2/
         lgWZbJqifqiKu+EvAGy7b8CDgOpJR24EbU80fXU3et+HBv7XEicq21de8ypPQGjDXosh
         BoqZkhnZxKcM88+HXES2ylkQT+nv3E3ivLoRytX28SgCepzOT939g/5czGMfZ+YsysZF
         RH5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767327835; x=1767932635;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4JdQqBWRzKQMrfV3g9F0VDsmSz9eUhaYH5ps/MsW8VI=;
        b=ePAtpj5Ar36Yz3yZYAKZLhAH+x9MLOrzbZo4GzG+4QJyqs915lb4eGNoSsCf+vG4Df
         pOk4bAaptcweMlvt9VLnefuOzaHvm7ik82yTspuxBABTJZVt3CN5+aIH3bxCn+En9wc+
         hXlcbydITR9lCD+HpBzr13Jyzx7eC3w7+hKRsl530KfBaeshZAWjAWFNnLLl/fRlXtRz
         PtiwwSTG2tq6JWNd5DKhUhULOwWsYdL9qgFS2Cm4nj4D9KKfkaw1Ytgu/vrZ1VLwfOqH
         h8R7UjkluGzeDUfy0zKoqAYiMFnCz3CrUmNVP72k6bjVdtExKbnwSARaxxkMmqes98b9
         lRWA==
X-Forwarded-Encrypted: i=1; AJvYcCVRWgWASr2ZDQnCsOVqkQO2V06i/As7H2Ea57nKwNurZstYANL0h9cAwDJzFhxWwxWPvTWhdWGOpfqq@vger.kernel.org
X-Gm-Message-State: AOJu0YzHrLQqd6+M4HaMc5qomDPJkujT7LHqnABi0VFo5dEgInS2K/K+
	L8y8d6MzxJtmo/ZBNhmLuyUJ/NdOl50hH1ApyTIK/kyasdpXZGcccZs+20Nq71vEp/OHyxMbqJT
	1A0CL3yk17Fs7Ezy3LWP/Ym3PYFTKSdzl3T+kdaBiE9pYvW28Mn408Xp6NFKjX652
X-Gm-Gg: AY/fxX4Gc8gcwAtbVoGpfQag0qGsIFYz+a1kignHyz1bpjlra0HCJzvm117oGG8tAM1
	u2RNvUjq8tJ6iqZgogXxc2mJyYMOsWewSfDCPDl/lSDtm9CNw8cqyZh45d+aEysyYJXNQzwherN
	oi+t86CBEIAkhdZnv8+OqEibafCcQ1c5nsnYPSrUD5yCHf5VOx7uAVHXBej68qsqsmOoGhyjlhj
	InkC3dT6jZ4WUYXYVQyNWJ6+FI3tQs3RmUku5AIiEkl6b//gf+BnUA0D1OqhxB1yM0BSorPQJSj
	IULWPqxRcUyFc5EfQH+8TtYnAnFvWKDqErkVyTQQdN7gX+hV1Qib7NEX7vOLY5dhMMlx6PAo/aN
	tmUI7Spyg5ifqAnZmGDt2jRgsZk3UTC+zBSmzfIw=
X-Received: by 2002:a17:902:e552:b0:2a0:d4e3:7188 with SMTP id d9443c01a7336-2a2f2223bc0mr451953865ad.13.1767327834616;
        Thu, 01 Jan 2026 20:23:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHHIb3L85/jpqM+hkvUNcIJvoLwTUhkvKs4XeKWJSbNq5U4FnRoG1VNec60c5doF8zuXEcTDQ==
X-Received: by 2002:a17:902:e552:b0:2a0:d4e3:7188 with SMTP id d9443c01a7336-2a2f2223bc0mr451953715ad.13.1767327834143;
        Thu, 01 Jan 2026 20:23:54 -0800 (PST)
Received: from [10.217.198.242] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d86esm361129605ad.74.2026.01.01.20.23.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jan 2026 20:23:53 -0800 (PST)
Message-ID: <eb9a337b-1805-46c8-abf1-7eddbee40c79@oss.qualcomm.com>
Date: Fri, 2 Jan 2026 09:53:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: interrupt-controller: qcom,pdc: Document
 x1p42100 PDC
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251231-purwa_pdc-v1-0-2b4979dd88ad@oss.qualcomm.com>
 <20251231-purwa_pdc-v1-1-2b4979dd88ad@oss.qualcomm.com>
 <209c49fb-04a6-43dc-a3f1-8451e3946d06@kernel.org>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <209c49fb-04a6-43dc-a3f1-8451e3946d06@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fWD-d0KvBP623IBD3bQYEBEK49kG24Er
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDAzOCBTYWx0ZWRfX7LA53M/uH3t8
 TfwvdchfTG7cr2L0gcROG2mhmBjipUDp7q3KCahZbiYFTaxuZ4amkHYS9xgnmuN1wN2hq4qLjJ3
 +hHgNarLI5SVd13UOZ+0u0TJPVOvpD1Y0DlgV2f0I5vn/sESPoPwFraHtPn8ExzafZKSGQl1kwj
 dDYJ/unP2VbR4fdib+/u1Owuz7yr14HiX5NfF7GIBm+QATU+LRNwdbfa/bz8VLtLj27mkfReZ7T
 rJRYHpq/JUoD8YbtO7QZsFABmw3taOmaeHkNbZYGLROXt2Lu+EXUOe45Jv4MgaJgEO/1/LgFNlP
 EeaPHmc+GH+eXoBQmMor5VeJqWct+spU8C42RrZYdMM2fHWv//uy/sLR0MZ3PQEm7vUDbpuI9mc
 ecpVckzfqpYuwXO487gjHBQe59UH9PKyxSmG0CSlu5kE9QIH7nf7MqL3Z0ydDjX4cl8iLSIbMJ8
 XOwI2Ig8mVCKTJBV0rg==
X-Proofpoint-GUID: fWD-d0KvBP623IBD3bQYEBEK49kG24Er
X-Authority-Analysis: v=2.4 cv=Hq972kTS c=1 sm=1 tr=0 ts=6957485b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=-qTOTZwHVwQcG5cz7zoA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020038



On 12/31/2025 4:19 PM, Krzysztof Kozlowski wrote:
> On 31/12/2025 11:18, Maulik Shah wrote:
>> Purwa shares the Hamoa (X1E80100) PDC device, but the hardware register
> 
> We don't use Hamoa name in upstream.

Okay, I will not use hamoa/purwa, will use X1E80100/X1P42100 everywhere in v2.

> 
>> bug addressed in commit e9a48ea4d90b ("irqchip/qcom-pdc: Workaround
>> hardware register bug on X1E80100") is already fixed in Purwa silicon.
>>
>> Hamoa compatible forces the software workaround. Add PDC compatible
>> for purwa as "qcom,x1p42100-pdc" to remove the workaround from Purwa.
>>
>> Fixes: f08edb529916 ("arm64: dts: qcom: Add X1P42100 SoC and CRD")
> 
> Your are describing wrong bug being fixed... or actually not a bug.
> Every SoC should have dedicated compatible (see writing bindings) and
> missing compatible is not a bug.

The X1P42100 SoC today shares most of the devices with X1E80100 SoC as is,
with X1E80100 as bigger brother.

Adding new compatible for X1P42100 PDC to avoid applying the S/W workaround
for the H/W bug of X1E80100 should be as per writing bindings which says,
   - DO add new compatibles in case there are new features or bugs.

Adding The Fixes: tag for binding will also help when patch-2 of the series
gets backported, the binding change also gets automatically picked up.

Thanks,
Maulik

