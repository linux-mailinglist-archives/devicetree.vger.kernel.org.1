Return-Path: <devicetree+bounces-326636-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JIy6ALEgV2qQFgEAu9opvQ
	(envelope-from <devicetree+bounces-326636-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 07:54:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E020B75AC30
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 07:54:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DdL5hKFD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326636-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326636-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0A4DE300AD66
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 05:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 706823B38A2;
	Wed, 15 Jul 2026 05:54:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5733830674C
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 05:54:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784094890; cv=none; b=TJyTBr20qZQV70RnYx0RYYmaypqeMPuz/VuL5qeyELxVYOIbmeL5J85H+d2nsuZ0Lcx/WeiO3CXvMHnmsP0Sy3vsY4YcI1rrotMZt/KXVURsbObnCVCuZu9dx/caGBjo4N2A3Q98x4GHGqgbHBmImMp+kq1ChXhbsuPK0ydb/qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784094890; c=relaxed/simple;
	bh=zTqDTQLID8eA2+LlyEvZG13RE524wCKy85HD84vljzU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QpwbjPWMmNhNi5vAX5t/rOysuWFxhnQ8W3E28Xh2daZW+yxwvXcLCk1dmFKUcepnfHUoGab9IqCxDtq+fNC7H5c4Kdz+r8T2pxWrWZE8KIuTv5T/jSO64MoTFdtwYP9D2Y/mxyPxbi4mx3mU3n2PpK3bIh9XVh/98pJr03LfBjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdL5hKFD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEA021F000E9;
	Wed, 15 Jul 2026 05:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784094888;
	bh=qKtImZ1MYt9kpHfRUDSJLwm3G/UGkDuQm5qrAkyUYew=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DdL5hKFDFnE1GXzNvKzejVLs17KShvXDchzpO9pBBO5nz3gddIe51kDjEtqRWwPAw
	 Dn6J9YlD7xMr8HP1cm3A48nfQEZaANlBGXMhmEkIuUO3nEAlbW/qdxVPmWCScVVCE8
	 Cgr+/M3q19uPUbLSvA3onqbqG4GHyV+A74nAae//lnaq6Zba8AvBhS4bgOkvlsNJ1a
	 1JqKDltgN8cZGigECyXWwhyZCrxSvOJAzmsvQxrZPG7qC3THMXBwbOxPQLxJ3Y5Rq/
	 MR1Tro/w5NSsb/xEQuDs08+yJBriZW2gM4LJ/k+QSBMWP9wCJkvO8vtpA1Lx3d0Lf8
	 L0KmDTV9VsQPA==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 1/2] dt-bindings: media: snps,dw-hdmi-rx: add
 #sound-dai-cells
Reply-To: sashiko-reviews@lists.linux.dev
To: "Igor Paunovic" <royalnet026@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260715051939.64652-2-royalnet026@gmail.com>
References: <20260715051939.64652-1-royalnet026@gmail.com>
 <20260715051939.64652-2-royalnet026@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 05:54:48 +0000
Message-Id: <20260715055448.AEA021F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326636-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:royalnet026@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E020B75AC30

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrect cell count constraint for single-DAI provider.
--

--- Patch [1]: [RFC PATCH 1/2] dt-bindings: media: snps,dw-hdmi-rx: add #so=
und-dai-cells ---
commit e6b0bac0b97f568ce749084e6c1e728bcd258b10
Author: Igor Paunovic <royalnet026@gmail.com>
dt-bindings: media: snps,dw-hdmi-rx: add #sound-dai-cells

This commit adds the #sound-dai-cells property to the HDMI RX controller
bindings, enabling a generic audio codec to capture incoming embedded audio.

> diff --git a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml=
 b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> index b7f6c87d0e06a..83c10d9997c8e 100644
> --- a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> +++ b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> @@ -78,6 +78,13 @@ properties:
>        The phandle of the syscon node for the Video Output GRF register
>        to enable EDID transfer through SDAIN and SCLIN.
> =20
> +  "#sound-dai-cells":
> +    const: 1
> +    description:
> +      The HDMI RX controller registers a generic HDMI audio codec so the
> +      audio embedded in the incoming stream can be captured. A value of 1
> +      lets a sound card reference the audio DAI as <&hdmirx 0>.

[Severity: Medium]
Is this cell count constraint correct for a single-DAI provider?

Looking at properties:#sound-dai-cells, the hardware exposes only a single
generic audio DAI. Requiring a cell count of 1 forces device tree nodes to
use a non-standard syntax like <&hdmirx 0> instead of just <&hdmirx> for a
single resource.

Should the constraint be set to 0 to follow standard device tree norms?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715051939.6465=
2-1-royalnet026@gmail.com?part=3D1

