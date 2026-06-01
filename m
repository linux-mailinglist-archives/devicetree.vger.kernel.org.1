Return-Path: <devicetree+bounces-304955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CxmKTU4HWoqWQkAu9opvQ
	(envelope-from <devicetree+bounces-304955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 09:43:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A9A61B094
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 09:43:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9EB4A30078AC
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 07:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77213387359;
	Mon,  1 Jun 2026 07:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBdr+jJx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E48C387346
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 07:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780299824; cv=none; b=ZMqY4oSwPed4kF7g6TTOaHa3zHjrXu9rsS4xg4qZF0u7LJ2sz4jl+zjWIRmWoovZXpk5tZRCTnCRW4sh0UJDPEaFmTSNn7Pf61Kdhuh7ELeiSF3IRsQfPaA8RU7V2Q6OL6DihiB59NC9Ce2ZdWMVb98LaNSB9J7WIk0lpd4fFgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780299824; c=relaxed/simple;
	bh=qMtKzaRG1JyxGNgBU/zbhtltiFCLQAPT4zq0DN3gSGE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SxvbrzGZ4VTHgFpGd+FqzXyls6cV+KQjtz59uy9Zgs0RnMCPdoUEkuYrFLVBm3U6Aiw0n5NP0Yw+gBOXTSRTCcR66WW6cgwA0bU7Ne5blsxHMh2mrEraxNEgH+t+enB3GZToUyY2l7XbMmoPFTS/MrDvzq3AT4+LnsVQtZDm5zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBdr+jJx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 414D21F0089A
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 07:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780299823;
	bh=qMtKzaRG1JyxGNgBU/zbhtltiFCLQAPT4zq0DN3gSGE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=ZBdr+jJxED4UPFH3pIatQubDjAj2Jd18uItu4u72LwwJZoSUNA9L+9vt5NbCtsR8V
	 gwebINCZ6dPZfeLXfelzSmgOVdikm/j8+DwKca3XzM1SOARjBzhYI/708iKCfA7Toh
	 Oja/BhwfYZJg/wEbA0lmatTOpUrUfseb0L/uRxTQ5tOA3LgRxnpfO1OypjJ0itNz80
	 rveo3wH2bMHMaX8EsJvHsPaWb0ZZpQ5KguAy6pfnDOdO+qiJqJlh+D1hCEc8VLWWHT
	 Nj4+Zo825yIpn5ksPswnm7eGso5m8t5px/0c9IAgV2Ky/I7aOhY6Lg4pb29bCyWdaR
	 a9sQYvCc+rt7A==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5aa68d9d56fso941492e87.2
        for <devicetree@vger.kernel.org>; Mon, 01 Jun 2026 00:43:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9kNr02Sip05x/vB1JUtkN61vsjTNcMPr6dykG+erDRr4z1mMF2yp4PCBgYmRBDBWQmunLH9VjmZUwS@vger.kernel.org
X-Gm-Message-State: AOJu0YwJgVGnrOiCaU9MFNTZjrAzQpmkXEbWrTgKLi4q13khFy/a3m4E
	4dzo9rTn619EA5R56tNPWFgdl45YIrAye4wzFw0sUMOVMC8dvrD7fz6pRYjphH+Mio2xpOcGysW
	6AcN7kl/xE2IlfNZPBQcOeRutqv6Or7o=
X-Received: by 2002:a05:6512:65d1:20b0:5a8:94c2:d49a with SMTP id
 2adb3069b0e04-5aa6090338emr1997047e87.27.1780299821994; Mon, 01 Jun 2026
 00:43:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260526-ks8995-to-ksz8-v3-1-c530f651989f@kernel.org> <20260530004900.8C1C51F00893@smtp.kernel.org>
In-Reply-To: <20260530004900.8C1C51F00893@smtp.kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 1 Jun 2026 09:43:28 +0200
X-Gmail-Original-Message-ID: <CAD++jLmT7pcna8DzckpQG7TG7KrfX-kUVNiKB2Stux-VbAgHiA@mail.gmail.com>
X-Gm-Features: AVHnY4KHNantugeBORRJz-jK-ADm5ZSHfpwdjpHGJ_0lybs4LwI3uSXJAaCOSY4
Message-ID: <CAD++jLmT7pcna8DzckpQG7TG7KrfX-kUVNiKB2Stux-VbAgHiA@mail.gmail.com>
Subject: Re: [PATCH net-next v3 1/5] net: dsa: microchip: Add fallback Micrel compatibles
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304955-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 46A9A61B094
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, May 30, 2026 at 2:49=E2=80=AFAM <sashiko-bot@kernel.org> wrote:

> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [High] Making the KS8995 driver mutually exclusive with the KSZ SPI dri=
ver temporarily breaks support for legacy `micrel,ks8995` hardware, causing=
 a bisection regression.

Straining a gnat.

Nobody cares about a temporary module compilation issue in a series of
changes to
an ages old driver almost used by nobody.

This kind of comments add work on top of work for maintaining old code and
incentivize people to not maintain it. Go adjust your weights.

> - [Medium] The Kconfig dependency `depends on !NET_DSA_MICROCHIP_KSZ_SPI`=
 fails to prevent both drivers from being built as modules, defeating the s=
tated purpose of avoiding probe races.

It=C3=A4s not about probe races, it's about building both.

Linus Walleij

