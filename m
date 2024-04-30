Return-Path: <devicetree+bounces-63799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1458B69E5
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 07:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF3C6B21E94
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 05:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4E95175B7;
	Tue, 30 Apr 2024 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P+3hDGhw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF08718030
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 05:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714454783; cv=none; b=h0xHVTXg5CO9sElcvMTJGQ6weGTOxqdXPCL+yJMKOlH7xfeSv2g5fe6iSpFHMpyJ/qQkdCAfWgif2OQ1tJiRJ3w2qQYYrzmHdCV9/IxnTXUdK0QQzCv/L7cme9aIKx/KLs8JQTy69MWROHHMrs5/zL4c89TeE1oRJSWqqVU2rWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714454783; c=relaxed/simple;
	bh=LHN74qC4Sd+dRTk0U9jETSS3G/jNHmxu5c4Eu1Zl5fA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qVykBVgN2iSGqmwY+ALac0IzyRvKz2zsQn9XJgaOreOEQw8qsTgwYBAYcZJxMlOde2EhfRZLS2K599wlVd77M5T70oRLezCLYtEBhPEI9nisOhiofUmtyPcGiJ7E+2eWnV6s4wHtjkeDKo5bWCOfTEQgFVFYiYcBWzalg2r+4N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P+3hDGhw; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6ece8991654so4893555b3a.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 22:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714454780; x=1715059580; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ys6nMXqWAwUhX5wD7hjbrYi9XTXEsWiV9OebuOC9SNg=;
        b=P+3hDGhwtYfdGG0Q2LOzgjqUlxAHzwhpyStFzGpNNBVp/OikuIxjT225069C3VY44H
         Gb0mc0usc1Wrg08jaTRp9P783ujd7TJYspSrxnJWbtklznqDZQDCJHjI8eJb3WqhUmA4
         8eATr8SKa1x7MTqF85by0Vx25VcR5mt+xKIWEJA4ZMsJ/h/GHlKGmzredoJO5czE76fz
         7LYghACUPJBfO6QuvU7c4hsk38L6fu9b/+KM0onkl2HFPWlAt9bwPe93H42JmY6ZJeAH
         mEGCUCWR5fFRCsyUhATayqNqsC9enYDrDPtYsmLFg6beFI3C5SWGelBeXXXUUkC1fmhJ
         wA6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714454780; x=1715059580;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ys6nMXqWAwUhX5wD7hjbrYi9XTXEsWiV9OebuOC9SNg=;
        b=pe2hBBy6lqZfuQAjZJu4VFc61dZQNFeeS5IbahGvXyjAaA8nnEs0Up105Bi+MfYpxr
         1jbzqGMFhq72HGDhbst+oHbgUwcgoUwBoeAdul6Z7CLB0kR6dilnpNpN3IjjAg4dHB9x
         qUUVsy4bupafIUR9aehqjCYlOjYOTRLTegUa6t7ipJ7WvVVe++6rug7mgqYnJZ3HP91l
         +Xtkzd+OJF/31ptdAbIXMSBE8gnzXA5diwa7O4hzgFRQWQqIO3lRE/1Pe2ISNs2vYUII
         JFC8vBOdW76CZ1BATj7Iq3VqrdZK5l88W4YFg9qMaJV77yCaWOy1qINW6TYcC+FMeLwj
         DqLg==
X-Forwarded-Encrypted: i=1; AJvYcCVwCzRV02uUzMBsREEv56aZyTCfrl2vcRVTYtfTyXrp+4xF0nSnFWvO0HqQHpS92+uKM8Ughj1RnmwKtfcpBLGmIDU8NDhPEQMg3g==
X-Gm-Message-State: AOJu0YzAXvKkI9vPB4KoVxteV7v5v/X+dYK4SAa97wPGLWRytdcXyBSe
	zYMObU40dPtOL3rWTVUoU25exrYXrYYmvNdgz9ZngDoF5wd0dKCN6F5R+rxpmg==
X-Google-Smtp-Source: AGHT+IEPQQOSAjFGqnNG3i9uWFyr3XlY8U82w2d6iNF64HEOtqr/GdZYX97p0lscMaLlv7SVGhn+Xg==
X-Received: by 2002:a05:6a20:3255:b0:1a7:7fbb:2621 with SMTP id hm21-20020a056a20325500b001a77fbb2621mr14248957pzc.48.1714454779986;
        Mon, 29 Apr 2024 22:26:19 -0700 (PDT)
Received: from thinkpad ([220.158.156.15])
        by smtp.gmail.com with ESMTPSA id h3-20020a056a00218300b006ed4aa9d48esm20159643pfi.212.2024.04.29.22.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 22:26:19 -0700 (PDT)
Date: Tue, 30 Apr 2024 10:56:13 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, johan+linaro@kernel.org,
	bmasney@redhat.com, djakov@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	vireshk@kernel.org, quic_vbadigan@quicinc.com,
	quic_skananth@quicinc.com, quic_nitegupt@quicinc.com,
	quic_parass@quicinc.com, krzysztof.kozlowski@linaro.org
Subject: Re: [PATCH v12 6/6] PCI: qcom: Add OPP support to scale performance
Message-ID: <20240430052613.GD3301@thinkpad>
References: <20240427-opp_support-v12-0-f6beb0a1f2fc@quicinc.com>
 <20240427-opp_support-v12-6-f6beb0a1f2fc@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240427-opp_support-v12-6-f6beb0a1f2fc@quicinc.com>

On Sat, Apr 27, 2024 at 07:22:39AM +0530, Krishna chaitanya chundru wrote:
> QCOM Resource Power Manager-hardened (RPMh) is a hardware block which
> maintains hardware state of a regulator by performing max aggregation of
> the requests made by all of the clients.
> 
> PCIe controller can operate on different RPMh performance state of power
> domain based on the speed of the link. And this performance state varies
> from target to target, like some controllers support GEN3 in NOM (Nominal)
> voltage corner, while some other supports GEN3 in low SVS (static voltage
> scaling).
> 
> The SoC can be more power efficient if we scale the performance state
> based on the aggregate PCIe link bandwidth.
> 
> Add Operating Performance Points (OPP) support to vote for RPMh state based
> on the aggregate link bandwidth.
> 
> OPP can handle ICC bw voting also, so move ICC bw voting through OPP
> framework if OPP entries are present.
> 
> As we are moving ICC voting as part of OPP, don't initialize ICC if OPP
> is supported.
> 
> Before PCIe link is initialized vote for highest OPP in the OPP table,
> so that we are voting for maximum voltage corner for the link to come up
> in maximum supported speed.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 81 ++++++++++++++++++++++++++++------
>  1 file changed, 67 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 465d63b4be1c..40c875c518d8 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c

[...]

> @@ -1661,6 +1711,9 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
>  		ret = icc_disable(pcie->icc_cpu);
>  		if (ret)
>  			dev_err(dev, "Failed to disable CPU-PCIe interconnect path: %d\n", ret);
> +
> +		if (!pcie->icc_mem)
> +			dev_pm_opp_set_opp(pcie->pci->dev, NULL);

At the start of the suspend, there is a call to icc_set_bw() for PCIe-MEM path.
Don't you want to update it too?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

