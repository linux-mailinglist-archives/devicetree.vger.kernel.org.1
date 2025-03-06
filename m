Return-Path: <devicetree+bounces-154835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F38A54A92
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 13:22:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CDF816A0F9
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3B420B7EB;
	Thu,  6 Mar 2025 12:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WF3Z+R9l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F150620B1EF
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 12:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741263765; cv=none; b=YfN7mPv4ISAjQ464tn67sKTIKQD+xbIMIz3xEiHr5JHyD1hRNKlg/GQt/wYSaGo0yYhS/QVf3ZNiUg4ZWLdHAEQyqPScYK/7WfoWpXVm9r1XNavUpnhMTDDnMeqiYFr2NvH1PdinATMf1/HvixwXF16KX+vCo+4CGu6rXIj4+GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741263765; c=relaxed/simple;
	bh=IYwcKZ9klDpKqc3WNYt4WS/F7VHj1QpFPAqLoaQc6DY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=knOxmuRPDpp+nBLyiD6118Dpiyz5g33D+X6KL6oiqpTamqaLRhf+GEqLvNdRxiUQ2I2FqOIgZ4KCyytZOvsXOH9Bv2yiJcWQbH7Am21wiHFaXkP+k2bC/xQBBLpRHfs+s1v0KEdc/Y6b2g0ZoG6jxp0a0Fs1ah92da81PBKGvcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WF3Z+R9l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5268gFWa020886
	for <devicetree@vger.kernel.org>; Thu, 6 Mar 2025 12:22:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z5Gq4UTjbsFKwuk0lyvFU281mi+Wp78KDLHWxM5Eb88=; b=WF3Z+R9lVIJeH3b5
	PSJ9sfrXXS1Y2MH5IbpWq22g6QQ+gJpqHAKT5b/0wfzcbMVjLtUGGPDkRW+XjYlV
	xq1PEHBl2HfnCyF/g2X8y/j78xS8mD9BeXgCD6wFWi55XcZOwW6k5XZ7B9OWNxI9
	tN8SGOmyqKE2JUV+/YP8Maz8916C+AprTRFTAQq58Lp/3Lnc3XdW3tuFQ4IpqZTd
	TR6Uxvlb7xDucyLttyyWb/R7YLa6LhirkJOGUCqGE9kIUlBOBR7XRe+8KjtQ5vMM
	sS2i7k0W7yVxS0vvn4k+PUBgyxys5yxcBdUneXj7By/pjVDa8n9lPBMa9sgyGav/
	uIBmvw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 456xcuj6v4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 12:22:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-474f467e613so1546541cf.2
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 04:22:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741263759; x=1741868559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z5Gq4UTjbsFKwuk0lyvFU281mi+Wp78KDLHWxM5Eb88=;
        b=eN81ky2FgOpAM8wdhMobsSWWGgvV8jnZPewjIfQFSZsd147tG2dVVhTAd2mYC9TKDV
         MR4iPh0PUhUznVKxGw4pm6jpVM1uxmGTBwHJ8I9NEW4W9SIYJi8Gd3/zgHhTZu4+yJYo
         HDcAOQJRahQansMy7dEJFY+XEFCgCmqZRcranshBojzCV4cfz0npn1AjSXgzcKdzA0EX
         F1IOctCfAXRM8ZyK61+A/Wr1//W/TecnJ1v60zITBzXY4+tUomt0K65PwNn0OWBdvW98
         sWy8fD/QplW+mLx2b+0/kXDfzjimG3qNO1JvQpNW6sXeNd9sddZ6fWPe4IhPNT87Kz22
         2wog==
X-Forwarded-Encrypted: i=1; AJvYcCWoisEYEEyxiWvAahNlOjt7Nf1hMM8L3G5dyd8rMh8S1ycSBZapewWQLSl4fFQ/bGN9S2pHd8rSK6uy@vger.kernel.org
X-Gm-Message-State: AOJu0YxAG0kK4c/q+3oTX2o89LQt+pxl4Qi+o7rFKw7SshAp7jG+eF0s
	X1y3HttJE8xsMC6jHC4LtGuMDzmeuztGwa+3HmaZ6gE/fAh+1hOjAPcSyKtl9PFN0sleXOkQbgY
	+UCZ8ry6ot17wqiQKAbdw1PLFAtWe0ZU3lHzR+4aQh8B4yM4lD3sUpyaI0+re
