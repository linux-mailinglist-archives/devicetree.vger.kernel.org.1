Return-Path: <devicetree+bounces-118661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A95ED9BB2D2
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:17:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68FE828157A
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 170BC1C07DC;
	Mon,  4 Nov 2024 11:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JpQkT8Fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4551F1C07EE
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 11:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730718299; cv=none; b=PJ17/MMxf+NKlJ2DKhrNa56/QQS4TMhL4CNVy5+4LgAcSwu9hbg3/eengEHEruiUb/wvUMs15lznNNV15djR0UWGhSszFjuSn4n7R0koEO9uoHzYFRCw9fuRahJKgLQxAT3AmgP4q2dLYDR5/RYqzDvNX00F5kVlfltoqjOq4Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730718299; c=relaxed/simple;
	bh=I/5gETtrt/Fa6lNHOtIIaeymRRmnjg12Vu+wm7JzrjU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ex8doPWvHcwMauvjdxAiGnIkVn4ZcR1XBfB6sZMylRInMebhU1FB1gli54Vqz2CLJBS64KTxzxU1wf3ZuijMGEUtZwCAPl8py9R5NQI/CGVv4tRsdNKpSMcsB4BXcPOrp0TCJcBwf9N6PSllhEiVsH+LIwgbuel2g6k5W3g9n+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JpQkT8Fu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A3NDUn8004484
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 11:04:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pdHc0ZoqFxF7Q7WwYQrv0H7Ct1qLbT5B+jGo58Bi22M=; b=JpQkT8FuM08hd2Z1
	bwZ+lJVnuPjaivne66PZt0TtBZc71Tr/xQQXCTIUpz6j9eCpDBZpNlTqlt8Fnwf0
	rNLI4zLnDL6HNMGvQoNxGL9Gcjbs2gOu+bPGYFRnNksLxCBYpSsSZIi1wEjTD+Np
	ZmtyeXweCEgN/+IlxLw3x7IPBMbPyuiUArU45OObEvb8psvTbfVfLMO+RCUC3jWg
	vAEvJ2TFBFQR1sw3DxxrLZvH4io52sEOc16qwN0umd782MGxX9D7bKamMovPmHmO
	buPrlwGqBU3sh3wONah9OJoxu3A+I+ld9jpcCsJCBQ+/BIX3TgoUw5rqHH/N2/0U
	0/Y2xg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ncyxux4t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 11:04:56 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbd0a3f253so12725696d6.3
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 03:04:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730718295; x=1731323095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pdHc0ZoqFxF7Q7WwYQrv0H7Ct1qLbT5B+jGo58Bi22M=;
        b=r+FMDnhYNmf3a1yG1xdQT74UklcTG8dIDklPROjcS4DyA8trKzRPpGoy2txQUgcRpc
         ilu7lCc37zgN2CZZlx8UMxVa56QcgKymSy5IOwqowzI0wjYaYpKcAHnmeBMsra/9C07R
         VQSYeyAlFyTw7JDlkiMS+f9Ja5AajgqfZ+Diecqg6b6GaT35LO5AEyB/Xvho9C64l5Zx
         PeKc6T2+9bXJzPJt9b+o3mrua4hu+63M+/qh9KrQ7MDroCJrot4CsogHFpQfMfb+X8m9
         yEHk3sNA9KL5T7nN6PSCN2jV5xHbdE86hoaveor6a/wymiHh0mpZd2wDMdbY1E+V7N0Y
         a+Sw==
X-Forwarded-Encrypted: i=1; AJvYcCXSNH6ckPGp++oy829OivIOuAUFvMOtIbH2OV00wAv9/eCRXJCoD2l3WMDbzN92DbPWq5WkQrjkSkGd@vger.kernel.org
X-Gm-Message-State: AOJu0YyVHMydyjWy8HwdVujDM+S+g9YxDxfepWgT6CW9h5aEJD7i4qEz
	0IRxNvPROSFDQqQ70FV2JZg9NJgiNXVyYnl/zLnw9MkzM5NCMXu4m27J640nYZvpJRS0cv5wcKq
	rOZKYA0/S0kt/JbihTCkub0Aq0ElvEuRXJJJYU2ldQMuzZa/Cg5mTWQuE9T6j
