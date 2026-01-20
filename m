Return-Path: <devicetree+bounces-257372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMWjM/GMcWkLJAAAu9opvQ
	(envelope-from <devicetree+bounces-257372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:35:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 471F260FB6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 03:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A2AF68245A3
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B711425CD4;
	Tue, 20 Jan 2026 12:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjL3GeaZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3697D423146
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768911380; cv=none; b=SXWuK3azt6ady4fxzYMlnj8edEWpVexaiUwuvhKakodTJBQzxXmubdLty7sG/vbX+gOHtmP49PmIIgWeWgt1mqwxjUdzOqDUkRsRBRsETsOBXAYEcP6Aj5LQMvzG/86L1bCPpUrW9oHYmmNNOriHAYD9ZI3nKCmwTBz1N1s8NYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768911380; c=relaxed/simple;
	bh=+zZx1UCGop6TYPZIxrfkSxnpM9rhdSNLbAwPt6AGnAU=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VYvwM906AMSry6rKtUn/6kJ+aXKc8TwCIGRwXr548F9uZTbYyteAd31ExRgX0qs3C86tKQXHZ+L2TNORhMei89Ut/Hu0l3BtXtlgWVsp8KxU+JG/QNdvK6PAFxwYerTSftriEa51wuFytPsjGkN+1wxfSYpb3yaPNMn4c0aPi/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjL3GeaZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC6DC2BCB7
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768911379;
	bh=+zZx1UCGop6TYPZIxrfkSxnpM9rhdSNLbAwPt6AGnAU=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=KjL3GeaZzuJ416a7GxI+F11kDaKsrYLK0V6IMppL8/mVFXv4yIPkzLLACjnXs3zJu
	 yAPWb1yuPbjMTkV5MjhigVb5P2fgp1CMxOqZdAEFoMc75UVPsFI5YPzB3oYX/1ye+a
	 QBZczAamyqfW5Z8dUucGo/bRJl16usMiTt+vdEaVLt8xzpnIkAQqmG6XPysWnFwAkK
	 pkFZlUxT09h/U5Oaj4n5IIdL3Qq7UtOGBnR5oFPASgQLkE6KxE9aKvFStC5Hicw8+C
	 zCibngRXB6CoJ4VdyqFqQ0js/x0njel6NQarfEty25OwhNJXB1JVqfdXm8gZcxXChw
	 lGHo9JLia0YBQ==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59b6d5bd575so5296967e87.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:16:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU6RCDKrj//AvCZ/tBovH3ZH1vAnRMw7sv85fnLFToBUxmcW1KZtTcmaqU4P5m5EkPv2xi32ShPNby6@vger.kernel.org
X-Gm-Message-State: AOJu0YxU6hG1m4u0WvhdTG3jvoIQ5b7/2fqAeT2B08VFajXQAnDt7lKZ
	8SPBB5d2KDvsBnNiH/xfjlhSxzYeG04U//dSgWhdFCOdOCfSzqb4t4I/dVLWn0SJA7HO7uRMpn3
	zJ8I5jUwYdObfaOnusi58gRRSJhLlIW4Ij//+n1zixA==
X-Received: by 2002:a05:6512:2526:b0:59b:6853:f085 with SMTP id
 2adb3069b0e04-59dc8f2348fmr709971e87.16.1768911378444; Tue, 20 Jan 2026
 04:16:18 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 20 Jan 2026 06:16:17 -0600
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 20 Jan 2026 06:16:17 -0600
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260120115923.3463866-11-khristineandreea.barbulescu@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120115923.3463866-1-khristineandreea.barbulescu@oss.nxp.com> <20260120115923.3463866-11-khristineandreea.barbulescu@oss.nxp.com>
Date: Tue, 20 Jan 2026 06:16:17 -0600
X-Gmail-Original-Message-ID: <CAMRc=McD0cRxtb3RCzzYPewFisto=4OjvA4gjaTcOk8ghTw_qA@mail.gmail.com>
X-Gm-Features: AZwV_QiTyzFRnq5hh7hZRZvq1Kgy4gAD4D9HxCaMuBiHbH1GRoIc82NCrITXf6Y
Message-ID: <CAMRc=McD0cRxtb3RCzzYPewFisto=4OjvA4gjaTcOk8ghTw_qA@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] pinctrl: s32cc: set num_custom_params to 0
To: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
Cc: Alberto Ruiz <aruizrui@redhat.com>, Christophe Lizzi <clizzi@redhat.com>, devicetree@vger.kernel.org, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, NXP S32 Linux Team <s32@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, 
	"Vincent Guittot devicetree @ vger . kernel . org" <vincent.guittot@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	Lee Jones <lee@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[38];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-257372-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com,pengutronix.de,linaro.org,bgdev.pl,kernel.org,gmail.com,suse.com,linuxfoundation.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 471F260FB6
X-Rspamd-Action: no action

On Tue, 20 Jan 2026 12:59:22 +0100, Khristine Andreea Barbulescu
<khristineandreea.barbulescu@oss.nxp.com> said:
> From: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
>
> The `num_custom_params` was not set to 0 and the pinctrl_desc structure
> was not initialized with 0. This would result in errors when parsing
> pinconf properties from the device tree.
>

Shoudn't this come as first in the series and with a Fixes tag?

Bartosz

> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
> ---
>  drivers/pinctrl/nxp/pinctrl-s32cc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/pinctrl/nxp/pinctrl-s32cc.c b/drivers/pinctrl/nxp/pinctrl-s32cc.c
> index 3e0c48068f08..27ea0b44a7aa 100644
> --- a/drivers/pinctrl/nxp/pinctrl-s32cc.c
> +++ b/drivers/pinctrl/nxp/pinctrl-s32cc.c
> @@ -1272,6 +1272,7 @@ int s32_pinctrl_probe(struct platform_device *pdev,
>  	s32_pinctrl_desc->pctlops = &s32_pctrl_ops;
>  	s32_pinctrl_desc->pmxops = &s32_pmx_ops;
>  	s32_pinctrl_desc->confops = &s32_pinconf_ops;
> +	s32_pinctrl_desc->num_custom_params = 0;
>  	s32_pinctrl_desc->owner = THIS_MODULE;
>
>  	ipctl->regions = devm_kcalloc(&pdev->dev, soc_data->mem_regions,
> --
> 2.50.1
>
>

