Return-Path: <devicetree+bounces-297241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDfeDbMfBWopSwIAu9opvQ
	(envelope-from <devicetree+bounces-297241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 03:04:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 898AC53C88A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 03:04:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45214301F9F6
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 01:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A73952FD665;
	Thu, 14 May 2026 01:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKrtDHjd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838F52F9D89;
	Thu, 14 May 2026 01:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778720688; cv=none; b=TXwmRz8gtc2rm304CsgP6nmxfTVMR3cDxl32kjgext2Rs9hL90o0d+PVha5Q7NwC7LLs2VwzfMgUN7JhPR/EukXq2uRa/oE3Eoh3JKZQQC70FeOdzX3EPSlUu8vHJKh1fz5uxjwW6MZlk3HfoWmS2vVU4R4LqEiSLFxnyKk3yrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778720688; c=relaxed/simple;
	bh=Os8M03cI/bIK97UliIlzT2ruhXSS3WfDehObzml7PFo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eKTaC92K8M/CLMqUs5zO7LVBRS48en99Mh6w6p8zAmM94uBTZOQXfkYpn1IzaUbc+nQoSUXd/yoVwfdMygOrjbE1mkXY6+nGHEtY6qDhp1C0TvvmrZLXHJU9Fi62HeWchi6slic0fG1+E9F9YG2J1ANinbWHcahW4qG17hW9y88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKrtDHjd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A329CC19425;
	Thu, 14 May 2026 01:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778720688;
	bh=Os8M03cI/bIK97UliIlzT2ruhXSS3WfDehObzml7PFo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=pKrtDHjdS/8B/H4GKH0JtL2Lhv1p/9oevkUvp9K+dKgMbQSfJ1vSq0y+Bz8HNJWtV
	 b7Z6yEidcnWeBfr94Bg8kDsy1EyBmGqhCfQLsMGOqTi7J863Fwcaj39dPo0VXXsZHM
	 EgcHRbWOuTUkJ/hRgcyjrgQf4zQoR1y0uC3RrnerRh9kC9CgWMMDWezh+PhUCfmT7Q
	 BxrgbvHocfoocTcC5L8uMh16kHVG0tfNmdxyHk8CM5s/J/tDUJZnddMiUYdkHKGh77
	 qvdPbRRk+ta5KFaGQoS+VzangwppvM5BD6ejiP6qwd56LhZsHxcRZH5VR+3M4BsfeN
	 mUFQfb1tx01Dw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: PCI: imx6q-pcie: Add intr, aer and
 pme interrupts
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Zhu" <hongxing.zhu@nxp.com>
Cc: robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, krzk+dt@kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260513025101.1498104-2-hongxing.zhu@nxp.com>
References: <20260513025101.1498104-2-hongxing.zhu@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 01:04:47 +0000
Message-Id: <20260514010447.A329CC19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 898AC53C88A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297241-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,nxp.com:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Strictly ordered `items` array prevents omitting intermediate op=
tional interrupts.
- [Medium] Global addition of optional interrupts loosens schema validation=
 for older hardware generations.
--

commit c716cc823581eb06c45ae0ee7c1441e2e4b80ec3
Author: Richard Zhu <hongxing.zhu@nxp.com>

dt-bindings: PCI: imx6q-pcie: Add intr, aer and pme interrupts

This commit adds optional interrupt entries (intr, aer, pme) to the i.MX6Q
PCIe binding to support event-based interrupt handling.

> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/=
Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 9d1349855b422..cf709132ff1e2 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -58,12 +58,18 @@ properties:
>      items:
>        - description: builtin MSI controller.
>        - description: builtin DMA controller.
> +      - description: PCIe event interrupt.
> +      - description: builtin AER SPI standalone interrupt line.
> +      - description: builtin PME SPI standalone interrupt line.

By adding these optional interrupts at the top level, the maximum number
of interrupts implicitly increases from 2 to 5 for all compatible strings
in this binding.

Will this allow older hardware generations that physically only support
2 interrupts to silently pass validation if they incorrectly specify up to =
5?

Should the existing allOf conditional blocks explicitly restrict maxItems
for the interrupts property on variants lacking these new capabilities?

> =20
>    interrupt-names:
>      minItems: 1
>      items:
>        - const: msi
>        - const: dma
> +      - const: intr
> +      - const: aer
> +      - const: pme

If a hardware variant supports the msi and intr interrupts but lacks the
optional dma interrupt, won't this strict array validation fail?

Since dt-schema enforces exact positional matching for items arrays, a devi=
ce
tree specifying interrupt-names =3D "msi", "intr" would have the "intr" ent=
ry
evaluated against the second constraint (- const: dma).

Does this need an enum/anyOf structure with minItems/maxItems, or specific
allOf conditionals per SoC to correctly handle omitting intermediate entrie=
s?

> =20
>    reset-gpio:
>      description: Should specify the GPIO for controlling the PCI bus dev=
ice

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513025101.1498=
104-1-hongxing.zhu@nxp.com?part=3D1

