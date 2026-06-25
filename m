Return-Path: <devicetree+bounces-315857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eLrkD/GlPWqr5AgAu9opvQ
	(envelope-from <devicetree+bounces-315857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:04:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9806C8DC3
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:04:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OnLFqWWg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315857-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315857-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F868301DC09
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 22:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E2CA32D0CC;
	Thu, 25 Jun 2026 22:04:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D31630BF52;
	Thu, 25 Jun 2026 22:04:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782425069; cv=none; b=QRIVgKP8F91EmMIziol/nPlCW36+Tx4llGxoK77jt1llQ6gDB1DJiAYGqMJWY35/1VzLl3Rchf9zyS+7BY3+GmrmDrp9rACZHOzLm8bZj/FVvk6Aju9EzlCMkNDIsBX/qc9gWHQZ0ZiXYAFip3wXqKBRFJFG0PnAVT0ngy5bcUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782425069; c=relaxed/simple;
	bh=f7DoB95TT1HinndX9/UxfkAD0QRJt22jICZX/XbVpJg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=N8CXFnmQGgPeoD0KdaPRshi0SIqrUP9rcwYOW01FaS3EesD/NFz8gI/Gw+DweOdavb57AdXJTzin/M24E8Q89iA2yiOaFyXLTTdshdtY9lRoXA/FpgfIrPGfnRWzfm1ZlGlPw0b1rT4rCLMEr8fusU5CLOQxZ08T/bq0J614Zzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnLFqWWg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0241F000E9;
	Thu, 25 Jun 2026 22:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782425067;
	bh=oqyZb0FjYDp1OLMYrtkIQ3AI8fomSQlXKoHElKCBj7c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OnLFqWWgJD6XFBuhDMcgOMnQAp7wZEs3i3SKi4XqasrTw4RZTV1s630IeGs7NoKPG
	 R/aasfz/64zsIXuK04bpeT4eY+zThMMpSV/kUhy8o5Wt8BDS+zMNjVZHZYfxjwjmcI
	 lRKLpaP8HqlfrusPxr4cy0pZZdXhj2WpoAmE/6m1WatYVl7kDb+FiTPLwUBw2pU0R0
	 AuGWJdPPnggbTDOJSJZaPKkCaQUZH3f7ho7HhTFIK4Y2UUGi/fwrjDw5nGtPKAZEVc
	 k+SXFCk/V+aqlMThh0cChSxm5h/ew64kdIfFtpnY4mLgXGlKxVKJ31FWf/+JmzHyX4
	 +N+J4nivC73OA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: PCI: mediatek-gen3: Split Airoha
 schema and document 2-lanes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260625215741.3253212-4-ansuelsmth@gmail.com>
References: <20260625215741.3253212-1-ansuelsmth@gmail.com>
 <20260625215741.3253212-4-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 22:04:27 +0000
Message-Id: <20260625220427.7A0241F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315857-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D9806C8DC3

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The schema incorrectly uses `regs` instead of `reg` in the `allO=
f` conditional block for `num-lanes =3D=3D 2`, failing to enforce the requi=
rement for a secondary register region.
- [Medium] Typographical error `phy-lan2` instead of `phy-lane2` in the `re=
set-names` enum constraint for the 1-lane fallback block.
--

commit bb5683e00f2f10ba9133fc862deba2acbfb939ed
Author: Christian Marangi <ansuelsmth@gmail.com>

dt-bindings: PCI: mediatek-gen3: Split Airoha schema and document 2-lanes

This commit splits the Airoha PCIe schema from the mediatek-gen3 schema into
a dedicated file. This allows documenting the required properties for PCIe
configured in 2-lanes mode, while cleaning up the mediatek-gen3 schema.

> diff --git a/Documentation/devicetree/bindings/pci/airoha,en7581-pcie.yam=
l b/Documentation/devicetree/bindings/pci/airoha,en7581-pcie.yaml
> new file mode 100644
> index 0000000000000..977c1816572cc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/airoha,en7581-pcie.yaml

[ ... ]

> +allOf:
> +  - $ref: /schemas/pci/pci-host-bridge.yaml#
> +  - if:
> +      properties:
> +        num-lanes:
> +          const: 2
> +    then:
> +      properties:
> +        regs:
> +          minItems: 2

[Severity: Medium]
Does this schema enforce the minItems constraint as intended? It looks like
there's a typo where "regs" is used instead of "reg". This might allow a
node with num-lanes =3D <2> but only a single register region to silently p=
ass
validation.

> +
> +        reg-names:
> +          items:
> +            - const: pcie-mac
> +            - const: sec-pcie-mac

[ ... ]

> +    else:
> +      properties:
> +        reg:
> +          maxItems: 1
> +
> +        reg-names:
> +          items:
> +            - const: pcie-mac
> +
> +        resets:
> +          minItems: 2
> +          maxItems: 3
> +
> +        reset-names:
> +          minItems: 2
> +          items:
> +            - enum: [ phy-lane0, phy-lane1, phy-lan2 ]

[Severity: Medium]
Will this properly validate phy-lane2? It appears there is a typo here
(phy-lan2 instead of phy-lane2) which would cause valid configurations
to fail schema validation while accepting the misspelled name.

> +            - enum: [ phy-lane1, perstout ]
> +            - const: phy-lane2

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625215741.3253=
212-1-ansuelsmth@gmail.com?part=3D3

