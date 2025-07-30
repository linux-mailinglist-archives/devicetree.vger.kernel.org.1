Return-Path: <devicetree+bounces-200740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B42B15DEA
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C23A5541639
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 10:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DA282222CB;
	Wed, 30 Jul 2025 10:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kw5bmzUS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB9A1F4CB5
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753870589; cv=none; b=Cf44Tb+Iq6tGb3YhYmQ9xQUNWGuwSuHivtV8T6UG+585DwNBQjgyh3jJOAwSaNagVfUwa4zA/H5LWjF2x4uMgRge5H2igZpkD2URD4mCFZG+HhJ9lcF9sDZ4evovhYG+7fe5JZ6DuehDAQkjU6hLbNfwUGazvjfYR7h74O+zrjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753870589; c=relaxed/simple;
	bh=uut0TxsQwYWw9IdoyR5yFTrLz137/PO55syezkU2RTs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mrmhG2ecE0qnpd7YoyDD5LLgMqWOlWkdYhuncnrWn/U5tZjvpiPnX+XDy5uqvskwvVhPJJ/iIAkg9pH0hwNkdm0eHCuXkGP4OjezjeEWf6hI2zjmeCUqDG+9kL7tEUi+Ot2RGZIwbd4fOcikhNBWLYfkFiJ0z+/EyluJtG9GHko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kw5bmzUS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U5x89j018829
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:16:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e74WcFwkTr6qVr34ZJAvZTfeytAh6aWlboCX6N91C3A=; b=Kw5bmzUSHx4PROsj
	WFRjmhqaxrVUj/5aGffpMHtJaySYHJKSY7gbM1742maN0xiQAkLy+hHEDb16UgwV
	UcCLWhxRDLqFv0M9FGqOkSyQ1ZKRGtjf9oMWfzonCyS3lDfQiUB1BcDvfr+pFMxo
	VwxGQnokbaF/DeCxN77CsEGOxmsgDTf3R+ESA05MvX0gz8NP5ChOjHHPc2XvTY1H
	1q5nKz4sc9Pq15owH390aNtsUt49yr1gi8mlvVk0Sel9m47bjjzBF8WzRT46vXTL
	LGAAR+XsE3RKLJLEf+5/r1K2AaSbKsskxYf/KlJNRTp9AnDg2AmK7coCk1eh2a3n
	ngFqwA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q863gn8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:16:26 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-707641946ecso1746046d6.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 03:16:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753870585; x=1754475385;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e74WcFwkTr6qVr34ZJAvZTfeytAh6aWlboCX6N91C3A=;
        b=OiMVZdre1sW5cy4tc4kyhodpZewYImKbrp1LBPU2RMJOMpigFm53f8G2nqgQeJtsOg
         X/hnVtm+p2ns38fS6rBl09rkqlNf+c4UjRXyDU/tjdONiMD4a4yJLQRRQksAkrU143QI
         5mQ7g1hVTaZBV5NUG7bI15ufxyr3XgpjaR8SGzXJ5SDxkP5a8ipvQDqGtjZKBkF7UNXy
         WlIZtrYiI17IM6gYA4jR28aRxJlr6yXEY4fM3M/yUUnGGOYkEx8k5KiVQP7kO3zRPZEi
         P/OkwyMyqICy1gTn4XLy4Zsdy+RyN/qflypmmkHtFbk6RzR6Eprj6jv5Gr07PihgFbE7
         8xxg==
X-Forwarded-Encrypted: i=1; AJvYcCVP7hJRUIpw6sjJ2CFx1INf42Qq8RNBgFztS/ajVgizEQbDmw51a3g6Nhkio3mGQc9k0nhPwjJOHMOK@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzs4naClkWIEhLLUu5t4KjB+jaH38WRauJrlPFk/ZYar9kQLkW
	j/94ZA5N8RNqWQUzhWJW77AmIq+7FuiviEIPB5uHAoXHhlo6fuOJPoHu/e4yVGdb2XsDsB99y90
	pMU6dbG+kAZKYrfG5Wm4pkooSuMCIvWTmMAxFrf0DvDARvpvkdaOVOJhuWjzstFZ4
X-Gm-Gg: ASbGncssIaEf88fxLL+Vi1s3qAeulTbyGHyeiRSRQef6+AK74ZD3VjpMHtZXg6SA4WF
	w1RgoTfD8uXDeDXSHTTJQB2QdQf/y3YIx/5B96WEj7tYtGYcuL7eVZPkSHHj/DYez3F440MG3my
	jyDY1Y5mjKKR/AkRC4im8/wr29EIkU8Vh9zHXGX3YD4w0t+xiSKckG4ZLRemVvH9z9IJswSYfa2
	yCVs7okgCZAA17PBwI5SOZbwyp1cokRNfikaV1Am2ffBOuVBFlDWO4Wr1DYe6rCTjVTRlS4wwLm
	tzwswGp/uZPat18SaYylQWsYWi9kz+DF7S9KmZf7E7CpbxPf/Cv/UKRpXR7aVZLAn0clPqJSz/m
	Mtu7MqCyQhkhxL8MhBA==
