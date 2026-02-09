Return-Path: <devicetree+bounces-263931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id lbf9Nu+yiWkUBAUAu9opvQ
	(envelope-from <devicetree+bounces-263931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:11:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACE310E025
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE2BE3007F5C
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 10:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0631333890B;
	Mon,  9 Feb 2026 10:11:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDF3308F05
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 10:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770631916; cv=none; b=HIQM6CEUkZInDydyGG5m6XyxU84Rb8Zl03TjYynTO3RpSpTpMWW4RvjarliHjq2GMmDSKpxdq8OQbkmbOVT0vXbeLZKWYGBGPWQNHEtlCirQGt7NKJzbLkwhrhUflLgC1OzlWt8dkw7AUjFXZm52aXtxrop4HlZYC8AKkKT9Z6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770631916; c=relaxed/simple;
	bh=+mm4IL80aHedS4ZIIDNqO2uzzc36vjDrlZWkYSXA7gU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VmbRZ5sCryUiHMCxOasq4gDk+flzc/Z2mwplJk3oN9kj7JjE4Onky7s0aLCVG86BUISxyRXeErwdw+mrgxsOj8bYOgs9v1saBM25Xb/sjYoppC6hLkQzQ4oZKWpm0DDG3/QQ0iG1WxOTHJ4QJvqbidjp7ZNvHcDJMO2yLQZLBUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vpOF8-00043y-LF; Mon, 09 Feb 2026 11:11:46 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vpOF8-004s58-30;
	Mon, 09 Feb 2026 11:11:46 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vpOF8-00000000928-0izY;
	Mon, 09 Feb 2026 11:11:46 +0100
Message-ID: <f5de5c3dde62d8cb6f1b373c8dbc89ab31edc111.camel@pengutronix.de>
Subject: Re: [PATCH v8 1/3] dt-bindings: soc: cix: document the simple-mfd
 syscon on Sky1 SoC
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Gary Yang <gary.yang@cixtech.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, peter.chen@cixtech.com, unicorn_wang@outlook.com, 
	inochiama@gmail.com, alchark@gmail.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, cix-kernel-upstream@cixtech.com
Date: Mon, 09 Feb 2026 11:11:46 +0100
In-Reply-To: <20260209093344.2013693-2-gary.yang@cixtech.com>
References: <20260209093344.2013693-1-gary.yang@cixtech.com>
	 <20260209093344.2013693-2-gary.yang@cixtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263931-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FREEMAIL_TO(0.00)[cixtech.com,kernel.org,outlook.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.768];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3ACE310E025
X-Rspamd-Action: no action

On Mo, 2026-02-09 at 17:33 +0800, Gary Yang wrote:
> There are two system control on Cix sky1 Soc. One is located in S0 domain=
,
> and the other is located in S0 and S5 domain. The system control contains
> resets, usb typeC and more.

What is "and more"? Does none of the remaining functionality besides
resets require any bindings?

> At this point, only the reset controller child
> is described as usb typeC uses it by phandle.

What do you mean by "child"? There is no child node for the reset
controller (which is correct).

> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  .../soc/cix/cix,sky1-system-control.yaml      |  42 +++++
>  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
>  include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
>  3 files changed, 248 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-sy=
stem-control.yaml
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
>=20
> diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-co=
ntrol.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-cont=
rol.yaml
> new file mode 100644
> index 000000000000..5507deb54ebd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.y=
aml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/cix/cix,sky1-system-control.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cix Sky1 SoC system control register region
> +
> +maintainers:
> +  - Gary Yang <gary.yang@cixtech.com>
> +
> +description:
> +  An wide assortment of registers of the system controller on Sky1 SoC,
> +  including resets, usb, wakeup sources and so on.

Will any of this (usb, wakeup, "so on") require further additions to
the binding documentation?

regards
Philipp

