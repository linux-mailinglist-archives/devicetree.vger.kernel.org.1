Return-Path: <devicetree+bounces-247780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D59E6CCB6A8
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 11:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8833C3058C1A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 654E0333438;
	Thu, 18 Dec 2025 10:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T89R5jNM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MzXrscO/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE8E332EBA
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766054044; cv=none; b=Udh8ZJOLToXcCAehORzaqAWwv447cGBFSxdR5gXcHU5a5c840YL9QTFGuvh12/hKA1QYesyNxciFQrLkV+kuoEru9XesVjg3CZNRVEaBIhTrDzZg47i8tXbfqqqX7dukqq6155utRS5CYiaTZgarEPBnZAvNIPY5HwWWfdSJIw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766054044; c=relaxed/simple;
	bh=NG52QDiKOY7Smsj4HhBcZZqJhOf/QkOSZJtBhjXNm34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U/diNo/Hg2Bf09o1+U3yhpFxm+lMV9bcjFNxJOx2xhLH45d08SYYUOcV/6UDK/nUACAX/f1mGwt8T701YoGEaQQVYdiYwaR0UpbAZyOsX1FfcCc+oxCNDYnlkxfYKTnXIY3OBDv/GBvPhySYwFDyQRMlMpSf+VC0bdyK9lc8W+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T89R5jNM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MzXrscO/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI96a04527962
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:34:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9bDaeSuiKHsc9nRSd3ulKaYx
	8HYrMwIBi3v41S+sGr0=; b=T89R5jNMQdt5mvmSFiLZjWqc6no5j0zxbFfSN89t
	gf5kZYcg7xPGmHnI041kKccEJQQGhDvmYSWtrUmWFWwR8jEf01gRgvedFkKfJ0r8
	O91U3ovj7AKm7/35kb9/a3M6d8SMed7aIVJPNTcFejYwOjSrIJyi0CHQwN716OIG
	0JlbdpAQVsMYsYF7QlwusiJcMFZUC6tnH+fYnSoxBu7I/G98RVSPGvvpd8bfy7Zm
	x/ctCvAIW8p4be8+I7z8CPlUgPpFqQAaSJx7ljDQK/mqW1BuleU9thg5YTbfwn7P
	SfMYg/QRgqq+drjQ9mbqeFZOeDaNkZPXrwUso+ZgJT9FoQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43mb28px-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:34:00 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b471737e673so646123a12.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 02:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766054039; x=1766658839; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9bDaeSuiKHsc9nRSd3ulKaYx8HYrMwIBi3v41S+sGr0=;
        b=MzXrscO/LIpfCsGFa4diJo7ZOPx/XK/Vr+Av2ng98zw0whTqXSFekRCTrqQEhgRtPb
         KIVSXl0gfanaDLX6yhFE7hNuQlN2VcvteobDEGjx2tiqLlT13W4mHxCR9wHNl7e6xTbc
         cK9NKO2gMXBzy/iUGpu25ZVmlHZ2dff/IgUHYmVGKzpGhbmK+YfM6IQAL//lwQadQfzo
         bixkM1dpjGgQ0AFabveqo8dloz+WlO8lwlFtIVXiqVFC075CM6fIaL0tx+Znq1G9peEH
         mEv1Gv8m8Dg9egqXd1uEsdLa40wEy9X1CqTLpI1maYoK9XZiQQZFUKs0Ff6lEewrjSSg
         eD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766054039; x=1766658839;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9bDaeSuiKHsc9nRSd3ulKaYx8HYrMwIBi3v41S+sGr0=;
        b=kPEPWSvaTi/JjU2NzSpMUay6NTR5+8wm/piPgh1G7J81Fsmoke3ax04EBedDaJs/z0
         d+rI/mIxoh2HJ1F7Yve3w7JklYzHcaeRF14ZedvtR4krFturk53NjuVAOjCurrM/fuMx
         pjC31NeuTvtBZv+wqIj0Za1L/vjoZbPpKX+h9H4J8VZ1jedig4PPI7uIhzhCXXiFBAzK
         6o7yf6qiHJDY0CDT/Kw6Sks4EUsJSU1dgyGxfyXwnn0yL8j22xJSlEM5gRexvuRMJ3a4
         bQ6JXM0DZgZ0Ke0MYe3yiQobP3D6DNlBdik9+KUiCWwkL7NKIJst+KNMvcRsMygor6rj
         CeYw==
