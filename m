Return-Path: <devicetree+bounces-168382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06182A92C89
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 23:10:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EC5017B33D
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 21:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB1B7209F54;
	Thu, 17 Apr 2025 21:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jXgG5wCa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEC2209F38
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 21:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744924246; cv=none; b=bQn1UXtvfQz8G+QdpWD47TbBlcj3bPhuLuuXh6Jl33sIjQSRbYXyt4aUCZQ0xehXXS5bq0p//EZnTJ8ccXFhB72cEASPvvejO1bIfMs+iYvZU8PWxyR+fy3XOZQ3Ebp6u0dmw+YGxo8gm51Oh7MQhgoYyfqoMZjlynX1yiS1CIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744924246; c=relaxed/simple;
	bh=zayiWsGQgbypU+9CEl1xh662ru7a7m6M637EKU98BmA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DzOHb6KIEJHjvelEOZHz53C5EvmL1KGqzdXDa+kT9GwQF59MQSvftu2/JPZ3FXbzgwOEznGlsxVo7WeTF56xWe4IWO+vz+uTD3HMKCD8Ayc+bv2c4JF59Rnvzj5f4i9JCGB2b0yM5OI5qZPYW074CVnbKe3pUSsHLkgg9egibVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jXgG5wCa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53HClmwX000457
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 21:10:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W7BgY9XqHUX3hFGnIp/2PCnU9QUDjev+cgR8XFlagS0=; b=jXgG5wCabCGSAiOy
	y5Ofsvz26d37XCFhUVZm4qHe6aDKHsYrFWya6puT0zDqjq/NIg+QnBZ+bAWhVzum
	oKpuqFP114+RO3uU/snSjBF++Pnli03emu9X/G3Qt23AATbP7Jkb0pQEkw6dAJA9
	QakHLlboP/o08WcF75SHPIUKxvdYcw10ErPIKP3p2VYYp3l4Kmjhb2diW6DYLcsr
	+Hsh5dtLYsfEgGlN3NPAe8ED36VbBXBhCUcKLURqmE4DXk85tzv9PxUIyx18tGQ5
	eB0ihiLw4smVlmfQffTJb3zXeaNGdENTbaSYDVakMDqgev1du3GqyPSihspHandq
	AUexxg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yg8wr8y8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 21:10:43 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47aeab7b918so614831cf.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 14:10:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744924233; x=1745529033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W7BgY9XqHUX3hFGnIp/2PCnU9QUDjev+cgR8XFlagS0=;
        b=X6x8lbki1IF3kimw5U0A9BPtG1KoZy+I09MbK8HuYLVBG39236GYjVGeOqMEnpEmf8
         //AAefqYVbgTVR14UkAKfLWOwjmut3Vk3lw72jXMU4zMIsLtgwPo//UBrJphdej9t+Qp
         ZlOv0j/xV517PckxeSHeBWn2rUCvTdZrt0ZQrMyjZ+xzOgwF7jRQYeExX5WQCQ0bvTAd
         0smC/CwENnSDGWrfKkXUSY3S8tZD3mHpscb/Md0klQeVAHZ5R/11ICkTJPXOTaWYI7l0
         9IekhdlIa+Jn6WRNeBRzFaYeAYveP3PNOGj6lEKkiLUHk0NYao28PcFhLsxYI8q4eNoi
         MSJg==
X-Forwarded-Encrypted: i=1; AJvYcCXnwAJMhqaPK4KRVRAoJtNRiwT3B8KcwIiANUzO5sZSyYazaRRXNwJHBD6/joKXNiKQCqe1t3WxsT4D@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+h7MZPUO+gLyhSdEqr1yL897Ivjc9EGx7CbSSch3FsBvClXv4
	LpAONMfuhZsOGDz562Z0augh91egIeYW3Uh/fJWD+fZWIT2QJ2QB1Brt12K4W9ed3B560R/DJwG
	RvXBcWm8St1JLRrv6Hu04JM4RE1QKy2gmc4UGVQ02c5B8paenp2WSeUsTtsTk
