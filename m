Return-Path: <devicetree+bounces-55323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E1B894D43
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 10:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39B1BB22A20
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 08:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E633D96D;
	Tue,  2 Apr 2024 08:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zK2hD57U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64153F8ED
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 08:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712045705; cv=none; b=H7WbUhRNRmRoCOVE1hLf07sqmdl3QXBWqM/zBDAykDN5xhjDnIu6jk3YOolqiuhiQ2JEomI3dfATCDn/C7o5HSJHZUISDq8s3wqa/Wjgm0m11J36UgBN/UGBhDaAJkae1/nFgj6NC2bQ9oiXVFb8LaXaH0tgwOLCnr5gr3+6gnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712045705; c=relaxed/simple;
	bh=WHKlKK9EohBii9S28CpjTtid7am0PVMA0+L4lb8P/ck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EASCkhaYuhcaSJPnb5c7O7Uirql+ABzLtPSykoe7ahfIu4FKKkUxfHfZ+XhhbWMPuSxXbv7NtFuOEKzK/LeZxHmvGd1C3FsI4tBHL+C/E8WLUfCKNOzMrFtwsO3LhD6w175osVrRRy0KP9cMGtRHOVdfpgUVGAuMLtPU7YduqQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zK2hD57U; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-513da1c1f26so5829666e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 01:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712045701; x=1712650501; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l3PznuhWiRn2DrV3csjzqryBja8/5+Nu4cCrKqzgvwQ=;
        b=zK2hD57Uw4d7KcPwYwn5sX3nRvY2YGDGlEvIe5l4lk7nKT/VvFcw2R+QdQ7QoT5G7p
         nO5Pw6mTZmgBOx1JGZkRiJNe03cyou23ZHYLTzDx0C1ePwD94rZlpkCiX6XLVHInIA78
         PhbW0CZQNWDrwzGw9ZQvP4VdIu3ASQTQDbYRLbl8kJZ09hCzORVTUEFyWXgEcLTNH8/t
         GC29W2lGGVxbHccSQ4wsdV8aU7Q27f72HGIGCun3VEUaNJe9XarbjQ/swMhuQkHoZIeW
         /wRWBdjLhVkkCU1TYhMJ10EfBq0v811gSNHdkVPWBiW8YykadovXDCvNlPJHfYdL/FMz
         L/LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712045701; x=1712650501;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3PznuhWiRn2DrV3csjzqryBja8/5+Nu4cCrKqzgvwQ=;
        b=C5R81v4bhHuryDnd1446klSQwoKreLRPvwRdOX2rvymN0vzuERbQ5roTc15JT+7NPt
         cBCMUosT9FAa7WvydfpiBitMBbGkDihC57iwcj2SSoTBhXdkgcOqgiKNwmMKajS6nDn0
         6C6RgokJYB7FiZTYu/LOvcPlg2zn1tVsYBB48xYne2nto4TYdQuyxIh4Kbxyr0OdEHAl
         kRYWDlQZa5KiPzIgOVUfkhJ3cVJSkWXf9vRhd+ysEfbYOk2BbuWnQK4f9OiG+bckcU0x
         U++yg7XM0+ZtEdzXU0LjkrgWzSIb3kxGYc0m/4ReDhFZ18Yk8/DmPp7cB9X8UxHOm8Rt
         n+ww==
X-Forwarded-Encrypted: i=1; AJvYcCUOZ/6+990tbOxQxdZxP/KHPtEU3xuVOdQS5Uf538pMaf7CvcB3kiRQl6waH6SK6s5AlR+3FSZN0ox3MAGi0r/bF+bpHMbWGh7n7w==
X-Gm-Message-State: AOJu0Yzl/bN3A0Tt9RVsp3i3wDlXK/pUnNJtzAINJj5DHROy+l3rvtzw
	NvIdshOMtEPDwTmQ3BgCLiO83l+BAZgBlgHlbFtF7V1h0ZpkkSEzoMzo8+KefgY=
