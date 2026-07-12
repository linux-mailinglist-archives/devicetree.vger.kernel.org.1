Return-Path: <devicetree+bounces-325047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3H1aLwOJU2q0bgMAu9opvQ
	(envelope-from <devicetree+bounces-325047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 14:30:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 285B5744A57
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 14:30:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H7qwpalI;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325047-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325047-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 312DB300DA61
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 12:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B273A9DB2;
	Sun, 12 Jul 2026 12:30:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9FE358D00;
	Sun, 12 Jul 2026 12:30:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783859455; cv=none; b=orjeJa1bYqwxwDAXtYGGeWmueRtRWuLiHV3CzaAcDKRudGGKf9SUSzMtu9qIYpE5nMuh9psIDtdKxVtV1ccYyQOQnUfbObY01G6nt/3OY79hHft3/jqBOnja+FCPaXqn58aTcZtxiug/Uzn1xWVL+uE2eWVttUgV1hBd9/J9Tkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783859455; c=relaxed/simple;
	bh=pk87CeSrNpXX9jN0MdaORKmwE9wXpc2PDw5VJNW96Hk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BACzP1FSMcB2mzKmjLzktfW26k9SEeAd/pnpe8Wgdtf/eLhuCvoVgxaOSo0oyQLIGBpz4g3kFK/IcswZacFVzcaCxHVbdJD2M8CI2Mr9TNCwrnJHwDRY7aSTiYDOy93TfUcMY/jEtNV0wifdNv3Le8NYut+KUEwBDnK0NhWKQew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7qwpalI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A9BD1F000E9;
	Sun, 12 Jul 2026 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783859454;
	bh=Gy9MJ063WpQuTdSQRRK8YP6m6riIIdrXysJgOkGPzeE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=H7qwpalIOgjV9fonMoUa6xGWNGLUj7bPBCVer5pjNyKeehxUgyS8Y2rRLtsESuYBa
	 Nuc12plGqFOKkNVMjYB3VpTnqhVh0Qgj8d6tZ1e3RfAAwl8mUtrdk3aRRQhAQfOUK7
	 q2VZbud6iihamDK5/B0NKAwaNIKyfTkk2m1ZpvY8dQ4xFBbA64t4rJLG/jdaXHrxKL
	 4GACJqUuQtINVqxS/iY7OKwFLKeLAydfSwNB8zKhG1AxCFg972iCF2Ub16Y7A2yCu8
	 kuh6nYb3sQb6lcGwRiuOee9DWLXRPXhaQCdPwGqdhid/gr7RGPwkTYTnkCgQdjSjiF
	 I4UaP1WpTHekQ==
Date: Sun, 12 Jul 2026 14:30:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Russell King <linux@armlinux.org.uk>, Mark Brown <broonie@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, patches@opensource.cirrus.com, 
	Conor Dooley <conor.dooley@microchip.com>, Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v3 00/10] Remove support for platform data from samsung
 keypad
Message-ID: <20260712-musical-shrimp-of-fruition-b921df@quoll>
References: <20260711-samsung-kp-v3-0-b2fcaba77aff@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260711-samsung-kp-v3-0-b2fcaba77aff@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:peter.griffin@linaro.org,m:alim.akhtar@samsung.com,m:linux@armlinux.org.uk,m:broonie@kernel.org,m:linusw@kernel.org,m:ckeepax@opensource.cirrus.com,m:semen.protsenko@linaro.org,m:arnd@arndb.de,m:brgl@bgdev.pl,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:patches@opensource.cirrus.com,m:conor.dooley@microchip.com,m:bartosz.golaszewski@oss.qualcomm.com,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-325047-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 285B5744A57

On Sat, Jul 11, 2026 at 07:12:41PM -0700, Dmitry Torokhov wrote:
> Hi,
> 
> This series converts the Samsung keypad driver and the Cragganmore 6410
> board to generic device properties, allowing the removal of legacy platform
> data and GPIO lookup tables.
> 
> We rework the Samsung keypad driver to stop using platform data, utilizing
> a new compact matrix keypad binding. To support this on the Cragganmore
> board, we add infrastructure to associate software nodes with Samsung
> gpio_chips, and add software node propagation support to the wm831x MFD
> core to route DVS GPIO to the PMIC regulator.
> 
> Finally, we convert all peripherals on the Cragganmore board (including
> keypad, GPIO keys, PMIC, WM1250, SPI0, basic-mmio-gpio, and LEDs) to
> software properties. This allows us to eliminate all legacy GPIO lookup
> tables and fixes incorrect GPIO chip names from previous conversions.
> 
> Mark, it would be great if you could give this a spin on Cragganmore.
> 
> The majority of changes are in arch/board code, with a couple of input
> matches and one for MFD. If everyone agrees maybe we can merge it all
> through the soc tree?

Yes, I could take it via samsung-soc. I assume I have your acks for
unput parts.

Best regards,
Krzysztof


