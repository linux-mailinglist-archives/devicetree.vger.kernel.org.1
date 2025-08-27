Return-Path: <devicetree+bounces-209737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FB8B38A9A
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 22:02:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 327DB5E6EA0
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 20:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8753F2D480A;
	Wed, 27 Aug 2025 20:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dCQmge2z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1FC20C463
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 20:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756324914; cv=none; b=Iq5pvJxdNpFXCe3ixHwixhLCck100QvA+tpWqakp95MNrZhUQY2N5E4h5kgN/6eQP7rq5YHsTLOMWUpdWyfq8LWzf7s/o/YPTNPdojc+Ml8qyImDGmkfYs4KgnwzQvYGI6QzVOmx/Ko3k7xtYIsKRxdgtgXz6BlS4+y7XsHbQFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756324914; c=relaxed/simple;
	bh=D+yMe14Tpf3c/xVv+fARYf5ETFaAbJnlz/bfCvrAoVo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CWt9hpNBB3B9pXlyxQtgBGdzc94dWlhnPiUTx5kBPW0vm8BzOsv9dshofhhnI+vwSU4QdKX6zzycs8TNUnFABtyXGFvuMJmCBYQdbR/axtI/+hBhTR3kqhBzaGvhgKT29fkRA5LrW3KgCKCG6cONR3vf94kiTMhRavroGTVmvvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dCQmge2z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RGEjp1018826
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 20:01:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Mj5+squga8BNTuWWdxANYVJo
	JH996l1kauWfdJepZFE=; b=dCQmge2zI+S/miJfNaWjec7m+SYfczGuPw35ICh3
	g/av9RED+72TSbUVoDv9D5/bufDvdPuqfhOqyMBptFUoxkZ+yYhroz0G2SjyAe5y
	76uJ7FPxHKg/jOkrxZodmFHak2wnraXWdZANqDG94ovrxRIR6InX9wCF9L5EJAo9
	I51HS4QkzvggMhnulO18zBU0UJJujb9GGMXzan0AyCSi7FDrKiW98k8nQiXcGZTq
	WwNPmVQ2ALbXM0Wu7lP9fhfdTYNUXq/Fn8P58bVWv36E8SV1s7mSHKF5HU+nPqor
	7xI19j3BpyWesKhie+i+dvk0wW2AS8jZIu5BJLoQM0QIUQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5xfnss9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 20:01:51 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-51a28774b5bso2337158137.0
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 13:01:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756324911; x=1756929711;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mj5+squga8BNTuWWdxANYVJoJH996l1kauWfdJepZFE=;
        b=gC5GIJ0y/NBfKT/X9K7SRDXUofTJ65pwyepPWw5lUICu6tIfnLKpTJOk/dBp4GONEw
         jlKSteLT2E2Q/pcES5lGPZacB65Vypr0celkFf7XBd8nrrLhMUZ7vLm1uTH4O2NjEvoD
         K9x/gy4anMLWkwM7ZIaelV7H4P0xmKi8EoP6mm41Qq3qWSkZHQpAOebZxZE4JUPhGl5y
         eqBsdeP/LrCBacdeb7CSa0J2wAe9O1EAR6lieRi8hVR07e3FbqgrkxAIKzZ5bfqWa1XG
         1ES2eLxSsCH/Pnm6ekTE1DoKDzkEIELMDtzVu+elA6e4oXiv4PbtjDSRY17WJpmeYof5
         N2qQ==
X-Forwarded-Encrypted: i=1; AJvYcCURk2u2VjGg10RTeLuM+BP+LGH+0YDYghFNHk0U5b2UfJ/sC6zZpeeDtxXbldP6nhZqN86zVEx57niD@vger.kernel.org
X-Gm-Message-State: AOJu0YzZXwYEnGeMi/4VVqd07BXSLfofYtw5RQ7zB9XZhIaPjWPvpFf3
	SjB3AnPSnyyTOPQJDre5YZ3tWLIvaXvBQ/LyCZiW71iufg/qmuNv1z2K0gAy8+w4sUHxpDt9xRR
	rBGqeepyIuYofyMVLRAZrtQIsflMshpbMMa45rD3xB/AEy1SKbPEW+aEYT+1Qgp3w/KBWpES0
X-Gm-Gg: ASbGncv7sAPZNID2i0ZJFAeApkZNJ3kOIQshNF20Lzc9+EwOW480S9kn6EQseYBSfOZ
	/f/enNyLzK7lPZHlYDG5HQ7FlaQXGOuLpSZ6VxW31m5C31ajdlNPk/Pm41SP6WL+/RCGatLF8Tm
	a9EOW9VRVR+bXAAdZl8xt+iGfSlj7xEpRHRn1TVFwVCg4tUbhrEn90VAZd+QPo9YMWajOXi+Kvm
	F+Q2/6Lp5V3rL9dcgUiTb9yzQuvvBk5IVY4JdVLtgYHb7+1IaL8oUX/bbrM42tysZbYxYuahNZv
	OEffFtQMRKV9Z/Q5PMDGNYzDeNCIjPfAwYf0aKUSJ+3g3wq+fvigW6Ub9CqP19R/oKeISQCgPtf
	uoVnteg1NhR49lmHOFf+tL8DzpZDHm1D38oZB/CWBis7rDshZB6/2
