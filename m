Return-Path: <devicetree+bounces-309755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YbAgI8NRKWpiUwMAu9opvQ
	(envelope-from <devicetree+bounces-309755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:00:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D9477669050
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 14:00:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=codeconstruct.com.au header.s=2022a header.b="e/3ICdLe";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309755-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309755-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=codeconstruct.com.au;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F275930E9DCD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC24E3F0A96;
	Wed, 10 Jun 2026 11:58:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B913FCB3A;
	Wed, 10 Jun 2026 11:58:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781092708; cv=none; b=urlAAbJzwlI+m6zQGJRwB/hhy1Uj1AKCn/OdvtiQj/6yN++meDruehNWdVOEFGYO0ALYpfpN2qv9sfp/8ZFABpT+up4/TirfLXOxX55oKdkKyoa/U0MNBaHsfvqK3GgER+M9sYkkY2jZ0x06fD9h/mpfxHMmx68TBcFVk/G4FHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781092708; c=relaxed/simple;
	bh=S7/vvy/4SDu/u0Hw6EJPP8AspWB98Zz5HHFD3gc8zf0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=C9zYBpd3oGrQl7pymYrtYCuqaQop2dV2C6oUN4PjHh7ZIBetx2j3pAaQvW5DkHD7TVvfiO8ufBYVKE4Jgt82r2Sfcroh+sObKcjxvn2PLPuj+gfBLypwI4Fay0ba+N6zr7+DIollr317cX9yMHl7I8hQxfy5axJxMCM6cOnVa00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=e/3ICdLe; arc=none smtp.client-ip=203.29.241.158
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1781092704;
	bh=S7/vvy/4SDu/u0Hw6EJPP8AspWB98Zz5HHFD3gc8zf0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=e/3ICdLeOHIDOEMN/JOXYUR636UKcezjTMeMox4zGOTLMoWHGatQneK5JlZbIrKz6
	 rKaLakHtUlo+L4k6SkrdDanrkIfLObnD5lxGW+pIuMDnltvxJ0iLr70R7jELHBCUx/
	 nBuGSDWOqUuy9K3qLSu4CUQbRsIhU68DkHqyXsIhWAbdMzksJ9p/9Yehylw6MVqyyP
	 ZSmF9FjgTdck7O5r+OfEOZRTeJN45cVDkE1ZIr4kamRAi0t+4GKZ0U8/HCoY/yqhvn
	 wk49iYyAy0oRnWGDLIhoG2us8/I2FWoIL7HIVD8xmdJR9ayDla83lkoCwl/azCP5SN
	 Gf7AJnKBL1N5w==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 3E58160A14;
	Wed, 10 Jun 2026 19:58:24 +0800 (AWST)
Message-ID: <8a059e3a4a3338bc03829071a720012bd426bf6d.camel@codeconstruct.com.au>
Subject: Re: [PATCH v4 2/3] arm: dts: nuvoton: npcm7xx: Drop redundant FIU
 clock-names
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, 	openbmc@lists.ozlabs.org, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 avifishman70@gmail.com, tali.perry1@gmail.com, 	venture@google.com,
 yuenn@google.com, benjaminfair@google.com
Date: Wed, 10 Jun 2026 21:28:23 +0930
In-Reply-To: <CAP6Zq1gBcSEQznnQ+awrqacBXjTOWELQsMLDXL1yw8_daCzMOQ@mail.gmail.com>
References: <20260609163919.3321228-1-tmaimon77@gmail.com>
	 <20260609163919.3321228-3-tmaimon77@gmail.com>
	 <ff53862950a6075c43bb8f1e47c14389d6fc7575.camel@codeconstruct.com.au>
	 <CAP6Zq1gBcSEQznnQ+awrqacBXjTOWELQsMLDXL1yw8_daCzMOQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-309755-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,codeconstruct.com.au:dkim,codeconstruct.com.au:email,codeconstruct.com.au:mid,codeconstruct.com.au:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D9477669050

On Wed, 2026-06-10 at 14:56 +0300, Tomer Maimon wrote:
> On Wed, 10 Jun 2026 at 13:49, Andrew Jeffery
> <andrew@codeconstruct.com.au> wrote:
> >=20
> > On Tue, 2026-06-09 at 19:39 +0300, Tomer Maimon wrote:
> > > The NPCM7xx FIU controller driver gets its single clock with
> > > devm_clk_get_enabled(dev, NULL) and does not perform a named
> > > clock lookup. Drop the redundant clock-names properties from the
> > > FIU controller nodes so the DTS describes only the resources the
> > > driver actually uses.
> >=20
> > The devicetree is a description of the hardware in the form documented
> > by the bindings. Generally it's not right to discuss Linux drivers
> > here: they're only relevant in the context of Linux, but the devicetree
> > binding governs devicetrees over multiple projects.
> >=20
> > From a quick look it seems that these names are not described in the
> > corresponding binding, therefore no drivers should be using them and as
> > such they can (and should) be dropped. A driver would only be worth
> > mentioning if it did use the undocumented names (as that would be a
> > complication).
> >=20
> > Can you please rework the description?
> do you mean change the description as follows
> "
> The NPCM7xx FIU controller nodes reference a single clock,
> but the FIU binding does not describe their clock-names properties.
> Drop the undocumented names so the DTS matches the binding.
> "

That sounds reasonable to me.

Thanks,

Andrew

