Return-Path: <devicetree+bounces-276414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJhGFb2luGkthAEAu9opvQ
	(envelope-from <devicetree+bounces-276414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 01:52:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6832A256E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 01:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E304E3013CB1
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 00:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9801221CA02;
	Tue, 17 Mar 2026 00:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="GzkAukyh"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C962B25776;
	Tue, 17 Mar 2026 00:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773708727; cv=none; b=JcuAEMqUDFirhqj2kfwA1IM9sPcrAuYojnK5j2Nr6yvpsEnfxlrWeSPCKdDNmBC5jK3/kNUdBEWcECwEFUY42BxtwExwTgpSzlZK4Ol+iWygs6AWwBdeHyZRo3Bt2YTKklxhNZNgcazXIvJceyWs06ZpUszgKYfFqxTvPRUYaiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773708727; c=relaxed/simple;
	bh=IQrOaM7+9yLQsgoRKSLktpCWWPOxb5Wx6sTXy8E4jQM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=N4yXZ6rhGSG2zeyWOUzzEYUUwzVvMY0Q0v+40xgt8pIxGwC4siUH4dzOIF83WJPMGjSev6IWdh/SkTj3tRMXMJKH6VejDcWavzi2L6kpcuODbVajrxEbNcR+GuUknyeMZohIMxqGnDrdAPFpF5ZHa+SYlmsggt55KJ+UNIRs3bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=GzkAukyh; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1773708723;
	bh=7Wva0cCBDpLbK0JVmBe4Ub0EUtCjNYf1GYoc0uieWEk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=GzkAukyhJbTthnB88ExXDqDQGE2jqt5wnSezRMJF/nKkq1miLa0jjJu7FsM6JU7y8
	 HXKCxxPAoh+7kuQFvbvs8SRgYpkb3CqApgFvWPP4aVySvcSkGnL/zrGUiw0l6yPDbd
	 XYU8i6Gd5hjtCTmSG9Qi1BKyrz6plS00DEAK9msDg7NuO/xA1FiH2Dyx6l0W4kC68D
	 nHehRORN+FihBZog5/cJVewhMxKdu2qKYkWNMGm45o4KB2asEF0iv9YHOO27XbFB07
	 QYnL8jlJJpDqpxkAEgKxybD6zW9VeQQqzU2V8Mp9vhvk5PJx0QCwY+Tpoq4fqxNiHo
	 fgr2dIbmEuINQ==
Received: from [192.168.72.167] (210-10-213-150.per.static-ipl.aapt.com.au [210.10.213.150])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E07786009B;
	Tue, 17 Mar 2026 08:52:01 +0800 (AWST)
Message-ID: <eeac1db0a5692ae45b5528a85ed1510b8b1cf771.camel@codeconstruct.com.au>
Subject: Re: [PATCH v26 2/4] dt-bindings: i2c: ast2600-i2c.yaml: Add
 global-regs and transfer-mode properties
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>
Cc: Ryan Chen <ryan_chen@aspeedtech.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Andi Shyti <andi.shyti@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "openbmc@lists.ozlabs.org"
 <openbmc@lists.ozlabs.org>
Date: Tue, 17 Mar 2026 08:52:03 +0800
In-Reply-To: <CAL_JsqKQp=HyA90rQ2Hzu148k63k5-qrGLH6sEHXNcjAu3QSwg@mail.gmail.com>
References: <20260309-upstream_i2c-v26-0-5fedcff8ffe8@aspeedtech.com>
	 <20260309-upstream_i2c-v26-2-5fedcff8ffe8@aspeedtech.com>
	 <20260313232125.GA3618633-robh@kernel.org>
	 <TY2PPF5CB9A1BE6A19D439C675AF5028C13F242A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
	 <7ae8222bf6abd83a3c2ac976f54a2edbe4e9727a.camel@codeconstruct.com.au>
	 <CAL_JsqKQp=HyA90rQ2Hzu148k63k5-qrGLH6sEHXNcjAu3QSwg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2+deb12u1 
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
	TAGGED_FROM(0.00)[bounces-276414-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jk@codeconstruct.com.au,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4B6832A256E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Rob,

> > I don't think that really addresses Rob's point there.
> >=20
> > The selection of mode is somewhat a driver implementation decision (and
> > so would not belong in a DT binding) - *except* that there are
> > considerations around the use of hardware DMA channels, as covered in
> > earlier review.
>=20
> Am I supposed to go read the prior 25 versions?

Not at all - the next paragraph was my attempt at a recap of those, but
Ryan, please correct me if I am wrong on any of those points.

> > [My understanding is that the mode needs to be defined here to select
> > which i2c devices have a DMA channel allocated to them. I also
> > think that byte mode may be useful in some scenarios, but that
> > consideration certainly does not belong in the DT binding spec]
>=20
> But this is selecting DMA for the bus, not specific devices. I would
> think the decision would be dynamic based on some xfer size. Certainly
> if the xfer is less than the buffer size (32bytes), then there is no
> advantage of DMA.
>=20
> Or do you mean some instances of the I2C controllers have DMA and some
> do not?

Yes, some of the controllers may be allocated a DMA channel. A driver
implementation may (or may not) make use of that channel.

Since the hardware has a limited numbers of DMA channels, Ryan's aim
here is to specify which controllers may consume a channel.

(in relation to the 'bus' terminology though: there is a 1:1 mapping
between i2c buses and controllers here, plus a small area of global
registers which apply to all controller peripherals)

>  If so, then ...

[...]

> > In that case, we would just have a boolean property, like:
> >=20
> > =C2=A0=C2=A0=C2=A0 aspeed,i2c-dma-enabled;
>=20
> ... yes, this is fine.

Brilliant, thanks.

Ryan: I think this gives us a much cleaner approach to the binding.

Cheers,


Jeremy

