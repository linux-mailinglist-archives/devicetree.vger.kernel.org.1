Return-Path: <devicetree+bounces-310407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cOHQAtmgKmrGtwMAu9opvQ
	(envelope-from <devicetree+bounces-310407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:49:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3912671865
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:49:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iWoxSrf2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310407-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310407-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6C0B630086AE
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E02E30D3F6;
	Thu, 11 Jun 2026 11:49:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B473BA24E
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 11:49:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781178578; cv=none; b=LW65iz9W3twPvnR1PVBRUq/kAeDpLyV+XIJv7S0KRrnSDPGZ0x6XvmGdAGfjKyotigwPlHpFUudpsVgJdoNtgtkXZFD6YNWJNz9dyeMFfYPFAQ4NMEul5+E5Nwnn3m2rI6q1Xp3/ZV0aAYj6grIl8E0HdtiGtkiAZF1NlA31e50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781178578; c=relaxed/simple;
	bh=rKmlnp6soY2/E60kLoIUuxjPFvwpU7GxO46vKOmRRcE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tPYeFvDZhR6TWiVegIwBqcqPGUzd1CD5yGsbn0f/I1bzMmP7J+1YwWDuaxNsEmjDRBgpnnV5I+k/+hSAgv7ALS4DXSJB7a40t1005tCxsNVTAabtrFZa580h2+vUAoJ870jB5be+QgXNWJ/zHXnL5b8Xu6KVlfJiuAHNfkwMtyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWoxSrf2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBBAB1F0089F
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 11:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781178577;
	bh=rKmlnp6soY2/E60kLoIUuxjPFvwpU7GxO46vKOmRRcE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=iWoxSrf2eJBxIUL1UC9eu2rCfEOYt2pmOr3+Wr9TXMOGuZd15Apaqr0KVzB7qEWLp
	 mpWBVGoOa6w2vQ3nn2A62u9t9wunj7eluguHPjiHPNYGFWOLPOe4Cy+PqxRNG4saLr
	 VqVgvZFqxqz83kJ0L+7YiCJ4W7ZbILryg59ck0zhbxrT4qqnlfJFPGopVdEyok09t3
	 rufvsQKCeDb1rw/PVAD/ube97OYxH2e1OQ5xagFAVrKuy4A17J2amuInhxJtoKiOfw
	 cdZQWR4QxGpzf+RxHFYfgDmwJAdYiSXua8YbO8VW/C5CXlxRvfC8GYKWz44Olcu8ui
	 wl0+tXVbBIBVw==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5aa68cf9123so8359440e87.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 04:49:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+rlkiLB2ctGmtIHG0EhOM2wT/V/E2mdADCjvqjWOluvQ60U4OvHpxKCkiCkI8AQxBmg2+Tpd2ybd7v@vger.kernel.org
X-Gm-Message-State: AOJu0YwekoKin3cgrqCWXAPzUfLjiAq/aioNz4JZImGUOfOTSCnMvsxi
	0GVSqtRY8zg82stzVrb9qFrTwztyA8XpTAgnG1IBO13M1M212o5ZZB0XyFo8Qj/rMmyCmlUNauk
	IKprZQJ4gW2EjlY/TrMQl6bkC/KXG/Fo=
X-Received: by 2002:a05:6512:3f07:b0:5aa:4bb4:1e9c with SMTP id
 2adb3069b0e04-5ad27ab047cmr828882e87.18.1781178576530; Thu, 11 Jun 2026
 04:49:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260327113006.3135663-1-andre.przywara@arm.com>
In-Reply-To: <20260327113006.3135663-1-andre.przywara@arm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 11 Jun 2026 13:49:24 +0200
X-Gmail-Original-Message-ID: <CAD++jLmok4GNZHT1_SVxRgOqQpH9d8FX4zgNpQbOdNjVka2Hew@mail.gmail.com>
X-Gm-Features: AVVi8Cfo54uztqxkktk8YLcVPxtQEtZS2d7KQPPjjqOVBQf71Is6FBvmH-Q48FA
Message-ID: <CAD++jLmok4GNZHT1_SVxRgOqQpH9d8FX4zgNpQbOdNjVka2Hew@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] pinctrl: sunxi: a523: fix GPIO IRQ operation
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-310407-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS(0.00)[m:andre.przywara@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:linux-gpio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E3912671865

On Fri, Mar 27, 2026 at 12:30=E2=80=AFPM Andre Przywara <andre.przywara@arm=
.com> wrote:

> this is the minimal fix version for the GPIO IRQ operation on the
> Allwinner A523/A527/T527 SoCs. SD card detection is broken as a result,
> which is a major annoyance. Those patches here fix that problem, and
> should go into v7.0 still, if possible.

Patches 1 & 2 applied to the pinctrl tree, please send patch 3 to
the SoC tree.

Sorry for missing this, dunno what happened. Probably it got
lost by me trying to use korgalore and screwing up.

Yours,
Linus Walleij