X-Gm-Gg: ASbGncsvKGPzYQQsOn6WGBAyt/wmvE0XRu67J31jek1E/5XK1QIn7Qt0WpeitiRHjiO
	5/tigY1vMCQW+zq3PFYiqhozOnKBo/YtlSlzkEVarg2kOpqoZQhWw9vIX4A0sM11S1VFTogLOIY
	4Zr0KW3sPDIhpl7aUALcC8GPhRwC9a4UYPXL3rvoCDSmjpoSVm/R8mNb3ggTBU5jP6pc2teCiXY
	cWaJpyvfraXaX78wDd7/Fsms1N/urNQeFG7X3noAQqzpALHvSIqwJZfz+tlesKOWC55OYrrVTip
	u8Eh+93ifULZBwD1ksJSWZ9Gx0FXTPRt3CyzZ4vN3DyzffiCXc3KYUdOZ0FAotEylA==
X-Received: by 2002:a05:6214:4002:b0:6e8:f645:2639 with SMTP id 6a1803df08f44-6f2c455d583mr3156486d6.5.1744924232783;
        Thu, 17 Apr 2025 14:10:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKtWdxfBKZ2i3dNXJvyLNKutWRDck70NGeLsfxcSiel5Fprx2Taw91T8qGaP9AVoaybDiI2g==
X-Received: by 2002:a05:6214:4002:b0:6e8:f645:2639 with SMTP id 6a1803df08f44-6f2c455d583mr3156306d6.5.1744924232396;
        Thu, 17 Apr 2025 14:10:32 -0700 (PDT)
Received: from [192.168.65.58] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec10ed0sm39494266b.36.2025.04.17.14.10.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 14:10:31 -0700 (PDT)
Message-ID: <5fa5cade-fefd-486d-b1a7-622f3677c74f@oss.qualcomm.com>
Date: Thu, 17 Apr 2025 23:10:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] pmdomain: qcom: rpmhpd: Add SM4450 power domains
To: Ajit Pandey <quic_ajipan@quicinc.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20250417-sm4450_rpmhpd-v1-0-361846750d3a@quicinc.com>
 <20250417-sm4450_rpmhpd-v1-2-361846750d3a@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250417-sm4450_rpmhpd-v1-2-361846750d3a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=68016e53 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=h62wbvEV51DO9j2QOb4A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: SfeWgyCBUX4fmHLtdE9LJVMAzsHq4tL3
X-Proofpoint-GUID: SfeWgyCBUX4fmHLtdE9LJVMAzsHq4tL3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-17_07,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504170156

On 4/17/25 7:07 PM, Ajit Pandey wrote:
> Add power domains exposed by RPMh in the Qualcomm SM4450 platform.
> 
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> ---
>  drivers/pmdomain/qcom/rpmhpd.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
> index dfd0f80154e49d882a59dd23a8e2d755610c896b..078323b85b5648e33dd89e08cf31bdc5ab76d553 100644
> --- a/drivers/pmdomain/qcom/rpmhpd.c
> +++ b/drivers/pmdomain/qcom/rpmhpd.c
> @@ -360,6 +360,21 @@ static const struct rpmhpd_desc sdx75_desc = {
>  	.num_pds = ARRAY_SIZE(sdx75_rpmhpds),
>  };
>  
> +/* SM4450 RPMH powerdomains */
> +static struct rpmhpd *sm4450_rpmhpds[] = {
> +	[RPMHPD_CX] = &cx,
> +	[RPMHPD_CX_AO] = &cx_ao,
> +	[RPMHPD_EBI] = &ebi,
> +	[RPMHPD_LMX] = &lmx,
> +	[RPMHPD_MSS] = &mss,
> +	[RPMHPD_MX] = &mx,
> +};

/me wipes glasses

Is there no VDD_GFX?

Konrad

