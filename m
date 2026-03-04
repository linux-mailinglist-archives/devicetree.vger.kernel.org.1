Return-Path: <devicetree+bounces-270834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLwsL8abp2ksigAAu9opvQ
	(envelope-from <devicetree+bounces-270834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:41:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 238491F9F15
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC89830D5B1B
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 02:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BAD6282F19;
	Wed,  4 Mar 2026 02:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="SalvJloe"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC2D156CA;
	Wed,  4 Mar 2026 02:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772592067; cv=none; b=eX2TAGDxPvr45gQwUuJfChhZILQ+rmY35nHJtSo3PsmhvrT2GvFOUnoZXegdj74aQN1eWSUTQvGeDnL5Rc3f6SRlCCCESqfoEbZkCAJpAm3Zy//kPVODvGpIeIm7Y08OsBvOwR3VuTg9XrE47Tav4Eg+QOwpJETZXpjloHCD4xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772592067; c=relaxed/simple;
	bh=Ih8XBInDkYJdrPvgQj+yzh+6t6OHwUs1ab86hkiTbV4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=V0LTcRmbRSW7iMifaWKkTuDkZ7/Z+miB+jJkmJpdGolZ5vu22Z8FOsA1lIHTVtPr8uBeSugEUbMGbBaybRWCMi4V6GfM3Ma2tVqAJ3zZZUdV3+ZxVhYpYXP65CTG4t3nC2KUFzSqPCyiZNsbJiuwp+SvZyyiNGD4kfwfBESb3cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=SalvJloe; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1772592063;
	bh=Ih8XBInDkYJdrPvgQj+yzh+6t6OHwUs1ab86hkiTbV4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=SalvJloerZOYvex+zkrwh5UMW3MGxyhruNDEFL83KHvFNP8bYTJoq3fe1rizA3YJB
	 tms5oPmwKDAxRx2zBqjtQXszG3mgr81wHMWJhjq8O7/cNElXxH0m0vs+mNewFj770X
	 sm+famqvqJ5TG6U1ZCqUwKE1i+rpFx0pdaWjbLyTVEldTLpGyJpJuJcvJ+U02RxTfc
	 f0g0KqrpGfelQXbhMUuJB/w6fuunQ9R5AH2OuqymTxL5mZQw6cqWcq5PyfixqUczAQ
	 JBFvPK2STremjsw79QuSjFU0/iz9oJeVLrTwaJEpnfzGlfI9aRtE7E/LkwsW5Xt9wJ
	 Bjb1FsQoPR9PA==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 9C80C6000D;
	Wed,  4 Mar 2026 10:41:00 +0800 (AWST)
Message-ID: <391b9b912492c07fd1fd7a737b7f49382d361fe2.camel@codeconstruct.com.au>
Subject: Re: [PATCH v5 3/8] ARM: dts: aspeed: yosemite5: Add new SGPIO line
 names and rename signal
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, Jackson
 Liu	 <Jackson.Liu@quantatw.com>, Daniel Hsu <Daniel-Hsu@quantatw.com>
Date: Wed, 04 Mar 2026 13:10:59 +1030
In-Reply-To: <20260223-yv5_revise_dts-v5-3-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
	 <20260223-yv5_revise_dts-v5-3-fc913e902488@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 238491F9F15
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270834-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,codeconstruct.com.au:dkim,codeconstruct.com.au:mid]
X-Rspamd-Action: no action

On Mon, 2026-02-23 at 19:17 +0800, Kevin Tung wrote:
> Add new SGPIO line names for user space monitoring and event logging.
>=20
> Also rename PADDLE_BD_IOEXP_INT to ALERT_IRQ_PMBUS_PWR2_N to match
> hardware naming. The original PADDLE_BD_IOEXP_INT is unused, so this
> change does not affect current system functionality.

Why are these two problems being solved in the one patch?

https://docs.kernel.org/process/submitting-patches.html#split-changes

Essentially, your use of "Also" is a bit of a red flag here.

However, on the specifics, why was the PADDLE_BD_IOEXP_INT hardware
naming wrong to begin with? What changed?

Broadly, it feels a lot like you're revising platform designs, then
trying to make the one devicetree fit the current design, and are not
explicitly communicating that this is what you're doing.

If that _is_ what you're doing, then we can come up with much better
schemes to handle it that aren't a constant stream of compatibility
breaks.

I need you to engage with this concern.

From inspection, I only find patches 1, 4 and 7 of this series to be
something I'd consider applying without further discussion.

Andrew

