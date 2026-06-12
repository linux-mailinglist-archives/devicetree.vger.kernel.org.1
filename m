Return-Path: <devicetree+bounces-310813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gOlpKY3OK2qoFQQAu9opvQ
	(envelope-from <devicetree+bounces-310813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:17:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5616782B9
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:17:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b="IWWW1m4/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310813-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310813-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F85B30F1D76
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF9433A5E65;
	Fri, 12 Jun 2026 09:12:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AFE3A6F04
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 09:12:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781255559; cv=none; b=f9VLAz8QAEZIelKVGh96IE3nR+5Y5TbgwflQoeKyNHtTClqh2i4V2ONYUv6Am29ZRWDtAtXIW2iZxEgbSMIiE7NKS4qhZM3BjlY761vlcQiFKjYjKdrj8fRoW4TYT0QC9cxaw9Vk1YOCzCuULvw10YpiOpc59JQS6sRPnU5/7S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781255559; c=relaxed/simple;
	bh=KouzSC835H3UftJKpqLYTTea68/fujc5sqF/usq77mM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lfnTJhuGIY2AOudh+1NDiyWt6XViqItXORjk5KnRgIJ5JYkiuAFX/zUEPNWUpMe6kkWQB7NnTdW3jEZr/3vn7VL+AeghjFWbMR/wo2s7B3nPnWRxew/0EDQgEooJbjZcPh6mk5bbEGF0zOTY0QDakrWDGeqbKzLP21Z38NqCHps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=IWWW1m4/; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 0F9D61A38D8;
	Fri, 12 Jun 2026 09:12:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D781D60012;
	Fri, 12 Jun 2026 09:12:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 99D41106C8346;
	Fri, 12 Jun 2026 11:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1781255552; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=KouzSC835H3UftJKpqLYTTea68/fujc5sqF/usq77mM=;
	b=IWWW1m4/6z3eZyoajuik2bJfF2MaTMc8WF0IlUZjCBMOsJKILRo6S0yE0n29nU+D7eLfjF
	+m7TZQUq0jqO6Fh2ltYun3VZmvH+GaS+ABD4CMEqiYu6yaFgsiLEODy7iFcleEbibbZ2Cg
	gvfYywcsGuiEHxXDKDXqNTKv/7fOw+bi902qKBVDRvNoEVtUX7TMICn15Q6+Q7h78LOceM
	r7RtTTEe0HzYflSoGir9vEhCphl/y5xIziWdCQv9Gm0IHoCZex1gJC0bshETpOWvmRsNmu
	PGqs8FmyHKdo9v75AZjji8y3j9XJZCfe2ahGG1yY2neexZ1l6z4QCAwoX4SycQ==
From: =?UTF-8?B?QmVub8OudA==?= Monin <benoit.monin@bootlin.com>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v8 6/9] clk: eyeq: Introduce a generic clock type
Date: Fri, 12 Jun 2026 11:12:30 +0200
Message-ID: <ySSlygKLR5G6SmDpPN91fw@bootlin.com>
In-Reply-To: <20260604135106.867711F00893@smtp.kernel.org>
References:
 <20260604-clk-eyeq7-v8-6-53f618174cf6@bootlin.com>
 <20260604135106.867711F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310813-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[benoit.monin@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benoit.monin@bootlin.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C5616782B9

On Thursday, 4 June 2026 at 15:51:06 CEST, sashiko-bot@kernel.org wrote:
=2E..
> [Severity: High]
> This isn't a bug introduced by this patch, but since multiple writable
> clock dividers share the same physical register (for example, div-ospi-ref
> and div-ospi-sys share the register at 0x090), can concurrent clk_set_rat=
e()
> calls cause read-modify-write races here?
>=20
> Because NULL is passed as the lock parameter, the clock divider core will
> perform a lockless read-modify-write sequence. Would it be safer to provi=
de
> a shared spinlock to protect the register state?
>=20
This is a fairly theoretical point. For now, the clocks are unused and not
tied to any device in the device tree on the EyeQ6H SoC. Even so, both
clocks are related to the octo-spi controller which uses the
spi-cadence-quadspi driver. In this driver, the clocks are handled by the
clk-bulk API which serialize clock accesses in lk_bulk_prepare_enable() and
clk_bulk_disable_unprepare(). And there are no calls to clk_set_rate() in
this driver.

Best regards,
=2D-=20
Beno=C3=AEt Monin, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com