X-Received: by 2002:a05:6102:6495:20b0:519:534a:6c36 with SMTP id ada2fe7eead31-5248bbc70bfmr1665704137.14.1756324910406;
        Wed, 27 Aug 2025 13:01:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJ/jsGbo/0+zzG2ju1FyxFl38fR1Yik7DRNOp7bX+dkjfU3yg/w7t7cOerSB8W3MKBRSWD6A==
X-Received: by 2002:a05:6102:6495:20b0:519:534a:6c36 with SMTP id ada2fe7eead31-5248bbc70bfmr1665596137.14.1756324908466;
        Wed, 27 Aug 2025 13:01:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5a5b79sm30873701fa.34.2025.08.27.13.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 13:01:46 -0700 (PDT)
Date: Wed, 27 Aug 2025 23:01:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Fange Zhang <fange.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add display support for QCS615
 RIDE board
Message-ID: <yutyrfb73wbxlweoq3mc6ezyqr56snzmznw3k6mcbc56fpfayg@3h5jwymlo3ol>
References: <20250827-add-display-support-for-qcs615-platform-v7-0-917c3de8f9ca@oss.qualcomm.com>
 <20250827-add-display-support-for-qcs615-platform-v7-2-917c3de8f9ca@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827-add-display-support-for-qcs615-platform-v7-2-917c3de8f9ca@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX0yXNxYEKnpt9
 OGf95QXbrtUQBXLlh+sbYgl6wt9EzZthEPrFMDAv3GTYvIWu8MMwJw2tQvj/hYu7qbXlKUFZLd+
 rjeJ77zSN5sekdi0VD4u11rTEBXxidDbj+IQ+118wZf6tpPTMfJo9vTYX7Oj4KCFimJY3G9BxBl
 IPUVfCEdJPqF1SEWM14VR2fbdGs2braxOYf2th0kavgWsg/z7CGT5yWVzcl2B4qfNWqCfeWWBk1
 zelYPNlW9VGKxMDHBYsKvjF6x1VbKjB1lHjZSWd3oar7Mx1LvGzeYwUUvvXwCu97F50zMpeyhrY
 a2z3Tkva8ShyVjkakMd1PeR81LLWd6hR9bNTo5xwVHsrulkoxROhoNsuzPxpDTAkdshE1Aq+o77
 coSIOllc
X-Proofpoint-GUID: qHQE8k3hTW6mo--bs6YWqFWpw8Ohsifo
X-Authority-Analysis: v=2.4 cv=MutS63ae c=1 sm=1 tr=0 ts=68af642f cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=NCHn67HwCZdYxv9cn_sA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: qHQE8k3hTW6mo--bs6YWqFWpw8Ohsifo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_04,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

On Wed, Aug 27, 2025 at 09:08:39PM +0800, Fange Zhang wrote:
> From: Li Liu <li.liu@oss.qualcomm.com>
> 
> Add display MDSS and DSI configuration for QCS615 RIDE board.
> QCS615 has a DP port, and DP support will be added in a later patch.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 150 +++++++++++++++++++++++++++++++
>  1 file changed, 150 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index e663343df75d59481786192cde647017a83c4191..f6e0c82cf85459d8989332497ded8b6ea3670c76 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -39,6 +39,76 @@ xo_board_clk: xo-board-clk {
>  		};
>  	};
>  
> +	dp-dsi0-connector {
> +		compatible = "dp-connector";
> +		label = "DSI0";
> +		type = "mini";
> +
> +		port {
> +			dp_dsi0_connector_in: endpoint {
> +				remote-endpoint = <&dsi2dp_bridge_out>;
> +			};
> +		};
> +	};
> +
> +	vreg_12p0: vreg-12p0-regulator {

I should be more carefull when doing reviews. I thought that it was
pointed out already and didn't some of the obvious things...

First of all, the nodes are sorted. By the name, not by the label.
Second, there are already regulators in this file. Why are the new nodes
not following the existing pattern and why are they not placed at a
proper place?


[.... skipped all defined regulators ...]

> +	};
> +
>  	vreg_conn_1p8: regulator-conn-1p8 {

Tadam! It's even a part of the patch.

>  		compatible = "regulator-fixed";
>  		regulator-name = "vreg_conn_1p8";

-- 
With best wishes
Dmitry

