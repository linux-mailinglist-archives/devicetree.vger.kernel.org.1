Return-Path: <devicetree+bounces-212167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDED9B41EB3
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7302E1BA0C9B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FFC12E88A1;
	Wed,  3 Sep 2025 12:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WeKZUD+t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C456B2E7648
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756901897; cv=none; b=iXVZjTPG+IqOkMkapznU3CezO/mNbqFrlSrGFiD5bUDmitVGZ/WQsROu78uV5dwbVYfEb4BYnSt8WqmeWxkZMAU5p9XzcMbM8RYvuiMBsqDoNnQeeB4WLjuAXIuYPwOD434rgb9ZnGjnqLLv5kxwzsWlbsJck2KJksxPcXJBaDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756901897; c=relaxed/simple;
	bh=h5MwF6L1pjz2m1cXTQs903RhWTNIphI7ZF58yr9PH6s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GQe6WvvIAtFIFEjD4URJ2Tg7lhYuPV28UYh8VSXx8eYlxC4BuJWiTLp4Egd6d8ehlheHQrqGdozK6CRLKGpCbHBiTqi4p3a1MtoJDcJbGUQIx8fCD6/ZW1jm04ThMmoL/ixTCIwlGc1KIdPPI6X6zCahaq+OVickLlBga6z11Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WeKZUD+t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEtFb000682
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:18:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AutDsvD16EOr0OTgbsZtdjV+hXDkbazkLSfLhhee5as=; b=WeKZUD+tSWL6z40p
	46t9ccDzdqNz9IhWmGqyqH5aDLYGYQJK+DPJ48xUKg32UdsD2jGpejoet7Uk2+gO
	ETQXNDwF2wohwDfUVpr8bqrlIga0Mzi9jSsdrVd5+w0jELoajzvf+WBwH5ryFxVT
	ZAulzIWcPAtqxA04EEEEavRIfla0Dc6VWQRH/iS3lLKm0McyXimvMwNvxH5YcSiW
	4kfq0vPZA3oT2AQA5BoqPbznZm0EC+QHym7j9Z6BxPlh6fJ02Jv3OdedoZPdp9es
	PKpP30WUABusKrKe9ilMVbWz9sixNw9MGVLNkikYqE6ZAPsvd7tPdoVQzp2NcGs5
	PSA+6A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush33f99-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:18:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b307e1bef2so17423861cf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:18:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756901893; x=1757506693;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AutDsvD16EOr0OTgbsZtdjV+hXDkbazkLSfLhhee5as=;
        b=VeDyT1HrM46xSPJf9DUabesfhmN3ek05mt5YfhVt5Uh+ddR57THughTeyEqFKw0PKS
         K6ceNPlA1o93uZhs98xnC1HutBGY362rWxzbzot+4XwTi6rlNdJfDtcdL9m35z56aohZ
         6cuHferHKegdPkSCACzKbK21bLpKpS7NL8VAcRlrngy+BIsAzdTyp5dW3DU3U7Rx8Z1b
         tBaXr1dqW8Co01lGwa/7VwebI+xj7/56bhV8GAm9Lp1DkqcwQmJFJ7jJW+xVrB8jjShz
         64ECVJcrMBBZ8S2/t3Xwo0C7Ym6bQ31KtVeG3YB2yXFeT2RELTNKKxnpktGhXOCF/UYK
         XMCA==
X-Forwarded-Encrypted: i=1; AJvYcCXqE9em9on9avHxU2aLZjEZi6cRO7w88UTTb6xDVK6bnWsWkEg9Ea1MNoxjPsNz3qxsG4rfVCcOpx/5@vger.kernel.org
X-Gm-Message-State: AOJu0YyO86tnP0hOtTgderha7s+AqpJFvEHUJQ9AiMGpvfKCLMT626hm
	fQQ65+uTP9dwSi+z7iX6KUcz+BPH1i5U48so3dUwae5Jr9YsJxi1vORqz+7yVdfyqX+/cpR4+Xf
	JxTQcWw5uX6uBYb6HQ3Uwsj+nyeT+RKmkRODzAVjFYsacNYIH95nXXS0vVDb+W4SH
