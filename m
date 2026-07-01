Return-Path: <devicetree+bounces-318659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zW6VE90eRWpz7QoAu9opvQ
	(envelope-from <devicetree+bounces-318659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:06:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 012E26EE80A
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:06:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NX7ndozU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318659-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318659-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26CF831DB477
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDE3E3F86EE;
	Wed,  1 Jul 2026 13:32:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D2C0481659
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:32:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782912779; cv=none; b=seBiH6nFxnZ1w/FtTUL6itxfcRi+767IEtszmeWKrmsFjMHAt0dSvkwrCelaMDHDmQs8DQ+z4QqahB7Ay18f7ar2HAHOAIQD2Oiaoq6fXNsZnVwwCdHnFtpd9AkPxSEY7RIMSuLCfy5Kv1J4b/fgB3Qwu0BfoiaFVwfYUkNaEM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782912779; c=relaxed/simple;
	bh=w9oZqnAV5yymsF2qeLyCxQswqDvmsRY2flJcZYB87L0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gtY00F3YM6RJ2W5xOIWnKgvRCkQ60dxsjjHFLdaQzURwXKuKh7gZdF9FWrvU3GApZfq6XYxxnYSkfxQUFDAhNSRAx1afsN14PqZvMkRKVsC2vCZsek7rX8wHM4d/Ad7IUrCnpl/daNX/OCeUo5S6SPYjBe8+GDn6IYViKOM4rmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NX7ndozU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 068AA1F000E9;
	Wed,  1 Jul 2026 13:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782912778;
	bh=/Qmhn00wqR0JHfT8xe2TDDH1YbFF43yp/QmMygYxZVY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NX7ndozU8hrNT5oXfCwdi0tV+DapMOs3UnjVFzvayNM4tjUDSzcuCZvPPlypG5iST
	 aF96wtHnqqJd4JFvtwhS1G4+0WXAWHRPpjCtVfFw8/KpcN41pK/C+fZ7AdnGVWDSRq
	 Bsr56nRBa/BGZKqtrq5SqGEfxqhYn9GIkiL1JDHCYaX/M27Tq2y9UaAHAmp/k71pMb
	 1gGwKV3HXO4IbwbvJYEwrSe40LpuqD4G6fburLSUvkQB0tklh73P0dtxcCgNp5/Ltr
	 oQBV+mBgByCdtV2u+GE9QLzEMj/2alJSNfGzsMsXwWZCJoXq5XecvV0SL70ttKa6p5
	 aOHmJS4tw7zOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: firmware: add mbedtee,rpc binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Xing Loong" <xing.xl.loong@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260701132514.186953-3-xing.xl.loong@gmail.com>
References: <20260701132514.186953-1-xing.xl.loong@gmail.com>
 <20260701132514.186953-3-xing.xl.loong@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 13:32:57 +0000
Message-Id: <20260701133258.068AA1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318659-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:xing.xl.loong@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:xingxlloong@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 012E26EE80A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing `maxItems` constraint for the `interrupts` property.
--

commit ad51309fadfb753784caac099277a6b19357c757
Author: Xing Loong <xing.xl.loong@gmail.com>

dt-bindings: firmware: add mbedtee,rpc binding

This commit adds the YAML devicetree binding for the MbedTEE Trusted Execut=
ion
Environment driver. It describes the shared-memory regions used for RPC
communication between the Linux REE driver and MbedTEE OS on ARM/AArch64 and
RISC-V platforms.

> diff --git a/Documentation/devicetree/bindings/firmware/mbedtee,rpc.yaml =
b/Documentation/devicetree/bindings/firmware/mbedtee,rpc.yaml
> new file mode 100644
> index 0000000000000..08ae255d32c2a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/mbedtee,rpc.yaml

[ ... ]

> +properties:
> +  $nodename:
> +    const: mbedtee
> +
> +  compatible:
> +    const: mbedtee,rpc
> +
> +  interrupts:
> +    description:
> +      GIC interrupt used by the TEE to notify the REE of pending RPC
> +      responses (ARM/AArch64 only). Not present on RISC-V platforms which
> +      use IMSIC platform MSI interrupts allocated dynamically at runtime.

[Severity: Low]
Does this property need a maxItems constraint?=20

Without maxItems: 1, device tree validation will not catch configurations t=
hat
accidentally supply multiple interrupts.

> +
> +  msi-parent:
> +    maxItems: 1
> +    description:
> +      IMSIC MSI controller used by the Linux driver to allocate the

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701132514.1869=
53-1-xing.xl.loong@gmail.com?part=3D2