X-Google-Smtp-Source: AGHT+IHkFlWoscZhEInW5OhjLwpBACUlxhPfxaPo/RekIXvF+sTH5Dof1mRxSuBgUyl0Z87+l4jIwg==
X-Received: by 2002:a05:6512:ba4:b0:513:ed0f:36c4 with SMTP id b36-20020a0565120ba400b00513ed0f36c4mr9690442lfv.43.1712045700495;
        Tue, 02 Apr 2024 01:15:00 -0700 (PDT)
Received: from blmsp ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id bg3-20020a05600c3c8300b0041481207b23sm17246308wmb.8.2024.04.02.01.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 01:15:00 -0700 (PDT)
Date: Tue, 2 Apr 2024 10:14:59 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Andrew Davis <afd@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] firmware: ti_sci: Use devm_register_restart_handler()
Message-ID: <rurlwebigvl7xdttvw6khaaksf2gyybxyiq5li3dqaksgswrty@5ulps4fobiln>
References: <20240326223730.54639-1-afd@ti.com>
 <20240326223730.54639-2-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240326223730.54639-2-afd@ti.com>

On Tue, Mar 26, 2024 at 05:37:27PM -0500, Andrew Davis wrote:
> Use device life-cycle managed register function to simplify probe.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> Reviewed-by: Gabriel Somlo <gsomlo@gmail.com>

Reviewed-by: Markus Schneider-Pargmann <msp@baylibre.com>

Best
Markus

> ---
>  drivers/firmware/ti_sci.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index 8b9a2556de16d..9885e1763591b 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -87,7 +87,6 @@ struct ti_sci_desc {
>   * struct ti_sci_info - Structure representing a TI SCI instance
>   * @dev:	Device pointer
>   * @desc:	SoC description for this instance
> - * @nb:	Reboot Notifier block
>   * @d:		Debugfs file entry
>   * @debug_region: Memory region where the debug message are available
>   * @debug_region_size: Debug region size
> @@ -103,7 +102,6 @@ struct ti_sci_desc {
>   */
>  struct ti_sci_info {
>  	struct device *dev;
> -	struct notifier_block nb;
>  	const struct ti_sci_desc *desc;
>  	struct dentry *d;
>  	void __iomem *debug_region;
> @@ -122,7 +120,6 @@ struct ti_sci_info {
>  
>  #define cl_to_ti_sci_info(c)	container_of(c, struct ti_sci_info, cl)
>  #define handle_to_ti_sci_info(h) container_of(h, struct ti_sci_info, handle)
> -#define reboot_to_ti_sci_info(n) container_of(n, struct ti_sci_info, nb)
>  
>  #ifdef CONFIG_DEBUG_FS
>  
> @@ -3254,10 +3251,9 @@ devm_ti_sci_get_resource(const struct ti_sci_handle *handle, struct device *dev,
>  }
>  EXPORT_SYMBOL_GPL(devm_ti_sci_get_resource);
>  
> -static int tisci_reboot_handler(struct notifier_block *nb, unsigned long mode,
> -				void *cmd)
> +static int tisci_reboot_handler(struct sys_off_data *data)
>  {
> -	struct ti_sci_info *info = reboot_to_ti_sci_info(nb);
> +	struct ti_sci_info *info = data->cb_data;
>  	const struct ti_sci_handle *handle = &info->handle;
>  
>  	ti_sci_cmd_core_reboot(handle);
> @@ -3400,10 +3396,9 @@ static int ti_sci_probe(struct platform_device *pdev)
>  	ti_sci_setup_ops(info);
>  
>  	if (reboot) {
> -		info->nb.notifier_call = tisci_reboot_handler;
> -		info->nb.priority = 128;
> -
> -		ret = register_restart_handler(&info->nb);
> +		ret = devm_register_restart_handler(dev,
> +						    tisci_reboot_handler,
> +						    info);
>  		if (ret) {
>  			dev_err(dev, "reboot registration fail(%d)\n", ret);
>  			goto out;
> -- 
> 2.39.2
> 

