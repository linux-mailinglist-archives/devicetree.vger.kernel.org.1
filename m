Return-Path: <devicetree+bounces-320520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +lzgDbFuSWof1wAAu9opvQ
	(envelope-from <devicetree+bounces-320520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 22:36:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 580CA70871E
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 22:36:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JNfAlzTK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320520-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320520-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 074FE30087A0
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 20:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45D7626CE39;
	Sat,  4 Jul 2026 20:35:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CEA26B08F
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 20:35:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783197357; cv=none; b=Qa7Mfr/ET111ccNqbKElmfOEqdcVN0gYptnZEe1qnyn/lhMURQZfkhXAujzINI3UiAAaRvf85lAkt2t8KvURLZCsZR9IMLAKPoVPStdEJ0+9Yvh/W6QIWaeDg5foeTdWdRN3pfp4tVL87ydBe0W7Vtc+Edp892VX8W03I2YtTwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783197357; c=relaxed/simple;
	bh=ueAvTOHaFUdAsF2MfUk1QA+I07Tj2IoY45cYo+1WlWg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XtyPbL8lePiN3B3RyiCmIhfipthW9L9vIix/HZNh1nzkymdOCsz5c2Ov/nvj14sPVXKN22YLXU1uIWHoTI21cY4MTnOQ5LA0oGCllEVc9wkYrGhrVsP4qAZ6EVf29mg5cJ4ecsi1E/DD+yC6w9b9ETm7N6WeNu0qPdsSq0igAGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNfAlzTK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 648551F000E9;
	Sat,  4 Jul 2026 20:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783197355;
	bh=v4GQDp/rDxZcqJsijZs/FeEQChrwMwss9r+bJI62Akw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JNfAlzTK4Hi54s1JpKQ3RU2J8rtaVray5CAVRkRwIwyMb8+88lVJcroKzWp8fXxHN
	 q35UI5qbip40ay6948UM4Wdl8GqYmnmDO8sEVlsNZ2RDnjwQKNOco94MvTxkLQB9YP
	 cnxrSDnBr31ggzM3keyTTwRG8eCj0f9qUK9/eO5G6HfvbO5U6gu+SaanDA2EUCqFQW
	 AtC7BiZZAajNB7u6MMAbtfAVvpEt2b9iRCfYCKgVHkB+qcpgKNexIZN+UdmbfkdUEN
	 5oHxtC3VfLZs1iE/Xkr9R1cV9hh8CAhtyn9L9M6gCHpujc/bzYLa+63u0B4yQh0d5q
	 R9GQm2+4zgcPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next 2/2] nfc: s3fwrn5: support the S3NRN4V variant
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jorijn van der Graaf" <jorijnvdgraaf@catcrafts.net>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703202601.78563-3-jorijnvdgraaf@catcrafts.net>
References: <20260703202601.78563-1-jorijnvdgraaf@catcrafts.net>
 <20260703202601.78563-3-jorijnvdgraaf@catcrafts.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 04 Jul 2026 20:35:54 +0000
Message-Id: <20260704203555.648551F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320520-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jorijnvdgraaf@catcrafts.net,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 580CA70871E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] A Time-of-Check to Time-of-Use (TOCTOU) race condition in clock re=
quest seeding can leave the NFC reference clock permanently enabled, breaki=
ng the TX PLL lock.
--

commit 342a387574bb664bcbcb353a01bca5f492266532
Author: Jorijn van der Graaf <jorijnvdgraaf@catcrafts.net>

nfc: s3fwrn5: support the S3NRN4V variant

This commit adds support for the S3NRN4V NFC controller variant. It skips
the firmware download step and configures the reference clock via the
setup hook. It also adds optional clock request gpio handling to gate the
clock dynamically.

> diff --git a/drivers/nfc/s3fwrn5/i2c.c b/drivers/nfc/s3fwrn5/i2c.c
> index e9a34d27a3698..88a4988791efd 100644
> --- a/drivers/nfc/s3fwrn5/i2c.c
> +++ b/drivers/nfc/s3fwrn5/i2c.c
[ ... ]
> @@ -172,15 +217,63 @@ static int s3fwrn5_i2c_probe(struct i2c_client *cli=
ent)
[ ... ]
> +		ret =3D devm_request_threaded_irq(&client->dev, clk_req_irq, NULL,
> +						s3fwrn5_i2c_clk_req_thread,
> +						IRQF_TRIGGER_RISING |
> +						IRQF_TRIGGER_FALLING |
> +						IRQF_ONESHOT,
> +						"s3fwrn5_clk_req", phy);
> +		if (ret)
> +			return ret;
> +
> +		/* Seed the clock state from the current CLK_REQ level. */
> +		s3fwrn5_i2c_clk_set(phy,
> +				    gpiod_get_value_cansleep(phy->gpio_clk_req) > 0);

[Severity: High]
Could this introduce a race condition that leaves the clock permanently ena=
bled?

Because devm_request_threaded_irq() is called before the initial clock state
is seeded, the interrupt is unmasked and can fire immediately. If the
hardware toggles the gpio during this window, the sequence could look like:

Probe thread in s3fwrn5_i2c_probe():
    evaluates gpiod_get_value_cansleep() and reads a high state.

Hardware:
    toggles the gpio to low.

IRQ thread running s3fwrn5_i2c_clk_req_thread():
    reads the new low state
    calls s3fwrn5_i2c_clk_set(phy, false)
    correctly disables the clock

Probe thread resumes:
    calls s3fwrn5_i2c_clk_set(phy, true) using the stale time-of-check state
    acquires clk_lock and overrides the correct state from the IRQ

Since the gpio is already low, no subsequent falling edge will occur to
disable the clock. As mentioned in the commit message, leaving the clock
always-on prevents the chip's transmit pll from locking on a fresh start.

Should the initial clock state be seeded before requesting the interrupt, or
perhaps synchronized with clk_lock to ensure the probe thread does not apply
a stale state?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703202601.7856=
3-1-jorijnvdgraaf@catcrafts.net?part=3D2

