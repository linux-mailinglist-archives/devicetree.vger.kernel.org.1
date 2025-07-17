Return-Path: <devicetree+bounces-197381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ED5B08F2A
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 16:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 424C1A44EC2
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:26:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EF52F7CFA;
	Thu, 17 Jul 2025 14:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aNM8qraK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC4F2F7CED
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752762380; cv=none; b=nagxsJbxRo/moLszZGZD5/0VN41+wRA+xbWvZeQuHlZ/gwPMTq8Orsi3UpfGhFzTqr16lWXtNm2pNUAOBvsObnjBCHy3U5OQY6HRpvU2OteBzgrm3k1wpR7liQ5jPzl1bpQcsnvFougLDLfZKGPJSi7qGfYqtzbsaldkzOxV08Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752762380; c=relaxed/simple;
	bh=A1VK+VUAYmGD2wv3tLZrYHNa/XhbNhwlQRV0o44VqeE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pf7BzwFqD4SgbFM/J/fvikxUO10hgHo+xmPqpZgqnTcCFjQyvx7E1UCFQQaa37rVnRabt55Wu6GOypZotNE1GZA8OoH347mmXyuSBXJMIrsp95qAN4C/V6LtFcNOXNtjqWTvrUuNsdDf2lgK3GurjtnRstAsaPn4qT2dpQWdqak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aNM8qraK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBNW32030397
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:26:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UW0SHDq7HM8cFjQol3zMTWFN0cbf4VsE3FOoKzadPAw=; b=aNM8qraKFYw2c3Yx
	BmvuremjN1AniXLdkRm2PrR9i7lT0bjW1el8yTEt49UlpnZEErP/ypNkWsHhc1QS
	RR/gVFkUbGnI4jz42HBV/OXmUQzhpCfCIFy8n7Y0ZFe+zNpCk7MFaXbgWt4ahnal
	Oi09lZ5kVEc7XqGawOMPZjrLX7z9Jzz1qGrb4VhB26nxKXptHPCSCGJ7ojW/myeY
	0JY8QRTKIge8z2jlzKxyeUTJ6zh2bzarrIGkwNBsNn4esGdje/ojfO92/pTT2zyH
	zMpLauHgKfBLoP5pAWQ5GC+e1uZsS4CG9YEIAv/KxhEqc/BNvFnnikdgQ7QiIUeD
	a3ko2g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47x8x7mtu2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:26:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab3bd0f8d5so1344251cf.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 07:26:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752762377; x=1753367177;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UW0SHDq7HM8cFjQol3zMTWFN0cbf4VsE3FOoKzadPAw=;
        b=vU9FOtX9SnBI0ybcsuXIBCGQBUUqtb3p3HwIIxzaDaXzkN1t/J556zDUujY7XNikah
         xyf7R55EsPeLTqoTf1hY/3q+6kFa5ltEII6eWmbn5Mc0/nKPoSTE38EfexG/QEavPAfx
         URV19Rihg85LQHGgwxQPWgEQ4gyKDs/bdR8M1rqXVEG0wKzlyW26d5+UtglT+Cu/V6NJ
         1XiaepU4ufn3AW9t+sJpOjCUzZTP1oUyXi4k6b7BLrhXqGqs3Hh9n/DNbVKzekF24NHz
         kzaKQzDUBT1fhzti7tQZblO+cBk5TFxWdwcNcp94a8RkMU8ziV2Xlv/IVuueTpLiJHiG
         auNw==
X-Forwarded-Encrypted: i=1; AJvYcCWfJv6Hjfu/qI/xM7Igns6kDR9ht88fsS+9fLib86lGFztDGti13bhXmoVelNE2aX8Lfo8b2Ox+VMey@vger.kernel.org
X-Gm-Message-State: AOJu0YzopAlDedaMGmbhW6aINBT+Su6x/TPA0t/MosJ8FwmXDdMXBuZE
	0D+GOnAk216wdo27EkFBMQ4K16lcfxIpYPe1AkMTayno6ODHudt6Gh4y1Jni8P5YSTVPI6+CZel
	nwykYYQDGJipp2MthOg7QYFjdN2AlomTnwLK+qSClwo4PPZSzjVEK1G26H/vWYPKm