X-Gm-Gg: ASbGncvwtpgMNjfNl4/+tQI7h1aVXHSco8ggGGyFbfLxL9vdOel/SrH6uxrkdLlLhR4
	De4S0zXbaZgqnIT8fSt8296EbjMWFAY9QGij0hyYu6vfljQFeW12hWZHUG87xvaxUjZLB/0lyPw
	qD34l5EapNiqrsw2YFfufc6RG5nPBQbhpeSXWqtUoIcyPxHKBez2y3GajrqPO1zUB6v3wua4zlH
	W2ERUSyizfMaLJi9Y27XWltiALoE2Pd0ZpNEyC6RJUFzovgoI+8hvp+qlBSv6uqESzNh3ZK5Twi
	zpyZvKe2KmvlScm4J4eYzSGoDokyGq5OvnGWn9pZLIxh//+gy8Mhl0NDutCqZn2fQpGojRFxeQN
	pd1Ogf6TneAp1tdjBdmiF7Q==
X-Received: by 2002:a05:622a:1789:b0:4ab:6d02:c061 with SMTP id d75a77b69052e-4b313e65205mr133752451cf.6.1756901893520;
        Wed, 03 Sep 2025 05:18:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRf8S2c7HLcbCmImimNW5RYrayUocv/8HOkBFVTA7YGJOz+PpskH2Zk0DqGoAc387ucyJKuA==
X-Received: by 2002:a05:622a:1789:b0:4ab:6d02:c061 with SMTP id d75a77b69052e-4b313e65205mr133752031cf.6.1756901892843;
        Wed, 03 Sep 2025 05:18:12 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b041f6fb232sm882398566b.87.2025.09.03.05.18.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 05:18:12 -0700 (PDT)
Message-ID: <4ac0ff3d-38db-44cc-9e36-44f9e819e96d@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 14:18:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] arm64: dts: qcom: lemans: Add GPU cooling
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-4-97d26bb2144e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250822-a663-gpu-support-v4-4-97d26bb2144e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX4DyOMwod1dDw
 qGusP5hXFBBNfXu4cKXOYcCvwzo6Jg571kiee0sBtmEf3f3NEkkm/A7hC0GJUaJLDW6R3bvBRXs
 kNTpMajO9V9wOzK1LaR/lRAE9gDN9EIu0Zw4tjppXedz1BwHj4g8FjCKSPF1lwnGvcOtZ+W9st5
 NfBbPkstca/4Jdc+ejYggqRBf+VCKolYqxhO34Nc9UQ5s7WlAxIe338u4fbPKrXz9AY8N75xP1e
 4sw4zr2ZBtX/o+VUmlRLGuKUGMm+fldGY/SJPu53RgG4fsHTVxtCFuJosjkweF8mxtdCBGQr6P4
 pnSF6JaHBoAxpjM2xiELP3+kJxGloIWP61HETtm0HeHs2DTatzFwRLiWuqlQeBvsgrCFyTO7jJ5
 kQVHeMRS
X-Proofpoint-ORIG-GUID: rNJg0XdvpA07K-9zZX2i6fAbJa_aQaEc
X-Proofpoint-GUID: rNJg0XdvpA07K-9zZX2i6fAbJa_aQaEc
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b83207 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=R3Qjy7WId1ItUu-RO-4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On 8/21/25 8:55 PM, Akhil P Oommen wrote:
> From: Gaurav Kohli <quic_gkohli@quicinc.com>
> 
> Unlike the CPU, the GPU does not throttle its speed automatically when it
> reaches high temperatures.
> 
> Set up GPU cooling by throttling the GPU speed
> when reaching 105°C.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 67 +++++++++++++++++++++++++++++-------
>  1 file changed, 55 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 8eac8d4719db9230105ad93ac22287850b6b007c..b5d4d07b2fd9c14a6f1cc462c695e864394cade2 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -20,6 +20,7 @@
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/thermal/thermal.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -6816,13 +6817,20 @@ trip-point1 {
>  			};
>  		};
>  
> -		gpuss-0-thermal {
> +		gpuss0_thermal: gpuss-0-thermal {

You don't need labels for the thermal zones, just the trip points below

Konrad