X-Received: by 2002:a05:620a:2482:b0:7af:cb6b:b506 with SMTP id af79cd13be357-7b193f4a13emr2059353585a.10.1730718295334;
        Mon, 04 Nov 2024 03:04:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3WjxlrjlA5DdSF1tEeCy2S2Uy34h5UvJJnk9BTjjQTrKgg86yDWD16c0o9LidKmu3KblEOA==
X-Received: by 2002:a05:620a:2482:b0:7af:cb6b:b506 with SMTP id af79cd13be357-7b193f4a13emr2059351585a.10.1730718294912;
        Mon, 04 Nov 2024 03:04:54 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e56645ecesm544377366b.178.2024.11.04.03.04.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 03:04:54 -0800 (PST)
Message-ID: <b69a8d94-6607-4345-ad9e-16ffd5dc119b@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 12:04:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] soc: qcom: llcc: Update configuration data for
 IPQ5424
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, conor@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241104073840.3686674-1-quic_varada@quicinc.com>
 <20241104073840.3686674-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241104073840.3686674-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: O78ak6mPGUp-MnZ0qM42uy_JxP7qSSz_
X-Proofpoint-GUID: O78ak6mPGUp-MnZ0qM42uy_JxP7qSSz_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 phishscore=0 adultscore=0 mlxlogscore=999
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040097

On 4.11.2024 8:38 AM, Varadarajan Narayanan wrote:
> The 'broadcast' register space is present only in chipsets that
> have multiple instances of LLCC IP. Since IPQ5424 has only one
> instance, both the LLCC and LLCC_BROADCAST points to the same
> register space.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> +static const struct llcc_slice_config ipq5424_data[] =  {
> +	{
> +		.usecase_id = LLCC_CPUSS,
> +		.slice_id = 1,
> +		.max_cap = 768,
> +		.priority = 1,
> +		.bonus_ways = 0xFFFF,
> +		.retain_on_pc = 1,
> +		.activate_on_init = 1,
> +		.write_scid_cacheable_en = 1,
> +		.stale_en = 1,
> +		.stale_cap_en = 1,
> +		.alloc_oneway_en = 1,
> +		.ovcap_en = 1,
> +		.ovcap_prio = 1,
> +		.vict_prio = 1,

Many of these are booleans, please use true/false values

[...]

>  
> -	drv_data->bcast_regmap = qcom_llcc_init_mmio(pdev, i, "llcc_broadcast_base");
> -	if (IS_ERR(drv_data->bcast_regmap)) {
> -		ret = PTR_ERR(drv_data->bcast_regmap);
> -		goto err;
> +	if (num_banks == 1) {
> +		drv_data->bcast_regmap = regmap;
> +	} else {
> +		drv_data->bcast_regmap = qcom_llcc_init_mmio(pdev, i, "llcc_broadcast_base");
> +		if (IS_ERR(drv_data->bcast_regmap)) {
> +			ret = PTR_ERR(drv_data->bcast_regmap);
> +			goto err;
> +		}
>  	}

This won't work. See for example

https://lore.kernel.org/linux-arm-msm/20241031-add_llcc_dts_node_for_qcs615-v2-1-205766a607ca@quicinc.com/

Which has both just one bank and llcc_broadcase_base.

You probably want to introduce a quirk like:

if (IS_ERR(drv_data->bcast_regmap)) {
	if (cfg->no_broadcast_register)
		bcast_regmap = drv_data->regmaps[0];
	else {
		ret = PTR_ERR(drv_data->bcast_regmap);
		goto err;
	}
}

Konrad

