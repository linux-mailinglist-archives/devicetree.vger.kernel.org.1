Return-Path: <devicetree+bounces-273561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +D2ODsMtsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:42:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A315C252414
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:42:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C3243470E2D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7C538AC62;
	Tue, 10 Mar 2026 13:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UYz55cK5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hzQWPVPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5388A3876A3
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149611; cv=none; b=oNnQM79MpLqSW7z3+t/XAYdqfY6Gd/8hzROj+WzgOny9i3oK1kiqge5qVy5OLBdJ5Y2oxGGkX2mf1F8kUQoE5BHvL+tpEuqB+fwYtWOxWUc7zCNssJJA2FqJna89pYV6qmWcIiPRxpV3GgeLG6S9n1hIStWrnLGS78pHZVJLgeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149611; c=relaxed/simple;
	bh=WLjR64FMtcy3VsqCFrk603WYJEIRqZ6RCJ3BITJRJXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EeEzYj60cF7sjhIgqvqOSQd6i5sprRmmbNjmelHZVo9z7VLPUav/UqQa/XVbjPl15pXrO2pYhH4MSH/YEiXAtmhYR1MHNjujjg24cBZpbynB2ti1JlKoyQJebDh+W2GhOCHgHCLaqTiHEmz92/2kxzS2kyeUs7ZHk9bXrPW/sn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UYz55cK5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hzQWPVPH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaTAb1502930
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:33:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Aat35daTUCA7fI7ldoBvesOF
	rR0W8njGOSk5Cw5Amdc=; b=UYz55cK5YBoTH+YmZvfb0d5D0bq2XOHUIFQx9f41
	T2xEdan4stEw0TQf1+JaqWTMsO5juQQCfvxYTF2YVLiZ4wtGCal9swuUZNeU2cj3
	M4E7kq0kb2N6I5H3S8olqIg499dAyBwf6MKbB/uu6cC6FEpOEOAs9LLbTeqWqnjv
	79mqUlvDbU0xR4rC5wqgXizH2yvXD3V+b1IPyDu5F+kB75KWukm+pqwfdhJc+zPm
	3Y3kEwHfB46igbUt54/izL0jn8JJwmsK9FR8zImxKwYb4ddLgyo6D4+WyHY68Ixe
	QZihryv3eLgai1cDaOsurpSFuMW+r7ssH7PgZ/PZ8/nU3g==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctdf8hpqj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:33:29 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-94eb4245732so1789542241.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773149609; x=1773754409; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Aat35daTUCA7fI7ldoBvesOFrR0W8njGOSk5Cw5Amdc=;
        b=hzQWPVPHTmVwlK0AmlnJV0cnw8rk1Zc8XliPQQwchJJa+ClFA8XgPrVLP734DmiAAF
         soYwpOOVoi3xygENd0nrQFwqbF4B2GXAlsk9WfYz+TAynd8bnPd2B6kOGxkaccZTI3P9
         kDbI/my4flsmEVBHksKFhAgs39JY/zJpD4aDYd5+NZ/dtnDSMVD3YrbRLQ7hsz+/BJub
         LlLcCom0E4wMrjJ/wrjnCnLxh7bFuBtS1TE3aT7RWK5qtZJOp34chYDL6rdk1DckhjRB
         5QItTj9/s2/2eAnip4rvD2kwjCm2M4or7/Kmp8CGQQmG92XGIigTVp40N1KcpJrJLoSS
         Q9mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149609; x=1773754409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aat35daTUCA7fI7ldoBvesOFrR0W8njGOSk5Cw5Amdc=;
        b=ZahsPiZSrtuk7QoOCYIDGG5jwqeAtAWWmFAxbgsMGZb2ueUqejFLo1eLqaHewXn1tP
         vZI2NxbRVwT7+gm+R+lpBs/rQbGYY9cKG3ql5F71RTQvdt7XIulFRG6eXjUCmsQqW11I
         RbRt32Hl24PHp6Fq9VpjrYIoSW0KmNunBorVSVGUBrvT/C/jC8E1v31MMfW+iz7hKL3C
         CVyXVmcRMsMXRigjIRrOfkZrt+LIeUhLgQaKW+zDoiHGzLhMugnVHnu/y3Nzlk6S9/95
         9q2msK7oj26DmygIZ+bxqvuxbiSugJH3alFQJOMNeLjVmE6KJRYTNPr/vJVzGfGpAaIJ
         iYHA==
