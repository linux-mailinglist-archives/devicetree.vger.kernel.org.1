Return-Path: <devicetree+bounces-238630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E05C5CC4F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B56B33BB5EE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6FE3101C5;
	Fri, 14 Nov 2025 11:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WCJEgfbl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GCQpKIvp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49212C1786
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118507; cv=none; b=r7tWoIHn9XR6OFJDaag1/XXq+kyN2C3GGyON3oMfZoIPEYkG+XAC1pUqbiScBsCMJ5rYOMx/gIv4kfPSpqO/hhLUGNp3eycx/6G5l2MTgrVGkT5hYcZjYnOrGvtK5GC+cx3XJbP/SjZ9uSCScw6p5DjNrxs8WKyYkiecDAKOito=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118507; c=relaxed/simple;
	bh=4pUWDt43EwGtF2dDtRLDwCafB0YJEWNAYp6rG9dbmtw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eKtxnlbp8kJRBUEO4mwMMmvjKBCbf9Qbm4ydRlAcGuI169Q+ufjqPJLAdzSOnDlvrfDkFYGuLaX+Dl31FTm/mJnXvkS81gHZuvRqCsqGaRfe4jbsGOkYGAkeL0qIZpALAITXwwgKNVtON+Nz/O5AtjODlR/6ugvlmMtdze/FNVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WCJEgfbl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GCQpKIvp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8T9Vm1610301
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:08:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mY++I7QpV4QeDNEEuadeqr45FpPeHgBkUhtrU4dkWK0=; b=WCJEgfblB6Lm71v+
	/tuI3uWeQ/8Wd/8Gt+1p/RHeY30DgDnDuHVx9syzMmgDUVK80m2hXO6cCW68c7mE
	xJuol7rPb2OWsnXI/tIFP1zxg3baUJBgYvJLG36vvja/Y2HABKJftcZ+bqs+0Krt
	53HjFvSfknkN7d1ZOeZCJQtBIBR7AoIkkx4AhdQVHgiC4yPXKSw8dKS8WroYw7Di
	gwTl8+cA30gqW0SjlKHKXWLnHU6OG3/hR+Sn5LT0CbXYhrXCVfG4szW8qSPrHaSa
	/oqqBuyjiXQfjXlpnSPjM2Uq2pvUJ4KJ6MmL7sGebQXYRI5vRtgU2mSRWD7zau2r
	cimygg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h1weg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:08:24 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88050708ac2so53503856d6.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763118504; x=1763723304; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mY++I7QpV4QeDNEEuadeqr45FpPeHgBkUhtrU4dkWK0=;
        b=GCQpKIvpiKE3gnuYeTS3znA5J63kw9s4javdamrTdDlU2X7WBqZs9X2QZMuQwL5C3T
         DYCCSykQ9cn1kZ8GEuRlbDn3fHjhn9SIkMF+69bjrvW+2rtHlDjG1BxYjBnEWczUtrnn
         ZgcsF0aXBeNHTQkLo7q/O4G5xY2Y241pr06NfrB0HVyByKO1SvXkF/5AIA8UWPIYAMlu
         2gfY3NiHVismmS5XJxCTvf6Qyixka/M/LfLxDq0zSivsFV3BT1fBamK3WRSrxl6F7fvJ
         IZLAHVbWk0zrt0LqlFud3lAXkrq4z9XywBJ7NF47CrJ0rWly6ujqiFLTvDEpQmCE5xZO
         LITA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763118504; x=1763723304;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mY++I7QpV4QeDNEEuadeqr45FpPeHgBkUhtrU4dkWK0=;
        b=J/+8vBfotveqwlfcDWY8TWRjh4k8tPuXTu+Hk3PkB2WRr7hOrGrAqAk7eB+ErGG4tX
         aH6Uvyhu26wi09Qh046O1FldMfGT0hXP3vekhTJo4kEcT5IszIfGZYERuXuso9QR4emn
         79jjrQWUVOtcs5PMWaUol7wKm3dURmpTQG1mH3n37HbPmrO7EkWF23Lnw3WcXFK+pZeT
         C4t/gVJWg2tSkT78fpoPn7xTO4Lh/dcM7SJsZbrOJ+Aq6bm1tdZm8z33H1C+ksK6qsxV
         PVtuV8dzLkHr8sUSuXOLtJTh6lKuVKcq4V3vLpO0bdlpQELRcmUBSz8R5BeT16EqfU8n
         FFTw==
X-Forwarded-Encrypted: i=1; AJvYcCVN29Hn/yn/VXn1wc8ugQE+PqNvzMtRgLHHpi6JEBYPVi4k2CoYvBy4abEnVUthUDuuaK+ssoS/a9Ws@vger.kernel.org
X-Gm-Message-State: AOJu0YxyLRkOARUi+mqN6ZZDgKFG00DJd7Zs7v8H4fLTi+MRCpRFEDlH
	WPzP6D9NvKUeMJ1M+hCkRmt3gkjt1xlxKOwGED7vaYS8+QWRSrsisax7YDq4qG0s68diZ5CNJYd
	XN2+u26Pz1QZjGmbiris8MIyrrPHMpo3XBtISDvEp5rp/7Nm1l5zZCZmhJu2zU2SI
