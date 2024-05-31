Return-Path: <devicetree+bounces-71216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7918D6139
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:04:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F01FCB24062
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D180E1581F6;
	Fri, 31 May 2024 12:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ry+sBbA2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192DD1581E6
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 12:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717157066; cv=none; b=H3Hh3r2bCHNKBeJBcbiqK0Zz+OUfEhtSSf6OVJrwMuIQyXIdM+X71uolp91Xi3NMeg1aqAKP0AeFejGZjCgyAy5JsQhftSeK3QVQcfYDRagKCtNA0sGmP1hNOVjYNWVnHew2SDBS7mQJvNo3WdFr5h0bS6tl9t6pCDDIQsKVaFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717157066; c=relaxed/simple;
	bh=6xdvJeDyYBD4qbZ8lT/zvJ7dO2l6Wggb6jIEtTTboGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sWigiUH4blcMJcZ4Ei586XFpJb8pgkUlHv84YLFj/zFJugOJgpE3W3N6MRpvt4K8FJu8Q+XQuG7Z8P8By4bIQAPYjDAWOy8HMHLGX583cu7kjYR0LzBBBAKzXz1pnXhQRpXtPZMaSvCnZ1ybZiSEHw4cRrLtjxIlKISfu76QPjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ry+sBbA2; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52b8b638437so545067e87.3
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 05:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717157063; x=1717761863; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QppKMPnoJFrrG7X3aJOQRgCs56wwZx8U2VxR/4HfLRc=;
        b=ry+sBbA2d/i3ImCnIsCZlweZQX4NnC/ijEewiklxMH4ZVFxIdYhPto/UKhaf8jHiEf
         8ifUaUoAujYmA0jj3yZhFUubWwRJh9b30rr1dxuiIJSp6tGPfLjSn7Wkkx1ukWSOU+sp
         wKyF+m4sbwmFlWquGfFptsZzOimUm48z7lmBjhacpw+8gphig76P+Q5xrzZichAHDF/t
         78NuwucbRBgHvh1vnwb/gYqUjeklq3JZPgzFIum6RIypS2sWI6WBXGFOTn1cEhYzO+zR
         QwPCHFIxJ5sZjJhbat313CliDVorGPbUPjuN5XfG4xCr7KtMn1a6duSaCJcmTCI53/Jk
         K4hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717157063; x=1717761863;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QppKMPnoJFrrG7X3aJOQRgCs56wwZx8U2VxR/4HfLRc=;
        b=s/RmmE2w7Bh/n7Cf7WzcV4p1KUBRzZQIn2ZsUIsT5Xb0lKRr4460HKlEILzBnCJSJl
         CewHN3C68VG+f3XgcFcLOYLt1GrICkw+AfcvI4Zhki5ppVY2B6V7IMRPJV8eO9GOYfSp
         OR69qhsShP2i8qoG3RN4e+DAWJYq1nAjprpEFy/i62ArojFbAQhdtoOH4fX4Cc+gURgF
         iOmjhVFKafbfI5zG39D+jFFpd95NoXBv5HG64oxiMef2VHSRA+KfXMWISQEqhwejIWIa
         fPpncqhR89gDsKhu2xe03CZMJw2eQDkIkxa6v3oPeePHJvcfFMhE5LBLcOLMO0E1zPxG
         Ucqg==
X-Forwarded-Encrypted: i=1; AJvYcCVe9AuXlmJ9FVQYmvwTFlMtRMdVrFmFHrhIfwWDvHlZ5rN2k31mVSwtmUIl0IvY+KFwA8tlwDaqnIUe3jja7WeB4EGFyawKZbKJuQ==
X-Gm-Message-State: AOJu0Yxzv0Xw16kGtkQIm87T8iAcQXbnCTLennePuqG+LEYWBzYBnsrl
	+1MYHHmC+N4CDBtVcgys3GhLFfKrP6Em9YW/in2M413TODeJg6XUEiNhYkgDJi4=
X-Google-Smtp-Source: AGHT+IHWCNuEqJi9LuYYD8GAiM8tuYHlXxxRcctEj/EVqNcTsAou3H4jkdkLfvlRb36nQ/5Wf94s+A==
X-Received: by 2002:a05:6512:3b25:b0:522:1e16:1f17 with SMTP id 2adb3069b0e04-52b8980b4damr1500989e87.65.1717157063255;
        Fri, 31 May 2024 05:04:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d75dacsm309445e87.132.2024.05.31.05.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 05:04:22 -0700 (PDT)
