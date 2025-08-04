Return-Path: <devicetree+bounces-201645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D08B1A15C
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 14:25:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E915162842
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 12:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34435258CD4;
	Mon,  4 Aug 2025 12:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S+dEfGu+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F1825A2D2
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 12:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754310292; cv=none; b=T2k/aOV4hzKOVC/jOACq4efI1a3gn9E3Pcj67aQuaaXjglDOS/jATz9+yILJ3s6XA/u9has+96WLBgielizLHSyIMLC4LT3fH/BEX0pR6VwpLOxQfBxDKA3Sm3tezVWB0fB2qcrpVChGuOyu4xLkh1t/BG3BuppveNy1VOCOuwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754310292; c=relaxed/simple;
	bh=X6OB+y3v7wjXgZyMvUtX1QmaETTwv0OrP/MFdJ4tRaA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B5AWNOpQp+ePLL/rUvLteqya0vgrwksWhKV0XQVmBR6L8Gba8IbMtnV6ojFvjjqcBc7b57cqWE4FAjBIxqBrKCnZrO8+CYr4k+GAlnhWjZjMYzwHG9hTOd1qgvbsem1ZaOq5ca/4ruSLwmMtBAIa3srIdwSfY8aKOaBMa1uyC/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S+dEfGu+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5748MPQP005890
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 12:24:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V7q+KzrML4Aj2hTJom5AvJd1j16yraW+cQX6AncDhrc=; b=S+dEfGu+Xvo2PSL8
	sx++OpYqhWZhQYK2w+Jt7kWzii0uNuWEIaGCZLJvn2m0YJ9LhsIPyrr95b7NPlY8
	fcsr7jL6N9Un/DKhPN8pCT/WP/Rv6YMnwHMLzkSL8X1DovWhHMAsM6tPPWeFOftU
	e3AN+MIHk1VpfVDU0BHeSeml0fjNgt/jn5uX3cADrXjrAzqMG37r/P2xxdgQOpOg
	tHVLDuLtJPVTtkGJqNd2kpadPzTpXKN8/eayVmh6i5ArjhfiQCAUy54Y19WbNZjU
	aRNhGD184na1y6nTdwyxFp4Bab1tdENR7VGvTvAwpo8wWy29ZTWFiU5MumNPcc6x
	0ZbG7g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489bek4vwr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 12:24:43 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fafb22f5daso10568136d6.0
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 05:24:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754310282; x=1754915082;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V7q+KzrML4Aj2hTJom5AvJd1j16yraW+cQX6AncDhrc=;
        b=nutbUEtqs7YQmRWyNcA2H/XqpdWtXT3s/lD21NQ2Yfuh+UbqXw3W6ujgJut7L2r9+t
         qndLaBUh65BrN0OBh3X5TUpHx1moeCQWUwOMhouuVLxogVoJ6VdCaSmsR+6lrmJS2J9B
         VdkhkfnrmnTdVEAx+o4et/TJ54f1yiVGmQrQtspuqJGd5gngPnY/JO5LHnYrQiKU+nLQ
         vnSIrIgV7/MyXsLxI/GMHxahptdiMTqYjY7nuIvu1J9GP9DYp4W8irb5W6AbsqWd7sJl
         Ytz9BCRaWULOOpiYYQN0qnzyRucDoe0/XdZe+YXYAXaiB6fsLB7OoO92ceO1uDIu2TIH
         KTXw==
X-Forwarded-Encrypted: i=1; AJvYcCV48WDfYpgjVr+YEZowlY89rXFLjghqRX6AiWtenEZUsgMfo+Rpld3SCY5slnWAw3vgF7nzG3mWYLYj@vger.kernel.org
X-Gm-Message-State: AOJu0YzSjWtYeezy6oJdcYpcfcpH8+38s6skFt8pllNxBRKBz3EynVvS
	HubBGu2d3f3pbpj+iJ1qtNmzdk8N7okPOCnUoWoxAQ2hPObw/1rZWOuNFDFhH0KQuEe1WCDPY8K
	m4ho0NrwuMxNZV5PSre3bwQ7YNeLa/JPp5jtcwrRPS1DLHMhbgJ8tVypXo8nSAHgu
X-Gm-Gg: ASbGncveobqkjdt7AMscQLE8zesieycAwox/kp6HEdkI+f9+GEgnglZZr6ZRv3TxA4l
	Czf9gz2knPc5oivcmvwD7R8h4kX23bLAyYAeGECS5AtpAX5ZmndkMHIM3Z88tN3kZt3E43e/i4m
	6BnPGMsxvSXybPmrejOPahpusV37WCjOEeLq/Uirf2IcjXfSG9OXWBcSYhpGxwizxA0MhrJiZpE
	hldobloHvGuJk924Wzxv9RkeXrw2kyK1dzIgbU58lkvF2sfU3sgRhLZekYHw0DhezIK5Rd1fIBq
	Ssm/A0bEytn/Lccp+k+UnyILqpcHezHvtrYwXwPh0V+1Ku6AaaIaycAqMfH0ZvgM7bhyMslLVnY
	Z7IUMWEptzNy2YEOXsw==
