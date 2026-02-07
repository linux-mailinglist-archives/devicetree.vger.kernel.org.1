Return-Path: <devicetree+bounces-263601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDH3MyA0h2l/VAQAu9opvQ
	(envelope-from <devicetree+bounces-263601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 13:46:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EC8105E45
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 13:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA456301053B
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 12:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71DF933EB0A;
	Sat,  7 Feb 2026 12:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="IHUEfbEs";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="QRPaRJuX"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2001C2AD37;
	Sat,  7 Feb 2026 12:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770468047; cv=none; b=n6BPk//Q9hN3bfru/mIiCsTP7njRyKIuPdAXQAfFtyz8dMEi1+jSSg9xMsI8nSVts4FPV4qKHGJGJ20myyWiyiTyyD1TLvsp2hdWf+ikM3hDOVTXdUcADGhjAlZpDxfAJfzMAc7ThyMKSvmr15p9OI4SFP0OBTfagIqHZAMFiVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770468047; c=relaxed/simple;
	bh=KOORmID8yt4Yoxy3qIraV6R3a0xDi89MMWmjlOPviZA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=fMBLc00mXfdXRHuNPiBrs9XvEAhNJIHthbUgBgOOd94tp1mhiuHf8N57g5xNuYclOkiEO7v+rQBKxlSRGyugoUr6pCcKI7/eQFlEHqwpDiFIAQ0vnuDhmIdQd4El6k0wyd8g2WkWtkP10Z+J85NOgk+5kiAEP/2jdXrC2v90ny4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=IHUEfbEs; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=QRPaRJuX; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1770468039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=u7mw2REIi5YvReIN1++C/n4doj/HVhTauIRAe2doeMY=;
	b=IHUEfbEs7jatAyG0QJUXYH7tn0JLEYfYurUxGzjGRBE5e/M9QAME/qZ7DMNVU5XfxXe65N
	f9JmkBPSVMEEpywPQHJlcAHkoea0xia8FeK1YwmlHfg5SM/Q69haYUN/oIIUq+Y8TIifmg
	O1e3UdPaw/6WwgB9BH2nDW+Vv8ZvdQ/NXAoAZ9GOBi1KpVg7uenYmJ+o77Dm4KJYRxK0a2
	hD3R0XP6AmRTUpJIa+Fer1KHRIazZqiquew3rMZdN9FUwaTMu4Zwy0B3g2rFqAi8JxlzDr
	YYYivOb1WjwDFuNz/lLzSxgeOyDgRBipZqqfA/B5NakR621s/EYifdFxOZzDZA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1770468039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=u7mw2REIi5YvReIN1++C/n4doj/HVhTauIRAe2doeMY=;
	b=QRPaRJuX/plnEzL6PBt2E45uECSGwK6YLL3plNVB/bNviWky8Y5y7+9Uu94qN9CMnFSj6E
	XRbiA86rYYsGjXAA==
To: Ryan Chen <ryan_chen@aspeedtech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
 <andrew@codeconstruct.com.au>, Paul Walmsley <pjw@kernel.org>, Palmer
 Dabbelt <palmer@dabbelt.com>, Albert
 Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>
Subject: RE: [PATCH 2/4] irqchip/ast2700-intcx: Add AST2700 INTC0/INTC1 support
In-Reply-To: <TY2PPF5CB9A1BE6CC5EEC90EBF13B083D1EF267A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
References: <20260205-irqchip-v1-0-b0310e06c087@aspeedtech.com>
 <20260205-irqchip-v1-2-b0310e06c087@aspeedtech.com> <87h5ru14xx.ffs@tglx>
 <TY2PPF5CB9A1BE6CC5EEC90EBF13B083D1EF267A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
Date: Sat, 07 Feb 2026 13:40:38 +0100
Message-ID: <87sebczpyx.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263601-lists,devicetree=lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	GREYLIST(0.00)[pass,body];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@linutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.996];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,linutronix.de:dkim,infradead.org:email,jms.id.au:email,ghiti.fr:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ozlabs.org:email,dabbelt.com:email]
X-Rspamd-Queue-Id: 34EC8105E45
X-Rspamd-Action: no action

On Sat, Feb 07 2026 at 03:50, Ryan Chen wrote:
>> -----Original Message-----
>> From: Thomas Gleixner <tglx@linutronix.de>
>> Sent: Friday, February 6, 2026 7:34 PM
>> To: Ryan Chen <ryan_chen@aspeedtech.com>; Rob Herring <robh@kernel.org>;
>> Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
>> <conor+dt@kernel.org>; Joel Stanley <joel@jms.id.au>; Andrew Jeffery
>> <andrew@codeconstruct.com.au>; Paul Walmsley <pjw@kernel.org>; Palmer
>> Dabbelt <palmer@dabbelt.com>; Albert Ou <aou@eecs.berkeley.edu>;
>> Alexandre Ghiti <alex@ghiti.fr>
>> Cc: linux-kernel@vger.kernel.org; devicetree@vger.kernel.org;
>> linux-arm-kernel@lists.infradead.org; linux-aspeed@lists.ozlabs.org;
>> linux-riscv@lists.infradead.org; Ryan Chen <ryan_chen@aspeedtech.com>
>> Subject: Re: [PATCH 2/4] irqchip/ast2700-intcx: Add AST2700 INTC0/INTC1
>> support

Please fix your email client to not copy all mail headers. If you can't
fix it, remove them manually and replace it with the usual:

On Fri, Feb 06 2026 at ...., Thomas Gleixner wrote:
>> > +	guard(raw_spinlock_irqsave)(&intc0->intc_lock);
>> 
>> s/_irqsave// Interrupts are disabled when this is invoked.
> Sorry, do you mean when this function been call.
> Ther have desc->lock to do the raw_spin_lock_irqsave.

The core always holds irq_desc::lock with interrupts disabled when it
invokes those irqchip callbacks. So trying to disable interrupts in them
again is a pointless exercise.