X-Gm-Gg: ASbGncuf+f7/qDKLTfh7VDPQBvT1tCv9gbPJHg1Ll9o6S8q7kTaVubeLoGkal33tRJT
	RIEYpV98ZkjQ9vDGONrUrGvA10G1fhkUmIXtaRoFVE2WZwhp3reO9ut0ipx0RlxvZdNHuOm46RN
	7HkPL1hGxZ3l4CUCQ5RROm82JRVRYD7lDHcWE2rD15PDe57tvM0x3zFJLEXy4xsLJsKZ6Fm/jMq
	WxtOt3X1PV3OjURCn9LTku0ov5DFboP9mJfedpUyN2VuMqS41tBiNkd8j5dxpdLAvpbTYgU4hfA
	GMkoDLXXApjBm9SXSdwpi6E9JsEZ652CiRuewA15tTbRL3c3IrF9Alqc1JtNvY82gbrsEVpWUiS
	0qWTqtM5Cf14GgE6t7WzyDCkDcCKD4bqt5o9WKjJ0iYTttzfoDWXE+Jfy4ecxWMVcgBMMrcYg4E
	vMXkoK1Lj8rU98
X-Received: by 2002:a05:6214:415:b0:880:4d6e:1c44 with SMTP id 6a1803df08f44-88292594e3cmr33033226d6.14.1763118503894;
        Fri, 14 Nov 2025 03:08:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/jdfYi8yE5BoD54B37ubHvlpLDAF87+9or+E0qnNJmhMbby1/WknJAs9jRtiFFHZLqwnY0w==
X-Received: by 2002:a05:6214:415:b0:880:4d6e:1c44 with SMTP id 6a1803df08f44-88292594e3cmr33032696d6.14.1763118503402;
        Fri, 14 Nov 2025 03:08:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ced4e75sm9299881fa.32.2025.11.14.03.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:08:22 -0800 (PST)
Date: Fri, 14 Nov 2025 13:08:21 +0200
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
Message-ID: <2jfvrt4r7ddagh2ztbad7qnjpcvulcrtr3ekul6i26qg6zcd44@dxfhl3265okx>
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-4-a774a587af6f@oss.qualcomm.com>
 <swma6lyjfmyhl5ookdzvpjn5qresgsze5wptg45jfgj7ub6a4t@bdgfstw6gzoq>
 <380aa79f-f334-44db-9527-85247f9735af@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <380aa79f-f334-44db-9527-85247f9735af@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0Mdgbl8_GvYygNuRJSgXPPaxtr5Uvx2V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4NyBTYWx0ZWRfX4hDEafnef/yx
 m23C50Pnd5mve7s9tC/8JFALB62Zc916wfOZyCShBzP7DLbhPS+T53FYs/2uaP2xHa8Gell/VaR
 oxzMi/VUwQOQok4SLHtiGvktLoSFkQ0AkV85Mh5hCHM/8Syf4Z3rWXhsmjIhiOecDr8aLIJOsXX
 TUGntkEepWN3wTfaEc/tRF26yISVkaOdG0YhGwMqsuqE+KvD8j88rBIX2nozxlSCw/azrkzt+/j
 PsfcXbG1EF8Ckv7GSXoURwX3YL4EZpUTxQBQiyTWfGQMH5K17UMAQOqCrDxjbu/M9czuk3wBqkP
 uUBtLTu1dqT3ltNSLsYIPL8LEzEXvCUvWx9C3DwRcy/XzxKSfpNjnpd+33S5gzWeQemKMda3mBY
 WBB97IBy+gkBRcQ58a3Nd4wWSpqt0w==
X-Proofpoint-GUID: 0Mdgbl8_GvYygNuRJSgXPPaxtr5Uvx2V
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=69170da8 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NTO6UaGFn1Ib9pwZifkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140087

