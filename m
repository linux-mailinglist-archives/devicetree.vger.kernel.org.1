Return-Path: <devicetree+bounces-169936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A62A98BF3
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:54:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34D91175430
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 727E91A9B28;
	Wed, 23 Apr 2025 13:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DeLymmwS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7C81A5BA1
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745416458; cv=none; b=RZtlPuMISYju5gEFDmdkM1MXp0cQl9SN2WgJ6IEVhxacEV7pwfh72pP6MJsxRR2BJJQgpdLTzy7YDiF7ubSWMozmna983PLkemb8a2GyXy4a1I9GUhiYaP6Yg09fT/1OUseuQnZEFlFyCe6tqXpXO1jtio/Dwt+q7b4TwPLFnSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745416458; c=relaxed/simple;
	bh=Ph0l8bR+Uh/iYP/SWlhiMjeLVi3TEspfupl8tbIi5Vg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QvyFsogY6I2QknGe4U17AhJjejAzEySXR4PQEKYTPXN87Jy9qtATgSlqn7sLbHiy3j4/aAgH6ppuWceq9xkCp8OvfI8yKHsyPZR/+3RNIO5CyBHuNNw/yJg28s3rYFyaPxb4hWiVIO6d/5PZKaMk0DvOf2suv4IzL6YbfIMBU8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DeLymmwS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NApAI7016690
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:54:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cJX2fb/ffnpa/u3aYJ64X7d+kE1K0IKu9sD+lgBHlKg=; b=DeLymmwSMCbIy49E
	r5QVfafjNeO5exfLzXBvDczdCEQWbWvZ11WkESac/Rq0arZQLUSoJaELhn20+YIZ
	sC+UQfw+/VMJJgLlZanr2oEEhZqyDuTtnboBdB5iMjHldgpGT8ppytlhB/+pckxS
	5BGXW+ki9ikYF7VAuGSy94VON6HvUbcVQaS6BYicOMI+nz+/dPaqOIMt1DD66Uco
	/tJxpKHQvUikXqBi/4DOWR1wK5XlafuCwOIGZ0hRKMymFHxOmTLTnTlK3OsUYoxS
	0ckxiVqN9S7gSTClq+tP/+yjl/eoLxsYVYANw5DfUqrXoT7lVDMSr+/+5VG4KM1d
	7zRTeg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0ab6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:54:14 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c53d5f85c9so136012785a.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:54:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745416453; x=1746021253;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cJX2fb/ffnpa/u3aYJ64X7d+kE1K0IKu9sD+lgBHlKg=;
        b=eHbjbBf5MQ2UD9qVpWyM3g9Vw2zlDXbfpEQTcvD1S/qAALr48t3CmtXm9SBhElV/TE
         ekGE2SMi4OVejfn2zquvtIdOyspQGdyFMj6eHEUggh8ecbDFq9CnCemho2HjyhCqDM5W
         NqtYPDk5jlzdDAr0oTgpTW6fsqj3l/PqqmJZ4dktUiupP/1yYSr1CoNwjLmfX6dQsY/A
         l3aJkMcUDIzPOA+3+++NNpvxsF1xml8/CKvIvB9e4kmX/TaFcqtc9J/dfXmM2pR0jgt3
         zPd5U316Dqz0/vO7sQQSXUzXvIGzJZougkLCFhtZxSmxAwD6d2HQHdwMOCUa08GOab1j
         GVrA==
X-Forwarded-Encrypted: i=1; AJvYcCVfhtWTY6CrYzrE8Nf4YyAUJ1zTaVPH2Mpf68ILiQ2ZHgCVWhZwVZYpz4GeIES2jdqTmrsekDn7HVKH@vger.kernel.org
X-Gm-Message-State: AOJu0YzYZWEfMivRxurQRv1NJvZVFxnkd1dGNvquuuiDHheQFEeUFlf3
	EVUfDUyUQa0HtLH6oFEOwQaLkCBWORQxCYPfvNWRgaQMsp3iukCrydDtrp6bHPpOWhlw3JMLY8l
	bXUgMBVnVLp18/S1RZX38+OnhaxP1BF+jcr4Py/t8PKIW/T9WULDGw0ZY3Tax
