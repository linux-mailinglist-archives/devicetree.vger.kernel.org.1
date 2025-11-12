Return-Path: <devicetree+bounces-237836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AB0C54DB8
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 00:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2143F34307E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 23:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E07C12E54D7;
	Wed, 12 Nov 2025 23:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vt0Gh3ix"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532BD2E03E4
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 23:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762991644; cv=none; b=fLs1hSfk5ksCDVe+bTD/bwSfCmt4ZlmHocLNojFajcAzM1Ubk4b+yuNS+KbmLuJais4fwsKLduYG4OrzUK4VidfslhyBT7JTDhwN1tP/cqQ6qoHpPxCTzHlD3bXakS7R0vC8o2gQV4Yj6skRaplYBY3TTbw6Y1u4U5OuVLEHPqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762991644; c=relaxed/simple;
	bh=bfdAnt6N21QgkLRaO8Sbl/J0PbMxqUZVFCqbeYrPwlA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V6DuxLV2jSzhGITRkH6hjQLlrIkQIBhkaESEy8UawfAoA54qxsbYYktBtVmfy5qMBM3c+zO27xI+xFtrciUqKQAwnP3TFYZ1puA7dfUfx0eFH++ZE1GhOjFTIhC1is/YFaTukvrv3EnFMSpwIcmMcdikQN8+NmicONkyjFMrGP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vt0Gh3ix; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-29808a9a96aso1864385ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762991643; x=1763596443; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SFSHq2TQze931jnwJtfVu6NeRHbqYueJM+k+Hey5afg=;
        b=Vt0Gh3ixhkgfBabjO4bh/VOWaxyh3VeBVeZWGROcEhr0L+GH0FJxgEsiSDds3GFcG6
         GsbrhGsnThbjab4GNm34zMGyy4FDIJZKOdRaGvyh9xiLkAdeecLbpafuTNueV26JeLbg
         KMnP1EhkXBuWuAm3Hw1tirKOAvTLGh4IbhA+UIrv8A2Xo/xyj3tda1ELHoRhihcTTeGO
         ScnsA3cMc5RDF1LrWDPnyaM4L9w+aRZwFTi5SxoUtE9/XuySO8F0Bl237SBhflVDJHuR
         AcbFhNBjuRUcvhcAwThyNCOqUgHZr0FkSQyKNs+FFCahNxvRkYtl/RN9cJ1QC5Sg1rrQ
         6vew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762991643; x=1763596443;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SFSHq2TQze931jnwJtfVu6NeRHbqYueJM+k+Hey5afg=;
        b=j6eFhD7iR9U/9D193+HIx8m0zYhXGciswVV2Kd2EQis+hUc4xzMF97WN92sAPiMoAV
         rH9P80eylk2ZxLNVxs/ryXlkweeT7TYwapVEjPts5EytwrQKvUWz2hUzyXsJTVh0p04M
         AoF2aA6VeQ7gHJjn3N8FJ6ai4s/NcEsJGyGIoILCe1abM2Tu1KOgZNc1Wr8VPNSS8n8B
         /Km0gpLbTGOhhcIkz+jzcLLpsqPWj/p7qmUx4o3AI9U0uq0CFW+K81VYYHTFSrm5UTEW
         fJDfXB9HH2ee7AjHTeFe4n80lEqNS49Il5wt554zAA45dZvXVku0pTgbqX5WJgg1+2Io
         ASow==
X-Forwarded-Encrypted: i=1; AJvYcCU5ZXPD7DZtiJuYvlWYw1o52C4B8tz8oARcngutMEh6GERAhbW2A4Tmk0QIzgIPpYq+SlXr0gkyCRef@vger.kernel.org
X-Gm-Message-State: AOJu0Yys0HTA3DZ0rE0qmBy01W2N7PZVEt/BFthZwDuYjHYvTyyiQpEp
	+VJgl9oy4jLluZmLEMuktIc+fx2prw9hylKFckPvetisqDc6JKguaRuj
X-Gm-Gg: ASbGncsEgzRhtxe7K2U1z0xEoNu4buGoyTwvivok8JaW1GtcRe8ktTuO0ZoeWv6oDDQ
	dzCLD/aAO5tH/bnuWaSnLNXlrdbJk50bxOoW75mDUYtMV+Rxpl/tBmA8QdvZB7jg+kRPPokGEr9
	eNoxl7RyojALG80xPBheZt5Qrb/PXhy4ddMvYXCfTugUix7Ds4k8/kJtiQUQusCgx/cbEZ09C/R
	DzdK5BTfOH2qpUKcRfKeNxOPhZ/qSZmWCrliqH0hQFRuiis6cuuYnJfkEUJunTLmr3xjDBZjVAm
	jxqzAd/xkHF4k57krxcYijyAMDGThDNuz0FBT++SwE+ukRxV7OokdrTrGPUJgV/AUBj1ouwjdJC
	sJ+90hHnYSZyVUTYmwOixwykSiPiORNsKAfRacKcM77Nid0NFS7hBNGi3MkSB3PS1zmqlPnZAid
	cuwvGeiRbPhJL4289tX8ZWWQo=
X-Google-Smtp-Source: AGHT+IEGOc1HlsHsRPGcd+y4vVfFBFj9v2mqQOArxmZBimDRKkrkYiGkzRLMz1a5z/lHBc3UTthgsw==
X-Received: by 2002:a17:903:2f88:b0:274:5030:2906 with SMTP id d9443c01a7336-2984edcd3a1mr61466505ad.46.1762991642666;
        Wed, 12 Nov 2025 15:54:02 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245e04sm3389265ad.38.2025.11.12.15.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 15:54:02 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 12 Nov 2025 15:54:01 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev,
	devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 3/5] watchdog: loongson1: Drop CONFIG_OF
Message-ID: <74ea5501-e4ea-4dbc-8c94-a1ca5d4abc66@roeck-us.net>
References: <cover.1762482089.git.zhoubinbin@loongson.cn>
 <a374b938f2cc304b7e618bf22a5e8fa9f32e3efd.1762482089.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a374b938f2cc304b7e618bf22a5e8fa9f32e3efd.1762482089.git.zhoubinbin@loongson.cn>

On Fri, Nov 07, 2025 at 02:01:29PM +0800, Binbin Zhou wrote:
> The general recommendation is to not use of_match_ptr() or CONFIG_OF
> ifdef.
> 
> Drop them.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/loongson1_wdt.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/watchdog/loongson1_wdt.c b/drivers/watchdog/loongson1_wdt.c
> index 781f01f1f888..255198cbf5bf 100644
> --- a/drivers/watchdog/loongson1_wdt.c
> +++ b/drivers/watchdog/loongson1_wdt.c
> @@ -142,20 +142,18 @@ static int ls1x_wdt_probe(struct platform_device *pdev)
>  	return devm_watchdog_register_device(dev, &drvdata->wdt);
>  }
>  
> -#ifdef CONFIG_OF
>  static const struct of_device_id ls1x_wdt_dt_ids[] = {
>  	{ .compatible = "loongson,ls1b-wdt", },
>  	{ .compatible = "loongson,ls1c-wdt", },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, ls1x_wdt_dt_ids);
> -#endif
>  
>  static struct platform_driver ls1x_wdt_driver = {
>  	.probe = ls1x_wdt_probe,
>  	.driver = {
>  		.name = "ls1x-wdt",
> -		.of_match_table = of_match_ptr(ls1x_wdt_dt_ids),
> +		.of_match_table = ls1x_wdt_dt_ids,
>  	},
>  };
>  
> -- 
> 2.47.3
> 

