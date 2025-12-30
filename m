Return-Path: <devicetree+bounces-250611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B5BCEA6CC
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:09:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 829573025F9F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7797B32C933;
	Tue, 30 Dec 2025 18:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q8/XcPqu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DNADp7EC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0B723F417
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:09:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118173; cv=none; b=UYGiWfRpys6YauSc6+nRxbqB/83toMzZK4MBiSFGY8JogcKe32dbJwanO1h1BHdOAFlS4V1D1kHFNkMj6CIGsqp8uqOWv03EZmlsGvc+7ET7uCAuTsnm4CERdcwsM+FBnfHlQmH0ibaAXSyi9SknDRwxlJ++akCRi9VCeyTv934=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118173; c=relaxed/simple;
	bh=JEoF9yoRtjhUDYAArjfrNddZjCS5jSY0EF4keJnAqko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uIMNL5CnDLeY/QNnnAnDWxVsCe6zxyglb7PjrqOR/3TSTaJS/08hoYsun7QHk1boYDKd++Mk7e5vdkOrSBxl+zpcBDA+XFtHnaRJJLNZKlh2dZWJ7TIVWojhrdh85hfYcxTlAVtCOOXxui0ss0CzTkOCjwDT6cWzRsuFqDMq8dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q8/XcPqu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DNADp7EC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU9EOmG1751746
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:09:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9OBPcJEGcyXj0u48Ng5ChP14
	fU5Jw6ppMgNLNgQ0MHo=; b=Q8/XcPquRGxft8B0WSkS8rm132V4Vnuq7Mo2t1rh
	UGUQTGZFL6IuFp0o9SpHPG7Y0xsI7MKSYPU/PxQOMkE55OUwv+7SA6oN5zVvA3re
	t1qTmWPqmlCZrMt+6yCxaK1NhV2Y5mmJSsHmVraOKTQWKm6PRcgWnurQEYQU94pO
	/qN7WiTu0T79RVA+jfOaB3AKOUsG5LvsWW9v1XrLa/dEx1TUny/mRHV9WRPW/DzY
	z7vvekoV7YoqX6Q+M9oeDM2M/t3Jwk6CenOLMtL9TykrzC37NFN87yn+1bFjG1Hf
	lvxBZdLYoy4Vm1vsqP1kktWZ5Hmk5e4pYjmit8tNiwICTA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0sgtkke-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:09:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a2e9e09e6so382418406d6.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767118169; x=1767722969; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9OBPcJEGcyXj0u48Ng5ChP14fU5Jw6ppMgNLNgQ0MHo=;
        b=DNADp7ECaUcdw7P1K/wGKZAFMrJbox0ptQtDOj1F5tzHx4zxp5S7ttdGNQzR+wXzsU
         KtcWpneFAjBGmNmlwJLoKRVbWj7HYg9LlbcUSiNJ42pTwF21zA0UcMDMaN+2CSGNCXbh
         +qZnFHUxsuq/0UJ01RBj8aSwM9Vm0Jt+6pZp/i6V7xexsJsRKiYPYwiWIDzEcxiRLutm
         3p9W/3pmVM+z5rPk4CTNVfauqJuihUMy/asOpapVedTolUJAopFwqsFXukzj2UBzpTap
         mbzS1B6IW6nEN01yBMFCXe4etTfSL0AYWsBJfVSEaU9grNZ0Nid2HsKrMS8UXkAKrJRN
         85Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767118169; x=1767722969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9OBPcJEGcyXj0u48Ng5ChP14fU5Jw6ppMgNLNgQ0MHo=;
        b=jiBdI5RyacmQ9J6TPZqr5HJb/X/3XCnBHKfA1oaz8P8IeJhwkiO05oLjNJ02farLxe
         BeKWg1wWQs2pyBkatrLr3FDS4kgCegZ+cvWdEf86GrR3wKarYIRseDzpHQr274RwsQpP
         xbzmw0IS4mEv1B/fgKleb1XSBNvmcSBm6/2ZF+zpXq3UA2MXRlCioxsmfnYNJlpzytjD
         Sy0k2hq/iLsRfxQt7guKOhn43ekgbRSjQFfnj4GpW6djPQQUN7MaOX/qfoEigEnoBOyf
         tN/c6Ruhl57K1T1l3ba8U9eCEb96mnrdLEHTNgYgLkYDZWFY384D/wYwNUTIkLzgWws2
         Cofw==
