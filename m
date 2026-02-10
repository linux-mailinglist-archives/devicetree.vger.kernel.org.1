Return-Path: <devicetree+bounces-264250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIoQAJndimlIOgAAu9opvQ
	(envelope-from <devicetree+bounces-264250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:26:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 86682117E68
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:26:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5DF92303102B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B843333737;
	Tue, 10 Feb 2026 07:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="E+HqPabo"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7662309EFB;
	Tue, 10 Feb 2026 07:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770708371; cv=none; b=uBaWOfBX1U6NWc/ijJr35NfyVRqHdHXpzqbadqP+Jjsh7dhlsoDZATBCVECjGYgKoXN6Psu4zl2smk1Cm2lj/z+kcpjBNVl0eSZeZ5AxkYv6gFveh/Xs3QOlg0TS5MIHNVx5pMHAzMTYcyVpMqoRcw+sQb6KegF6LtvUJEvUxig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770708371; c=relaxed/simple;
	bh=8ledWZbn+TzX2T22Aa+xwzh+iAFsRkUxzf+EyA9TX7s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JbUNJ/haEl2fXH20ssL9BoqH4vKt7X5hNilR2w+wj5dFbgFXILmTyWA6blXDWcIg8MJ0FZ8Mfp41wcnzRg7HLufoD6nD22pKkXBclEEMWil0FsiHydWGKAfUoIZnsWfrs5PG3ffSn8B+cQjXcKdcrXcpPC1IrRY6bxehE1fwK3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=E+HqPabo; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770708361;
	bh=8ledWZbn+TzX2T22Aa+xwzh+iAFsRkUxzf+EyA9TX7s=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=E+HqPabozX7gbg0tjWTuECfyirjpr0nWgXujSn25Ar2B8oaYpH00TUh9B6IaioJHK
	 eqU8tsIKfX2npYQkA6VV+LUbeg3jeX5Y2Lp6C3QlDl3gMmxV7cvzCR0up3C42CRskV
	 gL5Re3fuUEVoMqQhoTsTCvPf9mBuv6DQeL5ijfZL3TgWi4JED1isiv96UgEinTPqia
	 0vuJioL5O2vOOTjQaUd9Ej0WeZECD8LcpZ0dYoPhUwD2bORMRPCMxY/u+ouZGTzSAT
	 KCNvYAYKiXaEZf2ASacIaApc7p3K7HOa68CmC+7YlH+XFkdyIJOB7BgjpzaLc8T6Qo
	 6kclYs2fn75UA==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 179126024E;
	Tue, 10 Feb 2026 15:25:59 +0800 (AWST)
Message-ID: <feedc58438adad98f4b2a74a1499b2afa92a5eae.camel@codeconstruct.com.au>
Subject: Re: [PATCH 0/4] Add AST2700 INTC0/INTC1 support
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Krzysztof Kozlowski <krzk@kernel.org>, Ryan Chen
 <ryan_chen@aspeedtech.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>, Paul Walmsley
 <pjw@kernel.org>, Palmer Dabbelt	 <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Alexandre Ghiti	 <alex@ghiti.fr>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "devicetree@vger.kernel.org"	 <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"	
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"	
 <linux-aspeed@lists.ozlabs.org>, "linux-riscv@lists.infradead.org"	
 <linux-riscv@lists.infradead.org>, Jeremy Kerr <jk@codeconstruct.com.au>
Date: Tue, 10 Feb 2026 17:55:58 +1030
In-Reply-To: <6de719dc84324166ed60bb8ec130cf2c9ef351f5.camel@codeconstruct.com.au>
References: <20260205-irqchip-v1-0-b0310e06c087@aspeedtech.com>
		 <20260205-intrepid-vengeful-deer-14e2eb@quoll>
		 <TY2PPF5CB9A1BE69B07F90DFB245FAB735DF299A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
		 <d5e45c9f-f3c7-4289-8991-02bd2c5b9587@kernel.org>
	 <6de719dc84324166ed60bb8ec130cf2c9ef351f5.camel@codeconstruct.com.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264250-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 86682117E68
X-Rspamd-Action: no action

Hi Krzysztof,

On Fri, 2026-02-06 at 17:49 +1030, Andrew Jeffery wrote:
> Is it acceptable if we take the following actions:
>=20
> =C2=A0=C2=A0 1. Do some b4 magic to transplant this series back onto [1]
> =C2=A0=C2=A0 2. Send a follow up revision with a link to this discussion =
in the
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cover letter

Following up my own post, I don't think we should attempt such
grafting. [1] references v4. v4 was superseded by v6 at [2], which was
merged.

Because of that merge, separating this proposal into a new series seems
warranted, but has the downside of making it difficult to compare to v4
of that earlier series.

I have gone through each of your feedback items from the earlier series
to consider recurring issues. Defining a new binding is unfortunate but
its addition side-steps an ABI break - perhaps rather than remove the
existing binding we can deprecate it, and keep the associated driver
(assuming this isn't overkill, given there are no in-tree users).
Otherwise it looks to me like the proposal has concerns covered, but
let me know if not.

Andrew

[1]: https://lore.kernel.org/all/1a2ca78746e00c2ec4bfc2953a897c48376ed36f.c=
amel@codeconstruct.com.au/
[2]: https://lore.kernel.org/all/20251030060155.2342604-1-ryan_chen@aspeedt=
ech.com/

