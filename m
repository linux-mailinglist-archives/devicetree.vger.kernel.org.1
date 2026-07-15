Return-Path: <devicetree+bounces-327004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gIgqDJCFV2q3WAAAu9opvQ
	(envelope-from <devicetree+bounces-327004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:05:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C25B075E72C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:05:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=qKQ+Jhcx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327004-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327004-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A11F6312469A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E44481672;
	Wed, 15 Jul 2026 12:55:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A043A47DD7F;
	Wed, 15 Jul 2026 12:55:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784120124; cv=none; b=Ee/Mz6cnUr+cFhjfRbdyxPJg1Z4XwtgDMivKE8MTH4ZxZc2KidGm3+b9xNaor95BUoYbOZGx9hFj/F3r/WiR129F1Cdv1Uw3StHLFtRjy42gjBU/jq+tt5qBD/2I5IGhJ2vyuplsKRcHGvuYjhORyuHIqNj2ngVM9bMiwhDSx34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784120124; c=relaxed/simple;
	bh=IceKw2RyO8lhEJAXdeRQF+oq+EC4Y1cpc1+smre66Ek=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=fRHXXoWPMXYBzg2ELnuB8aXTyLi74n8bPfF2QDvCJ+k0rxJCswqpiSt4FLm0BqxrBmZ6QC9muBX6l+ZR5wJhFJYtIU/C4kPjhTRZKPnfZfJ3CbkURkVi8LO90VaemY8acChUop2VpPNOa1JKYtJjz8LbdpfikX+vbieXaHi+FL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=qKQ+Jhcx; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id CE5C71A0FF4;
	Wed, 15 Jul 2026 12:55:19 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9FCF06035C;
	Wed, 15 Jul 2026 12:55:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6456B11BD15D9;
	Wed, 15 Jul 2026 14:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784120118; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=IceKw2RyO8lhEJAXdeRQF+oq+EC4Y1cpc1+smre66Ek=;
	b=qKQ+Jhcxz+NSWtDInntefSbu+3RlDnLesfeAPEInTmUy/+R4jC63RvyEnoQ+CKt1aICzZG
	3NvJmV9xA0Xa9coqHCrcl6OsiT1zZiMwddDZSYODB+4pCpMYiAWdZ+NpH3l8d9/MG3LBT/
	3fv0jOieWgxDYw5BFKqWvcvf4FxF0N+iKU/pf6FoL5gIAxn4yx6IeXMwIGZ9bvslQ5BXKh
	uG/bQSi4Xj9R8jAcIqJmWeVmfr+rM3Mz5LLXc/gwLVI9KGN68dd6dM5KJIju3iNmgjYswD
	M5snQoJeM8vhBhjwlApuo1mhMrzMXC883lc+263USQopFmXmwOi4BKgFPfefzg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Brian Masney <bmasney@redhat.com>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Brendan Higgins
 <brendan.higgins@linux.dev>,  David Gow <david@davidgow.net>,  Rae Moar
 <raemoar63@gmail.com>,  Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
  Pascal EBERHARD <pascal.eberhard@se.com>,  linux-clk@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-kselftest@vger.kernel.org,  kunit-dev@googlegroups.com,  Herve
 Codina <herve.codina@bootlin.com>
Subject: Re: [PATCH v2 0/7] clk: Add support for clock nexus
In-Reply-To: <alNN5qxBJ4EsB3Li@shikoro> (Wolfram Sang's message of "Sun, 12
	Jul 2026 10:18:46 +0200")
References: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
	<alNN5qxBJ4EsB3Li@shikoro>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 15 Jul 2026 14:55:14 +0200
Message-ID: <87ik6ge7kd.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-327004-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brendan.higgins@linux.dev,m:david@davidgow.net,m:raemoar63@gmail.com,m:thomas.petazzoni@bootlin.com,m:pascal.eberhard@se.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:kunit-dev@googlegroups.com,m:herve.codina@bootlin.com,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,linux.dev,davidgow.net,gmail.com,bootlin.com,se.com,vger.kernel.org,googlegroups.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bootlin.com:dkim,bootlin.com:mid,bootlin.com:from_mime,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C25B075E72C
X-Rspamd-Action: no action

Hello Wolfram,

On 12/07/2026 at 10:18:46 +02, Wolfram Sang <wsa+renesas@sang-engineering.c=
om> wrote:

> Hi Miquel,
>
>> Then there has been a bigger series (including patches for other
>> subsystems) to show the big picture, but let's split again and focus on
>> one subsystem at a time:
>
> This is a good idea IMO. Sadly, for this series, I won't have time for
> review. If you have a branch available for testing, I could provide
> test-tags, though.

We are working on adding the two other crypto algorithms in. I believe
the crypto stuff is worth testing for you as it is the one showing proof
that all the drivers work on RZN1 hardware. When we send this out we
will include a link in the cover letter with a branch to test,
connecting the clock, irqchip an crypto changes together. Don't hesitate
to remind us for that testing branch if we forget to include it!

Thanks,
Miqu=C3=A8l