On Fri, Nov 14, 2025 at 02:13:49PM +0530, Taniya Das wrote:
> 
> 
> On 11/11/2025 4:16 PM, Dmitry Baryshkov wrote:
> > On Thu, Oct 30, 2025 at 04:39:07PM +0530, Taniya Das wrote:
> >> Add the RPMH clocks present in Kaanapali SoC.
> >>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >> ---
> >>  drivers/clk/qcom/clk-rpmh.c | 42 ++++++++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 42 insertions(+)
> >>
> >> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> >> index 1a98b3a0c528c24b600326e6b951b2edb6dcadd7..fd0fe312a7f2830a27e6effc0c0bd905d9d5ebed 100644
> >> --- a/drivers/clk/qcom/clk-rpmh.c
> >> +++ b/drivers/clk/qcom/clk-rpmh.c
> >> @@ -395,6 +395,19 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
> >>  DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
> >>  DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
> >>  
> >> +DEFINE_CLK_RPMH_VRM(ln_bb_clk1, _a2_e0, "C6A_E0", 2);
> >> +DEFINE_CLK_RPMH_VRM(ln_bb_clk2, _a2_e0, "C7A_E0", 2);
> >> +DEFINE_CLK_RPMH_VRM(ln_bb_clk3, _a2_e0, "C8A_E0", 2);
> >> +
> >> +DEFINE_CLK_RPMH_VRM(rf_clk1, _a_e0, "C1A_E0", 1);
> >> +DEFINE_CLK_RPMH_VRM(rf_clk2, _a_e0, "C2A_E0", 1);
> > 
> > What is the difference between these clocks and clk[3458] defined few
> > lines above? Why are they named differently? If the other name is
> > incorrect, please fix it.
> > 
> 
> Dmitry, my intention was to make a clear distinction between the ‘rf’
> clocks and the ‘ln’ clocks. Since there could be overlap in the
> numbering, I added prefixes for clarity. I should have applied the same
> approach to clk[3458] as well. I will add the fix-up for the same.

Why do we need to distinguish between them here? The resources in CMD-DB
don't have such a difference. You'll select whether the clock is RF or
LN when describing the platform data.

> 
> >> +
> >> +DEFINE_CLK_RPMH_VRM(rf_clk3, _a2_e0, "C3A_E0", 2);
> >> +DEFINE_CLK_RPMH_VRM(rf_clk4, _a2_e0, "C4A_E0", 2);
> >> +DEFINE_CLK_RPMH_VRM(rf_clk5, _a2_e0, "C5A_E0", 2);
> >> +
> >> +DEFINE_CLK_RPMH_VRM(div_clk1, _a4_e0, "C11A_E0", 4);
> >> +
> >>  DEFINE_CLK_RPMH_BCM(ce, "CE0");
> >>  DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
> >>  DEFINE_CLK_RPMH_BCM(ipa, "IP0");
> >> @@ -901,6 +914,34 @@ static const struct clk_rpmh_desc clk_rpmh_glymur = {
> >>  	.num_clks = ARRAY_SIZE(glymur_rpmh_clocks),
> >>  };
> >>  
> >> +static struct clk_hw *kaanapali_rpmh_clocks[] = {
> >> +	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
> >> +	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
> >> +	[RPMH_DIV_CLK1]		= &clk_rpmh_div_clk1_a4_e0.hw,
> >> +	[RPMH_LN_BB_CLK1]	= &clk_rpmh_ln_bb_clk1_a2_e0.hw,
> >> +	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_ln_bb_clk1_a2_e0_ao.hw,
> >> +	[RPMH_LN_BB_CLK2]	= &clk_rpmh_ln_bb_clk2_a2_e0.hw,
> >> +	[RPMH_LN_BB_CLK2_A]	= &clk_rpmh_ln_bb_clk2_a2_e0_ao.hw,
> >> +	[RPMH_LN_BB_CLK3]	= &clk_rpmh_ln_bb_clk3_a2_e0.hw,
> >> +	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_ln_bb_clk3_a2_e0_ao.hw,
> >> +	[RPMH_RF_CLK1]		= &clk_rpmh_rf_clk1_a_e0.hw,
> >> +	[RPMH_RF_CLK1_A]	= &clk_rpmh_rf_clk1_a_e0_ao.hw,
> >> +	[RPMH_RF_CLK2]		= &clk_rpmh_rf_clk2_a_e0.hw,
> >> +	[RPMH_RF_CLK2_A]	= &clk_rpmh_rf_clk2_a_e0_ao.hw,
> >> +	[RPMH_RF_CLK3]		= &clk_rpmh_rf_clk3_a2_e0.hw,
> >> +	[RPMH_RF_CLK3_A]	= &clk_rpmh_rf_clk3_a2_e0_ao.hw,
> >> +	[RPMH_RF_CLK4]		= &clk_rpmh_rf_clk4_a2_e0.hw,
> >> +	[RPMH_RF_CLK4]		= &clk_rpmh_rf_clk4_a2_e0_ao.hw,
> >> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_rf_clk5_a2_e0.hw,
> >> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_rf_clk5_a2_e0_ao.hw,
> >> +	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,
> >> +};
> >> +
> >> +static const struct clk_rpmh_desc clk_rpmh_kaanapali = {
> >> +	.clks = kaanapali_rpmh_clocks,
> >> +	.num_clks = ARRAY_SIZE(kaanapali_rpmh_clocks),
> >> +};
> >> +
> >>  static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
> >>  					 void *data)
> >>  {
> >> @@ -991,6 +1032,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
> >>  
> >>  static const struct of_device_id clk_rpmh_match_table[] = {
> >>  	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
> >> +	{ .compatible = "qcom,kaanapali-rpmh-clk", .data = &clk_rpmh_kaanapali},
> >>  	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},
> >>  	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
> >>  	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},
> >>
> >> -- 
> >> 2.34.1
> >>
> > 
> 
> -- 
> Thanks,
> Taniya Das
> 

-- 
With best wishes
Dmitry