X-Forwarded-Encrypted: i=1; AJvYcCU/QyE2BhI/IvuX8VGpT1l4i7/FEgFTZ8Jv3g6emeDYPGx7W2/3hGQCGN3YVIHzd9X2XF6yKH/v5OQg@vger.kernel.org
X-Gm-Message-State: AOJu0YwGddYObh8KHGbfukNIaAU0Equj5TUzV4FIIXBff8DHbftjFaWQ
	RoX+t915A7Odnvs9Y850Rs1jyNctUgXeDxyyVLM7E6NC1TBo+GS9tIqJ8zcWO1s4m23eNpXq5Zj
	b0Iq09o3tR3yq6SkLnCF+AVUCTH+MkTNkQWBk0SkPrhjKWI+xizPeaYZFwK8S3P2PSlsIPAmO
X-Gm-Gg: AY/fxX4MWCRx3UXQdinTzejHZ0LkHI1aNzklFO9OVH4odITuQNwlE4qVS6AdbVVmVkS
	jVVU2j7neC7AmvnZx0Bs1c9SIHdlZ4AXCT3YTqVPv+hm++pYaJF5EoBmlCnMbWEDfDXBC8xsGXe
	vWHu9MkTYI423+c+CPzmBeqPJoDaNsz9hAH5Z86UCjeLLRu45AIihpG1u9CogalWyX5KqnP0Fkh
	c5K5kJnGHyoX3NROI3eHiSMqPqayocIu7p6vyhLWELVXbTdjEdDj1PVIf+Wv31M6UKUNoGd9PTH
	7Bbobv9Ndn1zNbArN9tbO7awkOqZzx6kQvcuZVivAv9LYFz91HM6N+YYPebLciyk1apAEUxGY7G
	SpZlUL3dnR9NUaBdIwBT6Gb/QM5Uv8gUZF+rGemGTzEQUpYIAd8gMckqRvoV7eu9FlbVIDXmsjv
	Cc19zCHKTRAaV+LbHwrCgwrYk=
X-Received: by 2002:ad4:57b3:0:b0:884:6f86:e07d with SMTP id 6a1803df08f44-88d81c499e4mr386668346d6.15.1767118168671;
        Tue, 30 Dec 2025 10:09:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFo0Wgnmpxf6UQfzM4eLquswAjbuVIhi9lzyI9nd6FOYgyIWbZwPfkiYqKRs1Mb2mGyT8iQ0g==
X-Received: by 2002:ad4:57b3:0:b0:884:6f86:e07d with SMTP id 6a1803df08f44-88d81c499e4mr386667846d6.15.1767118168200;
        Tue, 30 Dec 2025 10:09:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38122680689sm89404881fa.44.2025.12.30.10.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:09:27 -0800 (PST)
Date: Tue, 30 Dec 2025 20:09:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] clk: qcom: gcc-x1e80100: Add missing UFS symbol mux
 clocks
Message-ID: <o3jixtcjqbk3i756vy7umb45euu5ofpg4yv2za452xcje5shfa@qgzqnqslxctj>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
 <20251230-ufs_symbol_clk-v1-2-47d46b24c087@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230-ufs_symbol_clk-v1-2-47d46b24c087@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE2MyBTYWx0ZWRfX7LpIvKf+bFvP
 UXU3tFMAQD/M0E5MzgxayUxFw6lLekUw2qs5Gf4/saCoAXW4kINq9MtUwpWYuVr8CpFdDTJJ3w8
 RetbV7MitsHCwjMnZ3BeJsnFm+90mRfZ9YNDJ+Q1RqkxIUY0wibdUs4N0utQcJqBOX6i8qK8vsh
 rKqv41UzTBWYSs5+aD52+90cbahhw+OP8YOEIlLsU+IWkeIDNkjad7sPc2qX91GoEezizwm3SKw
 uN4b07ToN2bNq9vFstH/crJqAFizNfz9F1txcjKxgN/3GFe5j1Fw+g1LlKK6wdzIAno35a41foy
 7JnIsTFjqj39qTJs8JyDp/CqFPlC3Koquq26YfLJmUzhDH42Yw6lfuvfseIYSP2BhjMgI8IF6ME
 Rw0lD/KzAq1YrfGy7CRvB3+wJ1wI7EQ7sZnZoqXl4gDQKsp3xprFFDK7mdnNjqUFxiKmtKYi64o
 BzSp9wwrZWyGfI6prGA==
