Return-Path: <devicetree+bounces-273609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKGLD5s1sGkKhQIAu9opvQ
	(envelope-from <devicetree+bounces-273609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:15:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E7E253161
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:15:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4F065302B187
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EBD52C1586;
	Tue, 10 Mar 2026 15:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gb/szAsz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g4NMiZie"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8952FCC0E
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773155708; cv=none; b=PDMCfBUTZwpOj5l4daxWLasdXGsZMXZOdEoSGITkFEZYzOSjujdJ5WmEWL/krWmB3GkiEqlpmKuyaXCh0+49qAsFlhGDjNXWCUuZTZn12/QjHpNxUrFfEHXSG81Ha7ExBmdvcJVN7vzeStnkQzvP+xEk3lq/g9QabmFlW9hb4n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773155708; c=relaxed/simple;
	bh=iJPpbCUuH2sGN/CUPHikiKBsufc8KSyNz/2Wrq9OROE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MPXPzanVPas9dQUqwJlYycu43F0FUM37uwKAuwfAaFtbMQC7N9NZEfyylIW2z4FXtZN3M6T6/e0ZlEXSYxcBbtkDxpJbItxjZh5OEBYjB+Q8RcrUV2hSpAuSZF0B+0tO3DsqiKQ48xs6Z7PekxeNkCZd2ZSrOqI7MB6byymTaa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gb/szAsz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g4NMiZie; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaXKp3417140
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:15:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ybpgTASpnEgpi460upjKC7VKszciXje9SlVqYxlJU5g=; b=Gb/szAszl2jQJtr1
	+WVtqC2SoYjflCsQM4qIad212P7nAGI5nU8rykCVeqxxv5eEkmJM+0c53x2wUo4h
	9PXlyVJtWfIzJQicftT/q8XSctgL7fFUFBE2ymkJ50sXQuK4ea36swikGktjsdDp
	XQomHLF33det+PQS2Tx3s3eVnDVnBiZutFJ+7/T/fsAYQ58rEGCWKwh/l0wm80s3
	4Raz97n+0IrfqMUftlmifyI9fT6y54gl+zdKZfK78QEHLYcmCrEv29OLUJYb1PsQ
	1zI+uQexaI8TrKwEu4RxUVZ3jaUHKlx5Xy7aiX6OZvgNvZ2mZnnOis6IhX4n6pFU
	Zgcshg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja28vc3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:15:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd90958f24so84854985a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773155704; x=1773760504; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ybpgTASpnEgpi460upjKC7VKszciXje9SlVqYxlJU5g=;
        b=g4NMiZievGxAnDOIfzkKuNL+LFBHSkQc491MgKyRsMDwh3YcRw+zH1YXXnlS02+NEv
         RBgZL/IvJ4JT8YXk1NqAIipnXe78BsIyO676KtIu9wIvesMLrCoiOHbO10/CECCTL/VR
         mC57fgKyWND/LcaVXWjJ4ZQEMCas8QdpLJCVie2kWhEYohBRHV/z3fo+uJA7822kacqz
         /5L0wjr2TxKgy1zr/UpPeAreMJ5WBxt2+gW6AB1tL4xaQHjp4FbTVyE/5+ujlGQ22h4Y
         2vhyErF4HHeemlnch9eItjLOkz1KF9LCWvWTVQ8N53VqyV42jFfbXxL3kys1QFWDrq/+
         XG0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773155704; x=1773760504;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ybpgTASpnEgpi460upjKC7VKszciXje9SlVqYxlJU5g=;
        b=dgWyLqjfmY8RB5DqxkCzHfp55uD3NSPBN1ehAVPgFBpGJI3JqX33wpYfXXtCDhumTe
         p3y/3dNYKNlp06bHbnx+Xe/cMGygXB3qP/1hFQJ1aR5H9NNWVko8HULVMQDSeo3jh1DL
         q5SRnsWoFu1hsLrlEqAEQJqBSwpDAP/I/w1QHrbLDChHLF9q1jSoqvwZqtNLOV/Z0kYi
         LrF/um2dCP+qG/DmfRng6MsMrfzdxM5yukXjZqbpPEmYkGwtpGOcCjXXdC0QR8JXvbRW
         IZeMxnrjDaC5/E4khUxG7MT+/x2tyD3L8nIzU0vjICi5kqkihtRxD2xXTBROF03CP0rC
         ZcsA==
X-Forwarded-Encrypted: i=1; AJvYcCU40gDTik7l7gntYQ4TcyCt2KR2fIAtPX7lH4gcZiM2IKL5zd7PDVXDT2oilT1D/cbngJoH4J2yq2RK@vger.kernel.org
X-Gm-Message-State: AOJu0YwTaTdf3V1LcpuIo1L5kcz/uPWHNX+o2zKFJLTxVHTxnnWPMD0l
	qtuxnfxcA8xFoElYFrRQBPhwEdAHRc9/Ans92iiNeJf5mn3LYrWmg6AnzEL80avt49GSZQw4jEf
	pYUtEiQdYl/VD0FZpdggtcRMXuFDwydi1AUSssHf4FOGToxswGzs9bLjBUHQ9BB7a
X-Gm-Gg: ATEYQzzLWoNvgf97N06X7w/R0rV37EF0wQyEGyb3DAlA8uXT4VoGoZeeGkW0Lb/wCFx
	OcLASbVk0LOnEXlA3cdq0YowN6zBbscUZI5fkNTizM+aAhkDNr3EB6NgUuISkOTcV4fuuuOVo9w
	5rhc0ohMT5XnzrN/QZELpG0ymhjbH+wEAiaFVA7nZExiCQARb4DIPZjJCsJXJm53Oe3EjvmKsYQ
	Mef6XQKMdEGelxxBrlOGPnLWaTGPpiiiPXDGWCj7mn1VpjNOgxyMRQiUM74yoBs0Au2k4/Q/U4Y
	pX+Q90XfVfPC9v7ljjlRNEH+lU+nmjLqqNfR4LzsyWBf7W1cdJ7FjXTqY9v+T/pLJ8KZboZvocb
	sTv0ggKb9CqyUQM21bqI+WXwNc8qIAy39SgnuMdizNe7Y6ujNggyi4XfDJDKF7Xi8QhTV7j9i9Q
	6TI7Q=
X-Received: by 2002:a05:620a:2955:b0:8cd:8411:a5cb with SMTP id af79cd13be357-8cd8411a9c3mr842052885a.3.1773155703967;
        Tue, 10 Mar 2026 08:15:03 -0700 (PDT)
X-Received: by 2002:a05:620a:2955:b0:8cd:8411:a5cb with SMTP id af79cd13be357-8cd8411a9c3mr842047085a.3.1773155703433;
        Tue, 10 Mar 2026 08:15:03 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef48267sm494734566b.3.2026.03.10.08.15.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 08:15:02 -0700 (PDT)
Message-ID: <1df08447-0ace-4771-bc1c-b0f8c5d0f9b2@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 16:15:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] clk: qcom: Add Global Clock controller (GCC) driver
 for Fillmore
