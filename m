Return-Path: <devicetree+bounces-317702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fDcXDtuxQ2o0fQoAu9opvQ
	(envelope-from <devicetree+bounces-317702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:08:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7943B6E3FEF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:08:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F8nPtREP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317702-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317702-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C551131C0317
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E056403EA5;
	Tue, 30 Jun 2026 11:43:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EABC3ED3CA
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 11:43:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782819785; cv=none; b=M9b52FU2VIPWOlhcIgHmCfBUN7Q3JMsqLIprzufLB5KMrggxJ6WA1zP0aq8BCVEZYvF//CRiuWdeMGwyCQ7OltxdXxsP3CQI0wV+QGbzZ2gi6Kbw1offOHGqL6f3VqwOSCWvAgZ0g2xE/Ulv6+0LGOfZaRm1xLugCRM8DmGxEaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782819785; c=relaxed/simple;
	bh=QhC0YYv4fn27rETgKjs6aQo1urnFU6/nSgE5fpOSNX8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BRUdC85u3BxcfyCejW1SInE359V0zV52B+7OKgOGkm8po7f0i6NOIwQ+4gIxKsktvlr0fcZnnBx/2MfQBx+68/bi44DZqtMQVMzwaejSnuLkCOn0meqp36g4MwlzmIKwD8ahmokJSXxxAEMEMGhcAsX7WLAbAoRlJgR502jvowY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8nPtREP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E94A21F00A3F;
	Tue, 30 Jun 2026 11:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782819784;
	bh=1PP65HDeq9mt8DL9mubGQzxsOH7HCkJOZIDyDQSfgQ8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F8nPtREPmQGC6PA/whW5vWjM+gmhcZyYu+BYU/qDvUoSCwP++7ecDJ6sDctRJd91i
	 udqdfPMOvXCErZNhdxCeJeg++VJ1BIFZTs+sjq2EC7TH1ffiovKytzOIVJbVSJJCE2
	 U6YEIp6R8GgHUJ1lfyhjuVu9OSKD+x43Nuowo5qpeXc65h/qH98HjNebkY69UBy+Zm
	 5vvlaavttayOmU9PFGHCYezBS1KEeoYIAouldrqFmpSHvx+OP+CnZtFMNAi+fe2ZqT
	 95vDs3CVgNm+VoUZk7eZowo0Z6V/LfI9VFfde/VQjNP9lJ+r+suNww6lG11ekpgxrT
	 dl/zlXi4prOMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: ls1046a: describe the Lynx 10G SerDes
 blocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ioana Ciornei" <ioana.ciornei@nxp.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260630110459.516364-4-ioana.ciornei@nxp.com>
References: <20260630110459.516364-1-ioana.ciornei@nxp.com>
 <20260630110459.516364-4-ioana.ciornei@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 11:43:03 +0000
Message-Id: <20260630114303.E94A21F00A3F@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317702-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ioana.ciornei@nxp.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7943B6E3FEF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incorrect 'reg' size property (0xffff instead of 0x10000) for the S=
erDes blocks, improperly sizing the memory region and missing its last byte.
--

commit e38fd823b92e0ac25dfc572821e4084ac6569201
Author: Vladimir Oltean <vladimir.oltean@nxp.com>

arm64: dts: ls1046a: describe the Lynx 10G SerDes blocks

This patch describes the two Lynx 10G SerDes blocks and their associated la=
nes
found on the LS1046A SoC. The nodes are initially left disabled at the SoC
level.

> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/=
boot/dts/freescale/fsl-ls1046a.dtsi
> index 6fefe837f434f..db935805c3792 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> @@ -424,6 +424,66 @@ sfp: efuse@1e80000 {
>  			clock-names =3D "sfp";
>  		};
> =20
> +		serdes1: phy@1ea0000 {
> +			compatible =3D "fsl,ls1046a-serdes1";
> +			reg =3D <0x00 0x1ea0000 0x0 0xffff>;

[Severity: Low]
Is the region size of 0xffff correct here?=20

The reg property typically specifies the total size of the block, not the
maximum offset. Should this be 0x10000 to cover the full 64KB block and
include the final byte of the hardware region?

> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;

[ ... ]

> +		serdes2: phy@1eb0000 {
> +			compatible =3D "fsl,ls1046a-serdes2";
> +			reg =3D <0x00 0x1eb0000 0x0 0xffff>;

[Severity: Low]
Similarly, does the serdes2 block also need a reg size of 0x10000 instead of
0xffff?

> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630110459.5163=
64-1-ioana.ciornei@nxp.com?part=3D3

