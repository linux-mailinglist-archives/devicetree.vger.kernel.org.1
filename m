Return-Path: <devicetree+bounces-87932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A5393B864
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 23:09:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA6A11C23B03
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 21:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5580813B2A9;
	Wed, 24 Jul 2024 21:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="ZhDNfDcR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39B1446DB
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721855395; cv=none; b=IGrxRg3sHPU8woc5YjuLD5kAcrBAZgjs6hQUNRTYB8KHRgGg/83Y9MxIqi9DqcVESjbGvTmx5F/0WQczgZCqvdVIF/wdv+C9hBBM5hQFRJkkhP+Yhzu9v6l/SlwxIQpr/SPB7GCS2gI53uG9/mD48eCGvYwofqJTp/ksCPs9Ge8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721855395; c=relaxed/simple;
	bh=vNmljDyxuQJbPcfceCzjBq3nfY3t4pyOZRfftitc5Ak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QhSku+MsAJH/VIkDT61o4OraoppZhMwRfSFzGWnyiw8GtKE9CoNnVok4Dz2AhyxZfDears4jWk7Fm7Lt9WqhbjLxcjD1owcOxu6mqbGj1Uj12On4dJ+sRizH3d9ISuUv8V7fquUpWLUXN8hwX4pvaFYiR2bdAo/RpmnDQkYf0ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=ZhDNfDcR; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-70ea93aa9bdso238122b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 14:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1721855393; x=1722460193; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vjbueeIIyUEroZshkKxdpKEriHR9zWClHjFGUbNFoy8=;
        b=ZhDNfDcRVlFwdFAesKPXjzZ3pK1M2FBD/fm5ws2xMSgkPEaLLpz4id7A/jO0lEJMko
         vDqx9zm7r1iZkovGkMpbAPccCNzAXfj4UbqGQ1dr10MwTkyR9Qmv04ARH+3PD5fjWFBO
         8uEbzTqkZSdvQidEA3foJhLPLEMllTRk/YQVO8bdwF70zQds2Lw/YxUwNMQyzru32Usx
         TU3h65Mmv/Nm7gCGfvzOG/JWgQpw1+JnZLwC8axP/0/y8u2OduEXfEvYkl9hi1mJFh+a
         vcI8tEBMB1QiD+phBKXlA89YP9Z1RJ8E3JA1Qmqx5xWiFtf3VDxZplrHbwthSqbc8ypi
         lREQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721855393; x=1722460193;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vjbueeIIyUEroZshkKxdpKEriHR9zWClHjFGUbNFoy8=;
        b=BcGJ93RRV23e8ibkPTX/XMfFVGgJcvrlxquLWatVw5bdbBvV0kTEis+9NJQ9zOZjl7
         z+SHWwM1SGolKbce98lrksDDm7jjSCk01kZt13MlNNIZnjxPRVnP6U1bdy7KQuK8f5om
         MAsVkEz9JNmQyz42S+OnmwgBXhByj3q5evIL1cgbn6325a7/Ce//LQu5pSlhykcytT2J
         e1XbHMt6VklI5hmmI8StpWsbi2E545w2lE43RKDrhIkqxXOM45GON6zxsyATmPRJvP20
         hxyqRURmeK/dd996I4dN/FXFGSf0AmMbRyahwHwrqaSX3VqIjWq6YGgjATuFFowq79e8
         kBQw==
X-Forwarded-Encrypted: i=1; AJvYcCXLcttreAvC8+lp2/vee3BXkFT00IAabuMzM94M8O1mdSYhT2zcvFDBa73D8uuxuhs7yFO2uRIoZx3YjGKgfL6Pk4xDd17ufgpsoA==
X-Gm-Message-State: AOJu0Yz4Fl6fR+vmEeUvI6eHI5oRuZesAuwY5wyq/pvAkXZNhEHaTAl1
	dlBWVFPhE48x8wkakDvWBBsDj4Wm0WLXP57wUXGSQ86k9OQXoay7piHVfovZt70=
X-Google-Smtp-Source: AGHT+IEKt/RfkCtSA9CPOxPqJF0r1UmC/bt2fLfDSdr/8Y2DnQGu8cJz8hAe2wzxaa0eNCpkvzktFQ==
X-Received: by 2002:a05:6a20:7f95:b0:1be:d5e9:b444 with SMTP id adf61e73a8af0-1c4725173a1mr1458314637.0.1721855393189;
        Wed, 24 Jul 2024 14:09:53 -0700 (PDT)
