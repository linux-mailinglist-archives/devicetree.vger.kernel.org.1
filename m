Return-Path: <devicetree+bounces-257369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJebAb0/cGnXXAAAu9opvQ
	(envelope-from <devicetree+bounces-257369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:53:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAB0500FF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2A2B464AE52
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD043EDACF;
	Tue, 20 Jan 2026 12:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCswIA6y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987DB3A4AD4
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768910937; cv=none; b=aZkERpr2xTMDsbL+j5emNptiCeLUuLId6KiKkKQc+9mFg2RpiAvB1t7frMHXSld6I86vwjqoWNIDGBOFPML2+8Gmue80iEA8UO8uceRb0LT5Y+3MP7ZdiIobk6X7eZ5ntDPgXR62XKN6TnKjHgdR64UFeWcoYL5Kr1jfu+9sVv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768910937; c=relaxed/simple;
	bh=wWduyM9RlO+S4Fnf/tbYPskuyvgMrxmnLzQbsy0Fsm4=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SO9rz7t6RawQixOVxGcXgwNHyZTv062enCIUXj+4Wlb7h4bZ0ID3Ihn37On/UWnhH2krUG+8Zq8fr5ziXCovsPaRypOGaH6X2naqSl8R6msH9UgZBK7WZntiTviRIIH5dhzaTgioZBnUqrhb4hXshkuRc+RppR3HJusAGAYG6ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCswIA6y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CA57C2BC9E
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 12:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768910937;
	bh=wWduyM9RlO+S4Fnf/tbYPskuyvgMrxmnLzQbsy0Fsm4=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc:From;
	b=DCswIA6yG5bSVLokevhtRKzOiDjk5PmG+p/kcPu68Rgj2ZJ+Uus1Aod6ukvmY5VyB
	 VUWDFQrfNra2zlmB/N89m03P0Xr688h7w60rmcU1dTYpfCSO3yeEJyyWc/c6CMX9db
	 T6EKXnU3IYBTh0JYdRYi7pD+9JIWGilHKotlI5d2DbVZV6xWaE6YKZXms9igmLbiGJ
	 OWqU7Mq6UHNHpesG/J+TJDacagdK74huWY3b+1AcsSgC79VWlyp2wVnJjo7mV6xGzE
	 i4TPA5avHk7XmHYIlCEroDCZV2Z/HkYSKr+3PZCVhq0a//Uvc/PhKaHxrZebzfcf2w
	 F+cDN5zEB6qbA==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59b8364e4ccso5740603e87.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 04:08:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCURbWHxX/8UDhYijx2rRVTWXLYXf5u38jY6u/krQe6cxlFkh4tqtd4+3N8x9lGmOGohz/idHyW4NmiA@vger.kernel.org
X-Gm-Message-State: AOJu0YysThEDkjgwDMjaTa4T414qkd6pvIxytZTcVpJB1e2Hk6BxoMwc
	fb/NG3v10Ok0fNGehKWbC/jn/LrIHmVZd5UaqgtY96IUVi/G5wcHyAQD9GgCokl1JZ318TBFfds
	6D9zH/1BcBSrgoggdItMJZ7R9MFc8qKLrBqiZS8RYZg==
X-Received: by 2002:a05:6512:2526:b0:59b:6853:f085 with SMTP id
 2adb3069b0e04-59dc8f2348fmr701250e87.16.1768910935983; Tue, 20 Jan 2026
 04:08:55 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 20 Jan 2026 07:08:54 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 20 Jan 2026 07:08:54 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260120115923.3463866-7-khristineandreea.barbulescu@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120115923.3463866-1-khristineandreea.barbulescu@oss.nxp.com> <20260120115923.3463866-7-khristineandreea.barbulescu@oss.nxp.com>
Date: Tue, 20 Jan 2026 07:08:54 -0500
X-Gmail-Original-Message-ID: <CAMRc=McfjhfLwDR-wK=-WrC0yMZ3nt1YjAJ5RyQfsrgk1o6raA@mail.gmail.com>
X-Gm-Features: AZwV_QisPQ-QjOl5tcjlAYHwC875PPGQpfp236P6QoGB-8mZ48tjgJMnK8XIV-Y
Message-ID: <CAMRc=McfjhfLwDR-wK=-WrC0yMZ3nt1YjAJ5RyQfsrgk1o6raA@mail.gmail.com>
Subject: Re: [PATCH v8 06/10] pinctrl: s32g2: change the driver to also be
 probed as an MFD cell
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
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	FREEMAIL_CC(0.00)[redhat.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com,pengutronix.de,linaro.org,bgdev.pl,kernel.org,gmail.com,suse.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257369-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DKIM_TRACE(0.00)[kernel.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,mail.gmail.com:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9CAB0500FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 20 Jan 2026 12:59:18 +0100, Khristine Andreea Barbulescu
<khristineandreea.barbulescu@oss.nxp.com> said:
> From: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
>
> The old pinctrl bindings for SIUL2 are deprecated by a previous commit.
> The new bindings for the SIUL2 represent it as an MFD device:
> - one cell for combined pinctrl&GPIO
> - two cella acting as syscon providers for SoC registers access
>
> This commit allows the existing driver to also be probed as an MFD cell.
> The changes only impact the way the driver initializes the regmaps for
> accessing MSCR and IMCR registers.
>
> Signed-off-by: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
> Signed-off-by: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

