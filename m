Return-Path: <devicetree+bounces-200459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A93B14C7A
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 12:48:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2F577A690B
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 10:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5482B28A735;
	Tue, 29 Jul 2025 10:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lnTD/atV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF7BF28A405
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753786104; cv=none; b=qCI/U0UDsZhg0ciNEoW4Yt6YoGtYuxVXP+tpXolAI8UgWWI1wHSRsJFk50LazgirHtUX8nKEgrJbq1XMuJXO6MyqyntHGLawx3cfv5vsmDx9ky9jdKQBQSQABKOGozWLPuLwcDFnbdofimEpGmvVLcMVGfNhk/uUt/MbFN0gSEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753786104; c=relaxed/simple;
	bh=hKHbjjoJ+iGtckzDyicYvICv0iTNTrl7TsrUzNgpKaY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I9JWRenVKQbc2ZHcbT0Tuq+KmjXCRGzxGmfFXvtE72B7YHkkCPvVxCK0Kw0jk5zcH4viIIclmbYbwZ51CLcXyGSP4QEoAH6bLSO8ef9LAREVLdFumHr+kGBU45Z1kYy4iEUE/+S4a/ZXgu2jX6wTPE3nE+kJ0avBO7/MliJV5R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lnTD/atV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T95jqD027093
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:48:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aIZodOZfSRc4bXLg5h+oXoOK
	Sy3LJLxbr/aCH937D3k=; b=lnTD/atVx4T4mnTggzkJ16I9SaQKJuhYu++ApJLv
	WcR078znfxHSYM09lIWgW3PCeNT/z3NLxt5Z+saZ3ITy9xrU/4vlXgklzHuZD5hQ
	tPGFNMkae5h8UbvrTOarKQRvH/XM6d2754gZKlmATH9c0hyG+fdLJAVLKt5jWOCH
	tam/MyEDe9todFmT7M0xdCjz0pYKDXGYOXJj2qV3mAhJhg/oq27PpgRuITyf/mH2
	aDpq1hRTNoHGDn/kskCIckJKWYgYhPVIDqLLdgWxgFopjbzPB3D6cUmv3irUXwCp
	TBlUqG+fJfIYtBJFTUUM2SCtX3V1TWSEWa5wCH/Zcoq6MA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mcr7yhp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:48:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7073f820d42so55926246d6.2
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 03:48:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753786100; x=1754390900;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aIZodOZfSRc4bXLg5h+oXoOKSy3LJLxbr/aCH937D3k=;
        b=cJlkwgv1nkpILWGEy4pDTuUd255dY8Z50IaasRv2A//UwRPdrze+3y38+wrDdkeSc8
         CAIx4Ip5tFTWvW7iK23X4ZvoDv3lXsbAKe12RKFGlx+vntA3pQy20r4T7q6Bh6x9Jz6m
         IhTSwipJLd49yxpS/5LOOMC/opeHrw3Tm/W/GZaLNrs6tzxS1H2k/CHPawDchuEkdqe0
         2OkfY0l32Cjt6o65ZlV70+zQvyBATsCzANhKYqcerwJKK6RFJ+PfGR7D2RyYtO9KD/C+
         Os4WVuzk6DCDm3kO37XAlj9nGJgDhZMH87mO1d/Ay7ifDIcXNvlognT/hdKbbxqLldmy
         QivA==
X-Forwarded-Encrypted: i=1; AJvYcCX0wMrGkyd6m6SzN9EN5o3q4tqdeHG14yQsIDUudR513yMrjqzeMMx+d1YYW6jzt6MCsmctCXtcq3cU@vger.kernel.org
X-Gm-Message-State: AOJu0YykdJDbYfo2baiZzzS38QNsG4mcQN+04M6spDLjyktp6f3WwtZ0
	s2DuJbNDCuMWzE1ahM0z7KFRD+ZWLURvxp181fwqrOmFudQArccgnpyqjidxa9UJv9J1Y36dXhA
	PfNnabT91S+4BFh61/r8EqyQHzURHLcamNoa/fHlPU2puO1TWlbH7As5TyZWTLcK8
