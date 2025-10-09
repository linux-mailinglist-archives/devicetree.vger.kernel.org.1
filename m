Return-Path: <devicetree+bounces-224939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BC5BC9156
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C539219E69F5
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14CC82E5B05;
	Thu,  9 Oct 2025 12:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SSLn1sWS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4777B2DC346
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760013688; cv=none; b=DOs++aRocO/kLZZjrQL/6Mbo4iFgfsNkELGd1zp4OXlPB4j5GTikQ4xpkjCTCFKQjHnUxF0f1sb7KT6jcJA+mMQlLkRvuQzcwcdBUJCus8lRIjBh/8jhV8R9sXxnrQ+NncCJ8v74FMfb255NDEHDGsheqIExBJtsFjKNM9XltQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760013688; c=relaxed/simple;
	bh=X1oa2Opgwt86ZgTlAHfUOPHzjmWzARhbTh2OGEMTJFk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sdOdjYB8q6/ghdi9nRbiRobaU2oNxplx6VYd/j5Mu9/SYA5bYS7IrgOpEsk+vIcWtZkPW7ishz0OU2CoR5qsyaIijC9G0+6dX24v5t8c33OVv6qkNxse2tLPlUwtMqjStVg8OQ5N+iqkj7L9qA+jQ9tuE5J8Eh0VbG8uLkzXc4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SSLn1sWS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EJIW019131
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 12:41:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZTbeb8JtSoGShn4747twCq9ITGkpUoqhfkcNYUr82qo=; b=SSLn1sWSmfpL2OgU
	0658n3ll29JfHEgDaZTbbF1a5zmen66CZ2rVGdfnBJ/kz9lMDcEMjX4ziuZjTUbi
	mL0XXowkItiB3TVJfzUPaOsQiAL/SRJ/qPt/ir3fOEBABQwLZv1ZSixeJwSxdfx0
	dqGijEtlLIFtNEm+kb4f1iMROLZ9Xs+hhr48FRLzLaA6FPC9CjBjdA3VS1Vy9hjc
	vRKDv0eSshuDhmKjeVafoSUZ6dnq8ZBIg5VAdcFtGEa633NQ7RtSC6CqqXlgBMcn
	5SnNXGs2bIapB52aAfzY4q0DLwFtc8UXVXg/a+dNT7RyIAsscqrocMpZf5w8NK3r
	8wlpVQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ntrm3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 12:41:24 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4deb3bf6b2dso2611981cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760013683; x=1760618483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZTbeb8JtSoGShn4747twCq9ITGkpUoqhfkcNYUr82qo=;
        b=XGMeseMLMoQH2A9lQHaNviJKZjMUhgoz14fakY0pOS5sxrKleqb7OucOW+e40MEV6n
         57RKqeWNZQ58V1Q0IzEI5IUO29igPw6a2eSQolSlgv+ElFipGG+9VafBZC2BW0zT6e3i
         MwuQZ6oWbS1qNqjfBH0s+F2s9ZdwlxXZKIhZUzdz3DJ0VA1qxJYyy4YWJSWEroZKNcvO
         W1AexLH9xgDOypPrHrTa37y6n1BiGukycPGyQdtUd9el+xG+jhs6giMZoz91dyiDwP7b
         ihpa6T12F2fTjdH4kMrR2KR9ZhMBvrRiTLsLJIIbA1S2+IWuiZe7px4M5d8u4hUa9X08
         vdqg==
X-Forwarded-Encrypted: i=1; AJvYcCW1dpBkatGpsUNEIObCt9xYC2S1KYILd8oKfHmOLiWanhPRRnyPUsmNDEH477uxs6OnvMduY/a2Q2Ph@vger.kernel.org
X-Gm-Message-State: AOJu0YxYcxmEn1wQ/NBRbnzrwaMEGcEOQ13BGab7GxnoPLa1u784ybYE
	FHtyRhs5Zw+uEeeDfSAqdOsCtXCbdJ2eQcnsbViGnrj91FOJxR5VqNFtA2fLN8dbQ6qYiHgJVyv
	yKEFkrq3Hi0CP35M/R9IeJVZfR1VCF6Lm0ZnjboGLrHk7wr0va7XcP8WDQ8+RyG0h
