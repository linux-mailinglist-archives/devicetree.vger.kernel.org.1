Return-Path: <devicetree+bounces-306423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T2H8J+tYIGrU1gAAu9opvQ
	(envelope-from <devicetree+bounces-306423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:40:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E426639D8A
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:40:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=j0+LeAkK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306423-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306423-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83691303AF3A
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 16:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAA0A45106F;
	Wed,  3 Jun 2026 16:29:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37A1426EAA;
	Wed,  3 Jun 2026 16:29:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780504179; cv=none; b=rXXnBHqEPI3d/oPQj+SWt7qLBAcSy+kGPwPYn6Q+BYZqK+JYs9vIlpNG6ytXP62e11b+Dyaz2tGYt5bdaCgPeC3+k71gBi2RgsLW5hzbJFOle7M82C/psSmu3C+u1aw+4X2sePg+Ii5SjA3mUaGhKlVBFflLW9Na7jowsiKDXM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780504179; c=relaxed/simple;
	bh=evJt7jmzVDi65ASf5TV7iH2Zz3iluscmSfjgvIWeKvo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=feRKmq3PNHzyICNxXQm3iRAieT9/26GR2+hRoExVdy9QZWaUYTD63fiW/+DtGo+EdEaDoc6BGzZbA8hwbwsHDFVNgAopvyXspL9zpW0r9lYDcBEk9Wp9MuypYfK+A9KRDKocyDLh/l3Rq/ZF47rfU7rKvbaGewSfuIVsf57jOZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=j0+LeAkK; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 15949C63443;
	Wed,  3 Jun 2026 16:29:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E53485FA0A;
	Wed,  3 Jun 2026 16:29:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B54DB10888CCF;
	Wed,  3 Jun 2026 18:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780504172; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=evJt7jmzVDi65ASf5TV7iH2Zz3iluscmSfjgvIWeKvo=;
	b=j0+LeAkK88BbWrccUSUayANR5ESpZBgsiz/KRZIKU/qnUFp7VrLXTMIRxvkSG8haI5oJPp
	+FiKfGoDdHHpQ5rWPYhHIObzT7sLN+ghTk3GGk5YD1GxgddcjdX8LNk6XR3jIklJMxrz++
	sO3TPVXrKTsAlRZBcngPPo/HwdisCGHSCyxebtrWqhjY0O8gDQMB5fgzdNjQzmJOeRpHUB
	Abfq6u9XCz+NxpxkAI7mmWw9yalVcEk06S1VssIK2Q3FqJUN9B1ixeiv5UroML0g41TYQP
	yQTCHj4GUrRzmsxkQQM1BX+MATmUP5PmvN7ObRmh+PJe6F2wn5NKd9Ed0C+QSQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Conor Dooley <conor@kernel.org>
Cc: Santhosh Kumar K <s-k6@ti.com>,  broonie@kernel.org,  robh@kernel.org,
  krzk+dt@kernel.org,  conor+dt@kernel.org,  richard@nod.at,
  vigneshr@ti.com,  pratyush@kernel.org,  mwalle@kernel.org,
  takahiro.kuwano@infineon.com,  linux-spi@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-mtd@lists.infradead.org,  praneeth@ti.com,  u-kumar1@ti.com,
  a-dutta@ti.com
Subject: Re: [PATCH v3 01/13] spi: dt-bindings: allow spi-max-frequency to
 specify a frequency pair
In-Reply-To: <20260603-neatly-twine-e89b923f5cb6@spud> (Conor Dooley's message
	of "Wed, 3 Jun 2026 17:07:21 +0100")
References: <20260527175527.2247679-1-s-k6@ti.com>
	<20260527175527.2247679-2-s-k6@ti.com>
	<20260528-clergyman-kindling-20971775ba78@spud>
	<eaa75113-2b89-468d-aca8-932bc7e33a7d@ti.com>
	<87cxy92llq.fsf@bootlin.com>
	<20260602-aptly-bunkbed-1bd3a8d63d54@spud>
	<875x3zzkji.fsf@bootlin.com> <20260603-neatly-twine-e89b923f5cb6@spud>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 03 Jun 2026 18:29:27 +0200
Message-ID: <87o6hry4d4.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306423-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:from_mime,bootlin.com:dkim,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E426639D8A


>> >> > The non-PHY frequency is a controller limitation/capability rather =
than
>> >> > a flash characteristic, so it seems more appropriate to keep it in =
the
>> >> > controller driver as Conor suggested.
>> >>=20
>> >> The non tuned frequency is the maximum frequency one could use
>> >> reliably. It is not controller specific. It is mostly board specific,
>> >> and to some extend may also be chip specific.
>> >>=20
>> >> The tuned frequency is the maximum frequency one could use reliably
>> >> after line a controller or chip specific training procedure. It is
>> >> also the result of an aggregated set of non discoverable hardware
>> >> limitations:
>> >> - board routing
>> >> - chip capability
>> >> - controller capability
>> >
>> > Right, and this I guess is what scuppers letting the controller driver
>> > sort the configuration out itself and leaving the property as-is.
>> > It could be that the speed in spi-max-frequency is lower than the "base
>> > speed" of the controller but because of board routing or device
>> > capability that the tuned mode is still required, right?
>>=20
>> I do not actually expect any tuned mode/frequency to be mandatory.
>
> I think you misunderstood my use of "required", I meant that the new
> property/information was needed in the scenario I described, not that it
> should be a required property in a binding.

Yes I misunderstood the term indeed. However I still fail to catch what
you meant here, I'm sorry. Would you mind rephrasing?

Just to clarify, tuned modes are only bonuses.

Miqu=C3=A8l

