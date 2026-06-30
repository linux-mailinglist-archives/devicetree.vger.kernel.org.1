Return-Path: <devicetree+bounces-317694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g5/xF6CuQ2oJfAoAu9opvQ
	(envelope-from <devicetree+bounces-317694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:55:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A034C6E3DF1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:55:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IWPGLBQf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317694-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317694-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6A1331B7FEA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1AD3FFFB8;
	Tue, 30 Jun 2026 11:32:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFDA3FB040
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 11:32:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782819151; cv=none; b=HYj3SaCxT12xKjbTtnJtSKQjtGsYi0gsEBz6DgPiV2dnUfzQlU5z0564GeXgrdFE1rT4dNvwyDsFlQjM1XNTQCSPAX6oK0XNqLukQ1uhTj+8h/rZWy0Wy4HUx3h+8+cG7YvtpQnZkCSwJNXZyJY2GK4ScQruD9XEQ4nBicqx40s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782819151; c=relaxed/simple;
	bh=PFjLBYGkhNLmf7yKqEV/d9LXyDW8kbgmbWXhC3CUKrM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pSpaOhBxc+DkS2P25I9qCH5syGV1+xBiRABuRt33EKJieupElrqas4lshZMPi3lCppZz6lvHIvd4W15QoVB4eIkvRB9cJVB4CKo9TOHgnG1xbOjPh5YYbXeakkAjR6lCeRIVcsnTNsOWXDRVeiXJ3VewgyT3+XL9+/VBK/xrLRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWPGLBQf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66DAD1F000E9;
	Tue, 30 Jun 2026 11:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782819149;
	bh=USbLOktLDZBd6tKDaj5e6zqiRubR8iIvM4jJ7UKLBRo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IWPGLBQfTbn6Ix5J2jjdNtd1exEBV6aRbmGJbco+Bd7m3aWolDFbvlDo28FWNVNY1
	 xPi54wc5kZojaYBcyz8dyT+EpMXJMPazTNAPQJYqRRDfpkmsUBI6Rt52Qkx4oDYapb
	 0dRzM+myWNm8vYrpXZmHO4lftkyp83ZboVlr292KYUS/abQv6IY6pAWW2lSMo3ZkmH
	 zIZhv7/qEJQHAIf/md3UVW4m2EA9H3TGSkgablyJFrQxNI2e2TCAdW6xmLodIori+g
	 HfSyD4Szm6BJpL1/QC42rNmxWOKsFhUVXUdgxraxUi5QwPuvEtEFD5bBhj/qudZNIT
	 ShuKRGk4O+F4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: ls1028a: describe the Lynx 10G SerDes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ioana Ciornei" <ioana.ciornei@nxp.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260630110459.516364-3-ioana.ciornei@nxp.com>
References: <20260630110459.516364-1-ioana.ciornei@nxp.com>
 <20260630110459.516364-3-ioana.ciornei@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 11:32:28 +0000
Message-Id: <20260630113229.66DAD1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-317694-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ioana.ciornei@nxp.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,nxp.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A034C6E3DF1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `reg` property for the `serdes` node incorrectly sets the regio=
n size to `0xffff` instead of `0x10000`, causing an off-by-one error in the=
 resource length.
--

commit a39aeb25ec050b4deb66ed84479cc1400f6ce47b
Author: Vladimir Oltean <vladimir.oltean@nxp.com>

arm64: dts: ls1028a: describe the Lynx 10G SerDes

This commit describes the Lynx 10G SerDes block and its 4 SerDes lanes found
on the LS1028A SoC. The node is left disabled at the SoC level so board
device trees can enable it once consumer nodes use it.

> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/=
boot/dts/freescale/fsl-ls1028a.dtsi
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
[ ... ]
> @@ -250,6 +250,35 @@ ls1028a_uid: unique-id@1c {
>  			};
>  		};
> =20
> +		serdes: phy@1ea0000 {
> +			compatible =3D "fsl,ls1028a-serdes";
> +			reg =3D <0x00 0x1ea0000 0x0 0xffff>;

[Severity: Low]
Does this reg property specify a length that is off by one byte?

The reg property size field represents the length of the region in bytes. If
this is a standard 64KB hardware block, should the size be 0x10000 instead
of 0xffff?

Setting the length to 0xffff tracks a memory region that is 1 byte smaller
than the actual block. While ioremap aligns to the page boundary and avoids
runtime side effects, this tracks an incorrect resource length and leaves t=
he
very last byte unmapped by the resource manager.

> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			#phy-cells =3D <1>;
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630110459.5163=
64-1-ioana.ciornei@nxp.com?part=3D2

