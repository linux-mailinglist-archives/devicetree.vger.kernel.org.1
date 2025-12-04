Return-Path: <devicetree+bounces-244270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F3669CA2F77
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 816F03008185
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC16432695C;
	Thu,  4 Dec 2025 09:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ABD5Mk1s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HnDreiof"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CC329D297
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764840011; cv=none; b=JpRW7UzdibKXHDs2TIXRJPV8t84VabjifEYtLvtLIewcl281bkXWrC5vB134oXg9CUVUEJouREILtyAS9b2nndByNgdEXLVZ342RxAm92gcVWfTY/I7uOHAksCJ0nL99GNp+QwIKbHYxQr8X0NXwrzdJ6fbw/ZIWF6OzveyHi5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764840011; c=relaxed/simple;
	bh=Zk5osWqvoFEmEyyG1snUAhf/8mW6N6FmdWfkVe1OgFA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l5cWswuM/o7+JzmjZF42U8WvG0pZSURKuzV59qrCcrOrnmQ/VXTpcx7urrXR5baYwKsv39z0wmFeIB5KJCzW0AK1MXSBiykr+l1CUnoGVGvTETp1PKKJfDyxsGVBa3LApc9gqE70YpC0lm3VtCY9Wxu0Hn2MjDphDfd9LJ8Q2Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ABD5Mk1s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HnDreiof; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468oXx599230
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:20:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4dDMcp9jTriiKmoYI5JhT11TrypRhl9msLsKtlntbgY=; b=ABD5Mk1sHo4bPPqK
	Qt6vH3y2aYheQnWqo7buCT948R9f1aFOI1PWwZYSvOO99tt7C3vxcp3IyUxyBJya
	7TPDQTXAp5FUutjY+FdcNXpXapk+hezSZsua/oEng4HtQtuD5fYgbhz6DPLwcW2E
	Z0nC49p0wnVCVZbIVS2oeKzG17TrIt3gBJAWvIagtpE4VOgO5d7ZWt+ksP1OIrHh
	N3mniVYoZ6zJMFxsarNSmIABMgcG0cQ00WodvaXts3tbv0xx9iHfcD4GZ+iorBeS
	0Hj5aJlgLvCS+8UQd04J43KjGLmsFY7woxqPLgU/bO3x+YiRysn6KFvpkesvNUQD
	NvBhFg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f0132u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:20:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b196719e0fso25851685a.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764840008; x=1765444808; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4dDMcp9jTriiKmoYI5JhT11TrypRhl9msLsKtlntbgY=;
        b=HnDreiofn/ZGAiARygBBCN5LBwbhYlX9BURPtlK5VnmiTMMy2Ro4/yJqhJlwWkff58
         lDMaQvr4I4nRhawWyVfWJm42OmDBAJY+xJMI/v7CY6M2BXRX53DYBRSeNoG9NN5KMl09
         aJyRy7VjZBUyr5c8BPBB17G/Zcu17L60wL6qTp3yNltDDvmMoxKkdV07H4MiZF0iqgzi
         rgp/p55E0DM/i5dLEFNwUAvqY59nwW9IMNlfkXN9FatOSngVhRtHbUuUcvWFPUa7s6PB
         gZW3Exjxm6v5lEtRPNIVJdGPVEvRy3RYwQKuzPaJW7/UJhQuFmHhbsO6TQyWnqgeEJKO
         2tTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764840008; x=1765444808;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4dDMcp9jTriiKmoYI5JhT11TrypRhl9msLsKtlntbgY=;
        b=KL29sCyJZJvi3eocd/sdKyTIk00JWnNGXNooFgTvo7PvD4wH2wEV+c/l7PeptYHjhW
         4/tSPJO6U2/rXrR+ixto5XOoLJDExQEUvV47rYTFApwKGDIq8bcmui67xNzLsbJb0gx6
         G78CNzMcmjHlJfM17Iua5rKdfUSEIjgGsbm71Mx87eenFFTwT8YgWuySoXhSaSmxrkTN
         Zt6YpKKJehK6QYAhOLbBrIG4nxjhjxJOaMK0CXzpCuyIjbhfbt19IxjjKQXbMNFPUdYz
         VqvPlm9JpHmgqF7kIY6TkErF7azj3Z+cYjGTLfRRpU8X3bojpco0nSmTqPIPAmOGy0WD
         yhZA==
