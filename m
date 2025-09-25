Return-Path: <devicetree+bounces-221266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BD3B9E2AC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:01:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B42D4C256A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 607BF248896;
	Thu, 25 Sep 2025 09:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IbXvGQX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE977DDC3
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758790882; cv=none; b=ZeIdFaC1YfyZomGcvNxaAMvJL7LZhYxu1eZ+d/1FQSadNkCex5FwQOKAtaUa27DS6uHEJwPYmUkbHJsWcUbHTq4YPK/u/wvhzhtC/+dUDx3+3y1etH3auFXyQN1rcmGVW4zMRxRwRoxI0iS4HaD8xbA6IW9e6ynXVZEF0zuA+XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758790882; c=relaxed/simple;
	bh=EG/AvOrhHFN3S+Jj8IoZt9yabjIQcx+99yVd/FA4AFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RlRwJYTN1Gh2mS3n3+lxjKyNol5dgMngQZGzwY3/0Nao0M59mPcKfwvJ+7zfVEbgDVSbc7JXcxo6d6vn7rQjKokG0aW9m/KAd/d4wJ1dGIp0tk5I829ty6ymqKn5bTnZmEJXoflmb9ctXZxm80LpYSefnp/LkoyKFPIF+2867i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IbXvGQX8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONvt0g018678
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:01:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nErVNH97ngZj0wOMSCyf5gNqUyVQBeaqG4w7YWWN0t8=; b=IbXvGQX8V1Ly1SAK
	QCenpoRmD7G9gW4DKCPihkJS/26uFuWTsY6DzaXaowj2MkajtHnPhckRXIhbNr8M
	ScsW56gf5klrc2IdAi5BPEjQbsM0bGkPUQzNrIca44ofaRXwmLdOgDBPgJNyaf+9
	rLPO/o0CrnXMYEhtxQ8IIZaC6eklBZsbwUZkLfJx+LXqRLMs4cV1FNKzvmuyZC0t
	Gfe+Agllrq+uKgiTpepP0eC4MH7JWZNP+kiKFr7sVdk6RSR2uEINPQbpbSqY4hkf
	WHFpFDqkOpzVFdo1qeSIhlLo+IvIJIRw/YQjtiZFa5U/gzU2P3EJWxgQnftXOL8r
	5UgDjw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkbedh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:01:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d88b669938so1562641cf.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:01:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758790879; x=1759395679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nErVNH97ngZj0wOMSCyf5gNqUyVQBeaqG4w7YWWN0t8=;
        b=h/IpUhoiU/lAU0RO7KGZjRQtgF9sKamg0eC2CuedFdpAJsw36/eZT2hTGf+Mll2LH/
         z1KFn/hFC+OsMnQ4uF2toCRhT73VmpSPeJEH2jkku9+Gcyx0H/tSj5HjYOnDK9Sw2s2d
         yw0p8/0fiO8yfynnYfF7seS7kmA5EUzvxaqUu0ApOiekTGNGe7OvNAQ8KgeOEy6+bESW
         a0oYvOajJ7K5yAqQ4/xzFkUHgIPtodIkbGkNdJoQ093OXOcV+YkQY39vUSGCls/Llbni
         mbZtOP1LahBIGPHQogyMogWrQDzkVO9/j9Rtw8Qow2MJ8r35tLytjI79Ddt7aIBIOEjI
         X2aQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgSEP+Eryz4OE02euDRfmUCVg5m+QXZbEMdO+6YJjpBoc/LfbSr7YyEhCpbceYH2oH4CmUGjdA8X1R@vger.kernel.org
X-Gm-Message-State: AOJu0YwjAIj3ueLhcaPKQLLnYBPzp/j16bYbmz0lp8qK7Mhfff7xw3QT
	+V9u/+OQrTmjzO5M9B3I7q259PqHwTSQItEk2pEnMrm9XyJb7+k7xTf9Ul+vJGBd7xvfgaXhHgA
	hKUTU6itAQfS2ew1wUlxRGUdhacFwYnYDJtnBm7W3RqWTHghQWPrAFVyTue3QUSFY
