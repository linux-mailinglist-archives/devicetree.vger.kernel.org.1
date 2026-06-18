Return-Path: <devicetree+bounces-313344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id osYuKfa7M2ptFgYAu9opvQ
	(envelope-from <devicetree+bounces-313344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:35:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A7569EEA1
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 11:35:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ToLO7AD3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313344-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313344-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68CA4304DE82
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA5AB3DB333;
	Thu, 18 Jun 2026 09:31:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09683DB319;
	Thu, 18 Jun 2026 09:31:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781775088; cv=none; b=W4EQw4APziGRxRyfBUs+QwIPOQiAuxCIgh41Chh6hwL07bU/OWNgpqQkZT2DNCczLTzs66v14kZJXrw2rrDn0hVYtbKKLK7hDQT5VfnjijSkWhTXAUO9/mOe5IIJ7L6kYAoWEPD+y5C10aBwfoyxHUubrHBiyNtpvw7jA9q9yI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781775088; c=relaxed/simple;
	bh=4Bv2Xy0zjVDUabyK1NxW/sMDz2HiZVhY4EFrZaj68T8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qYw51M/GocIr8Vn/5g38sxC6+pKaKT2imUyRJZI4ix3dofu0vCUKoAjOSou4mDprUJ0dNFZA3KTB44RSoMrq6FplTipIOAGwxyZWFLunPBU+iLgqA/VMQd+MuyOjYtcu+n00taFvjvj2KdLv5X26NcK7RLTnGgykAJrLpEQOEss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToLO7AD3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86C2F1F000E9;
	Thu, 18 Jun 2026 09:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781775087;
	bh=W0qq6/DOKl61xL9w6gSC1AHT2CZxfOS5bJTrwgR3PTk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ToLO7AD3x/siL4fFHy0EUcDfnEMRY4UmlPoVbTaZlAgAn3e7lQsCl+/MqJYNRPpOg
	 w7ppjwe44yNZzNlkGh5e/KgKBo7Dt/3Lrv/q9hHVUwbyOEXAXf7Jf9yjQrLm1YdByY
	 1Ji6iSSzdmUBsLUcH/qU9LiYrgl+EQt1UadOSYYsZirA0m4fGP+eqjIJqP5MhffBZb
	 65ngxFx02JPnQR13bEi6320QKfwtxC9+gfnj6Jor8Pe2kAYd9SXYxx/jV4GfWGBC9e
	 6NSMx4HIdlPcQMU1zHojR1S3ZR/YpfY0OLWgUBiNZzqpbe5V499BSh6anJ5/7hwg+M
	 c7vCCdCs+oC/w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/3] dt-bindings: imx6q-pcie: Add optional
 intr/aer/pme interrupts for i.MX95
Reply-To: sashiko-reviews@lists.linux.dev
To: hongxing.zhu@oss.nxp.com
Cc: robh@kernel.org, linux-pci@vger.kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260618092100.3669556-2-hongxing.zhu@oss.nxp.com>
References: <20260618092100.3669556-1-hongxing.zhu@oss.nxp.com>
 <20260618092100.3669556-2-hongxing.zhu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 09:31:25 +0000
Message-Id: <20260618093126.86C2F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313344-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:hongxing.zhu@oss.nxp.com,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 31A7569EEA1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Strict positional matching for optional interrupts prevents their i=
ndependent omission.
--

commit 9eb344928f835976645ead8f4c2aff3678bedbd2
Author: Richard Zhu <hongxing.zhu@nxp.com>

dt-bindings: imx6q-pcie: Add optional intr/aer/pme interrupts for i.MX95

The i.MX95 PCIe controller introduces three additional dedicated hardware
interrupt lines for specific events. These interrupts are optional on i.MX9=
5,
so the binding is updated to allow up to 5 interrupts for i.MX95 while
restricting earlier variants to a maximum of 2 interrupts.

> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/=
Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index e8b8131f5f23b..4f56e8e4f1008 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml

[ ... ]

>    interrupt-names:
>      minItems: 1
>      items:
>        - const: msi
>        - const: dma
> +      - const: intr
> +      - const: aer
> +      - const: pme

[Severity: Low]
Since dma and the new interrupts are optional, what happens if a valid spar=
se
configuration provides msi and intr, but omits dma?

The items list creates a strict positional tuple. Wouldn't a device tree
that provides msi and intr fail validation because the string intr at index=
 1
will be incorrectly checked against const: dma?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618092100.3669=
556-1-hongxing.zhu@oss.nxp.com?part=3D1

