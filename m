Return-Path: <devicetree+bounces-122184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E33839CF07B
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:44:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A48C428BB68
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 15:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A1791E7647;
	Fri, 15 Nov 2024 15:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m6OW/0kv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5931C1D5AA9
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 15:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731685058; cv=none; b=TEdWNP7GFHYvc63r7cMKl2WnkCn0Uq0SKU+qaB7ONpqBVI8vpiUgpV5D7N9tprWngcdid61P0IovlDSQLOCMq6JCe5sPfDiXPYWgQPfBTKuqk4QvMoGosJvMUNuRQUyjJONrf3He86xRa8VCGdfwF13HVQu4XoScE559HddXXWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731685058; c=relaxed/simple;
	bh=vAcCgRkFrxCdPgoLCIe7Aiibmfy4IcmYIK30vhEsH4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PlH7KhL/wwyf9HQ+bJJX1Bfa5qlULMewZb6suoKNqTxGGrFxlK+t15m79MlbElIppuYjGPa8ETPjKqu1+ZzNBB62KhRuMEM2BTjcIKl46dF6pUoMe/LRhbFA8jCGmJEDhu9XQsqkU9gDV33W2vU+/gbQp4qn21wIGOTh6d29Wvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m6OW/0kv; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539e8607c2aso2077453e87.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731685054; x=1732289854; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8SH/3ZBolyZIXFEQSha0OERb31i/gcHA50/NnnJeYSI=;
        b=m6OW/0kvrBp6eM6SNUoK3pfRSBKQhpgm/OF5DlAOFscvgiph/uceUVrfNXcUd31LBU
         PsLHk6LLmJKQqmMXSPzPx1D0GXletCMCEn7nkYuNA6wwLpQGnNpWTEHdBLXkiGdrB77T
         biJX+AFX3fNWQSSczAPmtIjAiCJkLD2fD3YHHxdECrkLxm5ru56zQvOZ2ZGhHRKYKxu9
         uGfwHME9axXt9iNXtHnVUKccq1OcKCmC1Cez4lJKTTveEBdZIAV1X8CX65IqZGY1bgi2
         qjMxyMqhGC/SdNmx2Jx2aCl2lAf6GrRX9mfloGijDqptS9RAB8hOE7HNa29blaRnkRKP
         0hJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731685054; x=1732289854;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8SH/3ZBolyZIXFEQSha0OERb31i/gcHA50/NnnJeYSI=;
        b=suUBQPx72VzQg1FQOobqEArh9teW9PUd4A9zG1sWMc2sx1oOQw/YWzPhk4F62nRels
         T6kiAVFWNnNoW+wbcyP5eEFhaSVc32DnxPd18JPYTBPNhTTHoV6g8+cdf1Lr8QT9eKx9
         dm7vS/ZDzzNbd+m50xpKh4gzL6C15X7FdMvC5soud4f72VV6gC1u9cIc5braq+jsupB7
         QRdx/1xSS4a4fnMUKDrq2gxNx2SAQ8ArL8ZC9ozZK0fMwe8EdaJDs7HaphmuCfADitfZ
         yLW0tmRoG47xt00Ckicd3Wj8oHk+o8PV4TQRbKywQoGur4G941xO5+s2Ts4bFVNRrGBa
         mS8w==
X-Forwarded-Encrypted: i=1; AJvYcCWiGTFhWucfBWqcu9CVJsIZ0XVa3Un1wlctz9Ccif7Z+3F1ymBELwK3NULj42Lao0IrCsjKGtu4C80V@vger.kernel.org
X-Gm-Message-State: AOJu0YwA9Lws/qqnFgQRQ7q/0S7dHXZ7YzwSE9umIGlk7h0y2UFXTCv5
	j8AKWJxjw0eHgbQmnrBKsBe/UMdYCjMxoK7v81CrB6EwuKM+vk0zIzrrg81FiMw=
X-Google-Smtp-Source: AGHT+IHNA+gg9ukmDFwb4kvQOmlZCyx6VHcFXF+GldlmS1V1Y+q5y7ieLpzqVmyXyN070y3b3DFxmw==
X-Received: by 2002:a05:6512:1192:b0:539:f554:78ac with SMTP id 2adb3069b0e04-53dab298b03mr1407532e87.9.1731685054389;
        Fri, 15 Nov 2024 07:37:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da6530f6dsm603418e87.119.2024.11.15.07.37.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 07:37:32 -0800 (PST)
Date: Fri, 15 Nov 2024 17:37:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] clk: qcom: Add TCSR clock driver for SM8750
Message-ID: <2j5yfnpus2xvwds4caiwbqyotoey2b2kce4jqaai75ekkvabeq@w3my6sbhqk2q>
References: <20241112002807.2804021-1-quic_molvera@quicinc.com>
 <20241112002807.2804021-8-quic_molvera@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241112002807.2804021-8-quic_molvera@quicinc.com>