X-Gm-Gg: ASbGncs0YwyvWcxVXKyH+6rBWif1fM4e3iRLuMlLay1wtTBp65sCqPYI8qaXUsiSJ+w
	ny/8pSDA/Ht3SwjR7lgYLV8GkYfo3JWC01JOIraCRxMdnSni7srahDczPZLcJYfsTjGzDp0WtfX
	aL/sR9zPzxiKuKdXeBtsMqO/Ut0zXqAm27uoTZve1QEjbyzuTovb9mnB5lp3D+BAYtyT7DMAyPY
	dNeYXgyd9gwuzdVWkFTQ8IP0pYKSfZEThlzUvu6WzHcCfa8oO88DARuDGevPac3rfBEb5hCxgo/
	tAuj8MXpv4K9IDr0zRR22PxUJrrjVAwKZGc4qD1O9U9BY8rNSVdCrtC1p9pTbFsfNPdRwRmvb1c
	drkso3WPQCHM1Y/O4ktdE
X-Received: by 2002:a05:622a:1211:b0:4ab:5d26:db88 with SMTP id d75a77b69052e-4ab909ca3c2mr52125031cf.3.1752762376871;
        Thu, 17 Jul 2025 07:26:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMVUYbi7+xe6s9Goz1ayVoWHDR7708LV9kZl8tV1UuT+wHPjRTXIxBGxsH2MvlnarsySchIQ==
X-Received: by 2002:a05:622a:1211:b0:4ab:5d26:db88 with SMTP id d75a77b69052e-4ab909ca3c2mr52124771cf.3.1752762376427;
        Thu, 17 Jul 2025 07:26:16 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e90c70sm1397031266b.13.2025.07.17.07.26.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 07:26:15 -0700 (PDT)
Message-ID: <c9d85f35-fb39-4b9b-84b1-c14827f55f51@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 16:26:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8550: stop using SoC-specific
 genpd indices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
 <20250717-fix-rpmhpd-abi-v1-4-4c82e25e3280@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250717-fix-rpmhpd-abi-v1-4-4c82e25e3280@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDEyNyBTYWx0ZWRfX/pcLRaV9bI9s
 7qc0G8iGDdiR3MVAulYTPy/yhf5Gx1CQ574A9yXtBAo2MkErwsmZLmTkLVrcVBcv3rQwlO+k7IX
 oln2OnxvIRm1dV7jpap5SBIOBkWDWu4jviKmIufVUBsECK7OETr/zlO0rE0HubOIJNEpVQUcSFP
 2jM7ItSF2/382vA5czYBa/RjWdDkSCYzEwQWhEOFc/w4F7iAWGVauQEwHeEotNpUFNHY3mg1Ulf
 zV28Ua0hME8xP5vBI5ycxPi747wzhy41lkuupqi9tj38clhCk2E0tYKyU9ugGVxW9fjVb+E+9pe
 NMWlzolGpQ9teUiVi2SymRx6F+c+LpVHHV0T1IssWOjpZkihskwFcEGq3rNtQfxYcy9iNdNpGZb
 06vYuUA8miJfT4uwY3fHS73unO7ujivTD3lLTbBc8GrPYVMGmh7V44fGyQ3YtWH1dj1fpksp
X-Proofpoint-GUID: 7vu71YH4pWXLiHgFwKXYm6xi2abBTwTa
X-Proofpoint-ORIG-GUID: 7vu71YH4pWXLiHgFwKXYm6xi2abBTwTa
X-Authority-Analysis: v=2.4 cv=N9YpF39B c=1 sm=1 tr=0 ts=68790809 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=GvB40MCZoslDJ7jKBQgA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=730 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 suspectscore=0 impostorscore=0
 phishscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170127

On 7/17/25 2:48 PM, Dmitry Baryshkov wrote:
> The SM8550 has switched to RPMHPD_* indices for RPMh power domains,
> however commit e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock
> controller") brought some more old-style indices. Convert all of them to
> use common RPMh PD indices.
> 
> Fixes: e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock controller")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

