Return-Path: <devicetree+bounces-135892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC65A02DB2
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 17:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 970147A37E8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA0B319D899;
	Mon,  6 Jan 2025 16:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EIbu+giF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0F44EB48
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 16:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736180648; cv=none; b=hZLLbljSY1kiNvc5GK6MCbqU05kLwuCVirD7XTcxHtMYDETG5L/bJW61vo5MYodHCXn6A3LXDOJ9yVXg82X/q04eVeg5Oy0r9aVou/6cT3qr6yVSxD3/hdAg+fxRQUpHFUr+0gD4zSNbTRucMwxVOsNXRYhqimJGpvXhdzk9jCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736180648; c=relaxed/simple;
	bh=ELpWKSlR1Z2yTr8KWlNskjTjjdW9g2IMY35PT7jUlBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qYwRXPU4/HLEEwTM5TOnWlOXHJcDNxUSAwKkORI91Y70rSPbuAF8JEk99cE5cs9L3tow6IXWngivB5uPFtVmO2b8d4kO/wGpa9IebAdo9/JAAKXSosuVfPjFQ9xM85+NTsE5swWk9UjMJwqEPlHlVbHcNw+Sj06UUwG+oM2lt40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EIbu+giF; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2166f1e589cso254883855ad.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 08:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736180645; x=1736785445; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1kJILhgpSDQv2eNsTh8ePWX95k+BIGrrFxfbsyCNVHQ=;
        b=EIbu+giFNPd6yI+nJE/4q5Qibu7o7fYZarzoapZjwbna/U526ceW/37RaJgUBm/wgT
         Y9cKSylGYqnHvOY/vFL/Av3I8KjkxFh7ExCvhkhaA3RbwKUIZyGZCmhtEP0PEOU4xed0
         2rMTdIQaBsvJMVnWjmnmYAp7N5V3bK9priH6d2OtUSi56Zx3PWlO874+vImi5Nf32+Dz
         NMk94ZbjSb6NMwv8Fgvx9slGbUxshp6rlYxMvPYIRVHzW3fdQ+iIuvjMTdaYFsHElBQq
         uHsQAAWyQM2hOF7au5Lcww63POt2VWhnUU0dAimV12NsJYF/sip2WCVqVJt9uXqAdlAL
         dIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736180645; x=1736785445;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1kJILhgpSDQv2eNsTh8ePWX95k+BIGrrFxfbsyCNVHQ=;
        b=CCxpsfytFzy8YR38eHKwevlTr7MhP2ROqyA7UldXGwQtyzXmzuaoVPdOf5RdtGaSQu
         Co6aHqZHsTZvypntrhrrgxp09eqmrA2Xh+rwnxxDn4/vjtfLbDT4sNhiFNAR3hzEP908
         6KlSdt/ud/nFj4gnVlpF9SjVvfPZKfvlnHHg8jY33b4/kQ/pqAStxdt1J0fIzx04MobZ
         SP7wS5sdfiMakAuP2/HtL9i8PnpqOqRhz/UAKxcCtaPsd3ln4FLOdkXWBPpkMEJOq5AL
         eW9TPbQKNXS8pvVKbjR3ohI/tf+PejQWF8TUpMWmUkE+ym3Oe9OeDiXtpv8uniYOwL3u
         Q5OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMUMp9RL1fr0y4980NuVm2TwVswlD7kHLxKRMggvtROnIGJQiXGNz+Py0Kj5UZYE7gFqiAr7z7k8PM@vger.kernel.org
X-Gm-Message-State: AOJu0YytiaV57LPdLiQqpkK0TA8S21JWrLv3ZwSu984c1TF8t0SZXmaX
	RHWTixMwTB/R64oGsLKJQftPBTnI8dCeLyXSH3dnUJssnloliTx3+bKjlD3twA==