On Mon, Nov 11, 2024 at 04:28:07PM -0800, Melody Olvera wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> The TCSR clock controller found on SM8750 provides refclks
> for PCIE, USB and UFS. Add clock driver for it.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/clk/qcom/Kconfig         |   8 ++
>  drivers/clk/qcom/Makefile        |   1 +
>  drivers/clk/qcom/tcsrcc-sm8750.c | 147 +++++++++++++++++++++++++++++++
>  3 files changed, 156 insertions(+)
>  create mode 100644 drivers/clk/qcom/tcsrcc-sm8750.c
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 26bfb607235b..2ec9be21ff67 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -1255,6 +1255,14 @@ config SM_TCSRCC_8650
>  	  Support for the TCSR clock controller on SM8650 devices.
>  	  Say Y if you want to use peripheral devices such as SD/UFS.
>  
> +config SM_TCSRCC_8750
> +	tristate "SM8750 TCSR Clock Controller"
> +	depends on ARM64 || COMPILE_TEST
> +	select QCOM_GDSC
> +	help
> +	  Support for the TCSR clock controller on SM8750 devices.
> +	  Say Y if you want to use peripheral devices such as UFS/USB/PCIe.
> +
>  config SA_VIDEOCC_8775P
>  	tristate "SA8775P Video Clock Controller"
>  	depends on ARM64 || COMPILE_TEST
> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> index 1875018d1100..28e45316627a 100644
> --- a/drivers/clk/qcom/Makefile
> +++ b/drivers/clk/qcom/Makefile
> @@ -157,6 +157,7 @@ obj-$(CONFIG_SM_GPUCC_8550) += gpucc-sm8550.o
>  obj-$(CONFIG_SM_GPUCC_8650) += gpucc-sm8650.o
>  obj-$(CONFIG_SM_TCSRCC_8550) += tcsrcc-sm8550.o
>  obj-$(CONFIG_SM_TCSRCC_8650) += tcsrcc-sm8650.o
> +obj-$(CONFIG_SM_TCSRCC_8750) += tcsrcc-sm8750.o
>  obj-$(CONFIG_SM_VIDEOCC_7150) += videocc-sm7150.o
>  obj-$(CONFIG_SM_VIDEOCC_8150) += videocc-sm8150.o
>  obj-$(CONFIG_SM_VIDEOCC_8250) += videocc-sm8250.o
> diff --git a/drivers/clk/qcom/tcsrcc-sm8750.c b/drivers/clk/qcom/tcsrcc-sm8750.c
> new file mode 100644
> index 000000000000..23417b22e6c9
> --- /dev/null
> +++ b/drivers/clk/qcom/tcsrcc-sm8750.c
> @@ -0,0 +1,147 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#include <dt-bindings/clock/qcom,sm8750-tcsr.h>
> +
> +#include "clk-branch.h"
> +#include "clk-regmap.h"
> +#include "clk-regmap-divider.h"
> +#include "clk-regmap-mux.h"
> +#include "common.h"
> +
> +enum {
> +	DT_BI_TCXO_PAD,
> +};
> +
> +static struct clk_branch tcsr_pcie_0_clkref_en = {
> +	.halt_reg = 0x0,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x0,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_pcie_0_clkref_en",
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch tcsr_ufs_clkref_en = {
> +	.halt_reg = 0x1000,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x1000,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_ufs_clkref_en",
> +			.parent_data = &(const struct clk_parent_data){
> +				.index = DT_BI_TCXO_PAD,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch tcsr_usb2_clkref_en = {
> +	.halt_reg = 0x2000,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x2000,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_usb2_clkref_en",
> +			.parent_data = &(const struct clk_parent_data){
> +				.index = DT_BI_TCXO_PAD,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch tcsr_usb3_clkref_en = {
> +	.halt_reg = 0x3000,
> +	.halt_check = BRANCH_HALT_DELAY,
> +	.clkr = {
> +		.enable_reg = 0x3000,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "tcsr_usb3_clkref_en",
> +			.parent_data = &(const struct clk_parent_data){
> +				.index = DT_BI_TCXO_PAD,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_regmap *tcsr_cc_sm8750_clocks[] = {
> +	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
> +	[TCSR_UFS_CLKREF_EN] = &tcsr_ufs_clkref_en.clkr,
> +	[TCSR_USB2_CLKREF_EN] = &tcsr_usb2_clkref_en.clkr,
> +	[TCSR_USB3_CLKREF_EN] = &tcsr_usb3_clkref_en.clkr,
> +};
> +
> +static const struct regmap_config tcsr_cc_sm8750_regmap_config = {
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.max_register = 0x3000,
> +	.fast_io = true,
> +};
> +
> +static const struct qcom_cc_desc tcsr_cc_sm8750_desc = {
> +	.config = &tcsr_cc_sm8750_regmap_config,
> +	.clks = tcsr_cc_sm8750_clocks,
> +	.num_clks = ARRAY_SIZE(tcsr_cc_sm8750_clocks),
> +};
> +
> +static const struct of_device_id tcsr_cc_sm8750_match_table[] = {
> +	{ .compatible = "qcom,sm8750-tcsr" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, tcsr_cc_sm8750_match_table);
> +
> +static int tcsr_cc_sm8750_probe(struct platform_device *pdev)
> +{
> +	struct regmap *regmap;
> +
> +	regmap = qcom_cc_map(pdev, &tcsr_cc_sm8750_desc);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	return qcom_cc_really_probe(&pdev->dev, &tcsr_cc_sm8750_desc, regmap);

Nit: use qcom_cc_probe() instead.

Other than that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +}
> +
> +static struct platform_driver tcsr_cc_sm8750_driver = {
> +	.probe = tcsr_cc_sm8750_probe,
> +	.driver = {
> +		.name = "tcsr_cc-sm8750",
> +		.of_match_table = tcsr_cc_sm8750_match_table,
> +	},
> +};
> +
> +static int __init tcsr_cc_sm8750_init(void)
> +{
> +	return platform_driver_register(&tcsr_cc_sm8750_driver);
> +}
> +subsys_initcall(tcsr_cc_sm8750_init);
> +
> +static void __exit tcsr_cc_sm8750_exit(void)
> +{
> +	platform_driver_unregister(&tcsr_cc_sm8750_driver);
> +}
> +module_exit(tcsr_cc_sm8750_exit);
> +
> +MODULE_DESCRIPTION("QTI TCSR_CC SM8750 Driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

