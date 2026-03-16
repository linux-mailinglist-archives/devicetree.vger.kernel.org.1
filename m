Return-Path: <devicetree+bounces-275950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDwmOG+kt2lTTwEAu9opvQ
	(envelope-from <devicetree+bounces-275950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:34:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BA12952E4
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:34:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 19E453004D0A
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58F234B43F;
	Mon, 16 Mar 2026 06:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Eu8zQqTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0846F34B404;
	Mon, 16 Mar 2026 06:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773642856; cv=none; b=mAN29IO+y7Rhl4NnCjwxnZ8lUDUfCBcQvE0g0wTEH2EYRXEQjvGBWrFae4hdrSuXyaJ2sa/BW2trNn8iwqpMbhzsCrd/H8e+wB8csrhkdFd6Fd6kJs2SPS6IdzFak8BGyAqMnCAanpPyGzMK+5NG0Jzaf7SOz2QiC9Pr1Z23oKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773642856; c=relaxed/simple;
	bh=Qi/hMEQwJEADQPSwkWCysi/W3ni7SPe9RdFJbblJhi8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=b65MNOmrlJhEbyNjOp+7WwBSj4fSn36bHaPis1DL/JB3yKkpXRn4WYYKzC1UuNbXVMTyx6+sn9UM711p4Oh9PUKX4tmJcFDjiGENihQ11/8UqIBFJuJUcZkTmGbkIHNm5Hm26IUQoqBkAkIPmTMqDOK/a4Mtwt9LIeXyuTxy1lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Eu8zQqTZ; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1773642852;
	bh=Qi/hMEQwJEADQPSwkWCysi/W3ni7SPe9RdFJbblJhi8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Eu8zQqTZrgdd5zingl1ok2g8/jiEzlf8ZASl/Y7r5RNVblLY9kIdD2nLCNpvwDmcO
	 2R+V7UYJaW1NCVNtt6yMySmC972GZ9rcH8XMxEiHvXwT46LSMiFO/8XpaZ7KY/kvEl
	 eZRTEEpVQRAKrpCUZProsW38IwWa6ep9F2YfYCmfaV9AUR2mtpOlsXpEDJV8W4jA0s
	 zGnZGrekR8vtP56Wdy+1JOGeqrtaW5BO0hnNhqNHhgCdPIb45ASmA0wbl1ojb7Bbiw
	 hUrjxY331P+CmSiwQE/CVmawgI30Fm7mQhnknwFxDBbjaiYp12g3seOkaBJ9G6PA4V
	 8/yvBiSP8adSA==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 1430A6009B;
	Mon, 16 Mar 2026 14:34:10 +0800 (AWST)
Message-ID: <c3b28ee92fa46700887d0c68b23045b2418358a7.camel@codeconstruct.com.au>
Subject: Re: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Arnd Bergmann <arnd@arndb.de>, Conor Dooley <conor@kernel.org>, aspeedyh
	 <yh_chung@aspeedtech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Ryan
 Chen <ryan_chen@aspeedtech.com>,  Philipp Zabel <p.zabel@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	openbmc@lists.ozlabs.org, maciej.lawniczak@intel.com, Mark Brown	
 <broonie@kernel.org>
Date: Mon, 16 Mar 2026 17:04:10 +1030
In-Reply-To: <23909400-4e7f-49c9-a982-14036372af98@app.fastmail.com>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
	 <20260313-energy-casket-ca8adc1f1fd1@spud>
	 <23909400-4e7f-49c9-a982-14036372af98@app.fastmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275950-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E3BA12952E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 2026-03-13 at 22:36 +0100, Arnd Bergmann wrote:
> On Fri, Mar 13, 2026, at 17:24, Conor Dooley wrote:
> > On Fri, Mar 13, 2026 at 06:07:35PM +0800, aspeedyh wrote:
> > > This series adds initial support for the eSPI controller found on ASP=
EED
> > > AST2600 BMC SoCs.
> > >=20
> > > The series introduces a eSPI controller framework for ASPEED SoCs und=
er
> > > drivers/soc/aspeed/, adds AST2600-specific controller support for
> > > peripheral and flash channels, defines the corresponding devicetree=
=20
> > > binding, and adds the AST2600 eSPI controller node to the SoC dtsi.
> > >=20
> > > The driver is intended to support host-BMC communication over the BMC=
-side
> > > eSPI slave controller present on AST2600 systems.
> >=20
> > This all seems to be in the wrong places entirely, shouldn't an eSPI
> > driver and bindings go in the spi subsystem?
>=20
> From an initial reading, my impression is that patches 1, 2, 3 and 7
> should be modified to use the normal SPI interfaces to implement
> an spi target driver, possibly a combined host/target driver.
> Reworking this should be fairly straightforward because the interfaces
> to the SPI core are well documented.
>=20
> It is possible that the hardware can only be used to provide espi
> device emulation. From what I could see in the code, there is
> not much special in there, but I'm not that familiar with SPI
>=20
> Patches 4, 5 and 6 in consequently would need to be reworked so
> these can implement the TAFS spec independent of the SPI controller,
> and can be shared e.g. with other OpenBMC targets using the same
> module and the same user interface. None of this should be aspeed
> specific.=20
>=20
> There is a good chance that both the user interface and the placing
> of the code will need a more debate, but I would suggest first trying
> to move everything over to use the SPI subsystem but leave other
> parts untouched for the moment.

To extend Arnd's points here, some previous attempts were made to
support Intel's eSPI protocol on Aspeed's SoCs which aren't discussed
in this cover letter. I think it would be helpful to cover the history
and why we now have a third approach:

- https://lore.kernel.org/linux-aspeed/20240319093405.39833-1-manojkiran.ed=
a@gmail.com/
- https://lore.kernel.org/openbmc/20220516005412.4844-1-chiawei_wang@aspeed=
tech.com/

Previously, Jeremy had some suggestions covering the various channels:

https://lore.kernel.org/linux-aspeed/20c13b9bb023091758cac3a07fb4037b7d7965=
78.camel@codeconstruct.com.au/

Andrew

