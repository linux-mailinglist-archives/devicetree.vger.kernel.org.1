Return-Path: <devicetree+bounces-309452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bbEVEZoPKWqkPgMAu9opvQ
	(envelope-from <devicetree+bounces-309452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:17:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BF06668F0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:17:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZNz8het9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309452-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309452-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9DEF4304AB00
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5006A38BF62;
	Wed, 10 Jun 2026 07:16:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C06389458
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 07:16:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781075797; cv=none; b=B/8i4R4bNQG4uF/iLYUSEhnH1dy9DHOaa420w9i9SPY8jVQlX9Tzbl5BpVqp2vx5SuozDHWIJq7Zz6C8CspA/S8OX71e7LsPFwmFqeZCaMSsUTYW9+EjgTIW48RA3laFZMxmM2yEpaVfdDx6HVlTtis/REdeNnMLtd1O9SOGfWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781075797; c=relaxed/simple;
	bh=RmSyIZYBm5BBud27yt8n7nimrWLHPIUxOYz60PnwVgs=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VOCzKMa9dQslL3znyFwMeo7hi0TS2H8Qku2Tzga5TwmUo+RXnUmFW5/JY9lbxLfSD+gOeoGAgFA0A7b22JVOwJ5L9iUWFR0hovdLms38/X6VNp1h1dnnFPENDS1SvkJ0rtKYrsZPhU7FH0hEmrrNbny0HFc7iwj0j1LEE8Ow/nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNz8het9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E72E1F0089C
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 07:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781075794;
	bh=RmSyIZYBm5BBud27yt8n7nimrWLHPIUxOYz60PnwVgs=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=ZNz8het91ikt+x1M1s5p9PGlBuGwK6RT3fJOsixKPT0oLGv/+ExoPOXgaKlDUXC4g
	 yNiSX2rnUrjPK0DFmAHvPnOUxv+7b8RIuJQubohnxPkfxwbzBGKjZOu+18aq6/fvIH
	 YWdd7cDfBA0yKZkVZDoJi1SERSVEAwyeMsD+z02WwgP+fwb6Pf0rvGyg5uCI8CCh0Q
	 ObMAIHLrxWJiSRB4kpwyLXEYsw+4Y94WnUr2p0KzdaqJ42pTinqi2V0+Ysr9TJzCOA
	 obmp14R4zFRbracZNrysg5DBDxGRHOWdxjsCN42EwgX3frrY6y8/yiZTmo3PSdwBrZ
	 gohsI9aiEafxg==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5aa68d9d4a3so7241851e87.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 00:16:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+HewF8ECyiVxnBwyxsrEQ0T0ELiURRCXk5d1hXWqWLKjz/lTgR6KJbtC2VW2n62psLPJJc9tmVLg8/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9RJxo3U6tVg6uXtVxxZI4elISytCSmCejaLuKyhRTc/ChM4Fz
	BzIsxD2jYhptO2Fhio/hD5JWwK8n7n7srUlqLJX5DTUvzyXDp8IAwYIMEu3DrWa7ozdq7ppBn4m
	hiubEiI50+F6zZrRCT+GnIkDIG3X9yfmfGdH7Pl9TBg==
X-Received: by 2002:a05:6512:3513:b0:5aa:610a:374f with SMTP id
 2adb3069b0e04-5aa87b91e6dmr6785826e87.38.1781075793080; Wed, 10 Jun 2026
 00:16:33 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 10 Jun 2026 03:16:31 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 10 Jun 2026 03:16:31 -0400
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260610-ultrarisc-pinctrl-v4-2-b7e9b2a8ed84@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260610-ultrarisc-pinctrl-v4-0-b7e9b2a8ed84@ultrarisc.com> <20260610-ultrarisc-pinctrl-v4-2-b7e9b2a8ed84@ultrarisc.com>
Date: Wed, 10 Jun 2026 03:16:31 -0400
X-Gmail-Original-Message-ID: <CAMRc=MdN6q3QBy6gip0DzajEkAdPn9V2q_SMoHNaqRisc=cwdQ@mail.gmail.com>
X-Gm-Features: AVVi8CclKZRUSD_vOJ4r4MOi2qhfbjTTcG9uDl9HKEcQlTy0yfwzLywyGbfBMzI
Message-ID: <CAMRc=MdN6q3QBy6gip0DzajEkAdPn9V2q_SMoHNaqRisc=cwdQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] pinctrl: ultrarisc: Add UltraRISC DP1000 pinctrl driver
To: wangjia@ultrarisc.com
Cc: Jia Wang via B4 Relay <devnull+wangjia.ultrarisc.com@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309452-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:wangjia@ultrarisc.com,m:devnull+wangjia.ultrarisc.com@kernel.org,m:linux-gpio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linusw@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brgl@kernel.org,m:devnull@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,wangjia.ultrarisc.com,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6BF06668F0

On Wed, 10 Jun 2026 07:29:56 +0200, Jia Wang via B4 Relay
<devnull+wangjia.ultrarisc.com@kernel.org> said:
> From: Jia Wang <wangjia@ultrarisc.com>
>
> Add support for the pin controller on the UltraRISC DP1000 SoC.
>
> The controller provides mux selection for pins in ports A, B, C, D, and
> LPC. Ports A-D default to GPIO and support peripheral muxing. LPC pins
> can be switched to eSPI, but are not available as GPIOs. Basic pin
> configuration controls such as drive strength, pull-up, and pull-down
> are also supported.
>
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
> ---

Looks pretty good to me.

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

