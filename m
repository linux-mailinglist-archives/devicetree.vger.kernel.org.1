Return-Path: <devicetree+bounces-237128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C5C4D2FF
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:51:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD59F4EF926
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7768234FF75;
	Tue, 11 Nov 2025 10:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z0zkm/vw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A88u5J9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAA31AAE13
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762857972; cv=none; b=e37Lt+NYvEN2JlIIhg5gzNmrcIof44oHkEWcbsF8o5qBSPn8PIHaRtWc2CVhkb0QKPrSwQsX7r3jS0ZDjjuGwrOwjStyDo/YWmUaARLiisOl7rDWqobu/uGOqe26NWmnikozF9rmb+iWQr4/jOZHY1XsVWi6n2PktyK5dsGeueI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762857972; c=relaxed/simple;
	bh=84fdEKsDm7s3b8a5REKHvZfhSjyxKWtweWhMZIuwPlA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p/zmI3ORe4runeD5zqv+ZuQBRiqMP+YeLovjwiRis8zEGuwQ9NCKNCmh3ww8pbbTHteHwBQheEcFKnI6rmYo9p8j6j+HOCcCGF/f1DFGRM+b8UlQ5ZzicQeGft7Glk7pi0oO9nEmdBYx4lGndYMh/U6a3SU1kS41sgS33wj/48Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z0zkm/vw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A88u5J9Q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AB7HaKt411566
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:46:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zFlclgDkUYpMa0n1wWH/5ba4
	uYC0pu86+5Xpb0REAuQ=; b=Z0zkm/vweJv1TcxP3Or25+z8cGyuzjWqOvaa+EeA
	0onzZZgbUIQgg0PE1Mpi58kzYvj2zzd4zsSca1RV5AHAsRSoTcvxeYa/88HE+bh4
	aGzBxxEYeFuvP9HmQPloWlRxVGU3ECAWgrE8tCZD/UBwCBTo1b72pNw9vzp7s73B
	tVgJkrWMl8oikE/gVF9jQyzJrTxtyciAr3jmQBP1iXRMybGfPmkkhQMAfLUudByZ
	xQRiAeB9Bg36vmy55sMoV0wbuETCA/aTnsQCozLSkMfJtJ572wYIh7CgqQMTvYYw
	Tmr+ClCU8q4p21ycJ864ZYsgq2nUMMxQJIcFJSvGFufULg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abppu2534-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:46:09 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8916e8d4aso84278651cf.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:46:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762857968; x=1763462768; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zFlclgDkUYpMa0n1wWH/5ba4uYC0pu86+5Xpb0REAuQ=;
        b=A88u5J9Q/DJLu5AvPeUkaySaRqZR1cXzuEE+/tsI1qQOXavfV4LVYEA/fXq90aS9t1
         ojLm3Ta5FKxYmKDNNuG4z2del2HEye0jcpXtiysF8Yam03nY9xHMG4po4R0kiq6RMGF7
         prk+J/6sAaPCTv7TelpCjhH8stoq5qT8jXn+ykEC34qHP43gqvlYZAUeoJJSEwzycyje
         3p2dgeyTkw1uwzars4Jm50bIPL2jF59NpSj/YHO6BMnAv04L4K422ajAs/IcOD3v9AeE
         o0ocSZnXdvYd6NgNGw8zWjfAaMfDzHDX2oIbCUmpSYvYLPgyq7B1p2hlbX2+Hp4TV1pA
         ving==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762857968; x=1763462768;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zFlclgDkUYpMa0n1wWH/5ba4uYC0pu86+5Xpb0REAuQ=;
        b=IfLqrdc1i4b9G5VETCx+1kTUawRITjXFU4/t8oIxa2U1ftAxwLiw1RkgboB2Y/+mqw
         HkugisQfUpAi08fkW9mAkjMU+dS/VmLB4LENgHnQjPLwBXtOH/gptKIVYJQen0d41sYM
         oKZe5Z1z6/eL1TC3Fnbv9DH3MVRXkrmBDP8l4RkW16ELRd0yck0HVQG9HkchZVlQHKBY
         27M8t6o7FxwtL3WaKhJ/qpweOZmk8szxWeTJPhpgrfnctpQR7TVNu/eJYPibsk7QN7aY
         mxmFxigaOldRu77HNjTaTSBxCaMwmmCbECQu4H4aeT25lrhQ+MhpWK2V8CB5wnEf/O6b
         GXjw==
X-Forwarded-Encrypted: i=1; AJvYcCVDgHT6sBISXrky3VDCZWgMlRxg/b5BdVYYLYmcWevPGevHPzqEWAwlC8iNmNlAm1TnC3f1HcV4+97k@vger.kernel.org
X-Gm-Message-State: AOJu0Yweai0yJ/nAMGRw55wSL6/94R87HiGHW+KrUOU3Pgd7SgdRB6Qn
	vpHQ7aaoswJFaYPkpaWUjOqD+nOlcLRLUonwEgjSWaNpcdFit2xhDWJMRHs71UgFnNvKUO8gDCO
	MXWUDFsS5BAjmKEUOmJjgLsZ/LSRPn7qzi/PXcQzmkJLhfPIGawY9RlIN233f9/6k
X-Gm-Gg: ASbGncuetRhnvYZe7uBpG+/2j5YGyqTVZFZnoWL6S+c4yBNf+vlitS2KQikUSDDqW2n
	dSVGZ5LPMjILMxyZ2ZRmI3vDqhv+8MxmfKEubTH9qJKxmt7Cg7tht8lw4ja8J57qV2TjTq8Bh9t
	FKlh4f4xI8Cx9k2LJWke8v/QH7ZUEmJmDeBiD+g5eM0JZxDVu+btnjBzrKt0NMyEeqGpaUGz3o1
	f5lF8eO/ABtA9ljI24GEcGIDxbNUjsKnReXx4rfA5EUY2h4ZJX6VPDRwNWjELVK7Ht2z9ktBFcG
	KA9C9ts0I9AM9awO6vDLJps1YN6F6ElrADx/dey3ieQo+2DTuRs0QhG0W9HQqj9gK2f2PvGN6f/
	5TV1LcFvzpbzndnUJBDl1JbDZQhSUSHxnkFD96ZvyWqVq/aVIo9NHsdXOigEkxCyOAQh64XNO8K
	O3eSeb6UNBPAlc
X-Received: by 2002:a05:622a:8311:b0:4ed:42a2:1281 with SMTP id d75a77b69052e-4eda4e7b9afmr125222251cf.8.1762857968465;
        Tue, 11 Nov 2025 02:46:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGLJ3RQIw9hPGLGod7psUYDDzgT5PtcUgr//ughYy/qJpcqTEtuG3hO1kFPdBDSqc2woysDVA==
X-Received: by 2002:a05:622a:8311:b0:4ed:42a2:1281 with SMTP id d75a77b69052e-4eda4e7b9afmr125222021cf.8.1762857968059;
        Tue, 11 Nov 2025 02:46:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a013a8csm4780598e87.11.2025.11.11.02.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 02:46:07 -0800 (PST)
Date: Tue, 11 Nov 2025 12:46:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/6] clk: qcom: rpmh: Add support for Kaanapali rpmh
 clocks
Message-ID: <swma6lyjfmyhl5ookdzvpjn5qresgsze5wptg45jfgj7ub6a4t@bdgfstw6gzoq>
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-4-a774a587af6f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251030-gcc_kaanapali-v2-v2-4-a774a587af6f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=TNVIilla c=1 sm=1 tr=0 ts=691313f1 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2c2icFhoY7aS7IHZLGsA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: EMQRZlVxqxyIggvWTwoMFzlk9P3OKxsQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA4NSBTYWx0ZWRfX67n28k0+6Gis
 kXLja5RNAZAIlitWJV9UUu4M46DnWYuyXHAHzFvdm2vtTgHMl/rXPhH1oLkUJRHGHEiQoERyyFR
 rbHwQbSbNpOxwIErsDt0Ieg9yKq1AF7zW6Hx5xBq2iOD2MYUjuJ20iM77iJsVq1rUqc9TFNEJkL
 2cPWYGQS0/b9SsErLM/8+g5T7HLGaXP2KEdCRkIIg1Y5xvWrX2U//gDByUzDecjJuFAQmGkqkuw
 doZE+jzzbN9HIC8hW5LB0yn14oI3F9grAKF3qSkSUkcYE0ZyhVQpKM4xh7Gmz27rokBg8XBns0D
 jSBbt8q8ciZN6DoElkHbloWZsNCIFw7JQ72/aldOQ5NMRwqx1e0xNzeah8cDNAPflWiEuoZfmhv
 5KovtcoHK6liYSsW1nJVp3V2ebgpJQ==
X-Proofpoint-GUID: EMQRZlVxqxyIggvWTwoMFzlk9P3OKxsQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_01,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110085

On Thu, Oct 30, 2025 at 04:39:07PM +0530, Taniya Das wrote:
> Add the RPMH clocks present in Kaanapali SoC.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 42 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> index 1a98b3a0c528c24b600326e6b951b2edb6dcadd7..fd0fe312a7f2830a27e6effc0c0bd905d9d5ebed 100644
> --- a/drivers/clk/qcom/clk-rpmh.c
> +++ b/drivers/clk/qcom/clk-rpmh.c
> @@ -395,6 +395,19 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
>  DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
>  DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
>  
> +DEFINE_CLK_RPMH_VRM(ln_bb_clk1, _a2_e0, "C6A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(ln_bb_clk2, _a2_e0, "C7A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(ln_bb_clk3, _a2_e0, "C8A_E0", 2);
> +
> +DEFINE_CLK_RPMH_VRM(rf_clk1, _a_e0, "C1A_E0", 1);
> +DEFINE_CLK_RPMH_VRM(rf_clk2, _a_e0, "C2A_E0", 1);

What is the difference between these clocks and clk[3458] defined few
lines above? Why are they named differently? If the other name is
incorrect, please fix it.

> +
> +DEFINE_CLK_RPMH_VRM(rf_clk3, _a2_e0, "C3A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(rf_clk4, _a2_e0, "C4A_E0", 2);
> +DEFINE_CLK_RPMH_VRM(rf_clk5, _a2_e0, "C5A_E0", 2);
> +
> +DEFINE_CLK_RPMH_VRM(div_clk1, _a4_e0, "C11A_E0", 4);
> +
>  DEFINE_CLK_RPMH_BCM(ce, "CE0");
>  DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
>  DEFINE_CLK_RPMH_BCM(ipa, "IP0");
> @@ -901,6 +914,34 @@ static const struct clk_rpmh_desc clk_rpmh_glymur = {
>  	.num_clks = ARRAY_SIZE(glymur_rpmh_clocks),
>  };
>  
> +static struct clk_hw *kaanapali_rpmh_clocks[] = {
> +	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
> +	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
> +	[RPMH_DIV_CLK1]		= &clk_rpmh_div_clk1_a4_e0.hw,
> +	[RPMH_LN_BB_CLK1]	= &clk_rpmh_ln_bb_clk1_a2_e0.hw,
> +	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_ln_bb_clk1_a2_e0_ao.hw,
> +	[RPMH_LN_BB_CLK2]	= &clk_rpmh_ln_bb_clk2_a2_e0.hw,
> +	[RPMH_LN_BB_CLK2_A]	= &clk_rpmh_ln_bb_clk2_a2_e0_ao.hw,
> +	[RPMH_LN_BB_CLK3]	= &clk_rpmh_ln_bb_clk3_a2_e0.hw,
> +	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_ln_bb_clk3_a2_e0_ao.hw,
> +	[RPMH_RF_CLK1]		= &clk_rpmh_rf_clk1_a_e0.hw,
> +	[RPMH_RF_CLK1_A]	= &clk_rpmh_rf_clk1_a_e0_ao.hw,
> +	[RPMH_RF_CLK2]		= &clk_rpmh_rf_clk2_a_e0.hw,
> +	[RPMH_RF_CLK2_A]	= &clk_rpmh_rf_clk2_a_e0_ao.hw,
> +	[RPMH_RF_CLK3]		= &clk_rpmh_rf_clk3_a2_e0.hw,
> +	[RPMH_RF_CLK3_A]	= &clk_rpmh_rf_clk3_a2_e0_ao.hw,
> +	[RPMH_RF_CLK4]		= &clk_rpmh_rf_clk4_a2_e0.hw,
> +	[RPMH_RF_CLK4]		= &clk_rpmh_rf_clk4_a2_e0_ao.hw,
> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_rf_clk5_a2_e0.hw,
> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_rf_clk5_a2_e0_ao.hw,
> +	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,
> +};
> +
> +static const struct clk_rpmh_desc clk_rpmh_kaanapali = {
> +	.clks = kaanapali_rpmh_clocks,
> +	.num_clks = ARRAY_SIZE(kaanapali_rpmh_clocks),
> +};
> +
>  static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
>  					 void *data)
>  {
> @@ -991,6 +1032,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
>  
>  static const struct of_device_id clk_rpmh_match_table[] = {
>  	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
> +	{ .compatible = "qcom,kaanapali-rpmh-clk", .data = &clk_rpmh_kaanapali},
>  	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},
>  	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
>  	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

