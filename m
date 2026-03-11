Return-Path: <devicetree+bounces-273772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIWeITi2sGlvmQIAu9opvQ
	(envelope-from <devicetree+bounces-273772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:24:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B077D259BEF
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 06D7A3033E53
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7504431F9BE;
	Wed, 11 Mar 2026 00:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NdalJYfv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B66731F9BC
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773188499; cv=none; b=SQPmHZ+Pe06mEuESjMRbvnMj+rfNYSGsoYgda9g5qhygq6+Il/KJhgkp6lKWH0bj7P+vL6bI+JMRT0ovLgMne2uN2hQMZXIyM4t6DasRxcw31/Lovv83N1+pfyw9fdLINzyxDgQdweqWuisSoIP+5gcvcLAvWs6cER4by/eXZWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773188499; c=relaxed/simple;
	bh=6FSfGjfEA7I/CqRKQXRkk4AHYuVTpiF3UrEghTud5sY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jijH6JeX5xFltSVwSY80bbkpjAfxBM/K7wz1X7X382gLO9XmJvd7AXSj9Qfhk8isykEWUM522a7/jBFKI9MZYXFxdja/k0pgf4pJ+lSfiHSNFrSKU3JI8Kwo0Q+ZY15n9vdxmCcmnhsxdTsPewFYwoEi6ql/AxifiLI55lDe/ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NdalJYfv; arc=none smtp.client-ip=74.125.82.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2be1c918173so15951387eec.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773188495; x=1773793295; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KZ1q6EFUHntWG4ZxMjM+nzdLiPNGdE6ZpSx+iizQ7CU=;
        b=NdalJYfv582qiyEDEi4EvAFTtEySq8+0oJ1q1s4QYBekSCOgBQp6ovSi27SJhXVP+3
         RGIemkrP2T1ZPXJGFeCcCmvIlbID97JxErebvw2RNUE9aNGdLx1yNDwSeUoRrXrbzkE4
         XgudbaA++ndxSwcBm8XwQTABFwZHCqSCCpZpvGuPLumVSCOjI1yeOPTv8+XwnEnanCj+
         REznyaSDYkDjDdkngc36wEayMDdf9t2S1130QAt4GQ2HDFyIHtGXWjjdEtDUiN1FJI3h
         aaJhQR0/zxVhhyRrMicqCkV2+X9Blq8EgvwUMfVYZMNVtthy7MlSFxS4LAuFPvX37S6r
         e2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773188495; x=1773793295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZ1q6EFUHntWG4ZxMjM+nzdLiPNGdE6ZpSx+iizQ7CU=;
        b=E8/nELhzhWVKAx+aHQ59IlgUlrZ8nVYFuxCntWga0r8pjIhJ+l95Ch68IUQLy1ma45
         uFr5rLYwU+HyeUGUt4AhfS5hnVY0FQWt8R7208HSuB4lv+Iy/76Pyn4XdH8Pdgi8FbE1
         3p8jgXi4U/XcrCVkKI3uxQhNjnSiAvuLXf9FiPSWQKchSzuPYC+B5Llsi6kUtnrzPwuG
         qEJ/vilgh/oru+W7OYCSWy883oK3h4GhgiXImkUh9hCYTkCT3NsUwVXdbw+l/o/KVE0o
         OE83u3oc6kcRtzSAN/QY/OlpmTYRi0cDWA98atpadPELhUuYbUmZDyn2HlJ1bnS59sw9
         Zg+w==
X-Forwarded-Encrypted: i=1; AJvYcCWc7o/WAJF2Z3ErK1b/q8gZaAvn58uHMD9dXRLI/8+uQ8HFfNgG2K/jNzns9I4ptr0r48ln/6aAkStn@vger.kernel.org
X-Gm-Message-State: AOJu0YxUsHhO9Zl4/WKiOf4esTpsprTLulpCgegSq42IcmnxquBVv0A5
	MhSKRdyWwOqz3pPohqFqkXdMVro3uQHFC/z+s5gGmi7MdthP7PSF8vLx
X-Gm-Gg: ATEYQzy47U6wYtUdH6AQeBu73mblE3jnX2IpOh1qPrgi3+n/GeXl6I7u26YbAJ3vB07
	1d3NQ1udGu37SS24gSiiQIK1BpdL1VbrQrJr89CXvMgDmEzbPuVsdRBIj1BuRL+pFiLkF9u1/A/
	fwxaD7zy4ymqCLiV3IJhS7MVLQkEeXg65hziVodjGRxCTyRzieW0zIFUGsfOf04DYTh362IvDur
	MwFF8F5z1Pt4xHJcZhLIvgSpdEjykRw2jsZLcwm5URbstACXe6Z1m4NLs0ds9qGXKWxJ3VTS2MB
	snzk1m0U9hzxlQWecfsQ3Y4FXOS/PvRORJ010VL17RLPB+JR7PgGvCXM0Kvflb/niCA4Jgq1F0y
	GFfLbDZ8t1d3dF2Ic32gU8vTHq4DUt3yA/isDv3VC3DJlZ1dyoE8tIx30Tu4N9d7uqzqTnmYpwX
	Q3idy+Qi5XVH61AU6ZJK1ZM3XXE2gShx83r3MIhfv8vWZiYiAyvqWxXqWgLMIV1EvC
X-Received: by 2002:a05:7300:a59a:b0:2b7:24fc:f638 with SMTP id 5a478bee46e88-2be8a0f188fmr385401eec.0.1773188494956;
        Tue, 10 Mar 2026 17:21:34 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:6e17:9d84:ffa0:986b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be8a853840sm533327eec.8.2026.03.10.17.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 17:21:34 -0700 (PDT)
Date: Tue, 10 Mar 2026 17:21:31 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: phucduc.bui@gmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ingo Molnar <mingo@kernel.org>, Thomas Gleixner <tglx@kernel.org>, Marek Vasut <marex@denx.de>, 
	Michael Welling <mwelling@ieee.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] Input: Touchscreen: tsc200x - delegate wakeup IRQ
 management to I2C core
