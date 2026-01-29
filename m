Return-Path: <devicetree+bounces-261013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIfgK+Kxe2mSHwIAu9opvQ
	(envelope-from <devicetree+bounces-261013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:15:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DE619B3DA6
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 69E863004051
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA7D2F25F2;
	Thu, 29 Jan 2026 19:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ZI3UdqXk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F5623D7FB
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 19:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769714142; cv=none; b=DXUfSfmhymEG9Yhl+ZgneqKIGNwGTMsUtV2wmycC4ht7mwQB5kGwHG0mVWKUp6TRfDw70bQbq8H19nQJRt1lGOHLH7YXcDuumN9CMUsW1lLkmwcFKt6e/PDTVp3lsjoKPLN1ptuxCseg3KPD90GcyDPMsKfO8ZzaYjsg6kbjQqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769714142; c=relaxed/simple;
	bh=/1Tv44k0PGqzK+Ex9o1XTRSSLR1TD0OF+X9/4kO3NaM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tgQoJlJ6eGHs0ned+TkR10UwIJq3b41cgMX1Xd/HqI2s0jxkoXYZdFL9jvIdRxpJIoDuiHwfrP6YWJFdDvWkItL4dQB7DacNFNKGMwVjKBwHEtsvmM/I8Ir6EWjW9+nZxt9K8F7aXIslw6eEMnkxQWoqNkqOYwC7yeUyyEe+SAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ZI3UdqXk; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 225414E42318;
	Thu, 29 Jan 2026 19:15:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D1A3560746;
	Thu, 29 Jan 2026 19:15:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A9FF0119A880F;
	Thu, 29 Jan 2026 20:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769714138; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=f604bk2vZ1OYgARjjaC8vFTT2afGdXtldw+gIbc38WE=;
	b=ZI3UdqXkPujSuL1IObI0MspHg5JQ7UUy8EOQtylRXFQISuemglTw1M0YrlGuO6E7xaedvU
	h6nDru8mCskYPw4B6rSYhNvUSWgSHBW0E1QsG2zj9RGoI+Ic/gVOqqq45cWiVjxcSyfsJu
	tvSjFE+BefViCYT32FlEfmVDzP2ph9Q8bR+WSJ+yWN+jqX0DPnOvxkgpnCbvYIDRbSrprw
	Mel+ABWTgtKkXXw6TO2rzUEJtIcAc1jsdqTeX7+6+Ut4vR592ljKlplTN38rYedgN3zhNt
	bCkWlPAVM0FR7CWPEHQxISNh5PQwOtI/sGTpI9S3ieNjLs9yCoPZMYYECPqE+g==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Amit Kumar Mahapatra <amit.kumar-mahapatra@amd.com>,
	Michal Simek <monstr@monstr.eu>,
	Bernhard Frauendienst <kernel@nospam.obeliks.de>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v15 0/3] mtd: Add support for stacked memories
Date: Thu, 29 Jan 2026 20:15:32 +0100
Message-ID: <176971398683.256348.665652099075371899.b4-ty@bootlin.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260129-mtd-virt-concat-v15-0-c56a232efbd2@bootlin.com>
References: <20260129-mtd-virt-concat-v15-0-c56a232efbd2@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261013-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DE619B3DA6
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 13:09:26 +0100, Luca Ceresoli wrote:
> [TL;DR for v15: as agreed with Amit I'm sending a new iteration of his
> patches to fix the build-time failure due to a module dependency
> loop. Original cover follows.]
> 
> This patch series adds stacked support by enhancing the existing mtd-concat
> driver to be more generic.
> 
> [...]

Thank you for finally re-sending the series after fixing the robot
warning, I will not wait for merging it because this needs to finally
get in, and it's been over the mailing list for 8 months with just a
Kconfig symbol to fix, so:

Applied to mtd/next, thanks!

[1/3] dt-bindings: mtd: Describe MTD partitions concatenation
      commit: 143555defb058336a223ba434619724b4c6d82b0
[2/3] mtd: Move struct mtd_concat definition to header file
      commit: c82100597f3ce5e366f2bc875e9332b7009f5212
[3/3] mtd: Add driver for concatenating devices
      commit: 285871f1ff3c251cba288e7dd9e373c04149a509

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl

