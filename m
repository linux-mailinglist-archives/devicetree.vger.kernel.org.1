Return-Path: <devicetree+bounces-218521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B70B81171
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 18:54:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E62F9172A46
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B752FA0F0;
	Wed, 17 Sep 2025 16:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WfztVQ02"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B6B2F9DBC
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758128081; cv=none; b=u7tlgKZenm++D/K4bQ9Ma7yVP1tYvS/Vu8AqZkOVA4wyT9VXBy+plGiEqCLArSSCsInaKPnq4v7hMLIDanK41WmMKgtvaQ6FN0jIXIxtgKHwl97Pr8Dx+PeU76E6Go0y4o7bT7kzAgsfFuZiqQFGgfRzwfakJBXAd4o9aZkl61k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758128081; c=relaxed/simple;
	bh=SyJtJxKwiZOQHDnTsOHcrkAVkRbjedBronlgWywTzuo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iBe48/Qq3dd+KLD9VufmuFfOm9cLnwUDyov8lXYTVpgbe3eR0BXXBPFP/4F9VARSa51CshtEqXm2UrlORF02Zo0i2gQ3JC+XGByD25fI+FcExIW8qoVJBx42Ihcj/eINeiJMqYZvX69ogZRkVOexNP4grcBMhJ1twKFxcoDurMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WfztVQ02; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HG5D8q026793
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:54:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0zARoaOb0hV0AK1XBw4ZieqPAouTNcnUfFNkn3nSIXs=; b=WfztVQ02Jsu8mAgj
	u5mhtG5yZVXtHXsWP4x9uVCB/gxzkHDJxsiMbn8+j+jsyQhYpF1cR7Pn5Npzswft
	AkNmSjELsKL8k2y/TkcPGdOQGj0n30XJ+WixlSXb0IVScBDwIIgNhrV2y8XNuc9E
	+TLoIm0R+ennl+cHK+XEpJfZDgo3niEcTl+Ai0ga/PPaMFAN7AtnlYNiW8+3WozF
	Ldei6E5yCAFZ3IVuSaRVCN6LedMefKnCGLQehfzTC135mMNuPsPJs40jXLz40IIr
	46kB/KoxA/XjSia+as9u6pdDP2vZIaAfFBLQiOs0l/Em3I1XVFtRum5hkNIX2vWu
	ZnX3+Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxt37fh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 16:54:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b77ed74e90so95221cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 09:54:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758128077; x=1758732877;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0zARoaOb0hV0AK1XBw4ZieqPAouTNcnUfFNkn3nSIXs=;
        b=qxkvyxgWeKfKBDDMM8KdQoFlxoG4WnMm+qlUCltCHCOePsgJaUinc/8Q8vCqm+14qM
         RpNIYVfPz1hCYWsmp+GlCJx6VbL1DshFuA/vWzhCQRUXx1TxjAje7sMSVhUpEqdC0mJf
         hI9cb1DBmw9/omGnTWxRGCaaRRd57wwFO6CAHv7iJsbFCF5+UMWhih8o+rqoPEHcY/Dx
         YWatKsK4pSDkYqshp93w4Zom78GU5QsxN3HPuB/2erftMNXL+DEhiybisv3bRKwM/VoL
         0TqOHRz/OBneMjEu4Du8C9zS7UQyxeKV5ilWtcHjKwIB14xQPGdJzHUQGMl7ypk2Xq7Y
         qcMg==
X-Forwarded-Encrypted: i=1; AJvYcCUP1n1vCqutNEF8m6yqa6j03yocaudLRklTF9tgdLlfnMXzlb8mwuYLDget74Lb4sytLj5Vs1adKdaN@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd6jcRWhobj3nYlCtak98AyvtSx8MxKLHmr9er7FcntkyV4RlE
	7mWwwwXEo4VU4zVYf9dh8vDeHqe5K94UZzYv1RO1mVcSz8o5t2bjnPcf0bKPMF4keahC9y2KzRq
	sybsnd0owh1Hud1hIxat6yw6eLzYiW3+CJFTC5WYwE5WPuDCT7uGZOO7GdI329Wc5