X-Gm-Gg: ASbGncvV4BUPOCJeEj/232Hy5ikIZu+8U9pM1ORGWegihgWE0T4GADzP8jXL9UM1bt+
	QQNovjBBV5YKx5tZYy7pKv042+jzKMXxV1ALD84VFYVRTMCunxZ9+KsbIRWk+YRgFrwez99Y9El
	jZuIrIjeWkSMaCiRf7dYLzGthM2shp28efxDcdkVW2UDrk2VPZSUDtT7k9c6v+4FRJCpbk+i7yz
	Stg4TfLcq2Wo7W1fDPWi1OcSmr+RE9w8hIp/QTzMQLmVBmWncqHXaowCkLivQ6n6Lg=
X-Google-Smtp-Source: AGHT+IFdRHlYP1im5zetO+/SjNKJaY5KNYN5HfbqNmxIWZ26dMrClumWmmikkawZQrxTttP5oKteOA==
X-Received: by 2002:a05:6a00:1706:b0:726:f7c9:7b36 with SMTP id d2e1a72fcca58-72abdd7bacdmr98645349b3a.8.1736180645400;
        Mon, 06 Jan 2025 08:24:05 -0800 (PST)
Received: from thinkpad ([120.60.61.126])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8dba83sm31660071b3a.116.2025.01.06.08.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 08:24:04 -0800 (PST)
Date: Mon, 6 Jan 2025 21:53:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jianjun Wang <jianjun.wang@mediatek.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>, linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Xavier Chang <Xavier.Chang@mediatek.com>
Subject: Re: [PATCH 5/5] PCI: mediatek-gen3: Keep PCIe power and clocks if
 suspend-to-idle
Message-ID: <20250106162352.neo5pkunbdakizar@thinkpad>
References: <20250103060035.30688-1-jianjun.wang@mediatek.com>
 <20250103060035.30688-6-jianjun.wang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250103060035.30688-6-jianjun.wang@mediatek.com>

On Fri, Jan 03, 2025 at 02:00:15PM +0800, Jianjun Wang wrote:
> If the target system sleep state is suspend-to-idle, the bridge is
> supposed to stay in D0, and the framework will not help to restore its
> configuration space, so keep its power and clocks during suspend.
> 
> It's recommended to enable L1ss support, so the link can be changed to
> L1.2 state during suspend.
> 
> Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> ---
>  drivers/pci/controller/pcie-mediatek-gen3.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
> index 48f83c2d91f7..11da68910502 100644
> --- a/drivers/pci/controller/pcie-mediatek-gen3.c
> +++ b/drivers/pci/controller/pcie-mediatek-gen3.c
> @@ -1291,6 +1291,19 @@ static int mtk_pcie_suspend_noirq(struct device *dev)
>  	int err;
>  	u32 val;
>  
> +	/*
> +	 * If the target system sleep state is suspend-to-idle, the bridge is supposed to stay in
> +	 * D0, and the framework will not help to restore its configuration space, so keep it's
> +	 * power and clocks during suspend.
> +	 *
> +	 * It's recommended to enable L1ss support, so the link can be changed to L1.2 state during
> +	 * suspend.
> +	 */
> +	if (pm_suspend_default_s2idle()) {

I think you need:

	if (pm_suspend_target_state == PM_SUSPEND_TO_IDLE) 

here and below.

> +		dev_info(dev, "System enter s2idle state, keep PCIe power and clocks\n");

There is absolutely no reason to print this message every time system suspend
happens. Even dev_dbg() seems unnecessary to me.

- Mani

> +		return 0;
> +	}
> +
>  	/* Trigger link to L2 state */
>  	err = mtk_pcie_turn_off_link(pcie);
>  	if (err) {
> @@ -1316,6 +1329,11 @@ static int mtk_pcie_resume_noirq(struct device *dev)
>  	struct mtk_gen3_pcie *pcie = dev_get_drvdata(dev);
>  	int err;
>  
> +	if (pm_suspend_default_s2idle()) {
> +		dev_info(dev, "System enter s2idle state, no need to reinitialization\n");
> +		return 0;
> +	}
> +
>  	err = pcie->soc->power_up(pcie);
>  	if (err)
>  		return err;
> -- 
> 2.46.0
> 

-- 
மணிவண்ணன் சதாசிவம்

