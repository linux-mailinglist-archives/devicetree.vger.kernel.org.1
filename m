Return-Path: <devicetree+bounces-33111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 23ADE832444
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 06:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C060283482
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 05:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D99A44A08;
	Fri, 19 Jan 2024 05:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M8nWbyiV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3972946AD
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 05:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705642589; cv=none; b=me17edkJbL33tu6TgCvfOGdFlgtO43jSBfYWJL/Fdl1/s9Yv1XNYdrnpBg281RZA1V/JQ3HmWnPMYRXZUkLvpk9CqmtLXhOJeYIe0q+E4N5geXfJ2viMhhb/gqiWfZPdzxo/Ab42jRscrHQSuoi/cM6myvzII4CO1d/IrCJosNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705642589; c=relaxed/simple;
	bh=UovGzvb+o3TQm+lhjDvRfALrmTsObXHmB90BgTkj5mI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eHtRIV1Se+z0nS7mkF4kFtWBZ32NYCimGYvKNxtpILtJz00qYznEsP2s4I4V+Og8s4p8xgx/12XkHHDgFmRe8M8H5UFLfNozJWTXMyKBGOQuaJoL1dyBk1yxuYxiUP76jgk/y3da3CBjkgNkEe6rKYYk0zaFKtly5/emXt2/pB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M8nWbyiV; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40e8801221cso3557965e9.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 21:36:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705642586; x=1706247386; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2ojAQrKurCVDTpDyr9Ud8UUA59iisRxNip7GO8MCjIo=;
        b=M8nWbyiV3JVQFiqHOTnAgiA21RbmosLbk4Oz6t9/b6rgOIJUcDuiQXUW1/URtYWkY3
         BBQfoWsGSNLEf8LJ3mom1/sMPIxVsP4O+JL/KE1EWV/zqxbzNIgv+pb33TE6i/S0Y60d
         xwBRV5QQn0VBWp8v6T3H6f5jRS6i9ps55M4wB4zEoiJ7zhIzTT3YSoyau7aEhMJCzipd
         59TDAyJrTvgZ9Oewgo6Pg4MTomCoiJULVDaieGqUAmH56+X3Ylznom42CSzKgYorqK4j
         kXUCbwbAT0ZV8KMvJfpN/vjD2NipIqw+58jsDnepOo1BzPakL0VKz9U2RRnu3ONLE/yG
         7tvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705642586; x=1706247386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ojAQrKurCVDTpDyr9Ud8UUA59iisRxNip7GO8MCjIo=;
        b=UGVkWZ9HZCjB8onCfuXzmYyeC4iN/efWUsYM5WlWuuJVXhQpB7B9IyMRtt3xoKZvmI
         jsnBoVlUkGD0sB8lw6CF5VJKnw3nKmtNwlqi9SsIWvO+0Pl/fI6L7ExICxJujS74shNt
         8aTfnN+UDGnUIsiynrRpHFXVE1Brf4sohGGaIT3hnAxbgFrd9DNKaMu62pqFswhjJY0a
         +3dYnGKTdWO7f++8YUAEaxi0ZZHe6P2iUlP7z9/5MzAg1mec1LtFxTVc5AXio31QKt7D
         5w0RGU54u2QJ/fvR/RGdUGBnomc+3iz0dXh9fFgU0vA6wC+PGPNTusLeKctkTyshp5Mu
         wEnA==
X-Gm-Message-State: AOJu0Yx7ys3M/u5x2SGf6AvCDFHLDerZF1kaObtHDKEIS61bJMwd1dV3
	G2+8nirPaJjd11DFVZQGTtML74y19TmAUxAdWGjz6Gf27oGutQHRJr6WQLW4JRY=
