Return-Path: <devicetree+bounces-69867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4ED8D1CDD
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 15:24:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68B63284E8C
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:24:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193AA16F8F4;
	Tue, 28 May 2024 13:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AUoaSrND"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588CD16F85F
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716902615; cv=none; b=oJ0DKzlpcq/ZroLpqvAXlO0vXL13NkmGRAgD/ftCnRZYuHsve7KiZpko8cObDdMxZh2zCB6omY9++uZgGrCvHxMn/BPrjelExT0jfZT1gsjFG+0V8NPfn/vJ/UIS4voOnhSoD2CJf0BqJz485wv6Evq6k9iDcCSyXbEQdwy9Aq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716902615; c=relaxed/simple;
	bh=eWv5JwR7K1Qxq1I3dmUUg+Jdv1UMh0zhiDtqyF8rVtQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SJ8eoPryJrB4nNrf7K2WFDnJyQSJjb0VImMMP3wYDTh9xBDc+5EDzbEZD+GGphMpkfua2JkMnLdziW82AxJVWsK1y65wKmpMDNADBJzY6ViISjmr+S95Wa0SUyfig9UlhnG3AtDAKvfYLSsXzRK9OY1pt2h9C9Pwb6fIZww45O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AUoaSrND; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5295d509178so1060087e87.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 06:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716902609; x=1717507409; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WXo//qXhY1ly8R9H5vDfmlnijDRJLj8I/IeGXD7QUwQ=;
        b=AUoaSrNDnkc6TNBi6D04MozIiT8FSWz0Y1wgW5d3RLH+avESFAguNUC8xadJmZX8dQ
         9uURd4ThW2K70HXRs+feblbAHMMWFrhDlasXCHmQ5cHZFNPY11OgfGFqsjluaRGMkGXJ
         9tTZ/8wlClnuNCQG6yCBkR3hGuFSTbzjYiynfYUrZVjLDMhYjzza+H/DfQi+/xN93SiJ
         Fqz2WCXhgK9OIlH4d+Q0e0+SJQnoIQBEaVuPC0T6zmKKGeS9hZFUn2coHN6nfFF9IqPS
         LCflxei7lrb9Jg9FOhgy4St0wLyzQI7rQoNemcFicqSzJBYsmGfMdw4Lz/A030NIiAQk
         e61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716902609; x=1717507409;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WXo//qXhY1ly8R9H5vDfmlnijDRJLj8I/IeGXD7QUwQ=;
        b=Fnbs/XATYjsMeed9nAbKzGrbNKgQXvRyD6ulv1cnAUvoFOf4s6nnPMGcj0TQrBfIdw
         YdbyI+yKHD8JRY6rlt3EnG4OAUnJN7/0QhaKOIQV4hHj2DKP7Axo4lMxFDlJyvaSMXmV
         ayz1lpPGy6ErIMwFJAzgGBVH6y2HqkaztZjeLgK0XuODtLJd9ed+qADP39GR62RHMOoP
         C7Il3HRLkOIi1JhL8IgcxYCXVDa34VD83TbLl0Sh+RAFonVyyGgQaW2wqbMXBlJ9tnPX
         xolMAqVN6Lti262h1TN6iMVvFueP5bJD7kz99aZhSJ8CzbkB9mGzgh2eZ46xgQANqAqW
         04eA==
X-Forwarded-Encrypted: i=1; AJvYcCUVmt5n3+6b5M8SMyc+a7GN8KTT2Y7aoLMwQhyMaGVIIw7vrDMXQZK9B15YP9GBjRpzW9xJWojI5IR27cNngqPPNsYDWf+uo7ABww==
X-Gm-Message-State: AOJu0YxMEHLVj/bEADTx45wSGgVm0+UXFmdGQ98bJMWRGgX57BwPe4Zt
	2d8OC2TYP1fLySaMSLu5ga0tOWLeAt6TSHSmlklTMx3xQC3iXVMocDcA+fyV3D8=
X-Google-Smtp-Source: AGHT+IH5995i1hOQ5zC022yhutQM4mzC2zckdQviZ3acRk+TMh+HR4elAA7mD6XJRRShwIOot+PE0A==
X-Received: by 2002:ac2:4343:0:b0:518:9823:601a with SMTP id 2adb3069b0e04-52965f1093amr10770667e87.39.1716902609284;
        Tue, 28 May 2024 06:23:29 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296e885ccasm950109e87.53.2024.05.28.06.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 06:23:28 -0700 (PDT)
Date: Tue, 28 May 2024 16:23:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ajit Pandey <quic_ajipan@quicinc.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Subject: Re: [PATCH V3 7/8] clk: qcom: Add GPUCC driver support for SM4450
Message-ID: <ssnyujhgz64mbxawb43okjkdidd3tbxwjob36ikgbogy64xuqv@ckvir5vfqo63>
References: <20240528114254.3147988-1-quic_ajipan@quicinc.com>
 <20240528114254.3147988-8-quic_ajipan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528114254.3147988-8-quic_ajipan@quicinc.com>

On Tue, May 28, 2024 at 05:12:53PM +0530, Ajit Pandey wrote:
> Add Graphics Clock Controller (GPUCC) support for SM4450 platform.
> 
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> ---
>  drivers/clk/qcom/Kconfig        |   9 +
>  drivers/clk/qcom/Makefile       |   1 +
>  drivers/clk/qcom/gpucc-sm4450.c | 805 ++++++++++++++++++++++++++++++++
>  3 files changed, 815 insertions(+)
>  create mode 100644 drivers/clk/qcom/gpucc-sm4450.c

[trimmed]

> +
> +	/* Keep some clocks always enabled */
> +	qcom_branch_set_clk_en(regmap, 0x93a4); /* GPU_CC_CB_CLK */
> +	qcom_branch_set_clk_en(regmap, 0x9004); /* GPU_CC_CXO_AON_CLK */
> +	qcom_branch_set_clk_en(regmap, 0x900c); /* GPU_CC_DEMET_CLK */

I pinged Stephen regarding these clocks. LGTM otherwise.

> +
> +	return qcom_cc_really_probe(pdev, &gpu_cc_sm4450_desc, regmap);
> +}
> +
> +static struct platform_driver gpu_cc_sm4450_driver = {
> +	.probe = gpu_cc_sm4450_probe,
> +	.driver = {
> +		.name = "gpucc-sm4450",
> +		.of_match_table = gpu_cc_sm4450_match_table,
> +	},
> +};
> +
> +module_platform_driver(gpu_cc_sm4450_driver);
> +
> +MODULE_DESCRIPTION("QTI GPUCC SM4450 Driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