X-Forwarded-Encrypted: i=1; AJvYcCV/Y03O98Ic8Gby0pN49CzkeMntqzShWbUi724JzcIAZSYaE/MFJ7idCWC0MN3nMWw0o2ZePMWbBkXP@vger.kernel.org
X-Gm-Message-State: AOJu0YxTN93E/n5UNDz6xg8p04ZK0+SWu4pzLvjJEbQAbfyuxm9UBmIH
	6Y0WnWW+Np0RBeWzY6slKpSn69k1wuVvHrZ0UYVAOgyxnR3sZS58uRKDWT8ZCZGnG/kmMoEQeTp
	j4I4C7zX6dauIN6HKEdIICp9ZPlEfEkJB/aLu0hVq/atOnmEwyIf2OH0ZVVIQIm7s
X-Gm-Gg: ASbGncsU+IK70Wwx9hNJMrAIXjMgdFWX9onb5PBA8MYi0jOVIMir2FIqLT/ZgBy5i/a
	JPdf5iB2ha5uidrk36fOkfDYfcbRMOHFwrKj6NaSp0guEsgHZHwLZ330Ge+L6WX9J0o0vzcuJc6
	Juc8qANcNSGhWzNfVLysatMmyd6t+LgqnGgiq+UA1g3sq4vKVHqZb2VOnZ74Q4idjeyWzWC6WVN
	nyA7oJ5iyubaE6OnVL0OoKJqVFBKYTecABOACpbpZDmGUEnW+tgrbpSNakHzifgCWvfzMXU/6j4
	l70ylIvuuHi8CBxaJ22BfhTGo9sx6AzdoR6ydChlc25tH/pHRzD7IBLJJ49crPapdooG7CGHNlu
	8L8cxwW8YbPm8cK8YdeL/Q7A+W7VMoHRltN0NAqFhUIiRUjYTPC6PbhuJ1aHJ33/Wiw==
X-Received: by 2002:a05:622a:16:b0:4ee:2638:ea2 with SMTP id d75a77b69052e-4f01b3b2039mr46919871cf.9.1764840008427;
        Thu, 04 Dec 2025 01:20:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsC8OWZKr9kIU4m+W/sK4smtxu/ww3/Ut0qMeine6g967BrxeoddR3qHiF5r0V8ehcYnU7cQ==
X-Received: by 2002:a05:622a:16:b0:4ee:2638:ea2 with SMTP id d75a77b69052e-4f01b3b2039mr46919711cf.9.1764840008047;
        Thu, 04 Dec 2025 01:20:08 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f445936dsm84503366b.9.2025.12.04.01.20.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:20:07 -0800 (PST)
Message-ID: <dc5a2759-8894-4758-b925-330b8b718dd4@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:20:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: talos-evk: Add sound card
 support with DA7212 codec
To: Le Qi <le.qi@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251204083225.1190017-1-le.qi@oss.qualcomm.com>
 <20251204083225.1190017-3-le.qi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251204083225.1190017-3-le.qi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PxDbdobyaUa6vwMXayjzA5qVrXxBKRRY
X-Proofpoint-ORIG-GUID: PxDbdobyaUa6vwMXayjzA5qVrXxBKRRY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3NSBTYWx0ZWRfX9ftE/KgdsIyq
 dSiLg2mMD6o+EX6ZCeWneocoBeIwnGcjE6kspMc6d9Na8AK9UJnpvkmV6yRVUYLEIQKgPMb0Fy0
 l5JlWwcRgJV49WNdPElm+9rZYGRRwrZVOsicc0zQPZr2pkQZKfZgUCWdXGgRHCPwzXLx92/lVCW
 /Tlcmt7z7AKH8W7C3hu0Lt1sPjcKzkgtju2+qsCzzT+FJ03r8IF4GwuxKBmuTmmgL+xnTOn4LjZ
 qhsnmH+WNsraslqh9fjjVMipfqgrGAK7T/WKeqSeOXZDulKiS64y6l4SfhVUmrrldjYeVfbQS/0
 y9Ixx9JS80Ft9jvPwtdg1/I9jFC811g7DJmZw7I7ZVUThkUz/DqtF3ozo2xpQOh5FtHVixIjf+t
 WfhhEHePfGTbktZJJRop/AY5n/uTZw==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=69315249 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pQJSoI8K10o3MdFmILcA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040075

On 12/4/25 9:32 AM, Le Qi wrote:
> Add the sound card node for QCS615 Talos EVK with DA7212 codec
> connected over the Primary MI2S interface. The configuration enables
> headphone playback and headset microphone capture, both of which have
> been tested to work.
> 
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

