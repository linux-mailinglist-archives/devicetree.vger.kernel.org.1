Return-Path: <devicetree+bounces-319109-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PcCtEHIYRmonJwsAu9opvQ
	(envelope-from <devicetree+bounces-319109-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:51:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D05786F463B
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:51:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=ktA+1FG0;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=ASRxoRgb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319109-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319109-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linutronix.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE25C3008989
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3C9E3C65FA;
	Thu,  2 Jul 2026 07:50:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A56D3C584A;
	Thu,  2 Jul 2026 07:50:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782978632; cv=none; b=BKO+qf+f0v3WDjYwydFO4eg+dDJwfpLnXJgkpkmLYQoPWMqz9tlsJA8b2Lnoaw1anIG7M7PLzsGF6MAE+hpaMHvfZzv5lHzTW+rIUpNkTw/GLTD2I+bbPkHiykBwUt0JI2sqjs1hlkmdaIh0bkbeO8A0B33ATrpG95ZLycsKibs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782978632; c=relaxed/simple;
	bh=m1oakZ0c57ds/KFTaSp2WZgOckEbNhbCZ16+iE5NB5c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iNaRmFFJWaBWpbXQD0vf1UOJsWNmJYBGviFJtFFMy7dVtxcBhmzNrkoA1wnDEM2uBf7XFc9CgWoS1u0E6sLzyjYoktVOoKtGXPIp6fvRzLHQfyFzYpfL9ZKNx5rf52/FOjTLKql/4OIXtqS/l7GbgFw5d6b2t79B5nCnyZjj4m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=ktA+1FG0; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=ASRxoRgb; arc=none smtp.client-ip=193.142.43.55
Date: Thu, 2 Jul 2026 09:50:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1782978630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RtPJKNaE4WcuVc5YwBiELvb87xQFlonOqEb7ycejGWs=;
	b=ktA+1FG0uc0MpcfFBfjgObbpj1U2vTHJD+a8QZ9NUQoPTaxMTsh6sWdhKJ1TxSojJVe/5y
	uCfgbvkxVCTLnNEwTHeIPd6GHouW/Vy6SLs+1thyxBndtqLpDau++4TxB3zCHqHYFJzPvL
	q/RtS1gpvU2+ZnzrXhGSc0CDWHpdZ2jbOXXV1GHNM2kKUUTfTYNKrIBYX0uy6yNgSYdwu5
	f71uxFyIAfcDu1dMpFVDA+ZVqtdLEswhlN3iI/WNQahncfppXIE8ps4ki5Jz4CEZMmJvW8
	kPiKHzDzD9EMLcj3AJQiHSOUZIPj6hTBVSr2hGdKm7EojswHOH0BVzdTNZ0lJw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1782978630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RtPJKNaE4WcuVc5YwBiELvb87xQFlonOqEb7ycejGWs=;
	b=ASRxoRgbtWDj0QrDDU+aNK1aGddpBaqkCR+2bZ0jnK/9Tyl8Y+7xlRiZaRO6E+2t+KItnf
	zmcuHR36FwVj+ODg==
From: Gregor Herburger <gregor.herburger@linutronix.de>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Eric Anholt <eric@anholt.net>, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/4] firmware: raspberrypi: Add reboot mode support
Message-ID: <6x2espobfxvtxoszno3fehzixc67e2cihjdsah3ge3qbrgjoeg@3ss4vdo2hz77>
References: <20260630-rpi-tryboot-v2-0-f68d2dc6aa27@linutronix.de>
 <20260630-rpi-tryboot-v2-3-f68d2dc6aa27@linutronix.de>
 <628b2768-80e6-4a7b-846f-d1124059f899@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <628b2768-80e6-4a7b-846f-d1124059f899@gmx.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:wahrenst@gmx.net,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:rjui@broadcom.com,m:sbranden@broadcom.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:eric@anholt.net,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmx.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-319109-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linutronix.de:dkim,linutronix.de:url,linutronix.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D05786F463B

Hi Stefan,

On Tue, Jun 30, 2026 at 11:57:49PM +0200, Stefan Wahren wrote:
> Hi Gregor,
> 
> Am 30.06.26 um 22:59 schrieb Gregor Herburger:
> > +static int rpi_firmware_reboot_mode_write(struct reboot_mode_driver *reboot,
> > +					  unsigned int magic)
> > +{
> > +	struct rpi_firmware *fw = container_of(reboot, struct rpi_firmware,
> > +					       reboot_mode);
> > +	int ret = 0;
> > +
> > +	if (magic)
> > +		ret = rpi_firmware_property(fw, RPI_FIRMWARE_SET_REBOOT_FLAGS,
> > +					    &magic, sizeof(magic));
> I think it's more elegant to check for !magic and return 0 directly. So we
> can drop "ret".
> > +
> > +	return ret;
> > +}
> > +
> >   static int rpi_firmware_probe(struct platform_device *pdev)
> >   {
> >   	struct device *dev = &pdev->dev;
> >   	struct rpi_firmware *fw;
> > +	int ret;
> >   	/*
> >   	 * Memory will be freed by rpi_firmware_delete() once all users have
> > @@ -306,6 +323,12 @@ static int rpi_firmware_probe(struct platform_device *pdev)
> >   	rpi_register_hwmon_driver(dev, fw);
> >   	rpi_register_clk_driver(dev);
> > +	fw->reboot_mode.dev = dev;
> > +	fw->reboot_mode.write = rpi_firmware_reboot_mode_write;
> > +	ret = devm_reboot_mode_register(dev, &fw->reboot_mode);
> > +	if (ret)
> > +		dev_err(dev, "Failed to register reboot mode: %d\n", ret);
> I suggest to move all of this code into a function called
> rpi_register_reboot_mode() ?
> 

Ok, will do. Will wait a bit for more feedback and add this to the next version.

-- 
Gregor Herburger
Linutronix GmbH | Bahnhofstrasse 3 | D-88690 Uhldingen-Mühlhofen
Phone: +49 7556 25 999 35; Fax.: +49 7556 25 999 99

Hinweise zum Datenschutz finden Sie hier (Informations on data privacy 
can be found here): https://linutronix.de/legal/data-protection.php

Linutronix GmbH | Firmensitz (Registered Office): Uhldingen-Mühlhofen | 
Registergericht (Registration Court): Amtsgericht Freiburg i.Br., HRB700 
806 | Geschäftsführer (Managing Directors): Dr. Wilfried Wessner, 
Katharina Kopp, Alexander Gieringer

