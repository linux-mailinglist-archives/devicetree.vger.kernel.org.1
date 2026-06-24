Return-Path: <devicetree+bounces-315287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yiDTGUz0O2p6gQgAu9opvQ
	(envelope-from <devicetree+bounces-315287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:14:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEED96BF867
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 17:14:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="h/32WMLN";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315287-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315287-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E59B30937BD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 15:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644AE3D9DD7;
	Wed, 24 Jun 2026 15:05:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA1F3D9DC3
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 15:05:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782313530; cv=none; b=stJSHHgnZUCqpQilD6vgHlypKZY4oJ1lxPKhnz8VaOivAz9CZDSu8jWIc4HpmkfXlE6qgXNKoYMzzG0Q/NrCVI7UI2Q8xYcqc/KcV77tPkJBoft4lLoRgi5QzDMLjWUwg77aYxVGtwtf0+PkN/+8pFhfN6hm68ELjy+E0j3e0hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782313530; c=relaxed/simple;
	bh=aRvcfWjS5ra1MavtT7Q6r/Ex/UqKwindq/WES4SSRVc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N4EDso6ZjEtMBkFtsm4Fl6P0T/5FbcROyQ0MeBaIUQz4cDXtd5BC0tWTR7StS0Rm4kk0Cz+djtgzxGlOkP3iaYlxbP3F3k1EVUFHz4mI8LYhygcyJwddrSlUFimsneE9ffBJi9BHllnd94b7AEQh0uYsiHJXqqsr7DeRuGeP4YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/32WMLN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 122771F01559
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 15:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782313529;
	bh=oxPQMTZQmusZ2I0wP/LPEpqZpEgpNgEfkyIN2a4Ghts=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=h/32WMLNicEsnxUQtcylQhm+CEuHKgkD3hcU1vuCzc5hmIOzl4HFeQYGfx2cg33/m
	 5rcWJckaDcfNr3zsVslf79V1tS6g/1a5kosO4XhqNUo2T4LjgMSUqBIJfDYelIv2FV
	 NPfnOeMaWEMM0xTQlvrh3AJ0idfpngf15qDDQpnhZTEsRqBaFAunzVJXJvdDe6n2+0
	 wxgLBs6LBuvH4ZfaHuSzOPdFlXYbKsrWk7FbFUhuPQlic5zf08qgeoB7QfR7T5fpgj
	 c6xhclQkG/tVIDMwQJPgfs8bj2KQr6tp6Kb/pkjlXN6chIdpnOhWgWJSwfYhJZXbAR
	 3kCmdk4DVQHZw==
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-c0c41ff84a6so188807666b.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 08:05:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8Yw1H+xt8AxUkvQrXd39cUblZ+HNrLOEAvY/fzV8jNr2RGJ3Wa2O/K8u81sHiVxQSfDBTLPAABzbaY@vger.kernel.org
X-Gm-Message-State: AOJu0YwK3cfL10x2a+4kB5RLrH8rNIer9ivYowtTQK+WvZZfk1RjFGfr
	c/QdfwcLgP8yyHscwIrDwMhSJdAx5aGLS9dlQzsq38rdQGeKpo7UZEX+rpLDajGCyQHujJhLztd
	E6NSdgI2qLdqd9vyKn+OxHdYNbuXB2Q==
X-Received: by 2002:a17:907:7212:b0:c0c:d278:cc31 with SMTP id
 a640c23a62f3a-c119f617777mr201723666b.53.1782313527559; Wed, 24 Jun 2026
 08:05:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260620-sc2730-regulators-v6-0-bbd2db395231@abscue.de>
 <20260620-sc2730-regulators-v6-1-bbd2db395231@abscue.de> <20260624130613.GA4054894-robh@kernel.org>
 <878f8f38-2294-4097-9d08-2aa04bfe773b@sirena.org.uk>
In-Reply-To: <878f8f38-2294-4097-9d08-2aa04bfe773b@sirena.org.uk>
From: Rob Herring <robh@kernel.org>
Date: Wed, 24 Jun 2026 10:05:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJctGCQrHjesJP+xbQ43fwWaCONy4A=L7i4jM9zE-ZC0g@mail.gmail.com>
X-Gm-Features: AVVi8Cd2cX3oat606rg5OgIyF7gTvCkn18ULdhtaFqelknaCm-ODyXPZvCqk1pM
Message-ID: <CAL_JsqJctGCQrHjesJP+xbQ43fwWaCONy4A=L7i4jM9zE-ZC0g@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] regulator: dt-bindings: Add Unisoc SC2730 PMIC
To: Mark Brown <broonie@kernel.org>
Cc: =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
	Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Lee Jones <lee@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315287-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:otto.pflueger@abscue.de,m:lgirdwood@gmail.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:zhang.lyra@gmail.com,m:lee@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:zhanglyra@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[abscue.de,gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org,oss.qualcomm.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,abscue.de:email,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CEED96BF867

On Wed, Jun 24, 2026 at 9:13=E2=80=AFAM Mark Brown <broonie@kernel.org> wro=
te:
>
> On Wed, Jun 24, 2026 at 08:06:13AM -0500, Rob Herring wrote:
> > On Sat, Jun 20, 2026 at 10:54:00AM +0200, Otto Pfl=C3=BCger wrote:
> > > Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
> > > PMIC, used e.g. with the UMS512 and UMS9230 SoCs.
> > >
> > > Signed-off-by: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.co=
m>
> > > ---
> > >  .../bindings/regulator/sprd,sc2730-regulator.yaml  | 44 ++++++++++++=
++++++++++
> > >  1 file changed, 44 insertions(+)
>
> > Applied for rc1 to fix the warnings.
>
> Warnings?

Well, one warning:

Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml: Unresolvable
reference: /schemas/regulator/sprd,sc2730-regulator.yaml#

