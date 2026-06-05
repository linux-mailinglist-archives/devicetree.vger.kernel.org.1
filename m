Return-Path: <devicetree+bounces-307500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6SF7ACkAI2owgQEAu9opvQ
	(envelope-from <devicetree+bounces-307500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:58:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85355649F8C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:58:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=yrLBi1mi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307500-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307500-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0E3803006471
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 16:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3529340280;
	Fri,  5 Jun 2026 16:55:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2882416D01;
	Fri,  5 Jun 2026 16:55:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780678514; cv=none; b=tA2+baofgCWyza1WW8BhzD+IHlNpDekhMIZqSaiv+cNtyN9Nk69Ym+54K0JV8xG0OTFiVREmDziaT57iOj/8Jztw4F8Fv+WhEgY2vgY4an3OLI0/jp/PY4VAfFt+0H+4ELpyMeqvxuPQxW0eqUefZrJwQGcPdHw8Bea8la1N3Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780678514; c=relaxed/simple;
	bh=VQDg/ysUOsAcr851JW4UFD0Y9MDkfUj1C77vlusmwlk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=LtGS1/cMdorbLqynOm2RANFUip7sZyxARqIux3CvECekZbJyKgXwTipSJ/Fcr+6NY5gEtejJGUH0250TYr7W8gAf9sD1lrst/EX7FP+fwwCziKWDBz8Hhz52sfJ0zHFFxgp/CkbMcWVi24sUePOjAvYgOGFBMhIWFVX78ePaRAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=yrLBi1mi; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 7042C1A0929;
	Fri,  5 Jun 2026 16:55:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 395A95FED1;
	Fri,  5 Jun 2026 16:55:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B3DDD106A24CC;
	Fri,  5 Jun 2026 18:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780678510; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=VQDg/ysUOsAcr851JW4UFD0Y9MDkfUj1C77vlusmwlk=;
	b=yrLBi1mi2rwe8UgnCWTg14FCs8780F9FMaLXfP1zYXCjMQ1NBsVuti5VsF9mon/aK7Bd/g
	GmhlElgErRw82XIOuuXDgIbVgIZav5GeLscixodanfzGxczQnvdQhdo68Tfwd1ckascxyP
	J0i2aZH0XqeFV4lWm8d8KUX2LxJAFHDLOMO+6RemMeTL8NUw23tSbq6OrmJdtPmZFlo3+Y
	Uvs3jkatYJNBCG2IULrVCTlHgYiSxMJqolyeA/pJfmJFBmYOLhRvAC+n+b9yJSivwSpqKY
	S2EpGjrH6VkdJVl7GpBlCLrYAVFCRxs41fndMK6MOTznIelYrcUDz50SztR4OQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,  Santhosh Kumar K
 <s-k6@ti.com>,  broonie@kernel.org,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  richard@nod.at,  vigneshr@ti.com,
  pratyush@kernel.org,  mwalle@kernel.org,  takahiro.kuwano@infineon.com,
  linux-spi@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-mtd@lists.infradead.org,
  praneeth@ti.com,  u-kumar1@ti.com,  a-dutta@ti.com
Subject: Re: [PATCH v3 01/13] spi: dt-bindings: allow spi-max-frequency to
 specify a frequency pair
In-Reply-To: <20260605-cane-duct-a5c740fae417@spud> (Conor Dooley's message of
	"Fri, 5 Jun 2026 16:20:59 +0100")
References: <20260602-aptly-bunkbed-1bd3a8d63d54@spud>
	<875x3zzkji.fsf@bootlin.com> <20260603-neatly-twine-e89b923f5cb6@spud>
	<87o6hry4d4.fsf@bootlin.com>
	<20260603-balance-encounter-94f69e1577f3@spud>
	<87ik7yydyv.fsf@bootlin.com>
	<20260604-shrunk-acclaim-25368d7ad63e@spud>
	<87a4t9wl7r.fsf@bootlin.com>
	<20260605-regulate-crawling-253c6d6bd971@wendy>
	<87tsrh4fe2.fsf@bootlin.com> <20260605-cane-duct-a5c740fae417@spud>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Fri, 05 Jun 2026 18:55:04 +0200
Message-ID: <87o6hp3p1z.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-307500-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:conor.dooley@microchip.com,m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:from_mime,bootlin.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 85355649F8C


>> > I am/was trying to come up with a scenario that would justify the patch
>> > man, stop trying to interpret it as what I want done.
>>=20
>> Ah :-) Sorry the intention was unclear to me. So what is your preferred
>> take in the end?
>
> I think the generic dedicated property makes the most sense to me.

Ok, let's go for it then. Thanks for the feedback!

Miqu=C3=A8l