Message-ID: <abC1NfUoHCHEeZpr@google.com>
References: <20260309110045.108209-1-phucduc.bui@gmail.com>
 <20260309110045.108209-3-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309110045.108209-3-phucduc.bui@gmail.com>
X-Rspamd-Queue-Id: B077D259BEF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273772-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 06:00:44PM +0700, phucduc.bui@gmail.com wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> The tsc200x driver supports both I2C (tsc2004) and SPI (tsc2005)
>  interfaces.
> Currently, the driver attempts to manually manage the wakeup interrupt by
> calling enable_irq_wake() and disable_irq_wake() during suspend and resume.
> 
> However, for I2C devices, the I2C core already automatically handles the
> wakeup source initialization and IRQ management if the "wakeup-source"
> property is present in the device tree. Manually managing it again in the
> driver is redundant and can lead to unbalanced IRQ wake reference counts.
> 
> Clean up the wakeup IRQ handling by checking the bus type:
> - For I2C (BUS_I2C): Rely entirely on the I2C core for wakeup management.
> - For SPI (BUS_SPI): Explicitly call device_init_wakeup() in probe and
>   manually manage enable/disable_irq_wake() during suspend/resume.
> 
> The ts->wake_irq_enabled flag is also updated accordingly to ensure the
> driver accurately tracks the wakeup state across both buses.
> 
> Note: This patch is based on code analysis of the I2C subsystem and
> has not been verified on actual hardware yet.
> 
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
> ---
>  drivers/input/touchscreen/tsc200x-core.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/input/touchscreen/tsc200x-core.c b/drivers/input/touchscreen/tsc200x-core.c
> index eba53613b005..d14d967845c8 100644
> --- a/drivers/input/touchscreen/tsc200x-core.c
> +++ b/drivers/input/touchscreen/tsc200x-core.c
> @@ -465,6 +465,7 @@ int tsc200x_probe(struct device *dev, int irq, const struct input_id *tsc_id,
>  	ts->idev = input_dev;
>  	ts->regmap = regmap;
>  	ts->tsc200x_cmd = tsc200x_cmd;
> +	ts->bustype = tsc_id->bustype;
>  
>  	error = device_property_read_u32(dev, "ti,x-plate-ohms", &x_plate_ohm);
>  	ts->x_plate_ohm = error ? TSC200X_DEF_RESISTOR : x_plate_ohm;
> @@ -547,8 +548,9 @@ int tsc200x_probe(struct device *dev, int irq, const struct input_id *tsc_id,
>  		return error;
>  	}
>  
> -	device_init_wakeup(dev,
> -			   device_property_read_bool(dev, "wakeup-source"));
> +	if (ts->bustype == BUS_SPI)
> +		device_init_wakeup(dev,
> +				 device_property_read_bool(dev, "wakeup-source"));
>  
>  	return 0;
>  }
> @@ -565,8 +567,13 @@ static int tsc200x_suspend(struct device *dev)
>  
>  	ts->suspended = true;
>  
> -	if (device_may_wakeup(dev))
> -		ts->wake_irq_enabled = enable_irq_wake(ts->irq) == 0;
> +	if (device_may_wakeup(dev)) {
> +		if (ts->bustype == BUS_SPI)
> +			ts->wake_irq_enabled = enable_irq_wake(ts->irq) == 0;
> +		else
> +			ts->wake_irq_enabled = true;
> +	} else
> +		ts->wake_irq_enabled = false;

Sorry, but this just makes it all worse. There is no downside from
letting the driver to control wakeup if it wants to, so I'd rather leave
it as it was, at least for now.

Thanks.

-- 
Dmitry