Received: from x1 ([2601:1c2:1802:170:8821:4dd1:578:cc09])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb74e8730sm2128580a91.38.2024.07.24.14.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 14:09:52 -0700 (PDT)
Date: Wed, 24 Jul 2024 14:09:50 -0700
From: Drew Fustini <drew@pdp7.com>
To: Chen Wang <unicornxw@gmail.com>
Cc: adrian.hunter@intel.com, aou@eecs.berkeley.edu, conor+dt@kernel.org,
	guoren@kernel.org, inochiama@outlook.com, jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh@kernel.org, ulf.hansson@linaro.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-riscv@lists.infradead.org,
	chao.wei@sophgo.com, haijiao.liu@sophgo.com,
	xiaoguang.xing@sophgo.com, tingzhu.wang@sophgo.com,
	Chen Wang <unicorn_wang@outlook.com>
Subject: Re: [PATCH v5 3/8] mmc: sdhci-of-dwcmshc: factor out code for
 th1520_init()
Message-ID: <ZqFtntMl9aw4OBDS@x1>
References: <cover.1721377374.git.unicorn_wang@outlook.com>
 <b774f2b62d68edab2d95d9dbd1f55cac50c6abff.1721377374.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b774f2b62d68edab2d95d9dbd1f55cac50c6abff.1721377374.git.unicorn_wang@outlook.com>

On Fri, Jul 19, 2024 at 04:45:59PM +0800, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> Different socs have initialization operations in
> the probe process, which are summarized as functions.
> 
> This patch first factor out init function for th1520.
> 
> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> ---
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 51 +++++++++++++++++------------
>  1 file changed, 30 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 903fe06050e4..bb0adc2ee325 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -830,6 +830,35 @@ static void th1520_sdhci_reset(struct sdhci_host *host, u8 mask)
>  	}
>  }
>  
> +static int th1520_init(struct device *dev,
> +		       struct sdhci_host *host,
> +		       struct dwcmshc_priv *dwc_priv)
> +{
> +	dwc_priv->delay_line = PHY_SDCLKDL_DC_DEFAULT;
> +
> +	if (device_property_read_bool(dev, "mmc-ddr-1_8v") ||
> +	    device_property_read_bool(dev, "mmc-hs200-1_8v") ||
> +	    device_property_read_bool(dev, "mmc-hs400-1_8v"))
> +		dwc_priv->flags |= FLAG_IO_FIXED_1V8;
> +	else
> +		dwc_priv->flags &= ~FLAG_IO_FIXED_1V8;
> +
> +	/*
> +	 * start_signal_voltage_switch() will try 3.3V first
> +	 * then 1.8V. Use SDHCI_SIGNALING_180 rather than
> +	 * SDHCI_SIGNALING_330 to avoid setting voltage to 3.3V
> +	 * in sdhci_start_signal_voltage_switch().
> +	 */
> +	if (dwc_priv->flags & FLAG_IO_FIXED_1V8) {
> +		host->flags &= ~SDHCI_SIGNALING_330;
> +		host->flags |=  SDHCI_SIGNALING_180;
> +	}
> +
> +	sdhci_enable_v4_mode(host);
> +
> +	return 0;
> +}
> +
>  static void cv18xx_sdhci_reset(struct sdhci_host *host, u8 mask)
>  {
>  	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> @@ -1231,27 +1260,7 @@ static int dwcmshc_probe(struct platform_device *pdev)
>  	}
>  
>  	if (pltfm_data == &sdhci_dwcmshc_th1520_pdata) {
> -		priv->delay_line = PHY_SDCLKDL_DC_DEFAULT;
> -
> -		if (device_property_read_bool(dev, "mmc-ddr-1_8v") ||
> -		    device_property_read_bool(dev, "mmc-hs200-1_8v") ||
> -		    device_property_read_bool(dev, "mmc-hs400-1_8v"))
> -			priv->flags |= FLAG_IO_FIXED_1V8;
> -		else
> -			priv->flags &= ~FLAG_IO_FIXED_1V8;
> -
> -		/*
> -		 * start_signal_voltage_switch() will try 3.3V first
> -		 * then 1.8V. Use SDHCI_SIGNALING_180 rather than
> -		 * SDHCI_SIGNALING_330 to avoid setting voltage to 3.3V
> -		 * in sdhci_start_signal_voltage_switch().
> -		 */
> -		if (priv->flags & FLAG_IO_FIXED_1V8) {
> -			host->flags &= ~SDHCI_SIGNALING_330;
> -			host->flags |=  SDHCI_SIGNALING_180;
> -		}
> -
> -		sdhci_enable_v4_mode(host);
> +		th1520_init(dev, host, priv);
>  	}
>  
>  #ifdef CONFIG_ACPI
> -- 
> 2.34.1
> 

Reviewd-by: Drew Fustini <drew@pdp7.com>