To: Aelin Reidel <aelin@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux@mainlining.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20260308-fillmore-clks-v1-0-976d9a6bebe7@mainlining.org>
 <20260308-fillmore-clks-v1-3-976d9a6bebe7@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260308-fillmore-clks-v1-3-976d9a6bebe7@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69b03578 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=OuZLqq7tAAAA:8 a=3zzezIjtfV0i2P62deAA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: MrVGxMI2xOoy6xUFsWcervN4J9pzVKYP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEzMiBTYWx0ZWRfXxodn0VMePwXz
 mS3MqxtqU4XL9pYkyl3N6Cky4rJ2/lGUyd3YEAdAYz9Jgv4Zi3KD/i6A4eiybEm1xMaTdxEAmGH
 MPT+F2Ov4fxbCD+bWdJABWucIfbKJ1YQ0tOl768FfDz6fNJ0nB8dl/5X6fSPDv9J8VxjD+4kJeQ
 H9IhOilckaJ1Zdhy6kxkGR5D2rQqiAV8cdEIEejZZlFKSRQrqG72WR/+8XlnnG8L/OgYwwA0076
 mNE7U+UYMrUJkir+dS3wTiQBMXx2Xp81yn4o3r1YJPFCjFfCzXTMYM6USM05DOKUzMavsUElANY
 CDzE6D2Q7YJCn8SBAe+LVVZPXaktnJdbF8MffkT28ww06xBdFn1OCaq3VT5uB0X0jcYZMsKUcAg
 iWkrvT4vLXE6dP9zR1NEz17UM1bC8o3RfDe0YpuTEWPfpjWPfXaKLldqvPwRWZ7CTT2cIWj+7Go
 4mnlF7q6SQ5eOMTQJNw==
