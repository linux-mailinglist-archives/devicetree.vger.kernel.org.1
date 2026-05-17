Return-Path: <devicetree+bounces-298892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BXcEBibCWpHhQQAu9opvQ
	(envelope-from <devicetree+bounces-298892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 12:40:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC74560899
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 12:40:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C63830160FA
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 10:40:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC3026F29C;
	Sun, 17 May 2026 10:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="bOglyjIh"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B0430566A
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 10:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779014407; cv=none; b=BOfOKBHSNEehyBf/9A1f5RILqFe0i39wtQozB+2QKimDBWme3T+SMAnSX1IDraJD2i3C9nNU8rPVwQOyYcqMLHFi0CaWhpJzZ4dRD4wtE30QV194kEFOX/WRXgpkEOKjFfNKeznTNLKfYJsCQeCO6MmMlroIr7Yz+HKV9RBlT0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779014407; c=relaxed/simple;
	bh=QVDFICNKk8kg6qirWsiEWP/qhZZeBOs4t3uNbH6t0KM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bBxP/bwud7136m4wQI7JPT4xB/9jmzlKPns7q79hZT48Sc6lA3I6uJLLxPUNIMMBHtV9WB9rz8EoFNt6UUPPNdVj8F/r+hp/IswZFkjmKBYFZSXQRLVFJe3lE2M8lxsRPWqi6AW4C9JliRIy5+7rnZpZ+uOmFlLSwQCOVPr1/SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=bOglyjIh; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from [IPv6:2a02:1812:162d:3d00:c381:7255:a866:916d] (2a02-1812-162d-3d00-c381-7255-a866-916d.ip6.access.telenet.be [IPv6:2a02:1812:162d:3d00:c381:7255:a866:916d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id EE06078365D;
	Sun, 17 May 2026 12:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1779014394;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BEYr5XX2z69OBAzGa57bCeR3hxABq7SAzUw126Kb08k=;
	b=bOglyjIh5JuKZRWMRYcO2D4+Uw7+GWMiLC0bGEG6y6WspgNibTVg/ua5f0bVFl2VLVP8Ko
	LrZo7k5GqUThsDMKiawWj7PFHPr+IXzSO3mtNrIOFNSkTkxEjWqMujfN5rLF4IV9vGd2EN
	aivVddLVaeXy1GGZ7xsYvvFY6qMoDN4PRir+VIRMxO8RaNVcdrlSwCjSdxa/DYpH7osAYd
	7ktBi7g1rvRTrLFvxywSjMoIsrMnjBWuNAsA2Vx/3GprRdf5Do4ozasmijytGPDPCWXp9Q
	9IgI429UlTDA3zKCIUo8CeHaE98TBy0Icp4lb8JtpJdROVf63R6D08HDKCwONQ==
Message-ID: <d0b159eefa6bc5abf0d1531acde568396f480500.camel@svanheule.net>
Subject: Re: [PATCH 3/3] watchdog: realtek-otto: add RTL9607C support
From: Sander Vanheule <sander@svanheule.net>
To: sashiko@lists.linux.dev, Rustam Adilov <adilov@disroot.org>, Guenter
 Roeck	 <linux@roeck-us.net>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	robh@kernel.org, linux-watchdog@vger.kernel.org
Date: Sun, 17 May 2026 12:39:52 +0200
In-Reply-To: <20260509172748.54B33C2BCB2@smtp.kernel.org>
References: <20260509163101.722793-4-adilov@disroot.org>
	 <20260509172748.54B33C2BCB2@smtp.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 8FC74560899
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[svanheule.net,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[svanheule.net:s=mail1707];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298892-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[svanheule.net:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sander@svanheule.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat, 2026-05-09 at 17:27 +0000, sashiko-bot@kernel.org wrote:
> Also, does the system restart handler sleep in an atomic context?
>=20
> otto_wdt_restart() {
> [ ... ]
> 	disable_irq(ctrl->irq_phase1);
> [ ... ]
> }
>=20
> The otto_wdt_restart() function is a system restart handler executed in a=
n
> atomic context with local interrupts disabled. Since disable_irq() intern=
ally
> invokes synchronize_irq(), which uses wait_event() to wait for executing
> interrupt handlers to finish, it can sleep.
>=20
> Calling a sleeping function with local interrupts disabled triggers a ker=
nel
> panic, and waiting for an IRQ handler to complete while other CPUs are st=
opped
> during a machine restart can result in a hard deadlock. Should this use
> disable_irq_nosync() instead?

I figured if local interrupts are disabled, then we don't need to disable t=
he
pretimeout interrupt, since it won't get called (and give confusing warning=
s).
However, doing so results in the output of the pretimeout interrupt handler
being printed when rebooting the system (single-core CPU, both with SMP and
without), so the interrupt is still getting through.

Am I missing something here? Or is this a false positive?


Best,
Sander

