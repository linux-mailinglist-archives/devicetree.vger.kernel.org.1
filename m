Return-Path: <devicetree+bounces-122049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C189CD89D
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1EBC9B25A52
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 06:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B8818872A;
	Fri, 15 Nov 2024 06:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KxDKISF6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0926F187FE8
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 06:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731653552; cv=none; b=EVLfzLE8VeM1v/I+SMK3ce8BXNU3lWw+XoHopg53QVTjVXeMd0AaC25eyMxbB+Wi4WQ33/7fYIMQZn6hqiE7/6nIlsVq2j2yZhTb42asJ3jRSEMcTGS2dUYfZCIK5M+fWUQwKIFAoMjGl/FTIbs4bDa4yIkxTK2wBPZjR21/ls4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731653552; c=relaxed/simple;
	bh=CEMXhu2MGYVzDLJ2Eh1N2Pyu48lfVTlo3bSjDF1UB9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FJEoR5GPZeQpUNBgJZXNoYQD4cfNizvhDY9MSU01iJBIllwNhUlg2IDeQ7yr1wTh54+sDnYC0Lin0D/040eimfOFb+QDRgNbRPlFKp8r+XLv3kM4DMC/s8pRy5NLjOeFANk87KfuXozBqwypIU0YyzSKAoVTlVtWNM5ZbRMcBRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KxDKISF6; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-720aa3dbda5so1088427b3a.1
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 22:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731653550; x=1732258350; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4/1UwVe3Qsy2MB0A1h4O60dSR7MLmU1E1u1iWJ0FEAI=;
        b=KxDKISF6z7WtvEguG/bF7HGMPm9QJzwIgENY/iGpjnNCjSZEP0rltrG8nkvjv/VTWf
         /A3rXQTcYWs/YGagPadlomJ6Sw8ztq/mI/9g12x0dvAVL6s6F3EIHRsgjNRuLzSYjlt4
         nkwkkakh/Iwv+L7xbBIwP6LyohQ6ZD2RgVKVfXQqatSlRQ8j8d/yDtNZAu0PH8dYsoMX
         n5rbdCC1MljlkujGrYWwOYizx4U6JckxdhygoRKNDUCZPtjDNiCmFq64SXr1slwDeX4u
         qrmQlZA6O2agC3KA+4BWc5dkWf+QuShrE+Uy18LeSQRl6gGCO0KQeoio5JWbUJ3PyrhH
         bELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731653550; x=1732258350;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4/1UwVe3Qsy2MB0A1h4O60dSR7MLmU1E1u1iWJ0FEAI=;
        b=fUhBOxncxYvl3lhQwku5qEMrvmGgmd0EKHHCRd1c2Fa5p5jvfOepeUFMqVJ6C93Y3c
         7Ek9JX5Uz69Z2AbHrT8WCAZCjVJOArBB6El+naJYopQdz0svowaGJAYBwgVjwthquOi4
         R08PsECIgIJvTKuC3GOkWXs/n+cURZs5N6redH5Rd6Shm1EouJ0KvsrZEXMc6oWAFYDg
         E9sQTP+ZqIMb83Q/cNhAgirfeHLv1inz1nMXi6FYZpRzv3BjnoBBEfLm+q4LnStYAX5P
         PSU13OAk7DvMjlVmf0AZcnD4uR2dOwJj74AWclXzNHhTvExBOZi9FDeT+sHxURcD/TO1
         w9aw==
X-Forwarded-Encrypted: i=1; AJvYcCVZTnLrKKK853PEDtQI1bKyR5Gy9I6bYBL0dbT6iLX9Vgal+7zZnwMtKcORHcq/PyZEv37ItlvCwrkV@vger.kernel.org
X-Gm-Message-State: AOJu0YxPcyNfGjb6zDJInGrEHi25a+9yC/zHgKSSLCroMY67eyF5HGoq
	rsb5NyXkTP7D2VfSQBn9NwusyWmr33l6X8kOWW3Ne2vmXXuziEV3wTAR8kmxyg==
X-Google-Smtp-Source: AGHT+IE/YBLChBCuslucF1k1xTrQEVYs0lhSpDpzi5LeohRmyIqqfR8TDB+1oTszXaCrfQURCH52AQ==
X-Received: by 2002:a05:6a00:998:b0:71e:44f6:6900 with SMTP id d2e1a72fcca58-72476cfc9a9mr1771780b3a.16.1731653550107;
        Thu, 14 Nov 2024 22:52:30 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7247711c0cfsm690383b3a.51.2024.11.14.22.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 22:52:29 -0800 (PST)
Date: Fri, 15 Nov 2024 12:22:21 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lpieralisi@kernel.org,
	kw@linux.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, frank.li@nxp.com,
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	kernel@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 05/10] PCI: imx6: Make core reset assertion
 deassertion symmetric
Message-ID: <20241115065221.scfb2chnoetpdzu6@thinkpad>
References: <20241101070610.1267391-1-hongxing.zhu@nxp.com>
 <20241101070610.1267391-6-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241101070610.1267391-6-hongxing.zhu@nxp.com>

On Fri, Nov 01, 2024 at 03:06:05PM +0800, Richard Zhu wrote:
> Add apps_reset deassertion in the imx_pcie_deassert_core_reset(). Let it be
> symmetric with imx_pcie_assert_core_reset().
> 
> In the commit first introduced apps_reset, apps_reset is asserted in
> imx6_pcie_assert_core_reset(), but it is de-asserted in another place, in

I'd suggest rewording like below to make it easy to understand,

"PCI: imx6: Deassert apps_reset in imx_pcie_assert_core_reset()

Since the apps_reset is asserted in imx_pcie_assert_core_reset(), it should be
deasserted in imx_pcie_deassert_core_reset()."

> stead of the according symmetric function imx6_pcie_deassert_core_reset().
> 
> Use this patch to fix it, and make core reset assertion deasertion
> symmetric.
> 
> Fixes: 9b3fe6796d7c ("PCI: imx6: Add code to support i.MX7D")
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

With above change,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 996333e9017d..54039d2760d5 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -772,6 +772,7 @@ static void imx_pcie_assert_core_reset(struct imx_pcie *imx_pcie)
>  static int imx_pcie_deassert_core_reset(struct imx_pcie *imx_pcie)
>  {
>  	reset_control_deassert(imx_pcie->pciephy_reset);
> +	reset_control_deassert(imx_pcie->apps_reset);
>  
>  	if (imx_pcie->drvdata->core_reset)
>  		imx_pcie->drvdata->core_reset(imx_pcie, false);
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