X-Gm-Gg: ASbGncuFF6FLeaWxtXenr/VNlOorQ0zUICpRLfns0QUecl6QX2+psr+BJCE1G+pRECr
	WzlL4Y5g+WtGzOOxPzYi1vmPjv361PVs0TW8vVZSMEkiOMXKxpwGU0Wqf53lutZUgiagJR569Tn
	P/1kcVpcvdas/5BCpzNyF122zBUmyVPDqEXGxwpf0CCtTDJh+cS98JpDYG7a33J64tiD2DZivC4
	EH8pk+IQq5synFBLy8+eghZsl9uNRZyDfMkzp/la9EBV1ZmVG7UFJuLOjLgO+ppXBNU3ZIM1lBA
	nXHZ5dXKwN6xAxdy0CqEQtam58NujxXigBmxcQUVdOsDGCKByePlKVHzQB8VRDIhTYU=
X-Received: by 2002:a05:620a:17a1:b0:7c5:8f37:5eb8 with SMTP id af79cd13be357-7c94d2cdeb6mr185090385a.12.1745416453374;
        Wed, 23 Apr 2025 06:54:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5GSKl5nOJGI1IDLlBzmI6OWMLujvoHpe4eYG3KxeTMc/rjtv7PPTjZDEBvTI5D7TyWEbafg==
X-Received: by 2002:a05:620a:17a1:b0:7c5:8f37:5eb8 with SMTP id af79cd13be357-7c94d2cdeb6mr185087885a.12.1745416452864;
        Wed, 23 Apr 2025 06:54:12 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acbbab86f15sm299799566b.76.2025.04.23.06.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 06:54:12 -0700 (PDT)
Message-ID: <da5f63ad-3206-436f-9b0f-4e966b817fc3@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 15:54:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: Add Xiaomi Redmi 3S
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
        Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Adam Skladowski
 <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, iommu@lists.linux.dev,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20250421-msm8937-v5-0-bf9879ef14d9@mainlining.org>
 <20250421-msm8937-v5-5-bf9879ef14d9@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250421-msm8937-v5-5-bf9879ef14d9@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: G8RYzaEJH8TdDhroij02czbfaV0WNAeC
X-Proofpoint-ORIG-GUID: G8RYzaEJH8TdDhroij02czbfaV0WNAeC
X-Authority-Analysis: v=2.4 cv=Fv0F/3rq c=1 sm=1 tr=0 ts=6808f106 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=VJhJOi4SVWMle1XIrLYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=YF3nxe-81eYA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NyBTYWx0ZWRfXyCPJ6edWj0JS VYOLFZu+OTXeRquwR6vjeXbf4gGly5JOIonNmydbHhYKY1S1aGQccO9HX2uw98mMEMSlQxGqgpT 5WUIvKntW78l3nMjx2j9fc/BUuh/oXqV/aBbXRYfPVFTf/iqh6BbiClNtLSjKFWAHTLRGjwyww6
 dmwRNZz0Mqp1B2EwDukneQvOL/AwRBejIkbbqBChQtYJqeZKdBJjNRsKvWO4vyf300fRuYLkC1M uvUjkyQ8xlrH8/E3FAuYTZGPM0ZC/R2CCIDf3BXxQhlrHdBVB7BwXlwGFML/NDxy5TtR/FFOk/2 9wCuVsArvIlV7jHltWaATYeIKzahIjhgOp63rZCASLn+wqOj86ZfGqA4R8Rvbb06sC6xMM27Y9k
 HK02Q7Zbt9T0+wtAGv2709qHP10oSTZ5PFP83ikR2wyHTHp9CdEprbdUV4MF+vxJr86FEMB1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=659 priorityscore=1501 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230097

On 4/21/25 10:18 PM, Barnabás Czémán wrote:
> Add initial support for Xiaomi Redmi 3S (land).
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

