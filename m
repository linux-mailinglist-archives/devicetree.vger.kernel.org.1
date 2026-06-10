Return-Path: <devicetree+bounces-309526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3/URMQ0gKWpPRAMAu9opvQ
	(envelope-from <devicetree+bounces-309526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:27:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D45667267
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:27:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hGrfP24r;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309526-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309526-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F855300FEE3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51293A1684;
	Wed, 10 Jun 2026 08:19:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADF8639479B
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:19:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781079574; cv=none; b=T9Sgg/foxA7ENTM9L6O3skYV+MIbfFcfz+6LdUKT0dK+0bZbOrx+L7PfozHi4cWJ5IXWMssOio+SVLh13oVs5uc/ii5MZqJpkDqZfHWAP9tX1tkYsp6btD51eBsS9f9pMyezFk60kVhwFJIOdVXTOY314ViZvh7AgppixYowoCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781079574; c=relaxed/simple;
	bh=jNTLVZsbaFsBNBc6fYAd7hhD8ZINHtjiBXebhem34r8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LGlH/dFI1kH7pNoXE/jYLqy0ahpuxAiPkOLUNgOItJXqZIuMMGx2MjgWkTIazGjYm4CXgmyNXD3kbV2M8oMvm5mgXRoWZDybjBt6AP9q2MUv/PLlXCEn8JTwQmNs61JZpIDNHVrRwShOIK1wMSXBHHU4ssV4JAvFXxcxEOEaHa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGrfP24r; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22E271F00893;
	Wed, 10 Jun 2026 08:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781079573;
	bh=Xi8bKyzPttAls5DgcUuTBjHpexQ2xEA5Y+i0v2oq+44=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hGrfP24rLaLTNbaDzOBDyhi8dJG/z82+PqFXmfHUKkA7exqUPXvEwnbzbXK3atBjd
	 tHraTp/8Do5xQxvIPlNU5fkL+Y6/C5oOE1C7D34PLLmSzIxpbhQ04Znt6qP0sUk7Mh
	 P9ywUq3PuHHQbdkblDvs/jXDg42G0/g2z8AVUSOpXdJkl8EyiGW4b+NYMj+IXWqHwH
	 Xh5m+4nV2NOi2r0P2AGT1r27VgsVY5Z3WgNgEixqdjdgOBjM2zO8OaJ6Isgs9yEZoI
	 OyCc1u1vOMSSEfdCQhLnKamFEzheHylDq+FwCO2AZvQshk1DBh1JjY3gQIPt+86G96
	 jdzOELR0xMNkw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 06/10] clk: realtek: Add support for mux clock
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260610080824.255063-7-eleanor.lin@realtek.com>
References: <20260610080824.255063-7-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 08:19:32 +0000
Message-Id: <20260610081933.22E271F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309526-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,realtek.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18D45667267

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] clk_regmap_mux_get_parent() returns 0 instead of an error indicato=
r when regmap_read() fails, silently masking the I/O error and confusing th=
e Common Clock Framework.
--

commit 6f252a1d2352da3ab0338149dff431cfd1082f04
Author: Cheng-Yu Lee <cylee12@realtek.com>

clk: realtek: Add support for mux clock

Add a simple regmap-based clk_ops implementation for Realtek mux clocks.
The implementation supports parent selection and rate determination through
regmap-backed register access.

> diff --git a/drivers/clk/realtek/clk-regmap-mux.c b/drivers/clk/realtek/c=
lk-regmap-mux.c
> new file mode 100644
> index 0000000000000..8bb66a9e244a1
> --- /dev/null
> +++ b/drivers/clk/realtek/clk-regmap-mux.c

[ ... ]

> +static u8 clk_regmap_mux_get_parent(struct clk_hw *hw)
> +{
> +	struct clk_regmap_mux *clkm =3D to_clk_regmap_mux(hw);
> +	int num_parents =3D clk_hw_get_num_parents(hw);
> +	u32 val;
> +	int ret;
> +
> +	ret =3D regmap_read(clkm->clkr.regmap, clkm->mux_ofs, &val);
> +	if (ret)
> +		return 0;

[Severity: High]
When regmap_read() fails here, it returns 0. Since 0 is a valid parent
index in the Common Clock Framework, will this mask the I/O error and false=
ly
report that parent 0 is active?

If the hardware was actually using a different parent, this could lead the
CCF to incorrectly assume the actual parent has no active children and
potentially gate it during clk_disable_unused(). Would it be safer to
return an out-of-bounds value like 0xff (which is used later in this
function) or an error code when the read fails, to prevent the CCF from
making incorrect assumptions about the hardware state?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610080824.2550=
63-1-eleanor.lin@realtek.com?part=3D6