Date: Fri, 31 May 2024 15:04:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, quic_jkona@quicinc.com, 
	quic_imrashai@quicinc.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: qcm6490-idp: Update protected
 clocks list
Message-ID: <4dvqegoz45ct5rqknf6vgi6rvh4osaecfyp7fcrs26lcsq4npu@dwoyubuqlbss>
References: <20240531102252.26061-1-quic_tdas@quicinc.com>
 <20240531102252.26061-4-quic_tdas@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240531102252.26061-4-quic_tdas@quicinc.com>

On Fri, May 31, 2024 at 03:52:51PM +0530, Taniya Das wrote:
> Certain clocks are not accessible on QCM6490-IDP board,
> thus mark them as protected. Update the lpassaudio node to
> support the new compatible as the lpassaudio needs to support
> the reset functionality on the QCM6490 board and the rest of
> the Audio functionality would be provided from the LPASS
> firmware.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 28 +++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index a0668f767e4b..4eece564331a 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: BSD-3-Clause
>  /*
> - * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2023-2024 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  /dts-v1/;
> @@ -688,3 +688,29 @@
>  &wifi {
>  	memory-region = <&wlan_fw_mem>;
>  };
> +
> +&gcc {
> +	protected-clocks = <GCC_AGGRE_NOC_PCIE_1_AXI_CLK> ,<GCC_PCIE_1_AUX_CLK>,
> +			<GCC_PCIE_1_AUX_CLK_SRC>, <GCC_PCIE_1_CFG_AHB_CLK>,
> +			<GCC_PCIE_1_MSTR_AXI_CLK>, <GCC_PCIE_1_PHY_RCHNG_CLK_SRC>,
> +			<GCC_PCIE_1_PIPE_CLK>, <GCC_PCIE_1_PIPE_CLK_SRC>,
> +			<GCC_PCIE_1_SLV_AXI_CLK>, <GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
> +			<GCC_QSPI_CNOC_PERIPH_AHB_CLK>, <GCC_QSPI_CORE_CLK>,
> +			<GCC_QSPI_CORE_CLK_SRC>,<GCC_USB30_SEC_MASTER_CLK>,
> +			<GCC_USB30_SEC_MASTER_CLK_SRC>, <GCC_USB30_SEC_MOCK_UTMI_CLK>,
> +			<GCC_USB30_SEC_MOCK_UTMI_CLK_SRC>,
> +			<GCC_USB30_SEC_MOCK_UTMI_POSTDIV_CLK_SRC>, <GCC_USB30_SEC_SLEEP_CLK>,
> +			<GCC_USB3_SEC_PHY_AUX_CLK>, <GCC_USB3_SEC_PHY_AUX_CLK_SRC>,
> +			<GCC_USB3_SEC_PHY_COM_AUX_CLK>, <GCC_USB3_SEC_PHY_PIPE_CLK>,
> +			<GCC_USB3_SEC_PHY_PIPE_CLK_SRC>, <GCC_CFG_NOC_LPASS_CLK>,
> +			<GCC_MSS_GPLL0_MAIN_DIV_CLK_SRC>, <GCC_MSS_CFG_AHB_CLK>,
> +			<GCC_MSS_OFFLINE_AXI_CLK>, <GCC_MSS_SNOC_AXI_CLK>,
> +			<GCC_MSS_Q6_MEMNOC_AXI_CLK>, <GCC_MSS_Q6SS_BOOT_CLK_SRC>,
> +			<GCC_SEC_CTRL_CLK_SRC>, <GCC_WPSS_AHB_CLK>,
> +			<GCC_WPSS_AHB_BDG_MST_CLK>, <GCC_WPSS_RSCP_CLK>;

Is there any reason why this list is significantly larger than a list
for RB3g2 or FP5?

> +};
> +
> +&lpass_audiocc {
> +	compatible = "qcom,qcm6490-lpassaudiocc";
> +	/delete-property/ power-domains;
> +};

Separate commits, please.

> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