X-Forwarded-Encrypted: i=1; AJvYcCVxMPFfy1Fp6aRmYz4UacgAZhG6FFK87r8NsxA9zlCM/1oZvwJRtAKbUe7JGmAGsN5Ln0ff/orsVLZ5@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl2lqOY6RK4gEL4jHfMJLQLRdRsemTfnRZpO0eMXq38K2y87ox
	HQ7Blscq6IsZXQNblolXdrb7oUSPEGFu6MHnlFwfab+NERzo1/VzjY1ZxbLpw0otO2tdzs0u1ap
	r099JrICL/5XhBl7n0TTKR9zEKT8ajb8KjINnJFiyQMAh06WPIWUlllem/vo1GDMt
X-Gm-Gg: ATEYQzzZefvBquMCzDvGhN22mOzKUKEIwXq9EG7JD/sWm60vHAlZnoAVRM5Px8Q0dhV
	NlFsoAyBtF+IMJOJlv3dnAUxsfczeJprO5Y3En+XAw02lCS34msfr1gJNEs8V19sdKwuNVSBgLM
	XKYNPfLpS+OeBBXTcQ4mEkRkF6aF8caNMexLvx7iKoJCkmq69ty1R2PbnGiokB0zFrCA2E0GCJc
	3hZaJsW9lFveJc63dePXWvWvqlvI2L/iwt5vamTh6IWWhhdjSVmdeLZRdlHLonilKpwruiBlJV+
	09KwiYA2Ex3UXbvyWhhYVx40WmFZaZ2l4Z0DXW7/m+JD9wf/n48d8TsyvKlCpUoU8StFxcw2LXO
	DmmQtwW2WdL8FdU2u8hFjUcZQlcUfR+Wrl4lMHQ7GrVD3mPulSbx4n1sZvDh8FO8+V444EpKfa0
	1p4dtqCwqSftnhq+olEv2GtwLMUMVEkBx88lw=
X-Received: by 2002:a05:6102:54ab:b0:5ff:1cc2:aa8e with SMTP id ada2fe7eead31-5ffe61e765cmr5432099137.30.1773149608556;
        Tue, 10 Mar 2026 06:33:28 -0700 (PDT)
X-Received: by 2002:a05:6102:54ab:b0:5ff:1cc2:aa8e with SMTP id ada2fe7eead31-5ffe61e765cmr5432068137.30.1773149607980;
        Tue, 10 Mar 2026 06:33:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5cfc545bsm5014381fa.13.2026.03.10.06.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:33:26 -0700 (PDT)
Date: Tue, 10 Mar 2026 15:33:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Aelin Reidel <aelin@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux@mainlining.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 3/4] clk: qcom: Add Global Clock controller (GCC) driver
 for Fillmore
Message-ID: <eeonr5ngacwkkuph4p3vadacklqnh272y3wq5bfrkvmrqootg6@wwg7anuexnaz>
References: <20260308-fillmore-clks-v1-0-976d9a6bebe7@mainlining.org>
 <20260308-fillmore-clks-v1-3-976d9a6bebe7@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308-fillmore-clks-v1-3-976d9a6bebe7@mainlining.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExOCBTYWx0ZWRfX8tFE2xxMKEof
 3bR1/eYYIKkMljE+pRWwWe5fiUa4VZwLTaDh+LW4/v2VnXNGjI2r3sC/sG15ooRhv9fQ7HF+cLL
 gJdC4kAxWRfzf+p4D8RBKqfCScmJ/vW8OmrFTjNZMmJe1DdeX5FqSUCG7RB3Ulb89Pp+oL4ivFe
 LDkY41AJAYu8MhCboiDHAhpj2L3cTEdbKZ6ALweoXfAEfhfRgnS6YsLQgzfkUf0QI+crJKWx0hr
 Fm6pryJTVTafGgODCJwp6kdlarPJ2aCijXZUn+SfYHGb/4Rtp+CbXRzN2PBQFtOsa/U0LXL0cey
 J7I7doE1Nq7q63ucjYFJfXrhbev+Av5Dm4IH0JmkkmNH+ecszyxMCfCKNfHhzO4JJQWK2lYZGjk
 33XeipfBHhI9NLGrLSTEO1j39rb6pEYYiWI7ztf73FsBEJ6rN3rhEELMHXDYzQehFLD2fsbzAfE
 iMj+JCCNxWKkWkT1HTA==