X-Google-Smtp-Source: AGHT+IHrVI4oY2pMxT9TBfDrffE6L2KwXvHH72Vz5VkiemXhVD26PJJFGqJUEoXqdWldgAqugJlPlw==
X-Received: by 2002:a05:600c:1990:b0:40e:50ac:d24e with SMTP id t16-20020a05600c199000b0040e50acd24emr1438421wmq.13.1705642586217;
        Thu, 18 Jan 2024 21:36:26 -0800 (PST)
Received: from localhost ([102.140.209.237])
        by smtp.gmail.com with ESMTPSA id l6-20020a7bc346000000b0040d81ca11casm27067641wmj.28.2024.01.18.21.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 21:36:25 -0800 (PST)
Date: Fri, 19 Jan 2024 08:36:21 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: dregan@broadcom.com
Cc: dregan@mail.com, miquel.raynal@bootlin.com, richard@nod.at,
	vigneshr@ti.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	computersforpeace@gmail.com, kdasu.kdev@gmail.com,
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, joel.peshkin@broadcom.com,
	tomer.yacoby@broadcom.com, dan.beygelman@broadcom.com,
	william.zhang@broadcom.com, anand.gore@broadcom.com,
	kursad.oney@broadcom.com, florian.fainelli@broadcom.com,
	rafal@milecki.pl, bcm-kernel-feedback-list@broadcom.com,
	andre.przywara@arm.com, baruch@tkos.co.il,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 05/10] mtd: rawnand: brcmnand: Add BCMBCA read data
 bus interface
Message-ID: <4b3f4316-0da4-4fde-a806-7b579948db50@moroto.mountain>
References: <20240118195356.133391-1-dregan@broadcom.com>
 <20240118195356.133391-6-dregan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240118195356.133391-6-dregan@broadcom.com>

On Thu, Jan 18, 2024 at 11:53:51AM -0800, dregan@broadcom.com wrote:
> diff --git a/drivers/mtd/nand/raw/brcmnand/bcmbca_nand.c b/drivers/mtd/nand/raw/brcmnand/bcmbca_nand.c
> index 3e2f3b79788d..e97e13ae246c 100644
> --- a/drivers/mtd/nand/raw/brcmnand/bcmbca_nand.c
> +++ b/drivers/mtd/nand/raw/brcmnand/bcmbca_nand.c
> @@ -26,6 +26,18 @@ enum {
>  	BCMBCA_CTLRDY		= BIT(4),
>  };
>  
> +#if defined(CONFIG_ARM64)
> +#define ALIGN_REQ		8
> +#else
> +#define ALIGN_REQ		4
> +#endif
> +
> +static inline bool bcmbca_nand_is_buf_aligned(void *flash_cache,  void *buffer)
> +{
> +	return IS_ALIGNED((uintptr_t)buffer, ALIGN_REQ) &&
> +				IS_ALIGNED((uintptr_t)flash_cache, ALIGN_REQ);
> +}
> +
>  static bool bcmbca_nand_intc_ack(struct brcmnand_soc *soc)
>  {
>  	struct bcmbca_nand_soc *priv =
> @@ -56,6 +68,20 @@ static void bcmbca_nand_intc_set(struct brcmnand_soc *soc, bool en)
>  	brcmnand_writel(val, mmio);
>  }
>  
> +static void bcmbca_read_data_bus(struct brcmnand_soc *soc,
> +				 void __iomem *flash_cache,  u32 *buffer, int fc_words)
> +{
> +	/*
> +	 * memcpy can do unaligned aligned access depending on source
> +	 * and dest address, which is incompatible with nand cache. Fallback
> +	 * to the memcpy for io version
> +	 */
> +	if (bcmbca_nand_is_buf_aligned((void *)flash_cache, buffer))
> +		memcpy((void *)buffer, (void *)flash_cache, fc_words * 4);
> +	else
> +		memcpy_fromio((void *)buffer, flash_cache, fc_words * 4);
> +}

This comment is confusing or maybe the if statement is reversed...
We're falling back to memcpy_fromio() for the unaligned accesses but the
comment says we're falling back to memcpy().

regards,
dan carpenter