X-Proofpoint-GUID: M7iQzngUVrjp4bvVI37PAzNHzaYZIuI3
X-Proofpoint-ORIG-GUID: M7iQzngUVrjp4bvVI37PAzNHzaYZIuI3
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=69541559 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=lVaBrOMFWp81B8hMq7MA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300163

On Tue, Dec 30, 2025 at 11:08:35PM +0530, Taniya Das wrote:
> The UFS symbol RX/TX mux clocks were not defined previously.
> Add these mux clocks so that clock rate propagation reaches
> the muxes correctly.
> 
> Fixes: 161b7c401f4b ("clk: qcom: Add Global Clock controller (GCC) driver for X1E80100")
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/gcc-x1e80100.c | 102 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 99 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/qcom/gcc-x1e80100.c b/drivers/clk/qcom/gcc-x1e80100.c
> index e46e65e631513e315de2f663f3dab73e1eb70604..c8fc9e6b1ac97b13f84753ac7f76e23df071c2e0 100644
> --- a/drivers/clk/qcom/gcc-x1e80100.c
> +++ b/drivers/clk/qcom/gcc-x1e80100.c
> @@ -59,6 +59,9 @@ enum {
>  	DT_USB4_1_PHY_GCC_USB4RTR_MAX_PIPE_CLK,
>  	DT_USB4_2_PHY_GCC_USB4_PCIE_PIPE_CLK,
>  	DT_USB4_2_PHY_GCC_USB4RTR_MAX_PIPE_CLK,
> +	DT_UFS_PHY_RX_SYMBOL_0_CLK,
> +	DT_UFS_PHY_RX_SYMBOL_1_CLK,
> +	DT_UFS_PHY_TX_SYMBOL_0_CLK,
>  };
>  
>  enum {
> @@ -103,6 +106,9 @@ enum {
>  	P_USB4_1_PHY_GCC_USB4RTR_MAX_PIPE_CLK,
>  	P_USB4_2_PHY_GCC_USB4_PCIE_PIPE_CLK,
>  	P_USB4_2_PHY_GCC_USB4RTR_MAX_PIPE_CLK,
> +	P_UFS_PHY_RX_SYMBOL_0_CLK,
> +	P_UFS_PHY_RX_SYMBOL_1_CLK,
> +	P_UFS_PHY_TX_SYMBOL_0_CLK,
>  };
>  
>  static struct clk_alpha_pll gcc_gpll0 = {
> @@ -482,6 +488,78 @@ static const struct clk_parent_data gcc_parent_data_33[] = {
>  	{ .index = DT_USB4_2_PHY_GCC_USB4_PCIE_PIPE_CLK },
>  };
>  
> +static const struct parent_map gcc_parent_map_37[] = {
> +	{ P_UFS_PHY_RX_SYMBOL_0_CLK, 0 },
> +	{ P_BI_TCXO, 2 },
> +};
> +
> +static const struct clk_parent_data gcc_parent_data_37[] = {
> +	{ .index = DT_UFS_PHY_RX_SYMBOL_0_CLK },
> +	{ .index = DT_BI_TCXO },
> +};
> +
> +static const struct parent_map gcc_parent_map_38[] = {
> +	{ P_UFS_PHY_RX_SYMBOL_1_CLK, 0 },
> +	{ P_BI_TCXO, 2 },
> +};
> +
> +static const struct clk_parent_data gcc_parent_data_38[] = {
> +	{ .index = DT_UFS_PHY_RX_SYMBOL_1_CLK },
> +	{ .index = DT_BI_TCXO },
> +};
> +
> +static const struct parent_map gcc_parent_map_39[] = {
> +	{ P_UFS_PHY_TX_SYMBOL_0_CLK, 0 },
> +	{ P_BI_TCXO, 2 },
> +};
> +
> +static const struct clk_parent_data gcc_parent_data_39[] = {
> +	{ .index = DT_UFS_PHY_TX_SYMBOL_0_CLK },
> +	{ .index = DT_BI_TCXO },
> +};

And all of these parent maps and parent data are unused.

> +
> +static struct clk_regmap_phy_mux gcc_ufs_phy_rx_symbol_0_clk_src = {
> +	.reg = 0x77064,
> +	.clkr = {
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "gcc_ufs_phy_rx_symbol_0_clk_src",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.index = DT_UFS_PHY_RX_SYMBOL_0_CLK,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_regmap_phy_mux_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_regmap_phy_mux gcc_ufs_phy_rx_symbol_1_clk_src = {
> +	.reg = 0x770e0,
> +	.clkr = {
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "gcc_ufs_phy_rx_symbol_1_clk_src",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.index = DT_UFS_PHY_RX_SYMBOL_1_CLK,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_regmap_phy_mux_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_regmap_phy_mux gcc_ufs_phy_tx_symbol_0_clk_src = {
> +	.reg = 0x77054,
> +	.clkr = {
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "gcc_ufs_phy_tx_symbol_0_clk_src",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.index = DT_UFS_PHY_TX_SYMBOL_0_CLK,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_regmap_phy_mux_ops,
> +		},
> +	},
> +};
> +
>  static struct clk_regmap_phy_mux gcc_usb4_0_phy_dp0_clk_src = {
>  	.reg = 0x9f06c,
>  	.clkr = {
> @@ -5148,12 +5226,17 @@ static struct clk_branch gcc_ufs_phy_phy_aux_clk = {
>  
>  static struct clk_branch gcc_ufs_phy_rx_symbol_0_clk = {
>  	.halt_reg = 0x7702c,
> -	.halt_check = BRANCH_HALT,
> +	.halt_check = BRANCH_HALT_DELAY,
>  	.clkr = {
>  		.enable_reg = 0x7702c,
>  		.enable_mask = BIT(0),
>  		.hw.init = &(const struct clk_init_data) {
>  			.name = "gcc_ufs_phy_rx_symbol_0_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&gcc_ufs_phy_rx_symbol_0_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
>  			.ops = &clk_branch2_ops,
>  		},
>  	},
> @@ -5161,12 +5244,17 @@ static struct clk_branch gcc_ufs_phy_rx_symbol_0_clk = {
>  
>  static struct clk_branch gcc_ufs_phy_rx_symbol_1_clk = {
>  	.halt_reg = 0x770cc,
> -	.halt_check = BRANCH_HALT,
> +	.halt_check = BRANCH_HALT_DELAY,
>  	.clkr = {
>  		.enable_reg = 0x770cc,
>  		.enable_mask = BIT(0),
>  		.hw.init = &(const struct clk_init_data) {
>  			.name = "gcc_ufs_phy_rx_symbol_1_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&gcc_ufs_phy_rx_symbol_1_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
>  			.ops = &clk_branch2_ops,
>  		},
>  	},
> @@ -5174,12 +5262,17 @@ static struct clk_branch gcc_ufs_phy_rx_symbol_1_clk = {
>  
>  static struct clk_branch gcc_ufs_phy_tx_symbol_0_clk = {
>  	.halt_reg = 0x77028,
> -	.halt_check = BRANCH_HALT,
> +	.halt_check = BRANCH_HALT_DELAY,
>  	.clkr = {
>  		.enable_reg = 0x77028,
>  		.enable_mask = BIT(0),
>  		.hw.init = &(const struct clk_init_data) {
>  			.name = "gcc_ufs_phy_tx_symbol_0_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&gcc_ufs_phy_tx_symbol_0_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
>  			.ops = &clk_branch2_ops,
>  		},
>  	},
> @@ -7180,6 +7273,9 @@ static struct clk_regmap *gcc_x1e80100_clocks[] = {
>  	[GCC_USB4_2_TMU_CLK_SRC] = &gcc_usb4_2_tmu_clk_src.clkr,
>  	[GCC_VIDEO_AXI0_CLK] = &gcc_video_axi0_clk.clkr,
>  	[GCC_VIDEO_AXI1_CLK] = &gcc_video_axi1_clk.clkr,
> +	[GCC_UFS_PHY_RX_SYMBOL_0_CLK_SRC] = &gcc_ufs_phy_rx_symbol_0_clk_src.clkr,
> +	[GCC_UFS_PHY_RX_SYMBOL_1_CLK_SRC] = &gcc_ufs_phy_rx_symbol_1_clk_src.clkr,
> +	[GCC_UFS_PHY_TX_SYMBOL_0_CLK_SRC] = &gcc_ufs_phy_tx_symbol_0_clk_src.clkr,
>  };
>  
>  static struct gdsc *gcc_x1e80100_gdscs[] = {
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

