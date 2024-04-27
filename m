Return-Path: <devicetree+bounces-63317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ED48B4631
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 13:38:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A4F01F2654F
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 11:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 032234D5AC;
	Sat, 27 Apr 2024 11:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WHmyZQ/y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9306844C9D
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 11:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714217910; cv=none; b=fICdSeC36m8QBkPCd5f2jC9CKtgFHwgMDIiE8MmRCgecaDRvEUL6RBOkDUE/cznOySnhH0Zfclux8kPW732jVNrVuaAo3KhAqWhoYAtfx/cp/MAxoUxfyNOTX+/nGHy34U78qlKl5Aw+OgMElYp2A9r7EiOBIS8Bje/z9QqlZLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714217910; c=relaxed/simple;
	bh=p8O2sAM2IxpLXYnB4aXc6lDvtD3kwwkCCZ0i/MQiGKg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LQg6G4oqXaxDvZLh7945j9xmERKNJnrqtpdHZ/0bzn1TFJX2vCWnuKHAJa6w4JIGL14j7yy13zahw1JgaQQSPtoqm9mLOOiSXe+/HGcH4sl4bwzEe/3yHHnwSRYTL18wvq72ctnZi3+UzigAJFzbIbHx5udUGNW5ZLDoXEZtEEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WHmyZQ/y; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-5dcc4076c13so2211210a12.0
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 04:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714217908; x=1714822708; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Np//FY4PRW7HBHaV5Y9xc/c4l4DQaCwD4Awtz2s21Ww=;
        b=WHmyZQ/yM1AjGbOsKmFc2eXmnX2Heg+JZEZmebwLAGilKJr49+I4ZGkdWOFYiAeYI9
         MXg2KymXYFUta7riUD5r2zwR+koPDCAY6NXpXEx2/7aSP0o/JHFIsuxmMkJRVgk1E7E9
         kW1gJmAYGpgE7pjjd249mJwU0WBjG2jXet2Dd7FHc+7FN8GbBWMPW7q+KDQVoAxecHOs
         WaZfkx7uREGEO8Q5xolXeUGdywH/5DUbQ5OcOZDs2u0mKwt7B5o1N0eZR7vYYuDtpPkU
         4XaDTGN8jX2IteQ3o7c38N9B8qOkU/smw+yZ6v2K4S32T/GFUnlfR6qdHIAeGYC/IYVF
         s1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714217908; x=1714822708;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Np//FY4PRW7HBHaV5Y9xc/c4l4DQaCwD4Awtz2s21Ww=;
        b=OS91ZdIkczHqoUWatB38voZf6+XxGrqpIgp3FGZHq2+hIKDpWTzRsOxMtMLWFbDcH6
         XKYmf6GtLmj9t+mKG5+zN7t+TvdjlRjGSNfucEwL7kbLXAZ6gizRipWD5ZKvwvu50Dk5
         iuGIFCciAre1XkaY0Zgi2M/uxUqgyXwlsoWaXS+DEfSLP9JDiwzIHceskrI2+zFo5Y2D
         /UJtA/Vm0yA6aU3DE5qxpFffpiwTKTDi4TGVi1ov1xoAdDDmL+Nex5wSruduw8wyeU+O
         AkuvPInrYvVSo9WMeBjkyWiW9+06pBIMwo3U9jqCtVVuWyI3M3eEHF5S5i8JHhsYKXA4
         xaiQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/D7j2Ei3ASxN11lR2CWKHQiHm5yqFv9CAWiL6OhdX6p1HRynb5yGS7YqwhgXZZNXW1ukV+tEQvSAz5cwnOkWfa3buziSUaxmFtg==
X-Gm-Message-State: AOJu0YytgEUBBiHM3/ozC0AcQh5EPWIVQWBpMD3EVNpoVxRe6c2dKb7A
	I/iAQ0NDQUqkye+F7IuGlwSnJxuwUdLc/Rr0Uq3xY1ed41F5YnWvMI7mULVkjg==
X-Google-Smtp-Source: AGHT+IEF55H/1kS+Cfrgsn1sJ6Q8f7kM2jkzMm6mfROP3v0+pv0LxPc83s4Ah40q/gygS+pPW4uANg==
X-Received: by 2002:a17:90a:c687:b0:2b0:763b:370e with SMTP id n7-20020a17090ac68700b002b0763b370emr3311655pjt.18.1714217907747;
        Sat, 27 Apr 2024 04:38:27 -0700 (PDT)
Received: from thinkpad ([117.213.97.210])
        by smtp.gmail.com with ESMTPSA id s11-20020a17090ae68b00b002adb62b633bsm10608534pjy.43.2024.04.27.04.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 04:38:27 -0700 (PDT)
Date: Sat, 27 Apr 2024 17:08:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 09/11] PCI: imx: Consolidate redundant if-checks
Message-ID: <20240427113817.GN1981@thinkpad>
References: <20240402-pci2_upstream-v3-0-803414bdb430@nxp.com>
 <20240402-pci2_upstream-v3-9-803414bdb430@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240402-pci2_upstream-v3-9-803414bdb430@nxp.com>

On Tue, Apr 02, 2024 at 10:33:45AM -0400, Frank Li wrote:
> Consolidated redundant if-checks pertaining to imx_pcie->phy. Instead of
> two separate checks, merged them into one to improve code readability.
> 
> if (imx_pcie->phy) {
> 	... code 1
> }
> 
> if (imx_pcie->phy) {
> 	... code 2
> }
> 
> Merge into one if block.
> 
> if (imx_pcie->phy) {
> 	... code 1
> 	... code 2
> }
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pcie-imx.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-imx.c b/drivers/pci/controller/dwc/pcie-imx.c
> index 653d8e8ee1abc..378808262d16b 100644
> --- a/drivers/pci/controller/dwc/pcie-imx.c
> +++ b/drivers/pci/controller/dwc/pcie-imx.c
> @@ -1103,9 +1103,7 @@ static int imx_pcie_host_init(struct dw_pcie_rp *pp)
>  			dev_err(dev, "pcie PHY power up failed\n");
>  			goto err_clk_disable;
>  		}
> -	}
>  
> -	if (imx_pcie->phy) {
>  		ret = phy_power_on(imx_pcie->phy);
>  		if (ret) {
>  			dev_err(dev, "waiting for PHY ready timeout!\n");
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

