Return-Path: <devicetree+bounces-197467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 233D6B095FB
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 22:51:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 821441C2552C
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A945E2264A5;
	Thu, 17 Jul 2025 20:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PnjB3q+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5A52248AE
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752785479; cv=none; b=c1AU/jMNoAjgoKMrlDBGetUftJNLkd39nfwy9ocd0cSOnrk5VT2QjSVSKuIscnY0MYOxVsiKHNMRRKDdv94g++sRFgRnwye3WHAYIXPq8q9xDYo2ySzSL13tZPAxzAU9Tgb7AxHJnmAgsulAVLDEVJuO4I7kX344PvgFST94uXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752785479; c=relaxed/simple;
	bh=ZzdB0c9lS+Bqc6XkxukHQJDk6iL7AEBq0SCr9kWt5Ms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RSDy4FTjJoaPqfJMLjhCwMn2xvuUitbme8Dl8fFGmNRHIQ9yCVqzgo7NB4d+LBfr4/MTDFptAEnev9pzxgK95BzDLAyUAoj03xukHDyVjEeV1CNPhOz9/SLW5THeixKCgyj/SI9uKvn/NEXuFDQurgArctpN4H9wKE9Sav24Tz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PnjB3q+z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HD7HEo022149
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:51:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zI1GQsP3FtlWSvO2Fv/8SUzJeJc5OU5sQJ2EHFJlKCw=; b=PnjB3q+zCE/jGSpK
	vqHLp8hghvN2yGoF9XpPQXcjYL2X4IpoEK9Zg0W7DNfTwXFXP9mqfm7JchXSknT4
	oqlkwiUQQr1cx0F5L2DlhiPR2rE56Kb9MvKw0uyWUpHOjyB6jWT15Elms/N4rsJJ
	f+JY2CkGQCiVbxHlAUSTgjbd8Ec9J8w4vtskDWm2WIBcymwzvumavq2zxEnH0vBQ
	cl7XzMq1hMaU9ySLSelSDJ8iHPeW9c29RBFQ18YRvBIwnVhCsODBr5uPdvnbXs/W
	dU28SqxQGMZGU7fMVAjNfQEGTtbrbauPA7rRc+dfeUg8Q/hiECZmSTKjneIb+fU8
	+xSJYw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8gyrf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:51:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7dea65840b8so22096885a.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752785476; x=1753390276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zI1GQsP3FtlWSvO2Fv/8SUzJeJc5OU5sQJ2EHFJlKCw=;
        b=oIYWu6vzAyrPlkRqPzqxT6/WzXJHi3SahQ0H2Q1O9AEUgBUuyEpDSsEd8By1x4HfLV
         NDoPxRiNJM65BF+o76CZDoXrCj/OHstczpry4VodsNKSF8o7/AsjotdxOFimWUMWKJk+
         LznIgeF++iOEu6GQCnDcMdh0aSTvkiqyei22wE/TVAC64qR0wkzKuVhpc5/S4/GyPXsi
         RffNGWCnXOv/VjvwFpKE8lB5UxO46CQPMMXrfLaCnt6gLMCMfyN1RQmpZFlgOAIPLOna
         YcCZu9It8nmIusS4+Y/2xGdL7oAGs/DKX/LVxKj50i/kgBe3xZiq/TNAOtQUmXBefotE
         mk9w==
X-Forwarded-Encrypted: i=1; AJvYcCXyEU/T1Ii2LDeqz1wVwWke16ES7mBe69398a+ezxbHoODumQj1MNy90aCljmR9h2V6uzQL82IgE5Lb@vger.kernel.org
X-Gm-Message-State: AOJu0YwlXEiF+KN77Xe187lIEnrrI8yaMUNSRCeElk2jn4w4J308nlHh
	iP+BDcbsBgxI96I2nsZyRYYREqiFSI7U8169iKwQ5OKA8s86FxG8fy+FaFYVDWy2Z1LX8TzM8qY
	4j0mwoi9yzHJxttDNYwEepF9+rjwxk0bLlm4ZwR2sAMbHiGwEV/Q/ytcqNTCV9WZJ
