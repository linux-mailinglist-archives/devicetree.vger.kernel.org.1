Return-Path: <devicetree+bounces-306932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9xLdE6eSIWq0JAEAu9opvQ
	(envelope-from <devicetree+bounces-306932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:58:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D17106412A1
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:58:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="J/HbAhDz";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306932-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306932-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F120E3005AAA
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 14:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E7C2F12C6;
	Thu,  4 Jun 2026 14:50:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E632207A32
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 14:50:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780584618; cv=none; b=JfTEOqxF9gKVyWSxb6ViqK7jZty47KE6aqrALM4e+PXCGYt4XQwuvnlLCrx6VebtFnBVdWj7hZf/atQl0I+bRVXVPKRu0slaiVDa9sWfipAC8dUGBtcrs1m53zsEcX9D1ofAgxVSA9Pv9Qm0JI9REpooqSS2ZOgfCuQsZonIFoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780584618; c=relaxed/simple;
	bh=0qspJYpzGsY9WYhvHcmW9D93mqh5ca5DYlgQJcbG/+g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QSoME/9M3dN90I7tkaBxIXhV+3Ezzym71kjVVr/SpDjvZDqsRngKjch17JFadzIfmLqiJGGR3joImkb84HVmBWbsnAt6mRQqOyJgYvGnRsACgPEWWtSiwNz/p2Ye8miHRxuZd5nsFdaohpHLgEjaK5QyT4IQ3wX869QTgQ+A8q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/HbAhDz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83A071F00893;
	Thu,  4 Jun 2026 14:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780584615;
	bh=oeqrCV/lPSuy/QvSHJh5Lbf4b+oXzKeFA0RbomU3bLE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J/HbAhDzcwGUN0gnl5SdQ0N9tS7sLztQVd2t52oVVKblaj5jh93u/FUUWsWy5w++C
	 QRUkRld0fw3dhbmb7Yoieu9cDJsHDHqkdY/sx+thDcfczyURBTREo71OyRjcdcbjgE
	 K5N9b5RXjiUb9Qn9pyZz4E/yh4bWpLk10G2VFXVIhs+m8CDhWZOWkox35mrHP5Mh9f
	 Rhy1rjTj/jD6MSDR0OSqMk74tCunpeTwJD6g2WeC1mCwzJWlHukm0TKWB5CHjfMT01
	 WGSJQ54XiEGtcC9mrrRoyZpNGdx+YUME0oq2sV9Qu5uXvjzdL/RIuPsGd8nrNxlRUw
	 YEENClTRR4HqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 7/7] riscv: dts: tenstorrent: Add Atlantis platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joel Stanley" <joel@jms.id.au>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260604143957.668047-8-joel@jms.id.au>
References: <20260604143957.668047-8-joel@jms.id.au>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 14:50:15 +0000
Message-Id: <20260604145015.83A071F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306932-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D17106412A1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree assigns `CLK_RCPU_ROOT` as its own parent, creat=
ing an invalid cyclic clock dependency.
--

commit edef4717eb8086a5ba285a43a4a322f90272540a
Author: Joel Stanley <joel@jms.id.au>

riscv: dts: tenstorrent: Add Atlantis platform

Add initial support for the Tenstorrent Atlantis platform, based on the
Atlantis SoC featuring 8x RVA23-compliant Tenstorrent Ascalon-XG cores.

[ ... ]

> diff --git a/arch/riscv/boot/dts/tenstorrent/atlantis-soc.dtsi b/arch/ris=
cv/boot/dts/tenstorrent/atlantis-soc.dtsi
> new file mode 100644
> index 0000000000000..2513f0dcc62e5
> --- /dev/null
> +++ b/arch/riscv/boot/dts/tenstorrent/atlantis-soc.dtsi

[ ... ]

> +		prcm_rcpu: clock-controller@d0000000 {
> +			compatible =3D "tenstorrent,atlantis-prcm-rcpu";
> +			reg =3D <0x00 0xd0000000 0x00 0x10000>;
> +			clocks =3D <&osc_24m>;
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;
> +			assigned-clocks =3D <&prcm_rcpu CLK_RCPU_ROOT>, <&prcm_rcpu CLK_NOCC_=
CLK>;
> +			assigned-clock-parents =3D <&prcm_rcpu CLK_RCPU_ROOT>,
> +						 <&prcm_rcpu CLK_NOC_PLL>;

[Severity: Medium]
Does this configuration intentionally set CLK_RCPU_ROOT as its own parent?

The assigned-clocks property specifies <&prcm_rcpu CLK_RCPU_ROOT> as its
first entry, and the corresponding mapped entry in assigned-clock-parents
is also <&prcm_rcpu CLK_RCPU_ROOT>.

This instructs the Common Clock Framework to set the clock's parent to itse=
lf.
The CCF does not support self-parenting and will return an error or trigger
cycle detection warnings, preventing proper clock initialization. Is it pos=
sible
an external oscillator or upstream PLL was intended as the parent here?

> +		};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604143957.6680=
47-1-joel@jms.id.au?part=3D7

