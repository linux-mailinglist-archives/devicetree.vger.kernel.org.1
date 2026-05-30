Return-Path: <devicetree+bounces-304763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPA+CjhTG2qTBAkAu9opvQ
	(envelope-from <devicetree+bounces-304763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 23:14:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 897EB61370D
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 23:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 72F4C3011C6F
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 21:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA1725783A;
	Sat, 30 May 2026 21:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odiQbOic"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178831F4634
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 21:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780175668; cv=none; b=I4GJNHC8U6aZ/JrQZ51Lnb8ZvLcYSnrqP0IbWm2VykAYOM0IUolNm1T2fRDKAwdb4fHx9mcVCHWKA34GuC+oGk2uMYsf6Lo6kfsY8ptQENf1ZHgDWyqjSsfk/NVkoShsmyPnGE71ltLXwnBtQAFy++zxmXYI0bIZXimRjL0ONP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780175668; c=relaxed/simple;
	bh=ETaHzuScovIXAlWtcsrAuX7Ov/6bgOujPzdmUpkUqtU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UTOntPmQ4qEgPOETKHvWeQ6KKYKHOhlDIkLD9LLSZnuavi+7dx0PPxwTBw6M/UQKEsKJlvdu7rj8zGKBO5b9ESRVLQiUoQwg/WFETG3LJ4CQS9kNtXhKI95U8Bu7uZGmnEVYRgvzs7sfG91WicU/2W8/6ZAtHT7uyp9bWUsy3Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odiQbOic; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 858B11F00893;
	Sat, 30 May 2026 21:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780175666;
	bh=SIVaAXSMqSdC9uEjjqZln4vQPCNafuy8J7if6B+PsTU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=odiQbOic/HkrBs4ff1mp/KiMFPMguJ6sSsT+B88L8VzUXJYBKiehOYrG8CQIpwhoj
	 vmUNXnRTUGw/XHxGcNuAfBYWKX25GCLenB5wp7VSyzV2oGea+BC8MUX+u1uwu3jwfa
	 bwObCr0sO+3ZuA0ytghCP0i/8gbYym3vleOfjDft5DJ7k7mqrLZS4svc225ooEgpAD
	 KHEdydBR22KTAzjCPbtyeB+eXSoZi40/IiF2F4KBr9XZLxExOAaqtrO3AYl0mmx8oR
	 YOgHX1mKr4Jb8AV/zi6WoatfBC1CFbJtuOPBOovbuK/bArqhOkd9za4QBu0DMNExI7
	 BYfXRzB5eFcBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] iio: flow: add Sensirion SLF3S liquid flow
 sensor driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wadim Mueller" <wafgo01@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260530205435.37326-4-wafgo01@gmail.com>
References: <20260530205435.37326-4-wafgo01@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 21:14:26 +0000
Message-Id: <20260530211426.858B11F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304763-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 897EB61370D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Probe fails after a warm reboot or kexec because the sensor is not=
 stopped before reading the product ID.
- [Medium] Missing power management (PM) operations causes device failure a=
fter system suspend/resume.
--

commit f4e028602d040a62e916ee2e4f3679882fcd7b4e
Author: Wadim Mueller <wafgo01@gmail.com>

iio: flow: add Sensirion SLF3S liquid flow sensor driver

This adds a new IIO driver for the Sensirion SLF3S family of liquid-flow
sensors. The driver supports reporting volumetric flow rate and temperature
over I2C, and handles switching the calibration medium between water and
isopropyl alcohol at runtime.

> diff --git a/drivers/iio/flow/slf3s.c b/drivers/iio/flow/slf3s.c
> new file mode 100644
> index 0000000000000..497a56f59ff97
> --- /dev/null
> +++ b/drivers/iio/flow/slf3s.c

[ ... ]

> +static int slf3s_detect_variant(struct slf3s_data *sf)
> +{
> +	struct i2c_client *client =3D sf->client;
> +	u8 buf[SLF3S_PRODUCT_ID_LEN];
> +	int ret;
> +
> +	ret =3D slf3s_send_cmd(client, slf3s_cmd_prep_pid);
> +	if (ret)
> +		return ret;

[Severity: High]
If the system goes through a warm reboot or kexec, won't the sensor still be
running in continuous measurement mode since there is no .shutdown callback?

If the sensor is actively measuring, will it NACK the 'read product ID'
command sent here and cause the probe to unconditionally fail? Should a stop
measurement command be sent before trying to read the product ID?

[ ... ]

> +static struct i2c_driver slf3s_driver =3D {
> +	.driver =3D {
> +		.name		=3D "slf3s",
> +		.of_match_table	=3D slf3s_of_match,
> +	},
> +	.probe		=3D slf3s_probe,
> +	.id_table	=3D slf3s_id,
> +};
> +module_i2c_driver(slf3s_driver);

[Severity: Medium]
Since the driver lacks power management operations, what happens when the
system suspends and resumes?

If power is cut to the sensor during suspend, won't it reset to the IDLE
state and cause subsequent IIO reads to fail because the driver never
re-issues the start command? Or if power isn't cut, will leaving it actively
measuring waste power?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260530205435.3732=
6-1-wafgo01@gmail.com?part=3D3