X-Gm-Gg: ASbGncs3lbYEY7JQIbe91cZz+vpEhY6wYcpf8N1BJoz8nCfCXVA4YXeQ6oXzzaICg/g
	ck9BI1qSeg0+URlkN02w2HWUcjyQQL41gl2JtG9HLhl7PgMWleS+Vq2OBY7kjBr6aa18+vgbzOi
	CvmGG+MZC3Wb7L8OHgVU3MG8AQZOaWLJzl7gsi+jqZNOyqZZ1nPCqR9bxnmCBD893BUBU7D6f2C
	e++jdKnT9PWT9hsqtwQjJF7LqzAWO6aeIfuSYIaufUxG852joTHq/aBI+IT/TN7B4xOX2HbIlbC
	NYri8e4hn9a8+ipzmmfbF3M5Tn9E5J5/N1ysmbl5/NCNeQgORY881qtXxRG25TN35zp4e0aIZsJ
	L3rRMP5xMVY3XAlZ7PXkDpg==
X-Received: by 2002:a05:622a:42:b0:4b7:a9cf:91f with SMTP id d75a77b69052e-4ba6aaa6f5cmr22202211cf.8.1758128077459;
        Wed, 17 Sep 2025 09:54:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFL1WLwI2pVdGCUqXzTQB2hO+kB/OJq0w3bKAMfcEcXwN9znc8rDIhp2FUT6+LLzwBys1qX+Q==
X-Received: by 2002:a05:622a:42:b0:4b7:a9cf:91f with SMTP id d75a77b69052e-4ba6aaa6f5cmr22201891cf.8.1758128076848;
        Wed, 17 Sep 2025 09:54:36 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fd272061fsm6386666b.98.2025.09.17.09.54.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 09:54:36 -0700 (PDT)
Message-ID: <946d409a-de3a-4408-b1b5-5cc13a71c0fc@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 18:54:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qrb2210-rb1: Add PM8008 node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org
References: <20250917163534.832523-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250917163534.832523-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _iT2492FvlzpshmpoN4hdYC34UztZwSF
X-Authority-Analysis: v=2.4 cv=bIMWIO+Z c=1 sm=1 tr=0 ts=68cae7ce cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7YCehXCNsrAZ-mfouP4A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX8VhbnEJV2NHK
 8jIkjAtlFry3O7mi9jlIXT533njdaw1U+sQ4pYcZlfN3luA3jRrmH3/EiukUBlyhJidmOw7No8c
 6aPYB0NbieR4gK7fSwEYTGfJHS3iSGSLLFsJGFQxz8Xv40rJtLYmNVuzxHFuWJFVJVE4y1Ng338
 HWvTE+HvUVTkP/EgWeNYSRmHSl/ioAFv/QSHZuaz4HiArE+OLvSD0u2BboX5IIBmNseRWde2ZEK
 Rrh1yWkMz8+B80nWvUwAbq9brJv9iCbKqyjKhc/xAJTT8/grEqp9+RSstKurcgX0HUDEjQVAXuq
 IL7tRfYTCGW8kdDRbGCBQoXzFR669Pzbq9w6yT3vGK1C97hHnHs8rI7NwcUdb9JmxknyzdIClkb
 VqpbqmRV
X-Proofpoint-ORIG-GUID: _iT2492FvlzpshmpoN4hdYC34UztZwSF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 6:35 PM, Loic Poulain wrote:
> The PM8008 device is a dedicated camera PMIC integrating all the necessary
> camera power management features.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

Is the PMIC on the mainboard and not on the camera mezz?

>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 81 ++++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> index 67ba508e92ba..cc0c53fec1af 100644
> --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> @@ -220,6 +220,87 @@ zap-shader {
>  	};
>  };
>  
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	status = "okay";

nit: a \n before status looks good

[...]


> +		regulators {
> +			vreg_l1p: ldo1 {
> +				regulator-name = "vreg_l1p";
> +				regulator-min-microvolt = <528000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-always-on;
> +			};

I doubt they should all be always-on

Konrad

