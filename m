Return-Path: <devicetree+bounces-326929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vDpyEeR1V2pJOgEAu9opvQ
	(envelope-from <devicetree+bounces-326929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:58:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AB94175DD92
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:58:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hWcnDRif;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326929-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326929-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B47C030146A4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4074E44C666;
	Wed, 15 Jul 2026 11:56:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F405449EC3;
	Wed, 15 Jul 2026 11:56:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784116573; cv=none; b=hizQ7MtU9teWeW5E3Q7xJrGiQj90XrICLqgQlEWFHmv7kBevypi+z2fJNw1Pg9/Krs3LLpETcS++6edixaq1eYBrOiESq2pXRmtpeysgas7HTKMk+PXhEKEf/W6VyL4nOxHXp3dJrr9YSy69tZzRwFzuUGLrMKMbg4z9IQsZMQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784116573; c=relaxed/simple;
	bh=g8b7FdYYkqd6DZcTGSeNpeTqR6UjNz8xauquTtINp+0=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dyW+UmZMuj97h7Ir2hTcycs0g0hSfPP5jiIqp7LUc3ajQmR5YHaxLioIldLWBCmrdehxrbnhJG/2L0v8IRVQ09AJoqCguOcWEvjAztOvBNoPSIuFUzT56sCPR2ZMZCOKyqQz0/I+FwQd8auVnIyCJHOmJy1Vq1xbw3JVdan9xi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWcnDRif; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 715131F000E9;
	Wed, 15 Jul 2026 11:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784116570;
	bh=u9wJHKiV23P2GLbMmzVOeIGyReKDaO4AJFuZast6R08=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hWcnDRifBQOBuXKk7Y87WvSAYB0GUR0mBPWzDtZQ8cwFCRiSAFRIGymSi3j7BdxaX
	 YF8ONpbBKamJiY7YUrkPSfoxN3wxywi1v6xeb+O5TBzRUZ3PTfWUgx4IE4bZ1PTjq0
	 L+hw3UdfX3PZc3q7shYUzh9hEV+mXKLiYKjjDg8f7b7NndG6K/IESn64N1XNmNNFvD
	 cSb5FEAFpitcYYFqTpuPoywBnJM9uuxEKSMses2GU6y5JG77b7+B/yCcpAp4plhXv5
	 hH6RuiJsk8RoQqWR01c26lGBDuJFyz088Q8tmYiw7QUiEIZFnsMntWimisVumy6R/V
	 Uy8ipp1x1fdqg==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <maz@kernel.org>)
	id 1wjyDg-00000005H0X-19Tp;
	Wed, 15 Jul 2026 11:56:08 +0000
Date: Wed, 15 Jul 2026 12:56:07 +0100
Message-ID: <86bjc8o4a0.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Yureka Lilian <yureka@cyberchaos.dev>
Cc: Manivannan Sadhasivam <mani@kernel.org>,	Lorenzo Pieralisi
 <lpieralisi@kernel.org>,	Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?=
 <kwilczynski@kernel.org>,	Rob Herring <robh@kernel.org>,	Bjorn Helgaas
 <bhelgaas@google.com>,	Sven Peter <sven@kernel.org>,	Janne Grunau
 <j@jannau.net>,	Neal Gompa <neal@gompa.dev>,	Krzysztof Kozlowski
 <krzk+dt@kernel.org>,	Conor Dooley <conor+dt@kernel.org>,
	linux-pci@vger.kernel.org,	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev,	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] PCI: apple: Integrate pwrctrl API
In-Reply-To: <76243051-e391-45d2-b47a-d4a904f0a36f@cyberchaos.dev>
References: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
	<20260707-apple-pcie-pwren-v1-1-5a281b182fe2@cyberchaos.dev>
	<86a4s3p2vy.wl-maz@kernel.org>
	<8a80a170-a508-4a9e-8090-27cfcedb1cd4@cyberchaos.dev>
	<865x2qq4ts.wl-maz@kernel.org>
	<jqaxvdaxfpm5g3tdwdqpuk2ubkwim6ckmlblocvakloqishvmm@c5ofbdbdj7lf>
	<76243051-e391-45d2-b47a-d4a904f0a36f@cyberchaos.dev>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/30.1
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: yureka@cyberchaos.dev, mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com, sven@kernel.org, j@jannau.net, neal@gompa.dev, krzk+dt@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326929-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:yureka@cyberchaos.dev,m:mani@kernel.org,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,cyberchaos.dev:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB94175DD92

On Tue, 14 Jul 2026 17:57:11 +0100,
Yureka Lilian <yureka@cyberchaos.dev> wrote:
> 
> 
> On 7/9/26 14:29, Manivannan Sadhasivam wrote:
> > On Tue, Jul 07, 2026 at 02:58:39PM +0100, Marc Zyngier wrote:
> >> Works fine is one thing. Being consistent with the way the rest of the
> >> driver works is another. pci_pwrctrl_create_device() and
> >> pci_pwrctrl_power_on_device() appear to do exactly what would be
> >> required for a single port. They just needs to be exported made
> >> global/exported.
> >> 
> > I'm fine with exporting pci_pwrctrl_create_device() and
> > pci_pwrctrl_power_on_device() and calling them with per-port np.
> > 
> > - Mani
> 
> In theory I do agree this would work to power on the slots, and I can
> send a v2 of the patch doing it that way, but I don't quite understand
> yet how this fits better with the existing driver code: If this is the
> case, what is the difference between pcie-apple and pcie-qcom and why
> should pcie-qcom use the recursive function but pcie-apple not?

Consistency is important to maintaining any piece of code, and I do
not want to deal with two management models simultaneously.

Furthermore, the qcom stuff is bolted on the side the DWC train wreck,
has to deal with the existing way the DWC driver works, and I see no
reason to be dragged down to that level of horror.

Yes, this is an arbitrary decision.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

