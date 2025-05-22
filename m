Return-Path: <devicetree+bounces-179628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E52AC0F61
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 17:06:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 515589E54B4
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 15:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17BBF28C877;
	Thu, 22 May 2025 15:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cNhPhkN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C62C28B3F7
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 15:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747926326; cv=none; b=SJh3UBXmYx/5tWkKCKhBtwb3xwOWqGKopbRKWyHYStBqTNXblm6VUlsxT26UxJ2sLd1RzaPOrDp8KEPX8HU2cp0WDbWfsotTG7+jjPbpbdIvjppyMo72HOff2E3SKsXu/8UfU3XYcvh1TAxId12xvpi0xiNmu60+DgDAt6fRSKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747926326; c=relaxed/simple;
	bh=h1MN7X84z+I0Z9lmQjsQT6TsWHF9Kda5k56edkB+wTc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cds1GQhavDQkKnBrVBX2AtmcZ8CkEMUvbbFgsoFX0O0oGz7mOU0vwjr6lCzCe5TuIR7lytgfC+ZgdneagH3rkTt+m9OIYeS46d6CiIIEhZisDuazAwQjND3YdFrEQ0fVIvp6uGcyWVcNi4ULNvw7gWIif1ygPkxtA0MrtlgJ1XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cNhPhkN2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7V7mn013413
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 15:05:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h0FXMVGYcKvYPtW8IpaaJtCZ0Z+caHLuXoWIxuTjPfU=; b=cNhPhkN28djh6A3s
	hev+vBrs334t5fbREWPLgmtRExWNf1sSkj/TZ2uFx2ERyRla9w40aYzKmkOkpx4H
	LKBJv4Cz4sd6lk3uqZGIWlkav+bP0wny1GdeMe+OIueSLZBgjzxANBnv5pap1Dn+
	ispo85ejqCgJUv781eBkXy8dSwL5qiiJIyifPmEN8gQ/dlBVyU1pe0l3172lcRdt
	wglbwf1/pxRjB4V9nMo80vtxcY+NvT1G4B8URTJrP007TOw9g+2w0p7B81VVJtr9
	36ZLXiqWu+ufyouz2O5wlhOkjzbyZ6AhIutZGK8luAb0GlNEvfRSed9UQJjNm7DG
	h8IoNw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwh5ewry-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 15:05:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54788bdf7so71993985a.2
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 08:05:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747926322; x=1748531122;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h0FXMVGYcKvYPtW8IpaaJtCZ0Z+caHLuXoWIxuTjPfU=;
        b=EpsyCa3EmfLcT1flRgM4NiggdmfKG/179/12RBwQBeIqooFLyfouYznI9SuWn3IC9/
         AQbaZV1btkCTgjUoEtxyVueZ3Cd++/1QqbqbT+9GZhXF2lbbLC+pKnb+pp8nAMvSkGXf
         +wrTkMUF6db43jD2lT/YFceM8VAcyXogkGM5mDtXiIlc9wG72AEYtUInfLZgJ5kZVRqv
         /bW9el0lC8V5FMo6J8VibJkkcfcAi6W6kC1J186sXYV8tmH88olqvABq2njBnTwVCV3W
         MovN84KSkC8FMOdO+vhHkT7rlaEAJ6MpH4b2tDY/GG3v9lXZVGhf0a0w898/wGNNQR8h
         +qHA==
X-Forwarded-Encrypted: i=1; AJvYcCVx3jrRtv0hP2LJAqadUlq9JZ6p3FJq6xygl/CRbuwulFmYXHKQ5NwgqbmFXclgWW1+l3r6KXqeoc1F@vger.kernel.org
X-Gm-Message-State: AOJu0Ywio0ymRmIzBh/jHLNVIlLP4Gz14NC4IGRArn44dPllkHMPhvwf
	CUVkFDOhPvCfue5SaAmvFqHXMNtS1IALgWuVYiXlhLfvZjE/Qp+AJaZsG4BflUuN0cv4b9MYYNr
	My3XylQvpoBw+XrgO034SjEotq1E3+KkLZizFh2bYgHJiDvo9qAVAoifxIGCdheqI