X-Received: by 2002:a05:620a:3705:b0:7e6:81d9:359a with SMTP id af79cd13be357-7e696361fc9mr598167685a.9.1754310282005;
        Mon, 04 Aug 2025 05:24:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmi/HcIwoXXkI8woIdhi4ceFmLxFr8bFlUqDHXyyyLGKaBXdFINx4NRwp0ys6ezcnFAInnrw==
X-Received: by 2002:a05:620a:3705:b0:7e6:81d9:359a with SMTP id af79cd13be357-7e696361fc9mr598164285a.9.1754310281537;
        Mon, 04 Aug 2025 05:24:41 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0763d8sm736128266b.2.2025.08.04.05.24.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 05:24:41 -0700 (PDT)
Message-ID: <93fc49a1-ce8f-447a-9208-251e74d4bf88@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 14:24:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] clk: qcom: apss-ipq5424: Add ipq5424 apss clock
 controller
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        djakov@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Cc: Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Md Sadre Alam <quic_mdalam@quicinc.com>
References: <20250804112041.845135-1-quic_varada@quicinc.com>
 <20250804112041.845135-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250804112041.845135-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M7tNKzws c=1 sm=1 tr=0 ts=6890a68b cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=276k8YKwey--yEOqDJUA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDA2NyBTYWx0ZWRfXwLeprQp2pJTU
 ptZ/i0TZo8cZtnCJmDBlklnRLllSvsVjkrzskOcZFXQpOKKRBKa1Lu2QyctNibv8xhTxtoikCwV
 l5GpBukPt6cjSaVQ4IE4oxklWey7iqSl2ALditcHk82KVDtQqdtlHY+N73+nxuTCh5u0KGMArBh
 MlKj2bt7SBJLj3ixKMYTfzhQqBBmjte9U6dsTKP3g//Yo44MV8BonPn4VQ5hVF5ReJjbaFmnWRU
 umIhB5b1Vq4xQG0/269SiKc6dsMKr1uWTv74ML7N5QYC+SPyIv2Wn9BPJFLsM2JtmQjKHgAijk8
 1JaesM1DhA4l9Duy6X6QS+OpBvnEFlUr5bCSiXm/7+1PRj/VBfGT9qw1fnO78UVGvlefFnUxBPD
 vQ22+GmguC8AWrvcVdDLE/JzwIaKDkvlTi6bvKpxtNrApCktlfdHoyWUvK6TVndqrut2oZ1o
X-Proofpoint-ORIG-GUID: VnxGlFMmmcFR8_-ra7flEHxIKN0UygDs
X-Proofpoint-GUID: VnxGlFMmmcFR8_-ra7flEHxIKN0UygDs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508040067

On 8/4/25 1:20 PM, Varadarajan Narayanan wrote:
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
> +				.index = DT_XO,
> +			},
> +			.parent_names = (const char *[]){ "xo-board-clk"},

Parent_data and parent_names are mutually exclusive

[...]

> +			.num_parents = 1,
> +			.ops = &clk_alpha_pll_huayra_ops,
> +		},
> +	},
> +};
> +
> +static const struct clk_parent_data parents_apss_silver_clk_src[] = {
> +	{ .index = DT_XO },
> +	{ .index = DT_CLK_REF },
> +	{ .hw = &ipq5424_apss_pll.clkr.hw },
> +};

You use indices here /\

[...]

But not here \/


> +static struct clk_alpha_pll ipq5424_l3_pll = {
> +	.offset = 0x10000,
> +	.config = &l3_pll_config,
> +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_HUAYRA_2290],
> +	.flags = SUPPORTS_DYNAMIC_UPDATE,
> +	.clkr = {
> +		.enable_reg = 0x0,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(struct clk_init_data){
> +			.name = "l3_pll",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.fw_name = "xo-board-clk",
> +			},
> +			.parent_names = (const char *[]){ "xo-board-clk"},
> +			.num_parents = 1,
> +			.ops = &clk_alpha_pll_huayra_ops,
> +		},
> +	},
> +};
> +
> +static const struct clk_parent_data parents_l3_clk_src[] = {
> +	{ .fw_name = "xo-board-clk" },
> +	{ .fw_name = "clk_ref" },
> +	{ .hw = &ipq5424_l3_pll.clkr.hw },
> +};

[...]

> +		.hw.init = &(struct clk_init_data){
> +			.name = "l3_clk",
> +			.parent_hws = (const struct clk_hw *[]){

"clk_hw *[]) {"

Konrad

