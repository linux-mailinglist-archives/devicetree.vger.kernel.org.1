Return-Path: <devicetree+bounces-247755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8B7CCB36E
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E88663008BF5
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E282F4A10;
	Thu, 18 Dec 2025 09:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="krdYzvvG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OX9Akm5u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BFA29E0E7
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 09:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766050801; cv=none; b=ESkRXKyDOM5c498lG2KzUnfrSEfXZd4WXH3mLlXSLMX6SHBhU8ZAHZDpzj2CwCI+HXCAxH5uSgIbj6DTZA4I1C7HsZWrIZ+HrEu44qu1Y2fC7iaNBUS+ECvVo1aeDisWHnqgb/AgMGSa/BnAKpFzvnzVUVHyRt67996gs0lKPQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766050801; c=relaxed/simple;
	bh=18rdI16McX2Rw3Dfb0mIqK2tbkliWndeDDttpJ02WFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qrZnJna2QV3BdDmZ4nFeYaoHc40ig2Hbw68ULZKRxb9Sw7l4XWkMYJfnLgno22gIA3QD7mIQVAT9tml22o0Zl+Wu4GyW9NPwslL4uVk4VWP72ta9NRsIhTKgvhiH0HTdnGoQSYJFJvVOXkr7ujmIMt/NIUanfOzwJvHAo93rF/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=krdYzvvG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OX9Akm5u; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI9ERbT174247
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 09:39:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/77vK913TTlKN8QIeaXI4qErBxlb52ugP8le19n7SKM=; b=krdYzvvG87C2LTbf
	hzmQpzCbTJr3ekwoATs3LgDfuWtaQ7zAsVTPSIn2ZjkJC+TXhg4kbaPbb6dsXpSO
	veVh2v2ifDj7jqGH02lqu7qBvF6aEAOWOisKc9UF7MHRZoCvxTigreIZGnNnQ6r/
	a4WIqT+HKT0tzGCg94D6NTrnVK3M/1656Vec50f6+HG0cUrSvfzfaxas6BKr6s6d
	5dyf2HuqnARGMnH1CEn7NrYK/idekVq+gRd4Tl3Z9xkd8G5E+gZZvLbELRldL6zM
	rah4aYpjLS8xJ/vR9XZS9VgKqEn5GJhi7QAAanjRe8awoWw5XUtENdwhcH8E96G+
	T/wZMw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43nmt1f8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 09:39:58 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a09845b7faso6669515ad.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 01:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766050797; x=1766655597; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/77vK913TTlKN8QIeaXI4qErBxlb52ugP8le19n7SKM=;
        b=OX9Akm5usxvjJVF+qjcgn5oKTT1Xgu/VYL4POmhOJaoDXxxyyBWJ4ePwf1CqRf7A+u
         0BTJNM365QKglkX7AS80SYWB3A5KSsAA7hzPGcDgFsPJL9K4FOws9pltubdQSvmixsCj
         bcfyZM1tGHI6F7dHlwqK7807/h5pGsYsp63ge8EwcfK5JR3a0HTuBsqLlp55uO5K0/ak
         BfdAnzVXe0A5RKU2NqjCMPXelew3+/H/lo0Ct55XsuXAWyr+t3FjqXiTh82oK8HhXHkl
         9jp+vSO8/ia0Ds9PBTblbPRDSPd4M5sIwHI5rvDDCsXq2z/Ngnv67Fs7fOsKi9ocWFm4
         Wwxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766050797; x=1766655597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/77vK913TTlKN8QIeaXI4qErBxlb52ugP8le19n7SKM=;
        b=AKjl/yd6TeXHtCMGePJPbmqj9ttmlwD6WqYXFK3R4dyLTXtOq3izOFzfVV8MhPp+nh
         db50hyjo2/CwS4GMChNbxS4J1JdqXq9Iyi2ZdgQ/oSPJwqpBtftQ/evHDQjMaJnFapll
         5n4ec1ieYIay1oLtXFyzxDlI5BqlDjHLtvoHopUCEQZ43l/mtbeque/qpFNT7kDRj17y
         yg3txDGMC4qvYkEabx7TqAx280IBKMskfckKgU06uvWxVLcbj+V+RGUx6K1V+R2oSlN0
         TNhQ7d8HbAID54Lj7esfSpKZ0sPBmJTQ/9wKPFx+TIfsanEd7uLTkKNoXouhpOfzPg0w
         Ez/w==
X-Forwarded-Encrypted: i=1; AJvYcCX+opO6IWVpzsTSCH4T7ve9M7FrxOI2kPoarWMzThbgQx54A1uBCt16GphBVn1NWI6hwRu3d0kP0wn8@vger.kernel.org
X-Gm-Message-State: AOJu0YxBUfU3ldjkZKp/G6SfHBg4czeOUrwUks800qzxxEUQubK3EzTH
	tnmwO+rvoQJ1KJhvXRV9zmcL6Hi2JL+2APiSfNL7Dh2JH/MkNAcrrg4LpWnEMEcJjXp6NQ6K2Sq
	rx1zp8RV8rtDRtBZyGLyYi5cWjQ9txkdjwTwrTT0cgEnjflgH3lKuz1PN8D4OOlGu