X-Gm-Gg: ASbGncs0bBcj706Aa6M22kpDRaV6Rk/0geSixbktvzihS1B8vKL6MRtRAs2lJnIzIem
	d2n3wEcI6rRSkVV70vSWyToW3RideBiDbbQ2iy4FFpvj7Ad0D6HpQb8Amaz14Py9qyr4SQFCfFc
	3euGNFf4zQAw8JPt6s4p/04oQjl10Q0CqtBbqmYR/4vXgca2WMppmDjZe65c+6VqA6Zu+prqIlp
	sgr0yy+uHB342T9DXlL1ktA1w+bozkXk84fh5JGPcbx87NnKnuqH4LMI4OdzlmrUwpVVLPk9wPA
	4xr7Uutw1eZkysp3FTDe9B1Msrug4z2QjKCgr7Doithlbp/2dEcPvxOjH0HYX80HPzWSlXSFaO/
	kx6isr1QTMcJ+HOmOIu4Z01DfVbY=
X-Received: by 2002:a05:622a:14ce:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4e6ead2c674mr63640391cf.9.1760013683185;
        Thu, 09 Oct 2025 05:41:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8vZzBR/cCVwVs93I5MExBLM2zASHRyGAJj8t92r2vWzVp2okk/WgeWQ+4wqfpf0OQhTpPRA==
X-Received: by 2002:a05:622a:14ce:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4e6ead2c674mr63640071cf.9.1760013682606;
        Thu, 09 Oct 2025 05:41:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4c83adec08sm1189038366b.56.2025.10.09.05.41.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 05:41:22 -0700 (PDT)
Message-ID: <6ede6425-6b99-4505-a231-de819bab9ada@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 14:41:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: Add support for Huawei MateBook
 E 2019
To: Jingzhou Zhu <newwheatzjz@zohomail.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251008130052.11427-1-newwheatzjz@zohomail.com>
 <20251008130052.11427-3-newwheatzjz@zohomail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008130052.11427-3-newwheatzjz@zohomail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ZI5tmqoo0d1-dWdDXggnjgQi-9W-WIZk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX9J+dio7m2fS3
 Ke8JYypum/YRpMHrrNiWLFsOmQ01X8NuWvYA6+MU8DOE6ml+o0eP4mKalOnrrhcL4+5abZ/xsip
 aKfxZ6ngeIIczmmOcHRS+od/L4b9j4t/EBATXBAzbLD6FWbKG4czGYCkoOC4FXvJSVn3qatP5pe
 ggeT1QMJfojBjcY6vpYZcfd5sZv4uwN2pGFcLPOEEm9IAqHET3VYIREYgossb0GgTdhRx7SUK9J
 0JRW65WSwQbaAv6xXZTZHepZtO6XtYAfzvqtFvhSmj1BmRWdAnezZY6xG5oWR8tXKONYlszMsyy
 FWf0LmG2hBHZ2keBlefVolaOXpDHAb4azZQmxg8q+1r6hdNEWIdFFVP29Nl4h/xC2iTclfzOclg
 yuTYDmxOUuCcnaw3epD/fa/8MpOV4w==
X-Proofpoint-GUID: ZI5tmqoo0d1-dWdDXggnjgQi-9W-WIZk
X-Authority-Analysis: v=2.4 cv=b6a/I9Gx c=1 sm=1 tr=0 ts=68e7ad74 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=l4nIPSqNMi1mnKGloYcA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/8/25 3:00 PM, Jingzhou Zhu wrote:
> Add device tree for Huawei MateBook E 2019, which is a 2-in-1 tablet based
> on Qualcomm's sdm850 platform.
> 
> Supported features:
>  - ADSP, CDSP and SLPI
>  - Volume Key
>  - Power Key
>  - Tablet Mode Switching
>  - Display
>  - Touchscreen
>  - Stylus
>  - WiFi [1]
>  - Bluetooth [2]
>  - GPU
>  - USB
>  - Keyboard
>  - Touchpad
>  - UFS
>  - SD Card
>  - Audio (right internal mic and headphone mic not working)
>  - Mobile Network

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

