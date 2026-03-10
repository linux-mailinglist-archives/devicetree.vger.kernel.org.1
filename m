Return-Path: <devicetree+bounces-273446-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJGkJADyr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273446-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:27:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 996932495B9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1AE7C3023A89
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AF27451051;
	Tue, 10 Mar 2026 10:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ohsqZQwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6648844E053
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773138357; cv=none; b=jLVOq+r1eERmFyBXPY4KT+H3sjPgYzz/gRk+Riq8wH1T1S/rrvLXV44mxBbHdCmCICgUlLCsTY6TKHf4BYk6D9dHc4O9M8DgFwUtFDf8Z3HcCTRIgQ4quyPcw9Qr3/4awWgom1gYtbUlyrmpLOJDIYjB6AEpW3nR6D3shNO9A64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773138357; c=relaxed/simple;
	bh=VmIGNdX8ajFRakIFSP2vEMfccnBICqmCQcblVAkapjI=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:From:Subject:Cc:
	 References:In-Reply-To; b=RNh415xsP82I4cuWFyQOF6IZmIwaZOEbQ3w6EsxePRVsfXzl5NQMmOf47CtdCBTie/wiGpfLpG43Jn+05wbEHuY/GS9F/nWjZTzMtjBPd4//IT2JA+RRZo0SYldsdyrYWzW99bZQ7OPiqdceA3tk6qY2HEFjAgFYgiSHp6bCU5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ohsqZQwQ; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 378EF4E42563;
	Tue, 10 Mar 2026 10:25:49 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E125060002;
	Tue, 10 Mar 2026 10:25:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 463D410369BAC;
	Tue, 10 Mar 2026 11:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773138347; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=71zUaXhdHoKDWjtB0MpHNOgpcJ2zjizbeuue0R2NhYs=;
	b=ohsqZQwQhJncrpf2sUV56DY/Oed/6DOyVDtua+44r0ig+r48WFVmQUWOFuCQyq7RLjALlC
	rk1ctQJbX1gYoXruqKwwWR4K9kh017398iv5o7m28IWra8DVDNpNWdLEuBc2wL7aQH/52m
	hZj+BPUNxKfk10mOMkqCqw+vsaIxjdtxSzybao1oCz6Ik+TjImkUBEzVb+jRUadhp+tP4o
	sUrVctqWiNgJVHLtLwNc2TjE6CapLs2jyxl5XO+3L1ghujyUbobqvvo37zy5qGvjgtE4T2
	pHmkz373PMMSnoO6cOUxPG2J1+y/VzZZFZZx2r4yi5nK4LpOJzGGkHIyi/0oIg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 10 Mar 2026 11:25:37 +0100
Message-Id: <DGZ12YVFEPVZ.26EZEGK5DF6D1@bootlin.com>
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Drew Fustini" <fustini@kernel.org>, "Guo
 Ren" <guoren@kernel.org>, "Fu Wei" <wefu@redhat.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v7 3/8] drm: verisilicon: add a driver for Verisilicon
 display controllers
Cc: "Philipp Zabel" <p.zabel@pengutronix.de>, "Dmitry Baryshkov"
 <lumag@kernel.org>, "Michal Wilczynski" <m.wilczynski@samsung.com>, "Han
 Gao" <gaohan@iscas.ac.cn>, "Yao Zi" <ziyao@disroot.org>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
X-Mailer: aerc 0.20.1
References: <20260129023922.1527729-1-zhengxingda@iscas.ac.cn>
 <20260129023922.1527729-4-zhengxingda@iscas.ac.cn>
 <DGY9GWWLXGNX.265MMEXXCG8YA@bootlin.com>
 <301a33fc27bd01bb50d57779c2f9eb51a4fafaa5.camel@iscas.ac.cn>
 <57436150684e72049b62657caec544a2f18aab1c.camel@iscas.ac.cn>
In-Reply-To: <57436150684e72049b62657caec544a2f18aab1c.camel@iscas.ac.cn>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 996932495B9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273446-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iscas.ac.cn,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,redhat.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:url,bootlin.com:mid]
X-Rspamd-Action: no action

Hello Icenowy,

On Mon Mar 9, 2026 at 5:51 PM CET, Icenowy Zheng wrote:
> =E5=9C=A8 2026-03-10=E4=BA=8C=E7=9A=84 00:35 +0800=EF=BC=8CIcenowy Zheng=
=E5=86=99=E9=81=93=EF=BC=9A
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D 8< =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> > > +	if (IS_ERR(bridge))
>> > > +		return ERR_PTR(PTR_ERR(bridge));
>> > > +
>> > > +	bridge->crtc =3D crtc;
>> > > +	bridge->intf =3D intf;
>> > > +	bridge->next_bridge =3D next;
>> >
>> > There is now a next_bridge field in struct drm_bridge, which
>> > handles
>> > the
>> > bridge lifetime in a safer way and more simply [0], so you could
>> > use
>> > it:
>>
>> Glad to hear such a field exists now. Will more code about
>> next_bridge
>> lifetime management being shared?
>
> Looks like now many drivers can just share the .attach function,
> because they're all doing the same thing:
>
> ```
> int drm_bridge_attach_next(struct drm_bridge *bridge,
> 			   struct drm_encoder *encoder,
> 			   enum drm_bridge_attach_flags flags)
> {
> 	return drm_bridge_attach(encoder, bridge->next_bridge,
> 				 bridge, flags);
> }
> ```
>
> At least vs_bridge_attach here and meson_encoder_*_attach (named
> encoder but they're bridge drivers now) match this pattern (the latter
> does a cast from `struct drm_bridge *` to their subclasses, but then
> only accessing the `bridge` field of the subclasses and doing the same
> things here).

Indeed, several drivers are more and more similar in this respect so a
helper could deduplicate a bit of code in an easy way here.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