X-Gm-Gg: ASbGnct68cg44OLQ2m6U49xgF+uHP//xCb4bIauCYvbC6xl2Ebxct9GWcI3nfNSNeH8
	H6B0Qsgh3A5aN9Ek5gvSIMWnryRvk4iKhnhhjredGyMKGSkJqIjxpKprp1gGKMlOG9xr4hFd13+
	dKHp0zKgopfsoXZwPWRS+VgYZLVgWCNzORYOrBZXtd3RQ2wUaj48zj3xjkriyN90TvDbKIlFR0z
	sqYyaApXAYnwv2H0i59dTODUHUL0cyXGsImUmublROccMe6yrhdQXmBPq8GKG0Bf+UCKzdtmLUX
	cE0NURZaEDSEpbol3nkp3HBou+rVriX5jt8JuG+MMAnaybVKGsTx/8bGiPCEMCQ0bPNBaa2WQ28
	TW5QwZH+WScBcl2mksas0RQ==
X-Received: by 2002:a05:622a:24a:b0:4d8:7b08:64b1 with SMTP id d75a77b69052e-4da488a2d68mr24551871cf.5.1758790878916;
        Thu, 25 Sep 2025 02:01:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIEEiaQAm71DQ+NEF1w75pObhl5w775CkYKjl3dcMT0LtvrfJMaGLfpVDOYjnPi8DQxbLxdw==
X-Received: by 2002:a05:622a:24a:b0:4d8:7b08:64b1 with SMTP id d75a77b69052e-4da488a2d68mr24551451cf.5.1758790878342;
        Thu, 25 Sep 2025 02:01:18 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35446f7547sm122337066b.67.2025.09.25.02.01.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:01:17 -0700 (PDT)
Message-ID: <050b2cc8-ddbd-4a79-879e-4a2c9e7d95f0@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:01:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] media: iris: Add support for multiple TZ CP configs
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-3-e323c0b3c0cd@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-knp_video-v1-3-e323c0b3c0cd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZHiFJjBfhz4K7I_JFMFc_gnCgEtzAhAk
X-Proofpoint-ORIG-GUID: ZHiFJjBfhz4K7I_JFMFc_gnCgEtzAhAk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX0/JjlAYFqTRe
 4QOj31pqBODbRnSl7E8uysEJD9VD2WzdBaqbT4RXajZ852PXQH5oLHaGsJEzwKHpZov28wk8i/4
 btYfzT6Ghz5bylAtGwhzGS/XlXrz+YSKfZXuG8aniufHocResNt/KgisG8MH8aGezBY2ylbMiAe
 LYs1OBHq2BPCyiUYrrLHr9Gb75HSQBl/2b1p6sxbdYBx37T8c56NaSebN5YVaD6qqi4o8SbVHaY
 S8BGHTbszSuT05MNN2DV2LnCfZqLlFxv1OwKAeOt5VxMeFZ2EO7aUuZc6q6+uDtHk5B9yM5STaE
 lyzBy3DLvu/ZB9Z1wqQtfutXRg1sBlToyerJ81Mm++J7FV82rYt5t1SVeJdRBFzsau/vsB1eFi9
 NVz7GLMe
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d504df cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=i6MhSZCOMBc9aSuCptEA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

On 9/25/25 1:14 AM, Vikash Garodia wrote:
> vpu4 needs an additional configuration w.r.t CP regions. Make the CP
> configuration as array such that the multiple configuration can be
> managed per platform.
> 
> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---

[...]

> -	ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
> -					     cp_config->cp_size,
> -					     cp_config->cp_nonpixel_start,
> -					     cp_config->cp_nonpixel_size);
> -	if (ret) {
> -		dev_err(core->dev, "protect memory failed\n");
> -		qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
> -		return ret;
> +	for (i = 0; i < core->iris_platform_data->tz_cp_config_data_size; i++) {
> +		cp_config = &core->iris_platform_data->tz_cp_config_data[i];
> +		ret = qcom_scm_mem_protect_video_var(cp_config->cp_start,
> +						     cp_config->cp_size,
> +						     cp_config->cp_nonpixel_start,
> +						     cp_config->cp_nonpixel_size);
> +		if (ret) {
> +			dev_err(core->dev, "protect memory failed\n");
> +			qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
> +			return ret;
> +		}
>  	}

Do we need to do any "un-protecting" when unrolling from an error?

Konrad