X-Gm-Gg: ASbGncvg9MqDiQp1J0CqXny/m+yUwgoKgGJXuUt9tCfhyJMKMOFGUIlrOppI/z8jI5u
	alS4TtMolooSQL45CkqrkAzy1Lh25l0DE7DqiuZuij1/oJpwyfmJ8JfdhFk5tb+Rq3TV6471bHA
	qJCS/UlbjozEEzd9/2f5fqxzEST/q45oAIXWnwFSj7jaStcTx3rGIILJr5KKolrRxfU5hDNRnIy
	mSFdrHXF8vaaUESXHvPVRJtaKRv1P2DIG8XbTOL4YlgQMeIpyHxkC2LKRu6a0ysbVp6yvWPjW09
	qeTsk1y2NE2hCx5FvIOMUKoj6dNUtJwNeyEueGt3nlzokFUFgQRvA5E4TFh158a/2p88sQ==
X-Received: by 2002:a05:6214:624:b0:6e6:5cad:6080 with SMTP id 6a1803df08f44-6e8e6dab467mr34449816d6.10.1741263759564;
        Thu, 06 Mar 2025 04:22:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/QTh0Ug1a5mDs5OMzwOybRslK0jLL6FOkoHx+QI3mLk6kOxx2Z10MrUe5swv+Xyw15xDHmA==
X-Received: by 2002:a05:6214:624:b0:6e6:5cad:6080 with SMTP id 6a1803df08f44-6e8e6dab467mr34449586d6.10.1741263759099;
        Thu, 06 Mar 2025 04:22:39 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac239516eb5sm87810466b.84.2025.03.06.04.22.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Mar 2025 04:22:38 -0800 (PST)
Message-ID: <91561f37-5309-45f1-a1d7-20228ba68c2e@oss.qualcomm.com>
Date: Thu, 6 Mar 2025 13:22:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] clk: qcom: common: Add support to configure PLL
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250306-videocc-pll-multi-pd-voting-v2-0-0cd00612bc0e@quicinc.com>
 <20250306-videocc-pll-multi-pd-voting-v2-2-0cd00612bc0e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250306-videocc-pll-multi-pd-voting-v2-2-0cd00612bc0e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OcMWTQ1WOOzNGHKGigDeGfjkU0uUs5pK
X-Proofpoint-GUID: OcMWTQ1WOOzNGHKGigDeGfjkU0uUs5pK
X-Authority-Analysis: v=2.4 cv=eeXHf6EH c=1 sm=1 tr=0 ts=67c99392 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=AIv-xuq51RFgKBoQvIEA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-06_05,2025-03-06_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=964 mlxscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503060094

On 6.03.2025 9:55 AM, Jagadeesh Kona wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> Integrate PLL configuration into clk_alpha_pll structure and add support
> for qcom_cc_clk_alpha_pll_configure() function which can be used to
> configure the clock controller PLLs from common core code.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

[...]

> +static void qcom_cc_clk_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap)
> +{
> +	if (!pll->config || !pll->regs)
> +		return;

This should probably throw some sort of a warning

> +
> +	switch (GET_PLL_TYPE(pll)) {
> +	case CLK_ALPHA_PLL_TYPE_LUCID_OLE:
> +		clk_lucid_ole_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_LUCID_EVO:
> +		clk_lucid_evo_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_TAYCAN_ELU:
> +		clk_taycan_elu_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_RIVIAN_EVO:
> +		clk_rivian_evo_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_TRION:
> +		clk_trion_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_HUAYRA_2290:
> +		clk_huayra_2290_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_FABIA:
> +		clk_fabia_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_AGERA:
> +		clk_agera_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_PONGO_ELU:
> +		clk_pongo_elu_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_ZONDA:
> +	case CLK_ALPHA_PLL_TYPE_ZONDA_OLE:
> +		clk_zonda_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_STROMER:
> +	case CLK_ALPHA_PLL_TYPE_STROMER_PLUS:
> +		clk_stromer_pll_configure(pll, regmap, pll->config);
> +		break;
> +	case CLK_ALPHA_PLL_TYPE_DEFAULT:
> +	case CLK_ALPHA_PLL_TYPE_DEFAULT_EVO:
> +	case CLK_ALPHA_PLL_TYPE_HUAYRA:
> +	case CLK_ALPHA_PLL_TYPE_HUAYRA_APSS:
> +	case CLK_ALPHA_PLL_TYPE_BRAMMO:
> +	case CLK_ALPHA_PLL_TYPE_BRAMMO_EVO:
> +		clk_alpha_pll_configure(pll, regmap, pll->config);
> +		break;
> +	default:
> +		break;

And so should the 'default' case

Konrad