X-Gm-Gg: AY/fxX6oQWn9K9vi2XLc46PFgqGvtkiUG3tOZotFCks+1/LJwaGE3M42Ynp5VZosS+i
	bYkbaMh6BS9dO+40+1HGOiPUEiJ7uSxOWCauVgWDiFY7X9Jt7xXzd+QDUIIPQLu58kUbbDB3bbm
	urGGTjlYJnBS2rV51tu12nk01E1vNgkZSYTC39CEko+GDakKFdLmExc0/unirYBaDJU7a2zduQV
	OFUP/En9+xtY/4njc+hT7go6PJ5pyReY+4Lr3dfDG3SsTlNK6MrYmeqB8oCRjPs0JGNJri0NeF4
	bjd0MXCguT2ifyliF9/GDPLglWP8NMcVDTgWMCQh68gwBBYciQ7NS9c4ivFER+WJ6cd9sTpqULU
	UjumMMyCov11pQuTFDgU+2iiRgHbs2VbAtkJ+I3xzvF8DgSQYGDWoQbey+lXn70V42umEGZe0mq
	U=
X-Received: by 2002:a17:903:2cc:b0:295:888e:9fff with SMTP id d9443c01a7336-29f23b5f44dmr202651945ad.20.1766050797485;
        Thu, 18 Dec 2025 01:39:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFM3h7K3BRs43Yizvyw1/lLNzYQJC3C2/OyMTefiN1IrLzUvn1VUrHuWvz0igXIwZUSHnooMQ==
X-Received: by 2002:a17:903:2cc:b0:295:888e:9fff with SMTP id d9443c01a7336-29f23b5f44dmr202651815ad.20.1766050796942;
        Thu, 18 Dec 2025 01:39:56 -0800 (PST)
Received: from [10.133.33.162] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2d087c8absm20015555ad.10.2025.12.18.01.39.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 01:39:56 -0800 (PST)
Message-ID: <6a6fe308-d2ab-4cdf-a7d8-d322d915cbc2@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 17:39:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] dt-binding: Update oss email address for Coresight
 documents
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        "Rob Herring (Arm)" <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        James Clark <james.clark@linaro.org>,
        Tao Zhang
 <tao.zhang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20250902042143.1010-1-jie.gan@oss.qualcomm.com>
 <175684936304.1217220.3167248149687349464.robh@kernel.org>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <175684936304.1217220.3167248149687349464.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZKnh6Ryu_NuBMh2HhBCOUwcGM-RnBILZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA3OCBTYWx0ZWRfX27kgVAFon2zv
 P3/R8bVSzE4//7rPnJFQEoSatvb6/TG6xu2JMu1SWg8eI870Tu6U52nnOEaArCkr0o6eVY4FhH0
 Fq9AdDjo0Tlq6kqzSkPuCpl1rqyKw2gcn9FDd099u0TEkDCMzffhHbFiWUaIuQ1khIYrqpkpdS8
 a43ef8UeFbB6/drNvw95VzEBBv/FAURrOMXQIvJQEI+BQsVnN8AKvuF1ZK2K5XvccJ8gSmN3lmY
 WA/OhbFWml1XZEC0N64u27LKBX9l+G9erUHpldrDbf1T2nlzCTVbbUA6sj+x9hMmtsuLf4zokFu
 18OP1gwyTxmrw7hkMG7mbfp0uMPfNDbxTSgpiwU1T2pSmt9n2KM4pW8cI9bohca7Qb+lD9HybjA
 GOV5BnZmes/QhICQyoDvB9+diw0wSA==
X-Proofpoint-ORIG-GUID: ZKnh6Ryu_NuBMh2HhBCOUwcGM-RnBILZ
X-Authority-Analysis: v=2.4 cv=A6Zh/qWG c=1 sm=1 tr=0 ts=6943cbee cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=hx2rv9DSw3ookLii8U0A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501 spamscore=0
 bulkscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180078



On 9/3/2025 5:42 AM, Rob Herring (Arm) wrote:
> 
> On Tue, 02 Sep 2025 12:21:43 +0800, Jie Gan wrote:
>> Update the OSS email addresses across all Coresight documents, as the
>> previous addresses have been deprecated.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   .../sysfs-bus-coresight-devices-dummy-source  |  4 +-
>>   .../testing/sysfs-bus-coresight-devices-tpdm  | 56 +++++++++----------
>>   .../arm/arm,coresight-dummy-sink.yaml         |  2 +-
>>   .../arm/arm,coresight-dummy-source.yaml       |  2 +-
>>   .../bindings/arm/qcom,coresight-ctcu.yaml     |  6 +-
>>   .../arm/qcom,coresight-remote-etm.yaml        |  4 +-
>>   .../bindings/arm/qcom,coresight-tnoc.yaml     |  2 +-
>>   .../bindings/arm/qcom,coresight-tpda.yaml     |  4 +-
>>   .../bindings/arm/qcom,coresight-tpdm.yaml     |  4 +-
>>   9 files changed, 42 insertions(+), 42 deletions(-)
>>
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Gentle reminder

> 


