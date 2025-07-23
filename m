Return-Path: <devicetree+bounces-199073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0994CB0F374
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 15:14:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32D4E565D83
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656EA2E9EBF;
	Wed, 23 Jul 2025 13:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K+CuX0ki"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8A82E7F34
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753276177; cv=none; b=i9ce4V75RZuvAfUOL0MJNAB+aiPYPFP303PUToSSs1ymmZS81zzz4ZzLf4VKY1jc467xg+/Yc/Epvf3h+DhYxOZ6xETwFLXJH7+r4J5IH4++nO9CTAeBvw3j0TaOExKki7ww/K9kpq9Ei8e/4g1haQ63nCtU+s5edmq3odmyXo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753276177; c=relaxed/simple;
	bh=9bMIpxSp6P/2t9mAoqFS3nb+kCc2rNSG9SuI6TcUh4Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Dr8i/9VT82tPDg8e1AEEYKWTwttVOEoVxRF8Kwq2OQOjgsx99VOPyG/IG3rj5L2Hkw9neJ4ywvBVwoapH5rBAVUblzYBFCEgvRzqxIRSt49vGolCR4N6z+ZYCDxnmbBIWOuPjL2IDDx9ys7fyGsRvM4azZfRbd4bCRDFkfFLefY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K+CuX0ki; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9aCKG019723
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:09:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c1fE2F5w2oy/8xTtLiO5hyxrW9pDzDdrUHLDqce5e0Y=; b=K+CuX0ki4cf5X9BY
	AOGV4DBS00dKH/9foYodblzNrJQjknVLhVv/a0fhKRw1CxZ20xX3QwBDh765KtNV
	djkB+KBxXQEy1KGzRK27tozgbEdz7RF1uLYydzPw2OlRA0erip1kJQa2UT+Pye9t
	BBPwBbX68RzmzCc1Pu3OgvUER+CDYB8hM4RvAPyRrO3Me2Mv8yqwJ8veI97vSr6/
	dDHu8Oqz7HG/7rCsKr6ht1juqoAmNZTLX2ihU/lkGxvq6IdHyHviPJzSK1CO0D7/
	2NERgKuKOR+dwHKUtlz5EQ/hkZogh0Q8yTA3QUmTc30TK4nQWN6iJxQhsdbbzDL0
	0Fc92g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3hu800-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 13:09:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7de3c682919so98481485a.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 06:09:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753276173; x=1753880973;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c1fE2F5w2oy/8xTtLiO5hyxrW9pDzDdrUHLDqce5e0Y=;
        b=e30YL+blUQF67cCVXBcjRtc2TN6P5wtOuoAJc0XtQnRthOEAami8Qv1THVatpBKMjl
         HrDWd1F8K81evVcK113kWzKkFpkB5bfePn2bgcQsMzfZ8oNPNxleir0k1ajSF7t9kYAu
         fuNlWnKK4LdT3vwlX3CWTc3fKkWniNzCGXxPv2CQYsJ13QNydlkej7v7JfWJaL1p7CQa
         +1i3c8NqHHuIY8Taq4qyCyyw4pJTNfUkhTHvh20qWSS097mR6xOga17hUj7drGmM+shP
         lhlqSCS6ujum3K5g3RYtDW2PGZgWpY0OPqLZvHJvUkroB2pRb0xB/se7oVBv0aZ6AmzQ
         fpZg==
X-Forwarded-Encrypted: i=1; AJvYcCUlKUwpFzbCy6veyp5Hf+W7rcUqE7LWeSw/+vHv75qNpRzbG9KqoWom/3pDffKIayTnxEOnOPJC5fWK@vger.kernel.org
X-Gm-Message-State: AOJu0YzG4SLiX9Fg1wG8U6lwiod/c8+NnLt/zwaUc9QzBeeKXYlcMPgZ
	7zo8tWzWGdgno7g2kJqjrllaz8tXsAW1c0SOAgGdEHoU7U8dRQwpsa0loSfgK/HtBl2F7FDFLej
	6ZmkcTUwWpQkMAeqOMNkZ6QmumlvE+gTjB0gmeXJJ5Bho83dhgZ4kDQEMBnyuyZn1
X-Gm-Gg: ASbGncuRW4h0k3dfQ5dyKOwY0jbBMkaHCW06Ex+lzDnYD8WswiahwPAYUfMj6hagNB9
	oBwnhiT+8WpgwUN+9NFxSArkpt9d5a/O1aeIuCNFBj8tTYPOAVNPWoxECYe5YEKIxixrz9dlhLB
	Ly5OudQcyjRHzvxUFauc1veHreAlqOz+Fb47vaLBFXYHr2vbkmZXIqdhnCbAaFXUwwAOQgXJzaB
	RaAJkVTm+EPXbR410LopiPZTs4NipUjO10hmOh1oQ+F9cb503DXqi9I37PDiyseSbRJNAPlElh+
	9WM3OJ3+W7Sgy1vp7cUMQ0VwvF+7K2KE23ohph7Myb8MLM3SgeS2HQ5Lv2b5BTDLv9NaK5CEq7M
	omjhK49x4vwJ1z3Yopg==