X-Gm-Gg: ASbGncsWHh/igC19lNCVtkYthYpecW9mrJO8GgPKSKdX1+5xwIdasP/Q103NcrAcc01
	oiDRG+UjRsasKz1f6q57gTz7bvkBOT4/OOj6XoGT1tTxKT1sfWITql2n2QR+Q/F+t2t6D7yNADb
	rbGR8jLVq4CfsquFExtYhCAueg9Pgo7PDE3A/LVbj2qMOssuRxZiSG2ylYpx69Z7Na9Sxifwijp
	OnY7x1xAD5E28BCA2YI5LRmA2Fe/U2wOBtqTrjV1e8eV/3O0xFVpOfo2bHoxD42yj1sdR1DaV9f
	bYUqxCQuDvE7K1ORoHJtimhXM0nzU5yHJd5iiEi9sAY3Qp3xb7+/NMx249d/MVhWHA==
X-Received: by 2002:a05:620a:6011:b0:7c7:a574:c0ac with SMTP id af79cd13be357-7cd467068d8mr1686219485a.3.1747926322078;
        Thu, 22 May 2025 08:05:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3db3rmTOKk1hXtFyyRXL3VA6Tyc42dGPU3KuPwTslgSfcNhG3bQxN2FLIoLZavERqIUis6w==
X-Received: by 2002:a05:620a:6011:b0:7c7:a574:c0ac with SMTP id af79cd13be357-7cd467068d8mr1686217385a.3.1747926321731;
        Thu, 22 May 2025 08:05:21 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad5b29fc7d0sm296353766b.94.2025.05.22.08.05.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 08:05:21 -0700 (PDT)
Message-ID: <53e1127d-77fb-4bb7-a125-18d7afc0d843@oss.qualcomm.com>
Date: Thu, 22 May 2025 17:05:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8650: Add support for Oneplus Pad
 Pro (caihong)
To: Pengyu Luo <mitltlatltl@gmail.com>, konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh@kernel.org
References: <e4d65994-89dd-4068-a8db-050e698f9bb3@oss.qualcomm.com>
 <20250521083746.666228-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250521083746.666228-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE1MyBTYWx0ZWRfXxMgdxOZOr8eZ
 pWMP4auh4SJAGaVs1HHP4a8DPm7UoCjH7w9SIJSz9V24tdph6uL1DTmMOUg8guGnYeUBz/mCxBf
 bHTeSn1S9L9jO34jVMub8ymB96JnnypZrwyHE54jEbb7mkF+WSQ8dnXDg/xN0v577vGkGSWSvXK
 btba53R0nqwNmjqmi6pGn4VhIQPjM7KmUQTTP2KTRTwGFeopJvXl+0nrNWtbJt+MgI+gKaBjDVf
 UQjevwSdqJ4thQgx4abIIfl/1BZGgyrCr2LkQDVSn/42b5Ig5zLXRemiIaLdq/4Q8Pn3tD0UE/V
 4HGsAj/KtkvUePfRuY7UFXDTg4hAD9ORlKJ1ktGUTpsR0DI9RzVQEz1ctCCYYQdLpeSa7J7xjLJ
 OZBsphHcGa56Dp1mLyY76q0uorD3D+G1qMkhMjwZ/LBrPvmgxTahD24UzgyJKG0o92Qfy3p2
X-Authority-Analysis: v=2.4 cv=XeWJzJ55 c=1 sm=1 tr=0 ts=682f3d33 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=vD8jgx0PVHbVM3FOW20A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: KfkZavMTXjVvTNyotoWdpf9oxX0Dr8s2
X-Proofpoint-ORIG-GUID: KfkZavMTXjVvTNyotoWdpf9oxX0Dr8s2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_07,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=993 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220153

On 5/21/25 10:37 AM, Pengyu Luo wrote:
> On Wed, May 21, 2025 at 5:54 AM Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> wrote:
>> On 5/20/25 6:42 PM, Pengyu Luo wrote:
>>> The OnePlus Pad Pro is an Android tablet based on the Qualcomm SM8650
>>> platform. Its device codename is "caihong". This patch adds an initial
>>> devicetree for basic functionality.

[...]

>>> +&i2c2 {
>>> +     status = "okay";
>>> +
>>> +     /* secondary kinetic,ktz8866@11 */
>>
>> You can describe it, the driver sets some nonzero default brightness
>>
> 
> But the backlight framework won't index them, which causes sysfs
> collision when the second instance is registering.

Have you talked to the backlight maintainers? This shouldn't be too
complex to figure out

Konrad