X-Forwarded-Encrypted: i=1; AJvYcCV7/0NYxh0gFcuBHlNtWDTJacdIokNRt0BOimpSbYBVCWTmxsZlQLB1PNDRPdeCzvLjjqNglaz5hVcx@vger.kernel.org
X-Gm-Message-State: AOJu0Yydxd6/OPVEqj+NUveAUTC1LQocH/KJDE5D4HKZ//BH/FdZZFTu
	CQQotatPqQsGQ7BR4F0dn+j254d4cO3ISYjjg2vkR/nUOxatZIYx4Od37hOsShvaVneNV3wik5w
	prOUSGIk8gqzNu3st2U0sOLh8SzzlGjGBYozqKitJcBqDFyPjFZK5T+ROHkKWkpqF
X-Gm-Gg: AY/fxX7+OJ97ut/DPZO/EAOCVANXLJL4bvc2UC9VEhu4YDrBnnsZpw2LNa0BbmVw3aP
	xQa+JslKHMdIshwU9CjsHgiCTgGUi0JErmOJ6gLtS1mhjv+BrzkR2rg7hwAxxh9XigFBgmwG332
	EZzmiF/4PKp9oHrfJWs7MWHLNQfrq8Vz0UiYWx2lqvh8LUiL0kz0AT0iIhORNyub5B+DvC5dQZY
	p7eBJstVOSmtdUIp+3SX73+JsuHw5EPwmP7ZOwoiSC8XZYjeAsnznsqMHWtiqkY8NcQbTwvwexC
	ayOeQP7EMR6yNSWFPj0p4AHxBxp/e2DGsYrYCRkw6xZt/dOfX51bCGz2VK47Xo4RT9sfp1ldvTD
	0P96SF8B7XfKLjbK0W6AO5YeVf92C7f/0dFWBlGUJj5TKn04buOjxU/mA
X-Received: by 2002:a05:7023:d09:b0:11a:4016:4491 with SMTP id a92af1059eb24-11f34bfaf47mr17938619c88.24.1766054038466;
        Thu, 18 Dec 2025 02:33:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtsmC+8Y6kIRD08PExMuJsGHMbCc85avH3aagTws/HgVBWOYEiS919t5nlwwIBWvwodtelSQ==
X-Received: by 2002:a05:7023:d09:b0:11a:4016:4491 with SMTP id a92af1059eb24-11f34bfaf47mr17938593c88.24.1766054037883;
        Thu, 18 Dec 2025 02:33:57 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12061f473acsm6200226c88.3.2025.12.18.02.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 02:33:57 -0800 (PST)
Date: Thu, 18 Dec 2025 02:33:55 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
Message-ID: <aUPYk6VuFUFrtUDI@hu-qianyu-lv.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
 <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
 <mudq7gmqs62osuarvflmemt2a2gnuloywabtr4w5oyyddp4b7v@eynaurtfrnyt>
 <aUDywpWf+gpEH4Uw@hu-qianyu-lv.qualcomm.com>
 <ulsst7k4meqq5psv577pqapnsrehvvpk3oijp5usxtxdwoxunb@6mxjmpigkwk7>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ulsst7k4meqq5psv577pqapnsrehvvpk3oijp5usxtxdwoxunb@6mxjmpigkwk7>
X-Proofpoint-ORIG-GUID: JcWMR_Ga3Ns8fmVSX7AUFJGscMFJ9Acm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA4NiBTYWx0ZWRfXzwhp7FjwkV32
 Pz9vEcRJgKcCAXGPZclbmzXgpE3CzSosv595+Fp+fvjjNLVIlx998sj3OhDSekA3IAZVaV/7jUu
 clIOBfQowJU44H9ImiURnMBfse54Zt7SyDY+GJL2GalhOXKSC5mcS2m5zutOrMdAN8heg7qQkCk
 Cz0nRNwa4XpWXUJTS+v1v3XbjiDpAiHKQfia/2lgrNmJZDwUZS2UBGtSF85ctkTXs1xBocaAOCt
 okOTxGgqcEmFcizvPhjvsYLLjJlInE0pekP54GqXpo+LYwG4Arf6jl6628kTloXKd8Hn8cyFhG+
 X1Kh82qQXy89H1YEI6uuh+MvqBwIuyAI14InID6sFzQmY9FWHc70ANfBtiB+H/tPjJhg4a8fL3j
 wx1/+j/Xmw6psnrJGjQVhkfN0euPjA==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=6943d898 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=CTyzjmmZ7-0hRA9u8pQA:9 a=CjuIK1q_8ugA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=1CNFftbPRP8L7MoqJWF3:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: JcWMR_Ga3Ns8fmVSX7AUFJGscMFJ9Acm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180086

