Return-Path: <devicetree+bounces-295914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL0qBf2EAmrVtwEAu9opvQ
	(envelope-from <devicetree+bounces-295914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:40:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A859351851C
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1034B301220D
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 01:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5515A282F0B;
	Tue, 12 May 2026 01:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kagnF2iO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330482E413
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 01:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778550009; cv=none; b=d4NnbscPyGXdwS+B8OCGduzPEBsu6DRwfUsSF5XqEvdIGsLKBOnXP6hl05bRw2mvPOI+GoRHy5Mx8RM8SQmpkHVqSKOp9X4Aa5B33xsWWesOGCV8VE6okgs02lBX4KkfUrmtSD5PMf6BotM9UefyXDKt986f9CayYvnsiDoAzR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778550009; c=relaxed/simple;
	bh=jY8eWQByYEpl0J5Zvbl6Og+VblsgF45d22UjdDzGibY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kNfaTUtnM+1iZYs9uTaZPrrw+kWKDMvFQ5WeO90KsN3NGoVqJRSrNhb4jkI8HIIguW401SLuTVT0fnBDi9msCrNO0oCcfhP7FCHp56S8UWW+D+tIIkmgvZ/eXDImqTxAr6j17Lo8W92kmIvcUDSw1FvWCV+TdWaAuuWOzu/Ee0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kagnF2iO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A64CC2BCB0;
	Tue, 12 May 2026 01:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778550008;
	bh=jY8eWQByYEpl0J5Zvbl6Og+VblsgF45d22UjdDzGibY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=kagnF2iOmNyX5Xzk1SlMTSS/KhJzTDKMtBOh0l26Xrzp0zfa6/CHe9b10DYIFuXhz
	 w1TQP0y5vd2YcRic1w/E2201mhaQsdMNmI53bGokl5c4rZafowP0NuxELEAyZSjGnm
	 Yj8uptaR9cMBOdi5MFuKISKzb32nwekXQILjf6bLAc1SImkCr5S4rncjDFGicp2PIz
	 tAwF6n9wtS2cyeADOMPfNwAsbFQhqj4pHKT6mOuZxPSF11XJy7pjqhLOQkhrKOq2Xq
	 4rLdrzogO2FVdVU61unERihGcuodqB0L7FLoTxabpVrkOdQ8hDX3J23im9L/ItWgAC
	 wKpIU+EmVHJQg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 1/5] dt-bindings: regulator: Document MediaTek
 MT6373 PMIC Regulators
Reply-To: sashiko@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511101355.122478-2-angelogioacchino.delregno@collabora.com>
References: <20260511101355.122478-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 01:40:07 +0000
Message-Id: <20260512014008.8A64CC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A859351851C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295914-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,collabora.com:email,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Medium] The commit message erroneously describes the MT6363 PMIC instead=
 of the MT6373 PMIC.
- [Medium] The `maxItems` constraint for `regulator-allowed-modes` in buck =
regulators restricts the array to 3 items, despite 4 valid modes being defi=
ned.
- [Low] Incomplete documentation for the `vs1-ldo1-supply` property.
- [Low] Repetitive wording in the descriptions for `regulator-allowed-modes=
`.
--

commit c2db0db607c8ddf5d3875d65350f6abb072b3b6a
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

dt-bindings: regulator: Document MediaTek MT6373 PMIC Regulators

This commit adds device tree bindings for the regulators found in the Media=
Tek
MT6373 PMIC. It defines the constraints and allowed operating modes for 10
BUCK and 23 LDO regulators, along with their input supplies.

> dt-bindings: regulator: Document MediaTek MT6373 PMIC Regulators
>=20
> Add bindings for the regulators found in the MediaTek MT6363 PMIC,

This isn't a bug, but should the commit message say MT6373 instead of MT636=
3?
The patch adds the mediatek,mt6373-regulator.yaml schema, but the body ment=
ions
MT6363.

> diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6373-=
regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt637=
3-regulator.yaml
> new file mode 100644
> index 0000000000000..4562f291fc0ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6373-regulat=
or.yaml

[ ... ]

> +  vs1-ldo1-supply:
> +    description: Input supply for vant18, vaud18, vcn18io

Since the schema also defines vrf18-aif and vrfio18-aif LDOs under the
"^vrf(09|12|13|18|io18)-aif$" pattern, and they are powered by vs1-ldo1,
could this description be updated to include them?

[ ... ]

> +  "^vbuck[0-9]$":
> +    type: object
> +    $ref: regulator.yaml#
> +    properties:
> +      regulator-allowed-modes:
> +        description: |
> +          Allowed Buck regulator operating modes allowed. Valid values b=
elow.

This isn't a bug, but the word "allowed" is repeated in this description.

[ ... ]

> +            3 - Forced Ultra Low Power mode for ultra low load, this gre=
atly
> +                reduces the maximum output power, makes the regulator to=
 be
> +                efficient only for ultra light load, and greatly reduces=
 the
> +                quiescent current (Iq) of the buck.
> +        maxItems: 3
> +        items:
> +          enum: [ 0, 1, 2, 3 ]

If a board design supports and configures all four operating modes
simultaneously (e.g., <0 1 2 3>), will it fail schema validation since
maxItems is restricted to 3?

Should maxItems be updated to 4 to match the number of defined enum values?

[ ... ]

> +$defs:
> +  ldo-common:
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +    properties:
> +      regulator-allowed-modes:
> +        description: |
> +          Allowed LDO regulator operating modes allowed. Valid values be=
low.

This isn't a bug, but the word "allowed" is also repeated in this descripti=
on.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511101355.1224=
78-1-angelogioacchino.delregno@collabora.com?part=3D1

