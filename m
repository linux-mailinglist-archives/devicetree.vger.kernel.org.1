Return-Path: <devicetree+bounces-307365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N9eMN7K1Imr5cQEAu9opvQ
	(envelope-from <devicetree+bounces-307365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:40:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 713B6647CBC
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 13:40:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=QE4eRpYi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307365-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307365-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 57213306FDB1
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 11:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22EA93126CD;
	Fri,  5 Jun 2026 11:38:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255414D8D85
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 11:38:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780659495; cv=none; b=ihDnpSfHOP28W5uaCijs1kRja7ANrJK8C1twz8YjKu93QgTLcoT1mrgEuhf/g/0e+Bl7Is9EKpyJjry9NEI5dSZ0ioVo+6035CVMk0LlZHk8K+eknc5LbpzVBjmMPGDWIzg+xZ//TN3WWOMBToh+JTn+ddlbfLGn1F8fSa+W6Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780659495; c=relaxed/simple;
	bh=2ghoS6no9AaHRf7BNxhJ8BH+3mX/8y4443oHD+TL/s4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HLf93obMwETYMs8eF9Z3vlFG5U8YtBbH0zsi06k32PMUaYd3UrN6V2o1NHYmsIQ2vdS/7AVj3rYPGemMQY4WJpk6KPZoRNORI/5kZQardK2j+5KwJt/EP9HkN2SU4K7E20+Ai9UFF2OrdIY+EhrRsudLi7Xmz8SXwZgEdKORyws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=QE4eRpYi; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 9D1351A0924;
	Fri,  5 Jun 2026 11:38:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5F3845FED1;
	Fri,  5 Jun 2026 11:38:08 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1AFA5106A2122;
	Fri,  5 Jun 2026 13:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780659487; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=fMdwehU3dvdlFcRAg/UEX6VsNEVgYxvT3ihO0867UDk=;
	b=QE4eRpYiT1i6Jt+O+rFdTnlxB4/HiPVHnYt+GdpVKisAKGB2J8+HgSPMzOYsXVGqp3Eqw0
	paliopc4KbDpciRnIlkhq41cumtfHs73vYKYwTJ2jOW1G/yLUmnZKPhZQUOmgIWZNoRr74
	6wEJxYmORZkjXARpig1kbIIx07NzNRJscIpnWkJuqcV/vFQ0jSS9TB1keuCiVwWq8utJ8O
	+htP0I5hWe4zaMLyUexsvg44TJ7gRckX00juEJpZdmAeqXq2hrH9at4qh7VVfuNIMXPYDY
	74IllUC3slK/KLvivnUkpSLDxhNzCDnHm8MrJOlq2ZcTS41TI2wzcStxRMGowg==
From: Romain Gantois <romain.gantois@bootlin.com>
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH 2/2] iio: temperature: tmp117: add TI TMP119 support
Date: Fri, 05 Jun 2026 13:38:01 +0200
Message-ID: <18PCQgHDRMeFeQrJjHXSqQ@bootlin.com>
In-Reply-To: <20260605110802.74B701F00893@smtp.kernel.org>
References:
 <20260605-tmp119-v1-2-349f45f17d12@bootlin.com>
 <20260605110802.74B701F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextParteYA6NtF9QaaxaqfKzKG7sw";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307365-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:from_mime,bootlin.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 713B6647CBC

--nextParteYA6NtF9QaaxaqfKzKG7sw
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Romain Gantois <romain.gantois@bootlin.com>
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH 2/2] iio: temperature: tmp117: add TI TMP119 support
Date: Fri, 05 Jun 2026 13:38:01 +0200
Message-ID: <18PCQgHDRMeFeQrJjHXSqQ@bootlin.com>
In-Reply-To: <20260605110802.74B701F00893@smtp.kernel.org>
MIME-Version: 1.0

On Friday, 5 June 2026 13:08:02 CEST sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential
> issue(s) to consider: - [Medium] The IIO device name for the TMP119 sensor
...
> 
> And indio_dev->name is assigned from match_data->name later in
> 
> tmp117_probe():
>         indio_dev->name = match_data->name;
> 
> Does this break userspace applications or udev rules that rely on reading
> the correct sensor part name ("tmp119") from sysfs?

While unlikely that userspace applications would need to differentiate between 
these two sensors, it is preferable that the correct part name appears in 
sysfs. I'll fix this in version 2.

-- 
Romain Gantois, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--nextParteYA6NtF9QaaxaqfKzKG7sw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEIcCsAScRrtr7W0x0KCYAIARzeA4FAmoitRkACgkQKCYAIARz
eA6LGw//a6T4jpcIFoIQXqRspnSKYDv49lNsWsan/6sAAAa6q/TNo9UwDbzpHnH0
/HqVgmtfjPgfR9FGZswQiFJ8gCRNNh+codapkgbyT1rr3jpuofGsTo9ECq9yTCCr
4PkRGF0jIrE55y1tyLmmlGmJvonY9UogN0SzHwgxeOQns2Dq8+OLqgtz7pdEjE1J
S8Ud9LJ38p/6fKt9UUJ9J2Py/s+RHqSV6axXKqm+7R3GSoo/+cPGL5SPTiGZdKUQ
HElq6vmtTzcxZoLxtwHeUw4z8FfknVeVqr+GETcYIJw2Rhhlp06Rd4RXOwgPgDkp
dZU27T2sHsDsQmI6gjjmhvvsXxKKztaWHqy3Ys0hJgs3Cue1V9eqQElKDQJkk+y2
oPeA81ip1XymFNy92Znup8r5vUpK4N42ztzxtx5Eq2mDkvUC6oQalpJ+63CxwZZL
CluxSNBSRTQs49pc9/ixlD9uJipGmCwDqaze6CPOGBQBnieg+kTQvXZdwv/N7sC5
kv0B/tgGir3vYXbVl6OgbRWrRWn2hMzkWq81WCarq6eVYPRO2c2pCEphb2CAmC+3
9sG9rlVh7wZbsYD45HprjyUfC1d7BLtMbcwRIFxS3QrFjeM3uqiE2RcmdKRXtDnI
UQHee/7RItbEFJdpbjmsIZNj588BlFaNWlyR/Ys/dnGLxQkiPmM=
=VSSn
-----END PGP SIGNATURE-----

--nextParteYA6NtF9QaaxaqfKzKG7sw--