On Thu, Dec 18, 2025 at 03:26:26AM +0200, Dmitry Baryshkov wrote:
> On Mon, Dec 15, 2025 at 09:48:50PM -0800, Qiang Yu wrote:
> > On Wed, Dec 10, 2025 at 03:51:15AM +0200, Dmitry Baryshkov wrote:
> > > On Mon, Nov 24, 2025 at 02:24:38AM -0800, Qiang Yu wrote:
> > > > Add QMP PCIe PHY support for the Kaanapali platform.
> > > > 
> > > > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > > > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > > > Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
> > > >  1 file changed, 194 insertions(+)
> > > > 
> > > > @@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
> > > >  	.ln_shrd	= 0x8000,
> > > >  };
> > > >  
> > > > +static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
> > > 
> > > Is it really 8.0 or 8.20?
> > 
> > I double confirmed the version, it is really 8.0.
> 
> This is really strange. The SERDES offset not equal to 0, te
> PHYSTATUS_4_20 bit instead of PHYSTATUS -- all of that has always been a
> characteristic of N.20 PHYs.

Yeah, seems your theroy is correct on previous target such as sm8550 and
sm8450. But for kaanapali, the fact is the version is 8.0, SERDES offset
is 0x1000 and the status bit is bit 7.

We can also cross check the status bit with downstream devicetree:
93 		qcom,phy-status-bit = <7>;

- Qiang Yu
> 
> > 
> > - Qiang Yu
> > > 
> > > > +	.serdes		= 0x1000,
> > > > +	.pcs		= 0x1400,
> > > > +	.pcs_misc	= 0x1800,
> > > > +	.tx		= 0x0000,
> > > > +	.rx		= 0x0200,
> > > > +	.tx2		= 0x0800,
> > > > +	.rx2		= 0x0a00,
> > > > +};
> > > > +
> > > >  static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
> > > >  	.serdes     = 0x8000,
> > > >  	.pcs        = 0x9000,
> > > > @@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
> > > >  	.phy_status             = PHYSTATUS_4_20,
> > > >  };
> > > >  
> > > > +static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
> > > > +	.lanes = 2,
> > > > +
> > > > +	.offsets		= &qmp_pcie_offsets_v8_0,
> > > > +
> > > > +	.tbls = {
> > > > +		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
> > > > +		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
> > > > +		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
> > > > +		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
> > > > +		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
> > > > +		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
> > > > +		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
> > > > +		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
> > > > +		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
> > > > +		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
> > > > +	},
> > > > +
> > > > +	.reset_list		= sdm845_pciephy_reset_l,
> > > > +	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
> > > > +	.vreg_list		= qmp_phy_vreg_l,
> > > > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > > > +	.regs			= pciephy_v8_regs_layout,
> > > > +
> > > > +	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
> > > > +	.phy_status		= PHYSTATUS_4_20,
> > > > +};
> > > > +
> > > >  static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
> > > >  	.lanes = 4,
> > > >  
> > > > @@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
> > > >  	}, {
> > > >  		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
> > > >  		.data = &ipq9574_gen3x2_pciephy_cfg,
> > > > +	}, {
> > > > +		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
> > > > +		.data = &qmp_v8_gen3x2_pciephy_cfg,
> > > >  	}, {
> > > >  		.compatible = "qcom,msm8998-qmp-pcie-phy",
> > > >  		.data = &msm8998_pciephy_cfg,
> > > > 
> > > > -- 
> > > > 2.34.1
> > > > 
> > > > 
> > > > -- 
> > > > linux-phy mailing list
> > > > linux-phy@lists.infradead.org
> > > > https://lists.infradead.org/mailman/listinfo/linux-phy
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry
> > 
> > -- 
> > linux-phy mailing list
> > linux-phy@lists.infradead.org
> > https://lists.infradead.org/mailman/listinfo/linux-phy
> 
> -- 
> With best wishes
> Dmitry