X-Gm-Gg: ASbGncsink9Jfzwvs9NBhm+xR0UMu0yUO//pNwVzW02oU5avmIU+iKK6xjtaKvEw7C1
	GnVXrKqkmHQKh2cVv/DtSfH9etZjyOWDMdeH4+r85mSw7ACjut6p6B1CsYDte67wwQc8JnOfw8a
	zuqDaBw68sGiS9lsQ2eVVl+pHybhU7vUsK2hd90WSNmsA1Fx2xHkUoFaS7rypZt0Laont3CAPXl
	fyoHnevwuVLSvY+wKdxE/9yd2Xa2qeUfmfbwSpQP5aFHj6o+YhNNaWgGJtel3wIXZgPBwwt5Ejq
	ovJQaTLtfvWLvIOREZmK6D+/iZdTVrjrDUj7FFM4npxRq92INGXss+/eF/JHQbQNdNhdyNeHgeA
	MPKTZQo0Pg7tsJuBaz0Je
X-Received: by 2002:a05:620a:288a:b0:7e2:5349:7da1 with SMTP id af79cd13be357-7e342ada387mr512190985a.7.1752785475662;
        Thu, 17 Jul 2025 13:51:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1oOZ0EIsupcE2PuNyin2lTsXVWnKq+kC+fhAHB0zn97Fx4BA87XhhMZqt3iqSgMkwZ2vC5Q==
X-Received: by 2002:a05:620a:288a:b0:7e2:5349:7da1 with SMTP id af79cd13be357-7e342ada387mr512188885a.7.1752785475094;
        Thu, 17 Jul 2025 13:51:15 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82df540sm1406774066b.163.2025.07.17.13.51.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 13:51:14 -0700 (PDT)
Message-ID: <ce888443-c86e-4353-a4e1-64f2cc62604a@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 22:51:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: i3c: Add support for Qualcomm I3C
 controller
To: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jarkko.nikula@linux.intel.com,
        linux-i3c@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Frank.Li@nxp.com, wsa+renesas@sang-engineering.com,
        alok.a.tiwari@oracle.com
Cc: andersson@kernel.org, konradybcio@kernel.org
References: <20250701071852.2107800-1-mukesh.savaliya@oss.qualcomm.com>
 <20250701071852.2107800-2-mukesh.savaliya@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250701071852.2107800-2-mukesh.savaliya@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE4NCBTYWx0ZWRfX5rA9/IMShj69
 yrk6QCZzkxmDFGLxBjLQuugx6DhTjmjTEGBBlCvmGnOwRYXe8vWL01t3SFEmwcb61Tbm2C+PgsS
 vThaH2DfE7SEN7gLUCT91gqMz6xFvJGR1v9lfRpAoPLP3Ct2E0EZJcci0hfuACXNZVdICkw852o
 X27+fzuRx+rIwz0hxUlt7eS7zV5aYHqpJjXsLQya/oM4QktX1DKVzD99i4QuiayLNr7wjJPR62/
 phsnjubvcPMCVvf2Ry4Nl05Yx9FPgfFBZjSpO/E2qJRv/wudgB9yyd1MvqjrLXmIAxzIyn4UiRx
 mrb4GbjyCctdW5USnFmUesn0lgI7UmtS7v0W54RYOyA71U7Lld3fq/zziVnQMhFfcoEP3FqYxLE
 9p43B39/zGZPubco4pKSpjvAOAU2NYVMcnMgYWA7z0RgR65dmRHxByWk0cPWUkWQ9xVldvbu
X-Proofpoint-ORIG-GUID: CffqMc5d3EkwlD541N8FhLB6CHnixeeW
X-Proofpoint-GUID: CffqMc5d3EkwlD541N8FhLB6CHnixeeW
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=68796244 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=JRR-jv_DfJOeuxYAjpkA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170184

On 7/1/25 9:18 AM, Mukesh Kumar Savaliya wrote:
> Add device tree bindings for the Qualcomm I3C controller. This includes
> the necessary documentation and properties required to describe the
> hardware in the device tree.
> 
> Signed-off-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> ---

[...]

> +properties:
> +  compatible:
> +    const: qcom,geni-i3c
> +
> +  reg:
> +    maxItems: 1

In another patchset, you expanded 'reg', can you coalesce that change
into here, so that we don't have to worry about backwards compat?

Konrad

