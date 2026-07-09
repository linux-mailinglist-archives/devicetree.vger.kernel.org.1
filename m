Return-Path: <devicetree+bounces-323328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sHj2FZo6T2r0cQIAu9opvQ
	(envelope-from <devicetree+bounces-323328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 08:07:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A404272CFA3
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 08:07:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=cCfKfgnc;
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323328-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323328-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 767133010DAA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 06:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECA1D3AEB4E;
	Thu,  9 Jul 2026 06:07:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-08.mail-europe.com (mail-08.mail-europe.com [57.129.93.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892961FC8;
	Thu,  9 Jul 2026 06:07:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783577238; cv=none; b=axWtPgPxYDFTeAXX2kqKLetI/N1Ql4znVP1KmNK0f9jEZyeSwXt+N9WMKUOPNZxP5DDgpDe8Kd86+vlLX7BtnysL5z1W6qLV29Xj7cHFryFwAIF0zkAhQjxp1SziZB1VIzcX8PM8hjh3NjmhN71Q+CsNdRo/nZyVZ3KTaZbwRR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783577238; c=relaxed/simple;
	bh=CjJeHWxWFa6PPoS9CmePlwGc9hxSLrSdSk6AodCBoFE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dtC2oz5fBa5J5MXPQpHrPBs7BGVKBDoXAa/b9CSyqIGpqhi3ufyJ7eVtazvJLQ2xa246/UPq1mFU+CkxZyN7W8Pj8mBHelYOr7mA9p4zlGyo0/9iIAHnmgkL8XEYj+o0EvC9HZNNLJn9EB0207vstnXDpFoTwjAfS3YcWhn+6xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=cCfKfgnc; arc=none smtp.client-ip=57.129.93.249
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1783577226; x=1783836426;
	bh=36b8H8C5d8xCfDp3UaNB3wNcVTtCzGBrEnzYSQk1yMU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=cCfKfgncEAuSlZqAq4s8IHmC+Io4q0gH0nyONnU9wiuFpHDPdFTclJoWYpquyvHjt
	 yIgt/lxIA6k+QwRoQvbhPGn3PTRIujDSX4YCWCLFH/rC3+B0OiNUXcfMNzCvHY8q5d
	 5asIuw4/O2rQGeXz5tQDQwFwmejAcwmiTD6I3aQu9uN13IwlNLSBQ+LR03zetsAcad
	 sQGdcEItr8Ej6DOjOlCN5HxEj4SYUDtLWY0Nmoh/M8gMapEsj4flMLz5LquLAsMVmB
	 f/ovYdSbTUmham6xeddhJh+9339/6RHoTHWWRvc3wVv1cpmoMOw0MCA475GZoovrnN
	 PMtZxp/52WY6A==
Date: Thu, 09 Jul 2026 06:07:02 +0000
To: Lee Jones <lee@kernel.org>, Jonathan Cameron <jic23@kernel.org>
From: Roman Vivchar <rva333@protonmail.com>
Cc: David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v4 3/4] mfd: mt6397-core: add mt6323 AUXADC support
Message-ID: <UV1EGIwox4bkh8ufCFb4GS_Pafo8bovmSI9jzRbQunz7AzjHnmItA-lLCPeeIxOLMoS3douarVEpoTF7DVffFJUcXZTdGTQ6-dfAYdomwak=@protonmail.com>
In-Reply-To: <20260708211056.GB1727174@google.com>
References: <20260623-mt6323-adc-v4-0-299680ad3194@protonmail.com> <20260623-mt6323-adc-v4-3-299680ad3194@protonmail.com> <20260708211056.GB1727174@google.com>
Feedback-ID: 173184497:user:proton
X-Pm-Message-ID: 2e5f52e3bdeec32ab13894ebd60e7725e6f99467
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323328-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,protonmail.ch:email,protonmail.com:from_mime,protonmail.com:email,protonmail.com:mid,protonmail.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A404272CFA3

Hi Lee,

+Jonathan

On Thursday, July 9th, 2026 at 12:11 AM, Lee Jones <lee@kernel.org> wrote:

> On Tue, 23 Jun 2026, Roman Vivchar via B4 Relay wrote:
>=20
> > From: Roman Vivchar <rva333@protonmail.com>
> >
> > The mt6323 PMIC includes an AUXADC. Register the AUXADC in the mt6323
> > devices array to allow the corresponding driver to probe using compatib=
le
> > string.
> >
> > Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2n=
d Generation)
> > Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> > ---
> >  drivers/mfd/mt6397-core.c | 3 +++
> >  1 file changed, 3 insertions(+)
>=20
> Doesn't apply.  Please rebase and resent with my:
>=20
> Acked-by: Lee Jones <lee@kernel.org>

There's a slight cross-tree conflict. Jonathan has already picked
patch 1 and patch 2 to the iio testing tree. This mfd patch doesn't
apply because recently merged mt6323 efuse patch (bde6556744888).

The iio tree doesn't include mt6323 efuse patch, and there was some
dt-bindings merge conflict.
Should I rebase on top of linux-next and send mfd as a standalone patch?

Best regards,
Roman

