Return-Path: <devicetree+bounces-237834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4561C54DA0
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 00:53:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0ACD73B3A4E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 23:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0452E54D7;
	Wed, 12 Nov 2025 23:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FGt8fL5h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B079A2BDC2B
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 23:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762991611; cv=none; b=spIDeQzK/8t/YP8vweZ8WrjYr3tiWFLEMy37sb6Vy3vx02tnIsYUU9oY/8DDd/YVUJvnGoTWE7KcGXR8XsUehVgRTWvEMuwWPl9XKYs5Nec2TZK60wrt4RznA3JdK1ThuyUKNBdNQKAbRdh2vh/VTBNSZs36hyIGj6zx0yO/Lhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762991611; c=relaxed/simple;
	bh=1oh4kdyHSPaK+b9pJi2NRh2Nd8VTsArQsjrm7EcUryE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=baVf/cds2Amj4qmfxkSTEb/3QGuIOsh2QKv+gFUvj9CTTUDA0x4XZoA3pPqZfD+UiXFkAYNjbxhJGyq44QuloSYWYTAllad2FNhnPXyKpB6tUX9uqjXgpqBYsB8bvGIfY7ZugzGFGCuTYPHkkDQi7j7Ln2TrVnomqalEfTDO3bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FGt8fL5h; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7ad1cd0db3bso163337b3a.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762991608; x=1763596408; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lmmNifhpcubbDE9dZKiYrF4P2VKB8IFtV9YZ7wRcTbI=;
        b=FGt8fL5hWs9oN0fWW1GMskr3lGb16/Jr/VWopHPt1Gr9FJE/aXvBdzUmY3n34TEC1T
         Vh565k4JoGV//TELlMhjWYb7Ch5yfDgfI8pH4KNKEfVUtbmeHg7YIxiXklJUUtHmRULQ
         s0kD6cUsedhdqsuKyIBiG3+G2F+s0Bs0v2qruot8pRLcrQtwZ9GfPJGXGjqJMTGCmkbT
         sX2SB6WGACeh7UFOwmSVLFvPaJBD61Ogtj0ceEJynJmBxL5BqKJWsdI5tbcstqUtyCvw
         t/wSsVSAZ5Ma2mDUjBi8oP7SS88hKfeBxNj2Fx4c4eEEU3aJZ6p5m5rfKYjwGsEevq/n
         7TDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762991608; x=1763596408;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lmmNifhpcubbDE9dZKiYrF4P2VKB8IFtV9YZ7wRcTbI=;
        b=MGQDP68qjdRyXYvlCBsytdEIZks3dX2iN8WQWeLGIQqyOadEagQAuphWdsVgJbQco/
         1ufTfyLjlNIvCCnBvFEskYnzY9owE8aznjW6ivD0FT0PtUEFwA801KXi2Ekx8MueN9AG
         uc0G/gtvv2pRGl6+d5s0X1rvorva8tSaWcO9GZutpph5ipApbDp/QlLG0NAyPFAMk1d8
         SF9eO/tLsjY8Uib/nmr+cmv4Aq7puz+jKmjVZq5BOj+mznYYu7XVt0D7o1pU9NuW8ihD
         xVp02BtOV5qXPBCwTt2octK/lT2KYeAkh1D4Zwo2pMlvvIMXRFS2jNs16e9TO2rt98ZJ
         yWfg==
X-Forwarded-Encrypted: i=1; AJvYcCU6pWsZsfEetQwXqGKd9aXiuTTqCKQiGUGv2+cGqAeGjpPfugQNVC+F9NUw7eYcTCQ892ap/cvkwG/O@vger.kernel.org
X-Gm-Message-State: AOJu0YyVdnGB+Yno3WZvJKopU/zKU7GyKmSbA8Q48uvtqn3tM5i5SeRE
	jrHH3J+u/fEpyu4Xoa9WKsJEvEv90E7XzupHMcCzjCY9Hrx9IGMF1FcR
X-Gm-Gg: ASbGncvv51nQO5K0NrR30A7AIeVmpzfdfCCWnM1bM7s555zCz3PEZ7tqQCR7+Va+PnL
	esgd+SjIeaFP8naNWBnUV61qCW+oLStzqXSuCmWoMYbBg9QY1J4ucnUEZVyipS75pwI4nY5510W
	x5aCAX23FyzLOddgUYGGyjShh6m8ISiXC1HuE9zLF+CgwX6m6sJ86UkhUJH0Vo7X2OpHu2wKRSY
	HAF48NrhC+jOCN0GJk0eKLlOlYyOxrOsL/ycXOh7DybKmfNfu3g4vbBSiS4zMjU+Rj6DA4MKOuJ
	H6yEwb4JhFZnzyVklyJEL56R3G2tkxc0dHo9R1A55GQ9OUL6ic3ywUrk0CtR6OnuISel+iUZN9z
	A8a0ZinbqWAys8cFvBrPTyy8NOl1EwHapSRvh9xSnTZMOnpcb+ZrcnTHP7hGL74lRx+1SH16OMd
	SENafagyCU9ze5
X-Google-Smtp-Source: AGHT+IFgjVC8Vixif7sXqQSZ4rTFRseItczPfc0Wpwx5dz8YYT2ndmfeYyeuO2aXuPaCsvXZJFRH2A==
X-Received: by 2002:a05:6a00:1815:b0:781:17ee:602 with SMTP id d2e1a72fcca58-7b7a4edfca8mr6079755b3a.28.1762991607917;
        Wed, 12 Nov 2025 15:53:27 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b924aee8afsm218358b3a.8.2025.11.12.15.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 15:53:27 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 12 Nov 2025 15:53:26 -0800
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
Subject: Re: [PATCH v2 1/5] watchdog: loongson1: Add missing MODULE_PARM_DESC
Message-ID: <aa2ec413-628b-4690-84f3-03ac1c435ffc@roeck-us.net>
References: <cover.1762482089.git.zhoubinbin@loongson.cn>
 <707bfcf1a45008ecf5c8d517430332a66d4ee758.1762482089.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <707bfcf1a45008ecf5c8d517430332a66d4ee758.1762482089.git.zhoubinbin@loongson.cn>

On Fri, Nov 07, 2025 at 02:01:27PM +0800, Binbin Zhou wrote:
> Add documentation for module_param so that they're visible with
> modinfo command.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/loongson1_wdt.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/watchdog/loongson1_wdt.c b/drivers/watchdog/loongson1_wdt.c
> index 0587ff44d3a1..8502263b0d6f 100644
> --- a/drivers/watchdog/loongson1_wdt.c
> +++ b/drivers/watchdog/loongson1_wdt.c
> @@ -18,10 +18,14 @@
>  #define DEFAULT_HEARTBEAT	30
>  
>  static bool nowayout = WATCHDOG_NOWAYOUT;
> -module_param(nowayout, bool, 0444);
> +module_param(nowayout, bool, 0);
> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
> +		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
>  
>  static unsigned int heartbeat;
> -module_param(heartbeat, uint, 0444);
> +module_param(heartbeat, uint, 0);
> +MODULE_PARM_DESC(heartbeat, "Watchdog heartbeat in seconds. (default="
> +		 __MODULE_STRING(DEFAULT_HEARTBEAT) ")");
>  
>  struct ls1x_wdt_drvdata {
>  	void __iomem *base;
> -- 
> 2.47.3
> 