X-Proofpoint-GUID: MrVGxMI2xOoy6xUFsWcervN4J9pzVKYP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_03,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100132
X-Rspamd-Queue-Id: D3E7E253161
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273609-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/8/26 1:39 AM, Aelin Reidel wrote:
> Add support for the global clock controller found on Fillmore (e.g. SM7450)
> based devices.
> 
> Signed-off-by: Aelin Reidel <aelin@mainlining.org>
> ---

[...]

> +static struct clk_regmap_mux gcc_pcie_0_pipe_clk_src = {

This one's a clk_regmap_phy_mux (see other clk drivers for what to
change)

[...]

> +static struct clk_regmap_mux gcc_usb3_prim_phy_pipe_clk_src = {

likewise

[...]

> +static const struct freq_tbl ftbl_gcc_sdcc2_apps_clk_src[] = {
> +	F(400000, P_BI_TCXO, 12, 1, 4),
> +	F(25000000, P_GCC_GPLL0_OUT_EVEN, 12, 0, 0),
> +	F(50000000, P_GCC_GPLL0_OUT_EVEN, 6, 0, 0),
> +	F(100000000, P_GCC_GPLL0_OUT_EVEN, 3, 0, 0),
> +	F(202000000, P_GCC_GPLL9_OUT_MAIN, 4, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 gcc_sdcc2_apps_clk_src = {
> +	.cmd_rcgr = 0x24014,
> +	.mnd_width = 8,
> +	.hid_width = 5,
> +	.parent_map = gcc_parent_map_5,
> +	.freq_tbl = ftbl_gcc_sdcc2_apps_clk_src,
> +	.clkr.hw.init = &(struct clk_init_data){
> +		.name = "gcc_sdcc2_apps_clk_src",
> +		.parent_data = gcc_parent_data_5,
> +		.num_parents = ARRAY_SIZE(gcc_parent_data_5),

.flags = CLK_OPS_PARENT_ENABLE,

> +		.ops = &clk_rcg2_ops,

&clk_rcg2_shared_floor_ops

[...]

> +static struct clk_rcg2 gcc_ufs_phy_axi_clk_src = {
> +	.cmd_rcgr = 0x8702c,
> +	.mnd_width = 8,
> +	.hid_width = 5,
> +	.parent_map = gcc_parent_map_10,
> +	.freq_tbl = ftbl_gcc_ufs_phy_axi_clk_src,
> +	.clkr.hw.init = &(struct clk_init_data){
> +		.name = "gcc_ufs_phy_axi_clk_src",
> +		.parent_data = gcc_parent_data_10,
> +		.num_parents = ARRAY_SIZE(gcc_parent_data_10),
> +		.ops = &clk_rcg2_ops,
> +	},
> +};

please check for .enable_safe_parent or something like that in the downstream
driver - for all RCGs that have it, use clk_rcg2_shared_ops

[...]

> +static struct gdsc pcie_0_gdsc = {
> +	.gdscr = 0x7b004,
> +	.pd = {
> +		.name = "pcie_0_gdsc",
> +	},
> +	.pwrsts = PWRSTS_RET_ON,
> +};
> +
> +static struct gdsc ufs_phy_gdsc = {
> +	.gdscr = 0x87004,
> +	.pd = {
> +		.name = "ufs_phy_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +};
> +
> +static struct gdsc usb30_prim_gdsc = {
> +	.gdscr = 0x49004,
> +	.pd = {
> +		.name = "usb30_prim_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +};

Your downstream DT also has:

HLOS1_VOTE_MMNOC_MMU_TBU_HF[0123]
_SF[01]
_TBU[01]

that all need to be defined and have .flags = VOTABLE

Konrad

