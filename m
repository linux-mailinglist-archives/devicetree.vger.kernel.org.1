Return-Path: <devicetree+bounces-311504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HkGTI44RL2qw7gQAu9opvQ
	(envelope-from <devicetree+bounces-311504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 22:39:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EC1682336
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 22:39:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=HpU+LKD5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311504-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311504-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6804B3001FFC
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 20:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BB431F9B0;
	Sun, 14 Jun 2026 20:39:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E052729898B;
	Sun, 14 Jun 2026 20:39:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781469579; cv=none; b=bMAXUaXmgtnpg1Tu0VVelCW5vdW0wDMvpqsGu1AUa9G1gImgABi8AinjflQB4k4rI9RhhqSfWN7M0pLyHUrB6wn9awRMp+qfpvUmwAGMeoyq1xm7dtKs1MRKiLDpeHC21smSfd6yT2i6QjZyOcqe5unx1RTHv7ACq4ooqWP3aOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781469579; c=relaxed/simple;
	bh=Ko6uOwd/TisvMAgBYrzVjK1ghD9KlO9FminlvR0nz4E=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=llcjF70PGv5wp+O/JicPmGrxbi9VB85MOn2MWueWR6dtbGJjQ0WtsUc2NPhnP98ofUSSb+OQQ4sO8p2QRAeN54vxFXEyzYP5YlVvZtCfcTte7vQypRlos9okPdtlnj4vHuivIOPQ9I8kvX1kQOiBZTDEBgLbZL9pZ2Uzx6q2XrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=HpU+LKD5; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 65F6E1A391E;
	Sun, 14 Jun 2026 20:39:36 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 26D5A60014;
	Sun, 14 Jun 2026 20:39:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 85C9B106C86AA;
	Sun, 14 Jun 2026 22:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1781469574;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	 references; bh=/cwZEmaxV262lOCKH7K7Tt4ZA+Bva0faoaNw+ZyMjHM=;
	b=HpU+LKD5So7GqO2NxkdY4wTVz5kQaBS/m21yAwQydCbgAAtiMC/qimPpw8cJXCnOMR9Ywj
	74hIiPP2c8dRHoWwvlZXvkPqzHYmIlaEeYRvrn4Ffe27Xwe3WMuIs/Qt6rd5k505FsPxLV
	HAmT0o94QSEgP1grjj6tng8PjMlsDQgYMLl6I5zfb/B9h2np8UX18F9/GcUBuk47ZKlYfZ
	8S1gU6y9vrkJygopAolqgSpPVKXgQZz1YBP38NJqIZknYjPjHQcb+GerpyHbYwVIwjm9J4
	TxHgJ9Vq5W8he24goCA3uAjKURpmJKb9c2sxSpmc6FJ5l8Q+0Meo/b2QtpA02g==
Date: Sun, 14 Jun 2026 22:39:28 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Frank.Li@nxp.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, nicolas.ferre@microchip.com,
	claudiu.beznea@tuxon.dev, linux@armlinux.org.uk,
	mturquette@baylibre.com, sboyd@kernel.org, bmasney@redhat.com,
	aubin.constans@microchip.com, Ryan.Wanner@microchip.com,
	romain.sioen@microchip.com, tytso@mit.edu,
	cristian.birsan@microchip.com, adrian.hunter@intel.com,
	npitre@baylibre.com, linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	Manikandan Muralidharan <manikandan.m@microchip.com>
Subject: Re: (subset) [PATCH v7 0/5] Add microchip sama7d65 SoC I3C support
Message-ID: <178146955570.340851.8125558640090329050.b4-ty@b4>
References: <20260525092405.1514213-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260525092405.1514213-1-manikandan.m@microchip.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311504-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:claudiu.beznea@tuxon.dev,m:linux@armlinux.org.uk,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:aubin.constans@microchip.com,m:Ryan.Wanner@microchip.com,m:romain.sioen@microchip.com,m:tytso@mit.edu,m:cristian.birsan@microchip.com,m:adrian.hunter@intel.com,m:npitre@baylibre.com,m:linux-i3c@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-clk@vger.kernel.org,m:manikandan.m@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:url,bootlin.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20EC1682336

On Mon, 25 May 2026 14:54:00 +0530, Manikandan Muralidharan wrote:
> Add support for microchip sama7d65 SoC I3C master only IP which is
> based on mipi-i3c-hci from synopsys implementing version 1.0
> specification. The platform specific changes are integrated in the
> mipi-i3c-hci driver using existing quirks.
> 
> I3C in master mode supports up to 12.5MHz, SDR mode data transfer in
> mixed bus mode (I2C and I3C target devices on same i3c bus).
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: i3c: mipi-i3c-hci: add Microchip SAMA7D65 compatible
      https://git.kernel.org/i3c/c/9092105b87af
[3/5] i3c: mipi-i3c-hci: add microchip sama7d65 SoC compatible with the required quirk
      https://git.kernel.org/i3c/c/efaa912ab0f1

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

