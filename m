Return-Path: <devicetree+bounces-275943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eG5OIPedt2l/TgEAu9opvQ
	(envelope-from <devicetree+bounces-275943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:06:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF425294F64
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:06:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCCC0300DA4B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D96F3347BAF;
	Mon, 16 Mar 2026 06:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C/UxY97y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4A7339844
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773641204; cv=none; b=XLuBSfEsXJO/kZexeBc5zyPVyZ8o0SCjBdiSVmypt3Ke8RnE3ed5dlC9qbZoejMwPnVVSqKddlDDII6J79EK3wgFZrWx7IVOKUUJ0wzW8MVpTtLFTQl6A0WSmL0lOqzdad4AxY2bIfi1Dke79Fn9uTTpHLitokkQs4HhUXcwozA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773641204; c=relaxed/simple;
	bh=xykCT9BKujCqkA2IArKY3bjqd+RsxJe4XdOgeQgUVOQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gxJtNaZsrv6kC7oYQ7s3y2qUcb13nC444I2ZFH1enMAmmke+Sbz+KUCciAKl2WxLrJZ6GmpD3ZT1kE5Sh9D+tUEGk9rUrlHttgLLFqr/uET+0iu8HbAzYyeakeIblDnf61TrLGkDH9qmFabhDmp7LoU4VkNgqv1/VJwhn9OAaOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C/UxY97y; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3878de20527so36578261fa.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773641202; x=1774246002; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xykCT9BKujCqkA2IArKY3bjqd+RsxJe4XdOgeQgUVOQ=;
        b=C/UxY97yAYNVBDD3hah+kB66c9kUXz5YkchE0CmlYHRwXSadKlj5u0nJ+cqlLLvN21
         wDuTf8Le97X06CcK3Kh23X1dBhxPKLHUBvFYij5GdbqwJQ+EugUZocDRLpWZ2PJUj8p4
         8Ooqy7rSYoAHzVG4KvuLxjLqCVyxGwYXbHAuQikeadf3KM3oLSm1JmfVF+e5WKksXigQ
         fNKUgwITa7waFOVJGQRynXNnMwngyEAxlglH/XETc31nEe41AZFeTPuzkq/rOjeE1k/j
         VPrX4SYrZ7oF2ExOY6SmwI4NAigeu3E3lWbFSlygX6AL1jXnUKXrpmE+UaEDokmGSW40
         J6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773641202; x=1774246002;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xykCT9BKujCqkA2IArKY3bjqd+RsxJe4XdOgeQgUVOQ=;
        b=reezNpxR87NQUgUacg/elxEv/IHZwxAURCx9FwKdQDKDmAKyfKdvNJV0YH6MzbyCDm
         btCu+81E+1EvNcJUv9hoad0QZaQGtgoX0dAUDZgPkuWXaddJRQ3COZcChkLmXGoQFbSi
         G1sH2igGW7CWXWy+Z0i3MhvZ24KqZPQRzGGUWEWTOaDIn3f7O35o9G3T0pChYjz9ONLG
         mxR0PdDeVqoNS5SDcNtKaOzfFVCXj3qukt01OgG2/HvlRQHBSuTjY3KSc87ac+pLuUiz
         N338Zo4NlbzOOsBhh1/rkeDwAPTLMPuygIpg8FNl0G/jaw5iajaeBGA4/ohI3dOMgL/j
         KcFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaN9ATGht1S95pnYJx9JrmnZH3tUnKYtZni/uC3Yay7mdCJ1s1YQW+Cmqh2rJsBxZXb1XE4L6ui+mA@vger.kernel.org
X-Gm-Message-State: AOJu0YyAjk+sUJUiy8Y4ZjLbLMz3If64z+OEVUABxD1njAhPm30Dc53t
	pgxU+rx4aVy1KgOasZlw0zF2b2+y81GFZ59sKOvyWsD7ou3z2OvnG1m1
X-Gm-Gg: ATEYQzwcFfA070xv6XLKHvI5n4s1d6Qjg0tRxzwNa5nm1Im8XptJplclsaR2YNMMBy8
	kN34ZaW+6Zj2T4gZ0QfBQx6TsjUXCYjUZ3ETjB9mwbhaIcDOEeIVZLoM22EHy8Zb3b17Jz54WdI
	PENAUBFFPpLIln3X1b19JeAQbOAoZg3GYltuQuO0ugqsmw+dabo3CUNhF5HwbFNg3eZH0tODALc
	2gxcdgjwrdC6oc3Tl8ycInXjx76BqZj2tzL3Js2dtJRC9gvx1cIXsA6xIDrUnMh48UTAtVyFhFs
	ZzqQRmMxwkgbpU7FU6RyfKc4ynzU5xOguvDxFiEXNQc1+Vq9gXPSBNaIo9QVhtAB8wLVLtJ5AX2
	vgXEpFNh9hHzrv18JPDv8KCSrPsG2ediZF/50uuwvaoKJIQe1QzxtzgjWVExJ8mTzDffK8Z0/Nf
	AhCP7ZzzDuhy9LRjbGZ19EWsu4
X-Received: by 2002:ac2:428d:0:b0:5a1:1862:67a0 with SMTP id 2adb3069b0e04-5a162b2fa48mr2657409e87.45.1773641201430;
        Sun, 15 Mar 2026 23:06:41 -0700 (PDT)
Received: from [192.168.1.161] ([81.200.11.23])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67d61f1asm29442921fa.2.2026.03.15.23.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 23:06:40 -0700 (PDT)
Message-ID: <4400f95392163ddc3997cbbc0b298f50910fe6f2.camel@gmail.com>
Subject: Re: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
From: Ivan Mikhaylov <fr0st61te@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Conor Dooley <conor@kernel.org>, aspeedyh
	 <yh_chung@aspeedtech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew
 Jeffery	 <andrew@codeconstruct.com.au>, Ryan Chen
 <ryan_chen@aspeedtech.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, 	linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, 	maciej.lawniczak@intel.com, Mark Brown
 <broonie@kernel.org>
Date: Mon, 16 Mar 2026 09:06:36 +0300
In-Reply-To: <23909400-4e7f-49c9-a982-14036372af98@app.fastmail.com>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
	 <20260313-energy-casket-ca8adc1f1fd1@spud>
	 <23909400-4e7f-49c9-a982-14036372af98@app.fastmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275943-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fr0st61te@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF425294F64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 2026-03-13 at 22:36 +0100, Arnd Bergmann wrote:
> On Fri, Mar 13, 2026, at 17:24, Conor Dooley wrote:
> > On Fri, Mar 13, 2026 at 06:07:35PM +0800, aspeedyh wrote:
> > > This series adds initial support for the eSPI controller found on
> > > ASPEED
> > > AST2600 BMC SoCs.
> > >=20
> > > The series introduces a eSPI controller framework for ASPEED SoCs
> > > under
> > > drivers/soc/aspeed/, adds AST2600-specific controller support for
> > > peripheral and flash channels, defines the corresponding
> > > devicetree=20
> > > binding, and adds the AST2600 eSPI controller node to the SoC
> > > dtsi.
> > >=20
> > > The driver is intended to support host-BMC communication over the
> > > BMC-side
> > > eSPI slave controller present on AST2600 systems.
> >=20
> > This all seems to be in the wrong places entirely, shouldn't an
> > eSPI
> > driver and bindings go in the spi subsystem?
>=20
> From an initial reading, my impression is that patches 1, 2, 3 and 7
> should be modified to use the normal SPI interfaces to implement
> an spi target driver, possibly a combined host/target driver.
> Reworking this should be fairly straightforward because the
> interfaces
> to the SPI core are well documented.

Arnd, that's would be nice if it would be standard SPI device. But what
if eSPI would be a bus? So, I assume all other which lying underneath=20
eSPI would be much easier to implement as standard driver data set
SPI/GPIO/I2C with something like devm_regmap_init_espi(like for i2c/spi
or anything else) for example as common part for these drivers.

Thanks.