X-Received: by 2002:a05:620a:2727:b0:7e3:4535:4f7b with SMTP id af79cd13be357-7e62a174a0bmr158139185a.12.1753276173169;
        Wed, 23 Jul 2025 06:09:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEg+9k+t833aHUHXP8ePI1nQxSBGAeS4mxQTKC61GZLuKY579K2Vn6dySszIzHD/n1n2LN2ag==
X-Received: by 2002:a05:620a:2727:b0:7e3:4535:4f7b with SMTP id af79cd13be357-7e62a174a0bmr158137185a.12.1753276172434;
        Wed, 23 Jul 2025 06:09:32 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c7c77c0sm1045393666b.35.2025.07.23.06.09.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 06:09:31 -0700 (PDT)
Message-ID: <75a1935a-b6c1-4339-8b4d-12af9ead51e6@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 15:09:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] clk: qcom: apss-ipq5424: Add ipq5424 apss clock
 controller
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        djakov@kernel.org, quic_srichara@quicinc.com, quic_mdalam@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250723110815.2865403-1-quic_varada@quicinc.com>
 <20250723110815.2865403-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250723110815.2865403-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=6880df0e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=osBE9IlwIbL1kcFus-gA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDExMiBTYWx0ZWRfX9wbypKtHEqWj
 DqwNA87iTobLG7HEAHtCVjTJxO3ozBfYlfutN67cLKlaQdK2hYsCrT7YLr6a4Gk8Je4tI6P+kzn
 3i/MFTGvgWJSiWjSG5Vf2vblIqsUXGY+6nw6gLwk+/aelQxSiwGQcfOayH/XCjjJasELyTvZBeC
 hFjOskCe9XhCjP9q7WhgObiu4CU/ALlIpTm38Hnp8OyLfqtkC3eK1ipkUEqihp7O3iptGlZf1Ff
 pLr/ITzEX3+vlGGzBjHSFaxJEuTz6zSdn01oiyvmzDobPctrvavd4gjeQfG657OE//CoXNHpy7Y
 6GkDtFPRQ0XIMx0JpttZo8sCenpP1ir0LVJKXrb9luYcccNYFy9DPYLW1D9/MAYmIrR3jJL1dJ+
 KBj5ifl8WfKu0Q0Yjcchp2ZWadVnV2HTx2mN0AMb4yCUzoyClnav8o5tV49/VywPBBWktfwu
X-Proofpoint-GUID: 8sUw1yQJOSmAf-g15NDfBjIXufVFN1zN
X-Proofpoint-ORIG-GUID: 8sUw1yQJOSmAf-g15NDfBjIXufVFN1zN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230112

On 7/23/25 1:08 PM, Varadarajan Narayanan wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> CPU on Qualcomm ipq5424 is clocked by huayra PLL with RCG support.
> Add support for the APSS PLL, RCG and clock enable for ipq5424.
> The PLL, RCG register space are clubbed. Hence adding new APSS driver
> for both PLL and RCG/CBC control. Also the L3 cache has a separate pll
> and needs to be scaled along with the CPU and is modeled as an ICC clock.
> 
> Co-developed-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> [ Removed clock notifier, moved L3 pll to icc-clk, used existing
> alpha pll structure ]
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Model L3 pll as ICC clock and add relevant structures
>     Use CLK_ALPHA_PLL_TYPE_HUAYRA_2290 register offsets instead
>     of duplicate ipq5424_pll_offsets definition.
>     Inline clock rates.
>     Fix MODULE_LICENSE
> ---

[...]

Since the last time this was posted, we got some additional infra code..

> +static int apss_ipq5424_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct regmap *regmap;
> +	void __iomem *base;
> +	int ret;
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	regmap = devm_regmap_init_mmio(dev, base, &apss_ipq5424_regmap_config);
> +	if (!regmap)
> +		return PTR_ERR(regmap);
> +
> +	clk_alpha_pll_configure(&ipq5424_l3_pll, regmap, &l3_pll_config);
> +
> +	clk_alpha_pll_configure(&ipq5424_apss_pll, regmap, &apss_pll_config);
> +
> +	ret = qcom_cc_really_probe(dev, &apss_ipq5424_desc, regmap);
> +	if (!ret)
> +		dev_dbg(&pdev->dev, "Registered APSS & L3 clock provider\n");
> +
> +	return ret;

You can now replace the entirety of this function with qcom_cc_driver_data

Konrad