X-Received: by 2002:a05:620a:a907:b0:7e6:6f9d:4b06 with SMTP id af79cd13be357-7e66f9d4b93mr156064585a.0.1753870585401;
        Wed, 30 Jul 2025 03:16:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMVovcbr9AHNlT90gl+k15THWxhh7Sd7H8hPKD8T+t66JapkQsUuAU5RAVLiYqLUQ/JNBoxw==
X-Received: by 2002:a05:620a:a907:b0:7e6:6f9d:4b06 with SMTP id af79cd13be357-7e66f9d4b93mr156060585a.0.1753870584897;
        Wed, 30 Jul 2025 03:16:24 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635accc38sm715115266b.114.2025.07.30.03.16.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 03:16:24 -0700 (PDT)
Message-ID: <070915c8-4d7f-40d2-ba38-e20a801c9089@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 12:16:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] soc: qcom: ubwc: Add QCS8300 UBWC cfg
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com>
 <20250730-mdssdt_qcs8300-v5-5-bc8ea35bbed6@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730-mdssdt_qcs8300-v5-5-bc8ea35bbed6@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA3MiBTYWx0ZWRfX1LwK5uYhQmG8
 6xyi29XBKkM5u2QyaWt/gPPgY5qmAdtqL4sc+8Ay43ff34TjhwxxchhtxzkUzj543IgrcaYFYhL
 ozrbkZQrpJAjb6s54z73xNsDP9wtjlRhvakQKujMsLC/tJATdL8r2Migb8OvgpckgWLd1hWkPZf
 CkTMixhI2ZVl8k+cCfBXFHmGRqGA87A57RlWMO4LMWpEdqz528mfj/HBi4IxCSCQKOXmVsWnEvj
 U3EhB7SvGk+0sZsTqtVWT3sCRHv7btZ+Si2GT1F1iPCTkCKa+EWKWbT7pxa0+BJj2eUu4ghrJfT
 4uvfAf+gYnmQY477dfUfuAJSgixxmnkYy7Wm94SMiP9m5sOa5kNTl9nYfsY+7Mb1QO6zFK5jBRd
 OFd89HId0+iFaNiMu79iFZJAaahcssLUmPYLIJlWlSD4Szkw1XtV+M0lphfL1diw8s6d+5ir
X-Authority-Analysis: v=2.4 cv=TqLmhCXh c=1 sm=1 tr=0 ts=6889f0fa cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=TI01094hTbTrXjSAet8A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: qHkLNy7qpxNZeo8knhD0YobCMcBD1QNZ
X-Proofpoint-GUID: qHkLNy7qpxNZeo8knhD0YobCMcBD1QNZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 adultscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300072

On 7/30/25 11:42 AM, Yongxing Mou wrote:
> The QCS8300 adopts UBWC 4.0, consistent with SA8775P, add 4 channels LP5
> configuration data according to the specification.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  drivers/soc/qcom/ubwc_config.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/soc/qcom/ubwc_config.c b/drivers/soc/qcom/ubwc_config.c
> index bd0a98aad9f3b222abcf0a7af85a318caffa9841..389fb871018b65987295db60571c063b4d984d70 100644
> --- a/drivers/soc/qcom/ubwc_config.c
> +++ b/drivers/soc/qcom/ubwc_config.c
> @@ -35,6 +35,16 @@ static const struct qcom_ubwc_cfg_data qcm2290_data = {
>  	.highest_bank_bit = 15,
>  };
>  
> +static const struct qcom_ubwc_cfg_data qcs8300_data = {
> +	.ubwc_enc_version = UBWC_4_0,
> +	.ubwc_dec_version = UBWC_4_0,
> +	.ubwc_swizzle = UBWC_SWIZZLE_ENABLE_LVL2 |
> +			UBWC_SWIZZLE_ENABLE_LVL3,
> +	.ubwc_bank_spread = true,
> +	.highest_bank_bit = 16,
> +	.macrotile_mode = true,
> +};
> +
>  static const struct qcom_ubwc_cfg_data sa8775p_data = {
>  	.ubwc_enc_version = UBWC_4_0,
>  	.ubwc_dec_version = UBWC_4_0,
> @@ -225,6 +235,7 @@ static const struct of_device_id qcom_ubwc_configs[] __maybe_unused = {
>  	{ .compatible = "qcom,msm8998", .data = &msm8998_data },
>  	{ .compatible = "qcom,qcm2290", .data = &qcm2290_data, },
>  	{ .compatible = "qcom,qcm6490", .data = &sc7280_data, },
> +	{ .compatible = "qcom,qcs8300", .data = &qcs8300_data, },

You can just pass &sc8280xp_data instead, they're equivalent

Konrad