X-Proofpoint-ORIG-GUID: lnMdWFzrq2kIRVFO1Tt2A22CJv1bsN68
X-Proofpoint-GUID: lnMdWFzrq2kIRVFO1Tt2A22CJv1bsN68
X-Authority-Analysis: v=2.4 cv=b+W/I9Gx c=1 sm=1 tr=0 ts=69b01da9 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=OuZLqq7tAAAA:8
 a=Nn29QYLWgFSKcfegRr0A:9 a=CjuIK1q_8ugA:10 a=o1xkdb1NAhiiM49bd1HK:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100118
X-Rspamd-Queue-Id: A315C252414
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273561-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,mainlining.org:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 01:39:29AM +0100, Aelin Reidel wrote:
> Add support for the global clock controller found on Fillmore (e.g. SM7450)
> based devices.
> 
> Signed-off-by: Aelin Reidel <aelin@mainlining.org>
> ---
>  drivers/clk/qcom/Kconfig        |    9 +
>  drivers/clk/qcom/Makefile       |    1 +
>  drivers/clk/qcom/gcc-fillmore.c | 2714 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 2724 insertions(+)
> 
> +
> +static struct clk_regmap_mux gcc_pcie_0_pipe_clk_src = {
> +	.reg = 0x7b060,
> +	.shift = 0,
> +	.width = 2,
> +	.parent_map = gcc_parent_map_4,
> +	.clkr = {
> +		.hw.init = &(struct clk_init_data){
> +			.name = "gcc_pcie_0_pipe_clk_src",
> +			.parent_data = gcc_parent_data_4,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_4),
> +			.ops = &clk_regmap_mux_closest_ops,

clk_regmap_phy_mux, &clk_regmap_phy_mux_ops,

> +		},
> +	},
> +};
> +
> +static struct clk_regmap_mux gcc_ufs_phy_rx_symbol_0_clk_src = {
> +	.reg = 0x87060,
> +	.shift = 0,
> +	.width = 2,
> +	.parent_map = gcc_parent_map_6,
> +	.clkr = {
> +		.hw.init = &(struct clk_init_data){
> +			.name = "gcc_ufs_phy_rx_symbol_0_clk_src",
> +			.parent_data = gcc_parent_data_6,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_6),
> +			.ops = &clk_regmap_mux_closest_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_regmap_mux gcc_ufs_phy_rx_symbol_1_clk_src = {
> +	.reg = 0x870d0,
> +	.shift = 0,
> +	.width = 2,
> +	.parent_map = gcc_parent_map_7,
> +	.clkr = {
> +		.hw.init = &(struct clk_init_data){
> +			.name = "gcc_ufs_phy_rx_symbol_1_clk_src",
> +			.parent_data = gcc_parent_data_7,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_7),
> +			.ops = &clk_regmap_mux_closest_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_regmap_mux gcc_ufs_phy_tx_symbol_0_clk_src = {
> +	.reg = 0x87050,
> +	.shift = 0,
> +	.width = 2,
> +	.parent_map = gcc_parent_map_8,
> +	.clkr = {
> +		.hw.init = &(struct clk_init_data){
> +			.name = "gcc_ufs_phy_tx_symbol_0_clk_src",
> +			.parent_data = gcc_parent_data_8,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_8),
> +			.ops = &clk_regmap_mux_closest_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_regmap_mux gcc_usb3_prim_phy_pipe_clk_src = {
> +	.reg = 0x49068,
> +	.shift = 0,
> +	.width = 2,
> +	.parent_map = gcc_parent_map_9,
> +	.clkr = {
> +		.hw.init = &(struct clk_init_data){
> +			.name = "gcc_usb3_prim_phy_pipe_clk_src",
> +			.parent_data = gcc_parent_data_9,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_9),
> +			.ops = &clk_regmap_mux_closest_ops,

clk_regmap_phy_mux, &clk_regmap_phy_mux_ops,

> +		},
> +	},
> +};
> +

Overall this driver looks very close to SM8450 GCC driver. Is there a
chance of unifying them?


-- 
With best wishes
Dmitry

