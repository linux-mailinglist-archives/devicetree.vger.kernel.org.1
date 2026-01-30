Return-Path: <devicetree+bounces-261243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEplMh3BfGmTOgIAu9opvQ
	(envelope-from <devicetree+bounces-261243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:33:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8E9BB9CB
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 15:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4C4B13004622
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBBF32E6CD3;
	Fri, 30 Jan 2026 14:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="AgALEglG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDB21D86DC;
	Fri, 30 Jan 2026 14:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769783577; cv=none; b=OMq68SrLEhvANu+d3s/VnvG/ObdowffiDqdBdMBL4zGtFIm83lkfHsrtVENqvVIdKbKFzckXntO1xHFPIzGmvkzGCndti4O7EKvAt205gKppUMmFTEB1+Z6F0+u/cgi4zDVFk0eq+saa9Czfy7XT1a35OeTT0n97tXXAmiSnfFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769783577; c=relaxed/simple;
	bh=A5can+eY+4csM5OYkATRQZryaMHBwuJRBTYQxU8KRLY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=W8w1F9pr/+hAr8JIC7W4yZik/d4Tp4lHqlaV61Jpe+CmgbfDtCPjLfxfgthJYh2Nt+aqAIskIEbaxkUrO7Ms7HW5luyBoMZED7hJfQseiK0+WD4I5nR/b1UgcQuK4PAmlM27I5jnfm2Tvveq0DIOAJEJW8WqBKIFOgSGtmnAuaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=AgALEglG; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 0B273C22F5F;
	Fri, 30 Jan 2026 14:32:57 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 893836075A;
	Fri, 30 Jan 2026 14:32:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 55F67119A8874;
	Fri, 30 Jan 2026 15:32:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769783572; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=A5can+eY+4csM5OYkATRQZryaMHBwuJRBTYQxU8KRLY=;
	b=AgALEglGx71hlug2G5IZdRzlyVmvcTltLBAj+ZZHKaI3Kc0IyOU0/0GaS5xNDvIeBdxMj7
	B25hAUkRjGJD2W+LdJlHeDaZktAYfWRDi4w4BBEY96fH3jBfMGhN8I0T5JKwaKKAcVPXJA
	xKJpkjk1zGjZEacJGiqnYnHI3WksBM94b3QIlsgyJ03g/yMfWgNhqvbCWOTQDF7BrhW/ru
	oQV+zeKvbaaEb9nrUslZcCEwCJ7aRx2qFQi3o4IfE6z0WzKHhmzYRr9fEXl6Wk6ysg2ObT
	iD3zUHoHYmOf3uwCI4PZrHxVp+520ZSlh1+X2D4cF6e8P2D4I/F3PzvfwKte4w==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?=
 <rafal@milecki.pl>,  Luca Ceresoli
 <luca.ceresoli@bootlin.com>,  Amit Kumar Mahapatra
 <amit.kumar-mahapatra@amd.com>,  Michal Simek <monstr@monstr.eu>,
  Bernhard Frauendienst <kernel@nospam.obeliks.de>,  Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH v15 0/3] mtd: Add support for stacked memories
In-Reply-To: <176971398683.256348.665652099075371899.b4-ty@bootlin.com>
	(Miquel Raynal's message of "Thu, 29 Jan 2026 20:15:32 +0100")
References: <20260129-mtd-virt-concat-v15-0-c56a232efbd2@bootlin.com>
	<176971398683.256348.665652099075371899.b4-ty@bootlin.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Fri, 30 Jan 2026 15:32:48 +0100
Message-ID: <87h5s3i31r.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261243-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,linux.dev:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5D8E9BB9CB
X-Rspamd-Action: no action

Hello,

On 29/01/2026 at 20:15:32 +01, Miquel Raynal <miquel.raynal@bootlin.com> wr=
ote:

> On Thu, 29 Jan 2026 13:09:26 +0100, Luca Ceresoli wrote:
>> [TL;DR for v15: as agreed with Amit I'm sending a new iteration of his
>> patches to fix the build-time failure due to a module dependency
>> loop. Original cover follows.]
>>=20
>> This patch series adds stacked support by enhancing the existing mtd-con=
cat
>> driver to be more generic.
>>=20
>> [...]
>
> Thank you for finally re-sending the series after fixing the robot
> warning, I will not wait for merging it because this needs to finally
> get in, and it's been over the mailing list for 8 months with just a
> Kconfig symbol to fix, so:

Unfortunately, for the third time, this series breaks when robots go
over it (see the oe-kbuild-all@lists.linux.dev ML), so I will drop it
again :-/

Sorry,
Miqu=C3=A8l

