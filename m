Return-Path: <devicetree+bounces-114324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BFA9AB47B
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 18:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AABE7B22E49
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 16:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 236501BD005;
	Tue, 22 Oct 2024 16:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZrxGbdTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA471BC07E
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 16:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729616157; cv=none; b=fiD9K0KaNLWkNC1aeWl15c37F5UrK889/ybt7B+edr+HG79gRc91JAjG8bQuSs8cHVJO8BcyTH/vKA9p2Z1jagT/xrBUAJV1ydXHmRdH4fwbSOnh9Ho8956Ohf+RR4QovdLKCOEhtifTuK8Ccjc1UBVIvr2XNdSRvcpBkc4jMtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729616157; c=relaxed/simple;
	bh=8PsFgcVh66Lr0J3dPKY3GShM1TAUBn3LVhw/87ZVtJg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t+VYUbZ7Ep29VMKhczAs/YzAM01bsAc96InlSArfgMw3tT5HBL2eqSDB5u/jXXvumKAGD/msekXgkYX5hqqMu9lZ0Lfw20ZJm77Q8gyAev3W5+X3FkOWKXssteQydIOIIG4eB4+Ta610j0tYQ7Ydzx59xOc+T7LHQxOiOaQBslE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZrxGbdTk; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-28847f4207dso2659954fac.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729616154; x=1730220954; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zskhD/XRFsF8+SNavxZpLN+TdPJ3gjMLO/S0bb2gB5s=;
        b=ZrxGbdTkRj1mcwi1Pg2jvX4nNWnfLkg2ThMfE4uxV+pajmcuBn58lldCmKud8rDH2G
         BASJ06sabhM1h6jk86viDmnGJTueeK+pTBT5//BF4n7Y/plQCMRQwXNx72fv70xRR9/b
         Z2VxhqkYZZ9ysk16t4DAmv5WNSTT2mdSNB/N8HxU1pb/zod+kSeGvA9NwLGahpiJxJfY
         iGzB23ErbhNtO6YdvOeWTiT6+9Alr34tYw+MmS3wvacias6HRLS+eKOaaDT21zZCCWxX
         xxvkro51+fiLUQJtdkQCfZOdrYnsioh/ecALNAM5x0RMFhwMN8h0ss2LjD8n8p/vFGz2
         pTqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729616154; x=1730220954;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zskhD/XRFsF8+SNavxZpLN+TdPJ3gjMLO/S0bb2gB5s=;
        b=qSQQGX59daoV4PVxXO7m0n4Yg+5ueR7DolLOQEbYOL+D5jnkoZhF5CaFKKewHx6bhj
         SnF/4RlRaYIILYYpZVVuubCti2tjOvMOxN0l6NNsk1vjkMF9cBkk2lnO7eFXpMlg7xWv
         kUNYlmkb4zG8FyLDvZvVhc1xbtHxvu2/jDAvUtSltW1zqcNHHKKHJZsPz3oKB+2dh4ti
         Yw7Y5nQjgiNLGfMal9wUCgSQPj0zv+jC94iOqC4wcTz1+8TQuKg5BV/JuciDZm+LFN7G
         cF73rInOjFNuzxxqNseMKBeRE6fccEUIG0zmQHmLqITlzOeWkVZ+z0oVdDbBmRswp4QJ
         5SCg==
X-Forwarded-Encrypted: i=1; AJvYcCXRuor/zZP5OTaxEGcBTDVETOfDhpDFq6wCn+KTWakwGhDtwyrwxXDDFonOerbXUdyTCNM1e81964Zj@vger.kernel.org
X-Gm-Message-State: AOJu0YxeBvpn8tQwLApJKF6LTydcAZe+pe/unt2gtwsnFOOoc7MfTq/M
	4JbX8l1St7PbDl9MPq4HgSfQ+jsQQHv6LTQtak/Ewy/fi06yYZdLOVZ7Npw+sA==
X-Google-Smtp-Source: AGHT+IFKRfaJmVMFGvKwHBrjJenW7+/BJEzp7GEOtf7Mc+QC+1nScED+0joTknXDkn7LCJudmbfjfg==
X-Received: by 2002:a05:6871:b11:b0:270:1fc6:18 with SMTP id 586e51a60fabf-28cafeb6995mr3491513fac.3.1729616154369;
        Tue, 22 Oct 2024 09:55:54 -0700 (PDT)
Received: from thinkpad ([36.255.17.224])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ed9957ba9csm424994a12.82.2024.10.22.09.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 09:55:53 -0700 (PDT)
Date: Tue, 22 Oct 2024 22:25:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: kw@linux.com, bhelgaas@google.com, lpieralisi@kernel.org,
	frank.li@nxp.com, l.stach@pengutronix.de, robh+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, festevam@gmail.com,
	s.hauer@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v4 4/9] PCI: imx6: Correct controller_id generation logic
 for i.MX7D
Message-ID: <20241022165548.6qhxt7dsd7m7i2tv@thinkpad>
References: <1728981213-8771-1-git-send-email-hongxing.zhu@nxp.com>
 <1728981213-8771-5-git-send-email-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1728981213-8771-5-git-send-email-hongxing.zhu@nxp.com>

On Tue, Oct 15, 2024 at 04:33:28PM +0800, Richard Zhu wrote:
> i.MX7D only has one PCIe controller, so controller_id should always be 0.
> The previous code is incorrect although yielding the correct result. Fix by
> removing IMX7D from the switch case branch.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 2ae6fa4b5d32..ca8714c625fe 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -1338,7 +1338,6 @@ static int imx_pcie_probe(struct platform_device *pdev)
>  	switch (imx_pcie->drvdata->variant) {
>  	case IMX8MQ:
>  	case IMX8MQ_EP:
> -	case IMX7D:
>  		if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)

This is just *wrong*. You cannot hardcode the MMIO address in the driver. Even
though this code is old, you should fix it instead of building on top of it.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

