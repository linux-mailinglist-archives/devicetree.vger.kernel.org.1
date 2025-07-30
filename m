Return-Path: <devicetree+bounces-200712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 34141B15C3A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 11:40:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D92FB1886743
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 09:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0671270ED4;
	Wed, 30 Jul 2025 09:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GAbYsTCt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B387269AFB
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 09:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753868366; cv=none; b=HKFzdWdxiad4Aw+BRhdcRxenhODTVy49J3ambVFi3FzwPvAzRfNNsxY+7iE9G1oK3gzOJm3nvj8NZG6q4kXz29SkWTRtmJG/7hOVEGefyJBDjz5uhEFn9442XdmrIueM6bpDGZVldRHRoMl3Sesr0rRq/e3Y1S+yDG1czS5mHrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753868366; c=relaxed/simple;
	bh=FFwMpkhOYSBmnp5I4Qk19pzDCl+8/KeHG7bi2vq6ggY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=nnWSIYt10FGyKkqYYFSq/MnOmemGrV41bTG/Dj8Ilb1LHaTXZVv2uXsdxfgoOmnilY4gYdeKMfdHoTwwIPWS+qzSghzDlWr37jwezEORClNII03WjsfHbPF8mhJtabfpaF2qOhvBDBfGSoQio9x/Z5S4s5md4Ky1dUm3bmfdBRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GAbYsTCt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U7M4sh016216
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 09:39:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M4xxlIsUwBSemAmhdAK1Q9uezrhoKQ5cmwiav1SEhOQ=; b=GAbYsTCtbk/iLWdk
	p9LGJXfinV82t7J8kW6q+nZwKb3xfKmiiefeLdA6mXmsCzmN0qjzindinnEl5JzB
	lNzKpZR19fPOsG5/kTBsr9kT5b0PMDXh6Uorula6Z8SoFRzQl5c3Oj11Z+FT/BbV
	goToaiTtMBpjyGcy7VVO2xyPDiI4SwE8iwflU8VatxUbkHJpexyjRND5YZ7IZGBd
	xs4bLAyq67DEtTS/3sIZ2UO7CcJgfulQd4/Gvwl6JHejrkFo2P0qswVDKT41NHXl
	tebtiTkBC81TlG9sWscvwz/SlrBJmiVvQEKARC9Epx80JTI0t9qqo8gHieyOoVo5
	RPjtXw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 486v6y3mru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 09:39:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab716c33cdso29805301cf.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 02:39:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753868363; x=1754473163;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M4xxlIsUwBSemAmhdAK1Q9uezrhoKQ5cmwiav1SEhOQ=;
        b=pkwf0soJTBL/wqwcY/D+lxZev48hptpX54GUryHUUzsLHFAkot7A45K6UU+fAkXz45
         1uDIIgXbR/EAcqcuAdM4xdNIcQOxpBeBzqRMRioHuEc7Mz+0UMyzarVtbzeJ0L9uNKtA
         F6A2KUwav5AL6kZjWXFbpoAMdxZgfryZ19nAW3yGPTiHUdjzYPjQ+Z8pSqkVaUxbFErC
         XPPbZVsZUW6sJ/eVIuY+J6ADQhDAq6Qkjrt0StZDTNr5sjMVQk3UOzb892WCX4bs5gLG
         gkpx3QJ8ALnyeAUnU5j+nmE9R7hvzWXUX0YE/vK0QLgPA3c4XBJAFXl+r2yiG3DMVqY+
         8CUg==
X-Forwarded-Encrypted: i=1; AJvYcCVvGxfv7ayH1kQGSnoCELsUvA6yqT61iJFy7gYwfMNEwzvJB6n4RvT/Tlms2XtYpU0hovQNIkeImg0e@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0fvLUR+3EE0sqizoX3K4X117LuggRwNYwhzjrImZOzYKDji1R
	A5P0cCpmmJiQr3kduw/8LY61DxTz25RiA/j+AytfdQD1zd8Fl+1RSXkXIqp+BxjV8USOAMOcCdL
	a9Yi1q2XZCJeD3v9TfjFDUmoJcrq5P8uBuSgbYAi3cGlfTefp91nuTef5gxCVxvsQ
