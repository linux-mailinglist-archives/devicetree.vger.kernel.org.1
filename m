Return-Path: <devicetree+bounces-153823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EEFA4DF56
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:33:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8852C189D344
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 13:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD02204683;
	Tue,  4 Mar 2025 13:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EhDlBARi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26322045B0
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 13:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741095200; cv=none; b=UxcmlxccoVHZ8BnxISXDgeJPc1iaXW6M20BaxAhtZ/DLmFGEMvDI9ThYYJcraXVLzLcXapvAc2flrr+W7LMObjXU1CrCFmql2lVwf9Uni/+H9CskM1EvcneW+cZg2t598oY+Z+xRC8Zd8oT5gR29Ol78nb1GXXjDDwyKM37ObSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741095200; c=relaxed/simple;
	bh=JvIzTzx9bNAT9dTkwz9wJO3WMvtIvRTqt7LZsstIXms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=avlgZkF8HHZgfWOMPQ4+FfbIp+NcSVsfTSkZ1pbE8ORYgTr+GI0+J+yePyRiVLZ7wjwUEiU2r+mGNCP9shFuyPZil466YTOE6QEdufJkCTSficXKFLls1+8wABNXcatNMu4rUy/YBL5DxtsLC+EaIGz1OuEtZh7s5LC9I2QK8a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EhDlBARi; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-223785beedfso66687145ad.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 05:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741095198; x=1741699998; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3qLR77tna3KlWSQd6zNZ6y+8asGhaaD5n37dc3k5ZDg=;
        b=EhDlBARiHZ7sm0Scekwrzd7PCPAckZYK2uMArP5GJ5LDbvaKu+vHHeSdvouYnbxgVN
         DnsXWYWEVTqLwX37Ye94z/q3Upd5KMG+KKsmtupPdRWCwxYES1gEHf7wPkC4M6+4BX6U
         hlxiZT10bW0/tZAQm85snsGchINv7BX/yuwpOA8pQQp68QiZjYMHKuVgQr19EAu43eHQ
         7VMss69M1MPOc5rEwPK3gZ/U3EXjvms/br5SprLKiQbCtjz2O3tr/o6kyw9hmbgen9vb
         6rYyiIuRqOHUb1pFvjIkXgg5KmTdJPdq9beCIc/SuypLIVHqGzZpXtnk6ukwJYRIynQ9
         +LSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741095198; x=1741699998;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3qLR77tna3KlWSQd6zNZ6y+8asGhaaD5n37dc3k5ZDg=;
        b=tLMIVVw13QgrDIxdz2V4UY4ng4qbO/d6YCFR9QifchHTGy/QEZycPnHzBMsKTJHnN5
         0C8eqsRLs72xzAYV+kUMuPTUseftHbedAxuHfxPHCSECPMRN8eKlllpS/guwyvHfyjCv
         0VFZxMxweL5AICZE9nD1QLjcUkLzHTrNnDjmsk3p8YqhM8m2WoOu627uAmNiQza9jbwO
         98X1wh/U+BE4nZMEvn3Qb/B5qRf8rowQ8RCiFWz77pmyKx3m69T/O/MdZGWC9kc5DQpE
         qtAHLuNO00x7hORg4w4xKhXTFdMli0KHkuxOVz8/EBx2QTw/s4kFfeZEZeALNXxhi8XX
         wokA==
X-Forwarded-Encrypted: i=1; AJvYcCVZUWywctwz2NKox7qNy+ssUf5x5g/qCb6XgpZQkLOhGYZylIuR5jWBO+24XHu2c7bE0aGGTvkvLBqE@vger.kernel.org
X-Gm-Message-State: AOJu0YwBDSDR5jQdm9FAT9voOjJVAelr2LB5JYsoNguaIA32RjvncVh/
	FaAXHlDHY8oC5KL75oWGHW3t5vgCxma2DwOu6E62hmlfVUHcZwwEfXY6t2/kHg==