X-Gm-Gg: ASbGncsxBeutUyb4tkKne20sXlCdU6iJBeS6VF+kCaY/ofuAjFvywN0Wqn7lHDwvJQE
	k6MIWN9In9yz6llIvPGmD+yIP3wf30cFCfEL30mZxUlyw8Z4S5h6urKOIp5Ht7ReDLrq/KIS+q3
	BPFQpC6nC8iisrq5XjZXyeyEhKW3WBqmIbp+C8Smo6sWO412yFfmMaaYZ2aE2AO9iUU+9mmTlIE
	UfSPo7f7Q0OpPSmaExIc8A+FcJKWfrRxtos2doutP82uuVUywxRoa92LA/2uLICcPS5BntyJdhN
	C8EldsmVXk3I1/1Oh5/6/X8pwZbe4ipgx/ADZeHk5zgQrjgqBjmFkWJzrdmj/YiX1gbIeDImpko
	2+sX8byIKhB/bdXsdLwNDGKbbv9lUvJP+zwXXeaBprOLkC5BIFHQ1
X-Received: by 2002:a05:6214:1cc9:b0:707:1a5a:71c3 with SMTP id 6a1803df08f44-707206fcfcdmr237668516d6.16.1753786100367;
        Tue, 29 Jul 2025 03:48:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFddgyjGv1hFw/a867iR4nqNHV4MwlsaV9ZbCgAmOWAOWVeaSDHwt5F9kad21ptJ0V3bBzeWQ==
X-Received: by 2002:a05:6214:1cc9:b0:707:1a5a:71c3 with SMTP id 6a1803df08f44-707206fcfcdmr237667936d6.16.1753786099873;
        Tue, 29 Jul 2025 03:48:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f423597bsm15621391fa.44.2025.07.29.03.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 03:48:18 -0700 (PDT)
Date: Tue, 29 Jul 2025 13:48:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
Message-ID: <25uelsjuw4xxfopvfn4wvlj2zgivwbjprm74if5ddwvht4ibfz@yctc2kvfmxyw>
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-7-227cfe5c8ef4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-7-227cfe5c8ef4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA4NCBTYWx0ZWRfX0RUTNmsbfL/2
 a3CT3UlBajZcEE/8vKcQc+6f4eskm1K/aKKx5TOsZFXW5FHvOwIuS2sYfWJ/26HTz64v4smg24y
 M3gU8JBkcYzUdOnJElHRl9s7NVcmdh0jYq3hGZP6YdkPSOnNulyPGaXVyimpehD7IN67PGhzj8S
 hRvPTCk4DVkuM9p/9wtSFnLJNHA3K0F50abKru/IunxUJw3XThks1C4n9Z8nGzO/B60PC/EkbAH
 5Xqn9ZpDc1CDBWV1UUTRaPbP6kSB7ci6tjlzkE/lmwyPCkJDqfltfV08W0Oy30SIfAcGf2Yyag/
 mMnfF6dWlqdij3vJ0fEF/yoCkRLaweLs2HGyojgmdSzGRfEpgTQFSoa9AQ99mCS5e+nPbQSB06b
 zxE9R+myVe/E7X53UoMQ8BozKDgzrhgCHw5j9ArI11AnyzBRMTPNziQQFXf90BFc1cAT1nyK
X-Authority-Analysis: v=2.4 cv=Hth2G1TS c=1 sm=1 tr=0 ts=6888a6f5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=QLzzLPEayNjuskPGAjcA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: 1klKu4X8Vh1AE_GcVoJSmHyZcAKsXPWw
X-Proofpoint-ORIG-GUID: 1klKu4X8Vh1AE_GcVoJSmHyZcAKsXPWw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 clxscore=1015
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290084

On Tue, Jul 29, 2025 at 11:12:41AM +0530, Taniya Das wrote:
> Add support for Global clock controller for Glymur platform.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig      |    9 +
>  drivers/clk/qcom/Makefile     |    1 +
>  drivers/clk/qcom/gcc-glymur.c | 8623 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 8633 insertions(+)
> 
> +static void clk_glymur_regs_configure(struct device *dev, struct regmap *regmap)
> +{
> +	int ret;
> +
> +	ret = qcom_cc_register_rcg_dfs(regmap, gcc_dfs_clocks,
> +				       ARRAY_SIZE(gcc_dfs_clocks));

Why are you doing this manually instead of using
qcom_cc_driver_data.dfs_rcgs ?

> +	if (ret) {
> +		dev_err(dev, "Failed to register DFS\n");
> +		return;
> +	}
> +
> +	/* FORCE_MEM_CORE_ON for ufs phy ice core clocks */
> +	qcom_branch_set_force_mem_core(regmap, gcc_ufs_phy_ice_core_clk, true);
> +}
> +
> 

-- 
With best wishes
Dmitry

