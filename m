Return-Path: <devicetree+bounces-296545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOjHCVXFA2ob+gEAu9opvQ
	(envelope-from <devicetree+bounces-296545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:27:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 757EC52B88B
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:26:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AACD93012EA4
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 00:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A864B1A9F85;
	Wed, 13 May 2026 00:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDXMlMAr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8476C1A6827;
	Wed, 13 May 2026 00:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778632017; cv=none; b=nmVkxk/acQIwZHNEeEmXTEKjBNRmHoDHr5SHfnNwGb0shtJZrdw8uuOAuR5sD9yFg1/2WRgx+FdYNFwjcKSalTOpyKo4TWxIZuZoMc4Zlvoj/REXvojY7wB+ucg0DIInYSlcv32+un6QuU9ZZk/ibJEwaRtJhehkXIqy3YROOMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778632017; c=relaxed/simple;
	bh=Iu79rO8oVCg4E5Sg718+9d7YG+zg8RQw/kF+BEA1ADo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pEOD2hDT4UfxEh7gdvCrhEgyaYf5SRrKRaxdD23OIMWQcfkNOjEmXnq5vxefVVB0ta5No/0zSgaHjqARUN1Dkx6sjgJkdWds3e8wtt4VRrMwOnJ1mNjeWJ6Hl8bx1oCXqSzuotTeaF/l0SoWAn2e1Z2j4YjCyGgXIz6rEksV7OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDXMlMAr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8D20C2BCB0;
	Wed, 13 May 2026 00:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778632017;
	bh=Iu79rO8oVCg4E5Sg718+9d7YG+zg8RQw/kF+BEA1ADo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=JDXMlMArvfPAWRhKTYf8qts0ef98MCrPe7Qxbn4rKSpS55/fSXsuzdgP3JJaZ7gjF
	 8tcv1AOKKGhmgZQeIay4yRod/0PNYlBh6QzRJUOS2/zb+AnODMIqn41H2iguPacwz7
	 zXyIF8FKo1gEMwpZRPFL46o8yYSTC7UDXH4eyim0EEFYectJE0JpCUj8dBpA01l5AD
	 siISB0SXEpUMP+/Bjm2gbNwjh51K7pU+zUjYomEHfAjK8D7nTXIqATbjrk8n3QZxNV
	 1vjtVxaJ2KhiZ26TcA1bvZLBMSI6BJSjstoLBu/FujKuMWACIap1a4N+6cAf3XqmNl
	 1hAhuEFjU9WMw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] ARM: dts: imx6qdl-sabrelite: add mdio phy address 0
Reply-To: sashiko-reviews@lists.linux.dev
To: "Frank Li" <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260511-b4-imx25_dts_simple_warning-v1-1-01b855a5ce25@nxp.com>
References: <20260511-b4-imx25_dts_simple_warning-v1-1-01b855a5ce25@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 00:26:56 +0000
Message-Id: <20260513002656.C8D20C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 757EC52B88B
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
	TAGGED_FROM(0.00)[bounces-296545-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,0.0.0.0:email,lists.linux.dev:replyto,nxp.com:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Setting the Ethernet PHY `reg` property to the MDIO broadcast addr=
ess (0) instead of the actual hardware-strapped address breaks Ethernet ini=
tialization on the SABRE Lite board.
--

commit fbbd7813db5860f802e25f49f30fa7e2a33c20e6
Author: Frank Li <Frank.Li@nxp.com>
ARM: dts: imx6qdl-sabrelite: add mdio phy address 0

This commit explicitly sets the Ethernet PHY reg property to 0 to resolve
device tree schema validation warnings. It relies on the IEEE 802.3
specification indicating that a PHY should respond to the broadcast
address 0.

> diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi b/arch/arm/=
boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi
> --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-sabrelite.dtsi
> @@ -291,8 +291,9 @@ mdio {
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> =20
> -		ethphy: ethernet-phy {
> +		ethphy: ethernet-phy@0 {
>  			compatible =3D "ethernet-phy-ieee802.3-c22";
> +			reg =3D <0>;

Could this cause a regression in Ethernet functionality on the Sabre Lite
board?

The device tree should accurately describe the physical hardware topology,
but the Micrel KSZ9021 PHY on the Sabre Lite board is hardware-strapped to
address 6, not 0. Furthermore, the KSZ9021 datasheet indicates that it does
not support address 0 as a broadcast address.

Prior to this patch, the absence of a reg property caused
of_mdio_parse_addr() to return an error. This triggered an auto-probing
loop over all 32 addresses, which successfully found the PHY at address 6.

By explicitly defining reg =3D <0>, the kernel skips the auto-scanning
fallback and exclusively probes address 0. Because the PHY does not respond
to MDIO reads at address 0, get_phy_device() will read 0xFFFF and fail with
-ENODEV, preventing the PHY from registering.

Should this instead set the reg property to the actual hardware-strapped
address 6 to satisfy the schema without breaking initialization?

>  			txen-skew-ps =3D <0>;
>  			txc-skew-ps =3D <3000>;
>  			rxdv-skew-ps =3D <0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-b4-imx25_d=
ts_simple_warning-v1-0-01b855a5ce25@nxp.com?part=3D1

