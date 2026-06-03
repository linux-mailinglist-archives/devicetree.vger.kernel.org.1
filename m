Return-Path: <devicetree+bounces-306435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qTKjK+RnIGq22wAAu9opvQ
	(envelope-from <devicetree+bounces-306435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 19:44:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EB963A3CF
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 19:44:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=S7PPd22u;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306435-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306435-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3BEA73001587
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 17:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7713E63B3;
	Wed,  3 Jun 2026 17:39:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90109375AB8
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 17:39:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780508350; cv=none; b=EuuFxgDSCQ9uFJVuGkQrBoI8TBKZKMCgf898FUX/EI2284vZ3KJ/EUnc1XJSSxh/UeSGSx0tyXnCbgGCYQMt47rg2hy01Kht/6ZGi7Urcpe39nj0l2ndcAv0cdlxUdOsSbXPIblL27760YT/jg0IbhuqcBgw9/rG4m37GCFEnts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780508350; c=relaxed/simple;
	bh=0r9RU/RX9+0fMVub0FLUJ/c2kPAlu3ZbUrrVbFmEVtM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H7tmJK+taswiTM6GmzKcxIbrTSK8MNXcrW9q+40LwKh7LixKiVlJfSOMEREuEraaZ2HGKy2ZJaWYVSnaf2Y6KHnJnAe3Pa+zup5UIDNOiF74eZauPUcfS4oksrR/U8ivJJ3u1PSzA13ouzvop3IqUzL3779ZN5WgJ5XMRScenUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7PPd22u; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B2781F00893
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 17:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780508348;
	bh=0r9RU/RX9+0fMVub0FLUJ/c2kPAlu3ZbUrrVbFmEVtM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=S7PPd22usbLXBVl9jDTQ059NO0oHQofIn+K1aPjBCyT9LpfNGMp/gblzj/99kb5ds
	 RyNtsNxtIgMwXQdh6bR97DKg8Q+1HC8AYAr/dsv7nmn+suJ55hkk65ZWtpjTNSQMuO
	 rayazDKDkrtCL6PHfdoVlyyENmBEbbXtiEJvMfhZNCYuS5oczkvvN9xKXGuQ4/kjjA
	 VlDnlQVuFqbRc8gp2L8xY9LJgUxbeZOAXDpT8XJE7as1D698ZXR17VLlLdCanbKOHu
	 kzBaricDEcOesqgL4wD2wQysLVaeY3GvemtLOGdldguYSM5wAld/v5ukbvE2l/3fWX
	 uOOAMVK4/1SrQ==
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-68d23396ed3so7825589a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 10:39:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8cG3e9GBVyhKzdiSUnznahoWewLsfzRxDbjX2QIztWkNBJ4JdyCcAkbxU0RoSZ+8T/1FBoJ4PbjfSp@vger.kernel.org
X-Gm-Message-State: AOJu0YxdhPiHteY5fa6koVdyNCHhGmN8JxpEdCcffYV11SEHrnUB/FrL
	6EwA9wzBn/Ht7+d9xugXsV5iJVM8ulLxkPmofcBNsILdBjOfcWitVGsPiqjJyHxUrW3xpg8p8/I
	qP4Yv3trdLHiVtf8rmnDq/Fb4FOo7ag==
X-Received: by 2002:a05:6402:2711:b0:68a:c8c8:bf70 with SMTP id
 4fb4d7f45d1cf-68e72e11b8fmr2505455a12.26.1780508346916; Wed, 03 Jun 2026
 10:39:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260527175527.2247679-1-s-k6@ti.com> <20260527175527.2247679-3-s-k6@ti.com>
 <20260602164945.GA475455-robh@kernel.org> <87zf1by5oc.fsf@bootlin.com>
In-Reply-To: <87zf1by5oc.fsf@bootlin.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 3 Jun 2026 12:38:46 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJwxgcFOB=kE7bVQYDn740-w4RppMF5W-3Ne9=9qV9OrQ@mail.gmail.com>
X-Gm-Features: AVHnY4Kf2I230VuAd1puqsHwde0Bn2izk7qL8QsSDkUDH3frwdNb_AgO2H9KCZw
Message-ID: <CAL_JsqJwxgcFOB=kE7bVQYDn740-w4RppMF5W-3Ne9=9qV9OrQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/13] spi: dt-bindings: cdns,qspi-nor: add PHY tuning
 pattern partition property
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Santhosh Kumar K <s-k6@ti.com>, broonie@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, richard@nod.at, vigneshr@ti.com, pratyush@kernel.org, 
	mwalle@kernel.org, takahiro.kuwano@infineon.com, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mtd@lists.infradead.org, praneeth@ti.com, u-kumar1@ti.com, 
	a-dutta@ti.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306435-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:s-k6@ti.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4EB963A3CF

On Wed, Jun 3, 2026 at 11:01=E2=80=AFAM Miquel Raynal <miquel.raynal@bootli=
n.com> wrote:
>
> Hello,
>
> On 02/06/2026 at 11:49:45 -05, Rob Herring <robh@kernel.org> wrote:
>
> > On Wed, May 27, 2026 at 11:25:16PM +0530, Santhosh Kumar K wrote:
> >> PHY tuning requires a known data pattern to be readable from flash.
> >> When no partition is explicitly identified, the controller must search
> >> all available partitions to locate the pattern by label, which adds
> >> overhead and relies on label naming conventions outside the
> >> controller's control.
> >
> > I agree 'label' is not the best choice. Software should not care what
> > 'label' contains. It should really be 'compatible' instead.
>
> But compatible does not seem relevant in this case, right? We are just
> flagging the location of "some useful data for the controller".

compatible is what tells us what a region contains and how to use it.
That seems exactly what we need to define here.

> >> Add cdns,phy-pattern-partition, a phandle property that allows the DT
> >> author to directly reference the flash partition holding the PHY tunin=
g
> >> pattern. The controller uses this partition during calibration, avoidi=
ng
> >> the partition search entirely.
> >
> > Do you have any data that this approach being "direct" is faster? In
> > fact, it might be worse. Instead of searching just the limited number o=
f
> > partition subnodes, you now search the entire tree for a matching
> > phandle value. We do have phandle caching, so that might save you
> > here.
>
> True, but besides performance considerations, I personally do not find
> elegant using a partition name/label, but maybe that's just personal
> taste :-)

I agree. That's true for all the partition nodes with only node name
or label to go on. We should fix that at the source. However, you
already have to support using label, so anything else is supporting a
2nd way whether it is compatible or a phandle property. Is it really
worth it here?

Rob

