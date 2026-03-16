Return-Path: <devicetree+bounces-276321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGXxNyo0uGmvaAEAu9opvQ
	(envelope-from <devicetree+bounces-276321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:47:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8562A29D9D5
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DFB60301FB8F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB6C3CE4B5;
	Mon, 16 Mar 2026 16:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGtekfTq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B17E3CE4A4
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 16:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773679656; cv=none; b=rLfwlnI+Q0bEZuvRolOuMQnuPKLJJ23Sx+xY8CodHHhbpMT3t42X3FD7GlJW6ZXt4FWroXWHnOeIm/EBrDR2oWekYXYKvrtXz9AkB2kS1c57/Kw8L8IjHe37P9YDjf7hCTyPuHyKbRwBIWP0NZMUmp//CCNQQcQruWmAhDEi084=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773679656; c=relaxed/simple;
	bh=+rAbjFpJLF5ELTGsyzXHo5dgEzatb5tWHpqXy6BTmYc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cNghMcshWfRCBcrLnhDhMGxrwOeRgWeotAkQ3997j/aHuhFeVGkcalEm1ntK5N+zPkoenCKVt6IjObie4LONGlr6o3OagCy8kQgXqOblI5SnnSNXfuVgF65Fx3wAp+iV0/aMBKmgMZPudkUWAVCnzPnS+rNxc5UsnWxnNyID9nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGtekfTq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B210C19421
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 16:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773679656;
	bh=+rAbjFpJLF5ELTGsyzXHo5dgEzatb5tWHpqXy6BTmYc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=cGtekfTqFvVrF7VJ1xDN/03QTDPDcdo5LNi8MIeHSIezK4Gd2z+GQ94TdThe3wfdg
	 6+jwBMmOqzF85kgS9jF7LvwgP5JGWXJpkAzraz3vFcajQZUHBvO0WRYzQJE7J0Ytmi
	 Gwi/li0g/v/vcXP34ZAq++FsOnJ7YYiJJNUFiQULiaw3n4kJ58eE6KrMSVjMGnsO4u
	 IMN7zeBsIcQrt2UTsOQo2nDc2fI+SGolMG21oQW9QYbqop+gZh52CvuNSngMbBymF3
	 pYqZPEns6Yy1LnHWMLVS9x1ZnrWuY6XLupN9bxQWg7FscMFBB3zIghh1qubhnfJmuf
	 WBpxVo36e6R+A==
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b97a9f4b4dcso199723466b.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:47:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVVtKLXoTBcXZn0oDXwBTgdiGonuuxM0EWptWxXt7R2+jYgfHhG0loclTmBoDaTxWJKkQIrmJUlvAKR@vger.kernel.org
X-Gm-Message-State: AOJu0YxvjTfthte6aLE885kgK0CLN/2Og/jp1nfVToI5G9c7hXIiQ/bK
	iczpa3ZytIm8B4IpI/ju5WfiHl/b87nQmdrUbdqbDmhcPTEa5iQZcX1dr71GYy7OFNhTiQsfW5V
	LBZa1uFOPvizJuOfA68Kbg/hL49SAmA==
X-Received: by 2002:a17:907:708:b0:b8a:f2cb:8088 with SMTP id
 a640c23a62f3a-b9765392113mr794224266b.33.1773679654788; Mon, 16 Mar 2026
 09:47:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309-upstream_i2c-v26-0-5fedcff8ffe8@aspeedtech.com>
 <20260309-upstream_i2c-v26-2-5fedcff8ffe8@aspeedtech.com> <20260313232125.GA3618633-robh@kernel.org>
 <TY2PPF5CB9A1BE6A19D439C675AF5028C13F242A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
 <7ae8222bf6abd83a3c2ac976f54a2edbe4e9727a.camel@codeconstruct.com.au>
In-Reply-To: <7ae8222bf6abd83a3c2ac976f54a2edbe4e9727a.camel@codeconstruct.com.au>
From: Rob Herring <robh@kernel.org>
Date: Mon, 16 Mar 2026 11:47:21 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKQp=HyA90rQ2Hzu148k63k5-qrGLH6sEHXNcjAu3QSwg@mail.gmail.com>
X-Gm-Features: AaiRm51ex9uUeaeovsj_EfQkcC7S4igdlkgu0QdNDXmYleGKXTFGbzYmU6uj8IQ
Message-ID: <CAL_JsqKQp=HyA90rQ2Hzu148k63k5-qrGLH6sEHXNcjAu3QSwg@mail.gmail.com>
Subject: Re: [PATCH v26 2/4] dt-bindings: i2c: ast2600-i2c.yaml: Add
 global-regs and transfer-mode properties
To: Jeremy Kerr <jk@codeconstruct.com.au>
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, 
	"andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-276321-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8562A29D9D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 15, 2026 at 8:50=E2=80=AFPM Jeremy Kerr <jk@codeconstruct.com.a=
u> wrote:
>
> Hi Ryan & Rob,
>
> > > > +  aspeed,transfer-mode:
> > > > +    description: |
> > > > +      ASPEED ast2600 platform equipped with 16 I2C controllers eac=
h i2c controller
> > > > +      have 1 byte transfer buffer(byte mode), 32 bytes buffer(buff=
er mode), and
> > > > +      share a DMA engine.
> > > > +      Select I2C transfer mode for this controller. Supported valu=
es are:
> > > > +        - "byte": Use 1 byte for i2c transmit (1-byte buffer).
> > > > +        - "buffer": Use buffer (32-byte buffer) for i2c transmit. =
(default)
> > > > +                    Better performance then byte mode.
> > >
> > > Good, I like worse performance so I can use byte mode.
> > Thanks your review.
> > Will remove performance statement.
>
> I don't think that really addresses Rob's point there.
>
> The selection of mode is somewhat a driver implementation decision (and
> so would not belong in a DT binding) - *except* that there are
> considerations around the use of hardware DMA channels, as covered in
> earlier review.

Am I supposed to go read the prior 25 versions?

> [My understanding is that the mode needs to be defined here to select
> which i2c devices have a DMA channel allocated to them. I also
> think that byte mode may be useful in some scenarios, but that
> consideration certainly does not belong in the DT binding spec]

But this is selecting DMA for the bus, not specific devices. I would
think the decision would be dynamic based on some xfer size. Certainly
if the xfer is less than the buffer size (32bytes), then there is no
advantage of DMA.

Or do you mean some instances of the I2C controllers have DMA and some
do not? If so, then ...

> So, how about we refine this to *just* the hardware-specific component:
> whether a DMA channel is allocated. A driver implementation can then
> select the appropriate mode (dma, byte or buffer), depending on
> implementation-specific details.
>
> In that case, we would just have a boolean property, like:
>
>     aspeed,i2c-dma-enabled;

... yes, this is fine.

>
> - to signify that this controller may use a DMA channel. The choice of
> actual mode is left up to the driver implementation.
>
> Rob, would that suit better?
>
> This way, we don't have ambiguity on "buffer" default vs. absent
> property, and we're no longer specifying actual driver behaviour in the
> DT.
>
> Cheers,
>
>
> Jeremy

