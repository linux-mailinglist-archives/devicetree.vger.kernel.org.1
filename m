Return-Path: <devicetree+bounces-7004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBF87BE83C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:33:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC0C91C20A17
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 17:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C285F38DCC;
	Mon,  9 Oct 2023 17:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pE/Dt50K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4EDE36B06
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 17:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08B3CC433CA;
	Mon,  9 Oct 2023 17:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696872797;
	bh=1Xy85/xXimMqCtgvlZEslnktYuoZiVcVI5H+ZlnTwFw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pE/Dt50KFxYzY2M4D8PTeTLL8C9HZhH4LuIDFsGzo+KG4Ao6kQpTH/zN87uDOUGLN
	 kIZ2K/iD8wLc4BHX0noAgRJdS3oJ/Eqth5Da6Aww6yufEhiyWqWJM5yOzjDVfhdF7X
	 TATNsb92bYdrvFs37C+96SkjCC4N+kKWOZFeChpU+lfetgfwGrUnHAfkIjUuy8AVzQ
	 4RZwLX4TqH/5YsvFjm6xnwdpI9u72yf8v15ZTP2/+DJdvf7nJTe+0mMWJpNavHv1v8
	 eqo715BofvZAZh7DIZVvhfXcSpQfD40fCKSYrm1h3iO4hUPacU3VcK3SY50FQcZdSw
	 6zlCa5dLYch0g==
Date: Mon, 9 Oct 2023 23:02:59 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	p.zabel@pengutronix.de, quic_srichara@quicinc.com,
	quic_varada@quicinc.com, quic_ipkumar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, Anusha Rao <quic_anusha@quicinc.com>,
	Devi Priya <quic_devipriy@quicinc.com>
Subject: Re: [PATCH 4/6] PCI: qcom: Add support for IPQ5018
Message-ID: <20231009173259.GC31623@thinkpad>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-5-quic_nsekar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231003120846.28626-5-quic_nsekar@quicinc.com>

On Tue, Oct 03, 2023 at 05:38:44PM +0530, Nitheesh Sekar wrote:
> Added a new compatible 'qcom,pcie-ipq5018' and modified
> get_resources of 'ops 2_9_0' to get the clocks from the
> device-tree.
> 

As per Documentation/process/submitting-patches.rst:

Describe your changes in imperative mood, e.g. "make xyzzy do frotz"
instead of "[This patch] makes xyzzy do frotz" or "[I] changed xyzzy
to do frotz", as if you are giving orders to the codebase to change
its behaviour.

Also, please elaborate your change in a detailed manner. For instance, saying
that you modified "get_resources of 'ops 2_9_0' to get the clocks from the
devicetree" is not sufficient since all clocks are being parsed based on the
devicetree info only.

- Mani

> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Co-developed-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 22 ++++++++--------------
>  1 file changed, 8 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index e2f29404c84e..bb0717190920 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -197,10 +197,10 @@ struct qcom_pcie_resources_2_7_0 {
>  	struct reset_control *rst;
>  };
>  
> -#define QCOM_PCIE_2_9_0_MAX_CLOCKS		5
>  struct qcom_pcie_resources_2_9_0 {
> -	struct clk_bulk_data clks[QCOM_PCIE_2_9_0_MAX_CLOCKS];
> +	struct clk_bulk_data *clks;
>  	struct reset_control *rst;
> +	int num_clks;
>  };
>  
>  union qcom_pcie_resources {
> @@ -1048,17 +1048,10 @@ static int qcom_pcie_get_resources_2_9_0(struct qcom_pcie *pcie)
>  	struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
>  	struct dw_pcie *pci = pcie->pci;
>  	struct device *dev = pci->dev;
> -	int ret;
>  
> -	res->clks[0].id = "iface";
> -	res->clks[1].id = "axi_m";
> -	res->clks[2].id = "axi_s";
> -	res->clks[3].id = "axi_bridge";
> -	res->clks[4].id = "rchng";
> -
> -	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(res->clks), res->clks);
> -	if (ret < 0)
> -		return ret;
> +	res->num_clks = devm_clk_bulk_get_all(dev, &res->clks);
> +	if (res->num_clks < 0)
> +		return res->num_clks;
>  
>  	res->rst = devm_reset_control_array_get_exclusive(dev);
>  	if (IS_ERR(res->rst))
> @@ -1071,7 +1064,7 @@ static void qcom_pcie_deinit_2_9_0(struct qcom_pcie *pcie)
>  {
>  	struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
>  
> -	clk_bulk_disable_unprepare(ARRAY_SIZE(res->clks), res->clks);
> +	clk_bulk_disable_unprepare(res->num_clks, res->clks);
>  }
>  
>  static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
> @@ -1100,7 +1093,7 @@ static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
>  
>  	usleep_range(2000, 2500);
>  
> -	return clk_bulk_prepare_enable(ARRAY_SIZE(res->clks), res->clks);
> +	return clk_bulk_prepare_enable(res->num_clks, res->clks);
>  }
>  
>  static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
> @@ -1605,6 +1598,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
>  	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
>  	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
> +	{ .compatible = "qcom,pcie-ipq5018", .data = &cfg_2_9_0 },
>  	{ .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
>  	{ .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
>  	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
> -- 
> 2.17.1
> 

-- 
மணிவண்ணன் சதாசிவம்