X-Gm-Gg: ASbGncv6aVz+AflA+1N7NNU9J7QLg7l5U6bJeggYsKs25WPuvWesfWI+Gqvp31dgc0y
	jHwiBuJXJ9kpJevIohudKhXL5Aib2N88J+czXdDpCke6wLrjazMqf/tLL7Qp30TEhP8AutUvexW
	ti1OX7HmOLRfX4jY6FvbhYatGJ+hLy/9nBpU1uNbfM6iXIMgHFQKRKXrEdGMWu94zGd3hrwlYKV
	dHXQThEpp5TiKpsCwE9E00BHwL08p9XE8dQ/o0hMF3JJiHLKsq2vlGywUFdjIqmVlZUGv+VPi8b
	e0w8+XXJmgQN3xVBNccI60dbeeZ4sovcApH2sWT6oq4zf/gqSLlIgR0=
X-Google-Smtp-Source: AGHT+IHF6tXmS5YA0nVLt+px5dErJnwlnsN7HgkRQHD9Cn5z48DU2q6k2zrG7Enx21WGbLqujcN0nQ==
X-Received: by 2002:a17:903:2b0b:b0:223:2aab:462c with SMTP id d9443c01a7336-22368fbe99bmr265499305ad.15.1741095197919;
        Tue, 04 Mar 2025 05:33:17 -0800 (PST)
Received: from thinkpad ([120.60.51.199])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-223501f9dacsm95662135ad.83.2025.03.04.05.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 05:33:17 -0800 (PST)
Date: Tue, 4 Mar 2025 19:03:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sai Krishna Musham <sai.krishna.musham@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	cassel@kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	michal.simek@amd.com, bharat.kumar.gogada@amd.com,
	thippeswamy.havalige@amd.com
Subject: Re: [PATCH v3 2/2] PCI: xilinx-cpm: Add support for PCIe RP PERST#
 signal
Message-ID: <20250304133312.hmn54f77pmg27tuo@thinkpad>
References: <20250227042454.907182-1-sai.krishna.musham@amd.com>
 <20250227042454.907182-3-sai.krishna.musham@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250227042454.907182-3-sai.krishna.musham@amd.com>

On Thu, Feb 27, 2025 at 09:54:54AM +0530, Sai Krishna Musham wrote:
> Add GPIO-based control for the PCIe Root Port PERST# signal.
> 
> According to section 2.2 of the PCIe Electromechanical Specification
> (Revision 6.0), PERST# signal has to be deasserted after a delay of
> 100 ms (T_PVPERL) to ensure proper reset sequencing during PCIe
> initialization.
> 
> Adapt to use the GPIO framework and make reset optional to keep DTB
> backward compatibility.
> 
> Signed-off-by: Sai Krishna Musham <sai.krishna.musham@amd.com>
> ---
> This patch depends on the following patch series.
> https://lore.kernel.org/all/20250217072713.635643-3-thippeswamy.havalige@amd.com/
> 
> Changes for v3:
> - Use PCIE_T_PVPERL_MS define.
> 
> Changes for v2:
> - Make the request GPIO optional.
> - Correct the reset sequence as per PERST#
> - Update commit message
> ---
>  drivers/pci/controller/pcie-xilinx-cpm.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-xilinx-cpm.c b/drivers/pci/controller/pcie-xilinx-cpm.c
> index 81e8bfae53d0..558f1d602802 100644
> --- a/drivers/pci/controller/pcie-xilinx-cpm.c
> +++ b/drivers/pci/controller/pcie-xilinx-cpm.c
> @@ -6,6 +6,8 @@
>   */
>  
>  #include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/interrupt.h>
>  #include <linux/irq.h>
>  #include <linux/irqchip.h>
> @@ -568,8 +570,24 @@ static int xilinx_cpm_pcie_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct pci_host_bridge *bridge;
>  	struct resource_entry *bus;
> +	struct gpio_desc *reset_gpio;
>  	int err;
>  
> +	/* Request the GPIO for PCIe reset signal */
> +	reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(reset_gpio)) {
> +		dev_err(dev, "Failed to request reset GPIO\n");
> +		return PTR_ERR(reset_gpio);
> +	}
> +
> +	/* Assert the reset signal */
> +	gpiod_set_value(reset_gpio, 1);
> +
> +	msleep(PCIE_T_PVPERL_MS);
> +
> +	/* Deassert the reset signal */
> +	gpiod_set_value(reset_gpio, 0);
> +

You should deassert the PERST# only after the power and refclk are stable. Even
though this driver is not initializing any resources, it makes sense to move the
assert + deassert logic at the very end of xilinx_cpm_pcie_init_port() as this
function sounds like the once initializing the PCIe port.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

