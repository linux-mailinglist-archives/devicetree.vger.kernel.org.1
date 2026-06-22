Return-Path: <devicetree+bounces-314521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HcwOOLtsOWoasgcAu9opvQ
	(envelope-from <devicetree+bounces-314521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 19:11:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D767F6B164D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 19:11:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=xDPen3V6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314521-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314521-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EB61B30091CF
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 17:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E586E33F5B8;
	Mon, 22 Jun 2026 17:11:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B76528B4FD
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 17:11:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782148276; cv=none; b=S1mr4TDktE3dlUfP/XSMZvLqynABPQ1hAtMztKUZdngOzZcMFZyyCawGOk6sijndylSRCA2KGE8nCeyJFle5fr2ZRPsolWB3FzTaTrvp3jg29Yx4SgO77cqz+LNUj9+jGzNt4sS1AW6nsmDAuh/ROlWdkgDj1pblPJTu2T84rpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782148276; c=relaxed/simple;
	bh=BfrcLv4GnrH8Yz0Wa6y+hsOL6W6hwvomCpv3lLR+OOE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Za8BDDoeskJXltfHrQn24LqbFBn0VsGDn26An7qlE82x05lefqPCtn9Ka7+y5Q3WBkm0HJVtzq4HBQKHj0gYl4ouaazp35Xt2zAt2YM3BzYLasTagnVYkXBUV0crR6j/QMglFcC5tUvzFeRdX6Te6AdHoKkPSzChTr4wz7Kd0v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=xDPen3V6; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id D3055C6220E;
	Mon, 22 Jun 2026 17:11:19 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 97034601BB;
	Mon, 22 Jun 2026 17:11:12 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E3BBD106C8985;
	Mon, 22 Jun 2026 19:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782148271; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=udTrftYgU70f6ssJVopKHx4JxPNGXTrbdi0A2JgqHSg=;
	b=xDPen3V6VcxSbnYKi5N2dl5YBkn0e6b6hVX638BooXj9h6cMpp2Ghmz3zAL1uUO7R+mYlT
	l8d0mTrdtSkRdXoSTRXfjRZa1WJ7v9ZE0rkcRhe/r3WUOPLjqSV5nHJj+WhzThg+gFs5am
	CH90OgjK0HueBEWaYQfLqJDSImtFO3caA65uC7XtzXgNOPI0hBmVAcJyWYp40s3nfaNEAk
	YTmB9fs+Yair2dPVIzkl3gwpeHlXWm2FujIBvh95WWWEGLmy12Atg+jI1u/3dvxLqNwhmF
	bEPgeoYKSWW8jEOSd7w02Mz8pYzjyZ+ngdodnoIXx0Qh/7xyIyxbmNiWWgA8/g==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Santhosh Kumar K <s-k6@ti.com>,  broonie@kernel.org,  robh@kernel.org,
  krzk+dt@kernel.org,  conor+dt@kernel.org,  richard@nod.at,
  vigneshr@ti.com,  pratyush@kernel.org,  mwalle@kernel.org,
  takahiro.kuwano@infineon.com,  linux-spi@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-mtd@lists.infradead.org,  praneeth@ti.com,  u-kumar1@ti.com,
  a-dutta@ti.com
Subject: Re: [PATCH v4 02/16] spi: dt-bindings: add
 spi-phy-pattern-partition property
In-Reply-To: <20260622-jasmine-mandrill-of-emphasis-eebb4c@quoll> (Krzysztof
	Kozlowski's message of "Mon, 22 Jun 2026 11:17:47 +0200")
References: <20260618073725.84733-1-s-k6@ti.com>
	<20260618073725.84733-3-s-k6@ti.com>
	<20260622-jasmine-mandrill-of-emphasis-eebb4c@quoll>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Mon, 22 Jun 2026 19:11:06 +0200
Message-ID: <87zf0m5wlx.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-314521-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D767F6B164D

Hello,

>> +  spi-phy-pattern-partition:
>
> Is this specific to SPI-based MTD/NAND or rather broader - specific to
> MTD/NAND memories, regardless of interface? Feels like the second, thus
> maybe should be placed into the NAND bindings.
>
> If the first, then in below description:
>
> s/PHY/SPI PHY/ to be clear that this is about SPI, not the memory
> itself.

As far as I know, there is no raw NAND controller with such
capability. In the raw/parallel NAND world, timings are well defined by
the ONFI specification, it covers both the bus timings and the minimal
requirements for the chips. There is a method to query what "timing mode"
the NAND chip supports, and then we tune the controller registers to fit
the highest supported timings (capped by possible controller limits).

In the SPI world it is different. No specific timing has ever been
globally defined, so every manufacturer has its own capabilities which
are not discoverable dynamically. The routing also weights a lot. I
would say that we can safely keep this property SPI related, because it
is about the SPI bus being used with optimized timings, rather than some
kind of memory specific feature.

The reason why we need a property in those memories for the feature to
work, is because we need to make data transfers with a known pattern,
thus requiring to read the pattern from the internal array somehow.

Therefore, we shall indeed go for the s/PHY/SPI PHY/ naming indeed.

Thanks,
Miqu=C3=A8l

