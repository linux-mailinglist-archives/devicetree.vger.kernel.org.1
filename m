Return-Path: <devicetree+bounces-309254-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D8nDDXJNKGqBBwMAu9opvQ
	(envelope-from <devicetree+bounces-309254-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:29:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 999D7662F5E
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:29:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=Vsp6POkA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309254-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309254-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C6A9301753E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 17:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85D68481651;
	Tue,  9 Jun 2026 17:29:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4319.protonmail.ch (mail-4319.protonmail.ch [185.70.43.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5998643901B;
	Tue,  9 Jun 2026 17:29:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781026159; cv=none; b=ZtWnXwiJuI6yxVKRVvnQxiX9Tl6AO1B/bqHA8mJcM3EO7+6J/gcdhUBJc0/YlCYLoRLExU/bNknN5rcdoNVbgvIJkKZK7jts9I1VqZcouYih317vK5MG7qN8OlBMKGU00+zpEUNhTgvGzPmzTGcuAahjQV5JYuGzwltRJzBZ1ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781026159; c=relaxed/simple;
	bh=QE3ecFfaSF4OJ9BLijJjzxt3jB1C2H2jr1CRSJhdv4M=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LwKtnUJSMDi2I7twhIsO0xqbsaIJNXQvZJfL/8xLzWQ1QpIaeQcE2NLLwI+5b0LL4h2qacCGuqZ/yvW1c1uqCDT13b5rrKy0jEA0PpX89HFD1RWC3vKpTlZpViNXCzd0JzP7fpOj/0+JQi9Jp3gh/kCSjowXnucZ6sSdNrNPWVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=Vsp6POkA; arc=none smtp.client-ip=185.70.43.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1781026149; x=1781285349;
	bh=6HeJhykeaboror19DirkCIOC1KIj82iSEPO/tVXnN4M=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Vsp6POkAFvnGYUs9mPK7J8IN2X1dGZ+TiJ6toaYcPzikihEyLRjYZRB2npVe5jrNb
	 x7JMSdNeU1ihpcVlbsjhShf8yUqpSk0XDM0Em675OHKDQRuLud+A2RrdebiUOU3oDR
	 2YJcogfXv/RYl+PF21VFUuxsvePjE75qdJP45p4eTWiOMDPrX+Az+hSk0Tw5wmBpUT
	 rCzYfqi8KNTJ3yc8H9+/0DESKgQ0OiRcKhqutnccPubRwQHtXf0fxi5mtuB9+vfx7B
	 4j8VI32/gu2zIt91spG231hw2l00MwN0JNbADUJonjj6l0D3fVOiZ8FhaHzKLPxpTN
	 YRt0QOimZbN8w==
Date: Tue, 09 Jun 2026 17:29:04 +0000
To: Conor Dooley <conor@kernel.org>
From: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v2 1/4] dt-bindings: iio: adc: mediatek,mt6359-auxadc: add mt6323 PMIC AUXADC
Message-ID: <8EwSIpbwPPOLZFrXcuriM4NGFc2O1ozFGphpfStH2hTxkSR1EWLBTNIefDK997sRukvAp2bUSkuyVYiG-N9MXIGxtokvPYWwOjtuQXLdmMQ=@protonmail.com>
In-Reply-To: <20260609-gangway-frayed-366f6d3cc867@spud>
References: <20260609-mt6323-adc-v2-0-aa93a22309f9@protonmail.com> <20260609-mt6323-adc-v2-1-aa93a22309f9@protonmail.com> <20260609-gangway-frayed-366f6d3cc867@spud>
Feedback-ID: 173184497:user:proton
X-Pm-Message-ID: 5aa3f45d931aba5644ec07b8e6c4ba287df96531
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309254-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,protonmail.com:dkim,protonmail.com:email,protonmail.com:mid,protonmail.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 999D7662F5E

Hi Conor,

On Tuesday, June 9th, 2026 at 7:01 PM, Conor Dooley <conor@kernel.org> wrot=
e:
> On Tue, Jun 09, 2026 at 04:31:58PM +0300, Roman Vivchar via B4 Relay wrot=
e:
> >  properties:
> >    compatible:
> >      enum:
> > +      - mediatek,mt6323-auxadc
>=20
> Commit message needs to explain why a fallback is not suitable.
> pw-bot: changes-requested

Ack.

>=20
> >        - mediatek,mt6357-auxadc
> >        - mediatek,mt6358-auxadc
> >        - mediatek,mt6359-auxadc
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index d1cc0e12fe1f..2551c8cd9e9d 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -16256,6 +16256,12 @@ S:=09Maintained
> >  F:=09Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> >  F:=09drivers/mmc/host/mtk-sd.c
> > =20
> > +MEDIATEK MT6323 PMIC AUXADC DRIVER
> > +M:=09Roman Vivchar <rva333@protonmail.com>
> > +L:=09linux-iio@vger.kernel.org
> > +S:=09Maintained
> > +F:=09include/dt-bindings/iio/adc/mediatek,mt6323-auxadc.h
>=20
> Why is the binding not being included here?
>=20

The binding is shared across multiple PMIC ADCs and maintained by
Angelo. Since I'm only familiar with mt6323 and not others like mt6358,
I decided to not include it in the mt6323 entry.

Best regards,
Roman

