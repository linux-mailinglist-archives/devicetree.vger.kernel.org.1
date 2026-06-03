Return-Path: <devicetree+bounces-306469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /CdSN8h6IGp+4AAAu9opvQ
	(envelope-from <devicetree+bounces-306469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 21:04:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C1C63ABDA
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 21:04:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306469-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306469-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C2653081339
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 19:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B023C31F9B0;
	Wed,  3 Jun 2026 19:00:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F384D223707;
	Wed,  3 Jun 2026 19:00:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780513215; cv=none; b=meH9DsXjunLtQ8/J8I2WPF794Zk3CVMigisQchvDh1Lqtz8TkGpDrztwpJRLceA9caoREvqLWpeBXcj5eOtmYDEHalTjpzDKEr1wllnjAldx1uCDXGBJQ+mZ4hXJTeug7d0Fjru3LUMqH2EbBtEo+/0l2AQEqEyBh/yJmdrDO2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780513215; c=relaxed/simple;
	bh=wl+l/vW0r++x0B5qYAlcvZ6XQyXHmIqGbv3IccDYwO8=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Subject:Cc:From:
	 References:In-Reply-To; b=DTFGO31DPCNwrNbnuOMjAhZ6eMxCZZ1y91OvUYjEeTLtkLvquL80IeYsjxEvtDuM1H/WZNgB+J918ToyXzXTyi5MjXsYGeBEHmQrMJEDpr5yvJBL6r1Ts85rFFhEmnhyuWAo35k7jRIPKNimDaUJ3OEFeOwuUhW3rHbRJuIgve0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=walle.cc; arc=none smtp.client-ip=159.69.201.130
Received: from localhost (unknown [IPv6:2a02:810b:4320:1000:4685:ff:fe12:5967])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id EF76B5E1;
	Wed,  3 Jun 2026 21:00:05 +0200 (CEST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 03 Jun 2026 21:00:05 +0200
Message-Id: <DIZN96NYLDUJ.DS1LFFAS2JH9@kernel.org>
To: "Rob Herring" <robh@kernel.org>, "Miquel Raynal"
 <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3 02/13] spi: dt-bindings: cdns,qspi-nor: add PHY
 tuning pattern partition property
Cc: "Santhosh Kumar K" <s-k6@ti.com>, <broonie@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <richard@nod.at>,
 <vigneshr@ti.com>, <pratyush@kernel.org>, <takahiro.kuwano@infineon.com>,
 <linux-spi@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
 <praneeth@ti.com>, <u-kumar1@ti.com>, <a-dutta@ti.com>
From: "Michael Walle" <mwalle@kernel.org>
X-Mailer: aerc 0.20.0
References: <20260527175527.2247679-1-s-k6@ti.com>
 <20260527175527.2247679-3-s-k6@ti.com>
 <20260602164945.GA475455-robh@kernel.org> <87zf1by5oc.fsf@bootlin.com>
 <CAL_JsqJwxgcFOB=kE7bVQYDn740-w4RppMF5W-3Ne9=9qV9OrQ@mail.gmail.com>
In-Reply-To: <CAL_JsqJwxgcFOB=kE7bVQYDn740-w4RppMF5W-3Ne9=9qV9OrQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306469-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:miquel.raynal@bootlin.com,m:s-k6@ti.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[mwalle@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwalle@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91C1C63ABDA

On Wed Jun 3, 2026 at 7:38 PM CEST, Rob Herring wrote:
> However, you already have to support using label, so anything else
> is supporting a 2nd way whether it is compatible or a phandle
> property. Is it really worth it here?

Do we? I don't think we have. That was among my very first feedback
on this series. Don't use hardcoded partition names for this, but a
phandle. A compatible sounds even better though.

Also, I don't undestand why this property has a cdns prefix. This
can also be relevant for any other SPI controller.

-michael