X-Gm-Gg: ASbGnctHlDq+s8mBAIi/3TLvPfO1VE8rxOvmRsSjsR8OdaUXe6+iI+9jkIzJCzto23j
	bzYYEbPTCoZhC2gxZcNChiW+/IS+4+DcgKK/MbLHOa8Q7T3bsYnTrUrQ+QqgWQYrLWur+yVXQA9
	EiObg3pkp2s++ggRD/vPO5zAK32aRTB2VBF+RioJ62OBGsa7x34krZQu4llOi+yMHVPeS8ISbEj
	afQo/k3YSIWBgO0hnCYKHa1CBmhuaVZnHOb6xDnxNYWD9gxtUG/vK3BKNciE7oVG7XYs+MsZic/
	juumFwWNo3hyVzwwENBYzguTc00m3NIGApyT3xlr0JEllf6lrNQBPvpCwCWQSw/FzNYum+4LoEV
	C5yVciL1f0Ep4gaBWtg==
X-Received: by 2002:a05:622a:4d91:b0:4ae:dc63:462a with SMTP id d75a77b69052e-4aedc6347b7mr22328881cf.0.1753868362914;
        Wed, 30 Jul 2025 02:39:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNmC57TxqA5fJorGH135uruMdHSiL4OQkD3t41/Mi83JfFgYns87im7Ap3ZJoIyYR/7aVvuw==
X-Received: by 2002:a05:622a:4d91:b0:4ae:dc63:462a with SMTP id d75a77b69052e-4aedc6347b7mr22328541cf.0.1753868362361;
        Wed, 30 Jul 2025 02:39:22 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af6358acb2asm717167866b.56.2025.07.30.02.39.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 02:39:21 -0700 (PDT)
Message-ID: <3c69deb7-3a23-4627-a64f-3179785bf6f5@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 11:39:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] clk: qcom: apss-ipq5424: Add ipq5424 apss clock
 controller
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        djakov@kernel.org, quic_srichara@quicinc.com, quic_mdalam@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250730081316.547796-1-quic_varada@quicinc.com>
 <20250730081316.547796-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250730081316.547796-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA2NyBTYWx0ZWRfX14bOItO15rnM
 xnmfX3sYgNkYncVKB+dkVa4ksL/SuJzjm3boGCk52ThCDXir2/IjSfsJVnitFIWBETjGroIRGEl
 f03M3DTX0uijKt/rGr93FmivGwyxcyuXqC9OEp8+FcJzovsdOhAyyaQRlP2j/LnbCxxnKPsVj/W
 zOYz1xp3+ZE/2aZyIUENYgj0GlrKctxptFXcmt3pyszNimDS0VW04dzyaIhgw36CzGXs1ymg4EF
 y7SmdwjRRzUL/p93iflIyryJoG0n1RDp4xJ22fvI8IN/VdhgZ+2tAKOBu5Ik6VR9NTZGB3fyo0y
 P8rec9ArGtB1FSNrj/6tG7sHXrsayO7v/3uUDDfTP+6QRVY06zIoYk/xl190449Avr/kPl8DlPr
 Hd4pvRGvSsjf7nR/C1j5DG0bz0SUeglK1nIAWrQxjQwqMDokV3x8ErglJ+hoHwF85LYN2jQX
X-Proofpoint-GUID: g0i74wL4jYqJWUAkkATxQJ_5FQxH5CjM
X-Proofpoint-ORIG-GUID: g0i74wL4jYqJWUAkkATxQJ_5FQxH5CjM
X-Authority-Analysis: v=2.4 cv=QYlmvtbv c=1 sm=1 tr=0 ts=6889e84c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=i-JfjlNmehoY5ENsB_0A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_03,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 suspectscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300067

On 7/30/25 10:13 AM, Varadarajan Narayanan wrote:
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

[...]

> +static struct clk_alpha_pll ipq5424_apss_pll = {
> +	.offset = 0x0,
> +	.config = &apss_pll_config,
> +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_HUAYRA_2290],
> +	.flags = SUPPORTS_DYNAMIC_UPDATE,
> +	.clkr = {
> +		.enable_reg = 0x0,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(struct clk_init_data){
> +			.name = "apss_pll",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.fw_name = "xo-board-clk",

This is not consistent with your dt-bindings.

You should instead define an enum that reflects them and use .index
(see e.g. gcc-sm8750.c)

> +			},
> +			.parent_names = (const char *[]){ "xo-board-clk"},
> +			.num_parents = 1,
> +			.ops = &clk_alpha_pll_huayra_ops,
> +		},
> +	},
> +};
> +
> +static const struct clk_parent_data parents_apss_silver_clk_src[] = {
> +	{ .fw_name = "xo-board-clk" },
> +	{ .fw_name = "clk_ref" },

Similarly here, neither one exists

Konrad

