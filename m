Return-Path: <devicetree+bounces-317838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rk/7DsTJQ2rWhwoAu9opvQ
	(envelope-from <devicetree+bounces-317838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:51:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 859AF6E50D2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:50:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B4TW4eew;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317838-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317838-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6455130866B2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B4E283FD9;
	Tue, 30 Jun 2026 13:48:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE30C2609FD
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 13:48:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782827325; cv=none; b=GRdsaGo9DRORBoR6RWEL1c1gLpSLfOo02LZeFmoZJpuFVwQbkv6iv8/0Z6r2ukyItpm7U93SAmcZw8xRxR52+3N+0TSBOxJV95kIM6aPGoMWlTBkEplDtZgfU+0+VIuPYUxaMtC0EkDRZm/MvFB/C/UCTojrlVSTNhUvb+cbeTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782827325; c=relaxed/simple;
	bh=HZK1rC+TXdSH56mJ48tJAX4Ydk33f0VmdJChNGHQu2E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fFM1oWWNRGJWJMVHP8Ria2wI8iGzxiWD4u1A1VCB/kY0NBY5NlP0XGrMOklkO4wrj3pPt1oALQ2u7YY/1dDcZd+Qsdn4SeGjAHYrq2JjrxJF8SHgVFZsdfReuv4oJi6mGnr857waXT1eHKQWTitEPnH+St2N8pQVeTBGZOiJzI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4TW4eew; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 113081F000E9;
	Tue, 30 Jun 2026 13:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782827324;
	bh=BOW9nhuhwQ2QWtjxhXj58gSDnVPAgMk8FWORBbZz3Ks=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B4TW4eewik/WUo7jG0TaZuS5i9ee9wqnGTxEYxapryYzOvBDNV2JdsGXOEKpX12ZM
	 LsIwGe327XuieX2p2IceY0r9QaT5ZBI5Y3QHXF9BX4LBM8sBEKy2UvMVRDqQ2f3rFP
	 wi2ST6bM+hT1N2UmFhwSQW/vvlwxn+eacBq3Aj9+3LdM0upNBndLOzHTmg2l26VDI3
	 YbGOLC50iUvYI1GDGbpNHw+nPFw4S5hPiqkTw1gGDBh7xZKA+KimzU1V2cUs13Zkv6
	 GNWgjv3+In1Ll42Po9cs8WvL7Z3W8TxuNvRizb2aMsmfl0fcqah7px5mbhPFWOF4Ld
	 abJn4U954HRjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 net-next 2/2] dt-bindings: phy: cadence-torrent:
 Update property values to support 3 clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gokul Praveen" <g-praveen@ti.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260630134324.61085-3-g-praveen@ti.com>
References: <20260630134324.61085-1-g-praveen@ti.com>
 <20260630134324.61085-3-g-praveen@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 13:48:43 +0000
Message-Id: <20260630134844.113081F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317838-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,vger.kernel.org,lists.infradead.org,kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 859AF6E50D2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `clock-names` schema definition incorrectly restricts the ar=
ray to a maximum of 2 items and allows duplicate clock names. While the com=
mit correctly updates `clocks` to allow `maxItems: 3`, it only modifies the=
 second element of the `items` array for `clock-names`. In `dt-schema` (bas=
ed on JSON Schema), defining `items` as an array of schemas implicitly limi=
ts the maximum number of items to the length of that array (because `additi=
onalItems` is implicitly false). As a result, a device tree specifying 3 cl=
ocks will fail `dt_binding_check` validation. Additionally, adding `refclk`=
 to the second element's `enum` creates a logic error, permitting redundant=
 sequences such as `clock-names =3D "refclk", "refclk";`.
--

commit d737f6b2f91949e839e21f62c39ca9db8f322775
Author: Gokul Praveen <g-praveen@ti.com>

dt-bindings: phy: cadence-torrent: Update property values to support 3 cloc=
ks

This commit updates the Cadence Torrent PHY device tree binding to support =
up
to 3 clocks. It increases the maxItems of the clocks property and updates t=
he
clock-names property.

> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.ya=
ml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> index 9af39b33646ac..54fe78da297a2 100644
> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> @@ -34,7 +34,7 @@ properties:
> =20
>    clocks:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 3
>      description:
>        PHY input reference clocks - refclk (for PLL0) & pll1_refclk (for =
PLL1).

[ ... ]

> @@ -47,7 +47,7 @@ properties:
>      minItems: 1
>      items:
>        - const: refclk
> -      - enum: [ pll1_refclk, phy_en_refclk ]
> +      - enum: [refclk, pll1_refclk, phy_en_refclk ]

[Severity: Medium]
Will this fail schema validation when a device tree specifies 3 clocks?=20

Because the items sequence for clock-names only defines two elements, it
implicitly restricts the array to a maximum of 2 items. Even though the clo=
cks
property was updated to maxItems: 3 above, the clock-names array is now
mismatched and will reject 3 items during dt_binding_check.

Also, does this unintentionally allow duplicate clock names? Adding refclk =
to
the second element's enum makes it possible to define a redundant sequence
like clock-names =3D "refclk", "refclk".

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630134324.6108=
5-1-g-praveen@ti.com?part=3D2

