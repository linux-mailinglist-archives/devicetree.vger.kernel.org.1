Return-Path: <devicetree+bounces-311697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6q8eAyafL2rNDQUAu9opvQ
	(envelope-from <devicetree+bounces-311697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:43:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 640B1683E73
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:43:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VU4DZ7yX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311697-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311697-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31A4430087AB
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79F9C3B27CA;
	Mon, 15 Jun 2026 06:43:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC4B2F7F0F
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:43:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781505827; cv=none; b=l9gi0aVxyjoRDScrlVGWzMVzBDjR33+vkPisrZHuYfc5dyRGBQOQsW30Eqni7bxUt4fuqfTY6so033LuuzERPCtnkeQ8EGzrLsExo8B+5pqTARjmThpBlGVJZEsZHn0AGu270Vgoatv+Gjw/koP5Z7EUucFZJCY9OHCjdLEl/1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781505827; c=relaxed/simple;
	bh=28YUfSIC4IKMppuxRx7HhiBnwbvT0FMTRoo8JLtt8qo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lRwJ3eeSyc444MeR59alE7HzTUULlxGjFDwX8VXb1dhNfALkcAfFXi3nEQEnfXWq2EtgIbGywONyqledrs6kwC5WHdu8BHZd31m8cWQQmQ8PR3/aTeGdu4+YKhK0rrhftu9qIEZuX+pS2/ZuW+TxwvhQ7EWbDXZGnQ3PYFU7/pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VU4DZ7yX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF95C1F000E9;
	Mon, 15 Jun 2026 06:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781505826;
	bh=fFPnZKPmtcngFYWaaYNFE8uD5xTdMxVbULPLZpK8C1o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VU4DZ7yXzfsvZSfOs6RJJWAgf6QKIthFVBdm9X0yy1XFflAobcWRSfaNv9mPAWITq
	 GBoFpguMGu8UkjrAYnpjENSFzn9hbOSBtsUStyRpIsgguMaLVCBHYzJoaURZ3cDmO0
	 QqIpfA5sgyqe/fBfLmokbDRx6naBXsqfM1jbuxsVgN7Y/oz3XBbGU+IFhrRhv9bqR3
	 KCRjEwoHrwJxkF7rukGcv8jq4dh+qKcioz6corcKk3cDG8N12bW548up5x//OwdRSt
	 3qxhE/EFjsnLihYmWhjgjfDqWTvuFki+j0SWynNKoofCtHkYuYsAlPNoGvRfKDTfE/
	 v2x1tsR/Muibw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/7] arm64: dts: renesas: r8a779g0: Add DSC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomi Valkeinen" <tomi.valkeinen+renesas@ideasonboard.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260615-rcar-du-dsc-v4-5-93096a1b56a3@ideasonboard.com>
References: <20260615-rcar-du-dsc-v4-5-93096a1b56a3@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 06:43:45 +0000
Message-Id: <20260615064345.BF95C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-311697-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mailbox.org:email,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomi.valkeinen+renesas@ideasonboard.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:tomi.valkeinen@ideasonboard.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 640B1683E73

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] `WARN_ON(pm_runtime_get_sync())` triggers a spurious warning and l=
eaks the usage counter on failure.
--

commit 0b204c1dc5dc2b356c39f6b89ab2b1606d6ffb6b
Author: Marek Vasut <marek.vasut+renesas@mailbox.org>

arm64: dts: renesas: r8a779g0: Add DSC

The Renesas DSC Display Stream Compression is a bridge embedded in the
Renesas R-Car V4H SoC. The current dtsi file does not represent the DSC at
all, and thus the pipeline for DSI1 has not been functional.

> diff --git a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi b/arch/arm64/boot/=
dts/renesas/r8a779g0.dtsi
> index 82a7278836e57..123baaea8db45 100644
> --- a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> @@ -2298,6 +2298,35 @@ du_out_dsi0: endpoint {

[ ... ]

> +		dsc: bridge@feb8d000 {
> +			compatible =3D "renesas,r8a779g0-dsc", "renesas,rcar-dsc";

[Severity: High]
This isn't a bug introduced by this patch, but enabling this device node
activates preexisting code in the driver added earlier in the series which
has an issue in the runtime PM error path.

Looking at rcar_dsc_atomic_enable() in drivers/gpu/drm/renesas/rcar-du/rcar=
_dsc.c:

drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c:rcar_dsc_atomic_enable() {
	struct rcar_dsc *dsc =3D bridge_to_rcar_dsc(bridge);

	WARN_ON(pm_runtime_get_sync(dsc->dev));
}

Since pm_runtime_get_sync() returns 1 if the device is already in the
RPM_ACTIVE state, will evaluating WARN_ON(pm_runtime_get_sync(dsc->dev))
trigger a spurious kernel warning stack trace on every atomic enable if the
device is already active or if runtime PM is disabled?

Furthermore, if pm_runtime_get_sync() fails (returns < 0), the PM
usage counter is still incremented by the subsystem. Since the error path d=
oes
not call pm_runtime_put_noidle(), does this leak the PM usage counter and
prevent the device from ever suspending?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-rcar-du-ds=
c-v4-0-93096a1b56a3@ideasonboard.com?part=3D5

