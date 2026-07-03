Return-Path: <devicetree+bounces-319942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JKw8EVt5R2qJYwAAu9opvQ
	(envelope-from <devicetree+bounces-319942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:56:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7B670058F
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 10:56:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TFlahi9T;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319942-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319942-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A880A30038CC
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 08:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78EC382F1A;
	Fri,  3 Jul 2026 08:56:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC0F37C92D;
	Fri,  3 Jul 2026 08:56:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783069016; cv=none; b=odT+PndneaZc94sPgGfaQrr2iatmUtYpRG66aDYzrjiG1dHTY9teQDf8xvK9/kGjOMUXMfiDokW3YvvrDkq259dUBDjV0oY4zyqddQCZNhFm/h7lNDchVLgAWQNiTjcm9Gq5OgR1PZXmknn90uWnOlr+paJDSYojPkJa5FDs2hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783069016; c=relaxed/simple;
	bh=Z5CytSAUPOMVeHdYH7UgTDHFRLQqdq4Oe+AOvYKVAck=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=l+0zcoYDsVHNeJVrjkzSIaBFIjuCQ9yhp/K2GorBZuzpoHpaoodueqAfDdbnlhvWzit+QVZOexF31DC8PkDLC3oJakol3vS2xdtpwrDFgxWzeBcPcpsuqqxIU7lFQ7Ik1/XPU185I6NsjljnVsvfpg4oTFdU3Xoa5hN/EUT9b5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFlahi9T; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 053431F000E9;
	Fri,  3 Jul 2026 08:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783069015;
	bh=ZVHutPho44JIPnGrpI2vjRUFz7/vvSWKjKU2NoAfNEc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TFlahi9TNNVDOUQKlcjsO1bP+mPnHxaL+9+PrlxqfgoTS1KyuBRWRGo1lgRDHI1iZ
	 KxSpMr0COyzLgRSItDb87kBgx93na0d8+jdi8dc1X6Gf76hr2e45pKJK8zak6VADFV
	 pMm3cTRjG5f3NNE9sbI8DIUlti/lTLbACD4mcoWACPFhRML22NgNjN5QAxZ0AQpMTh
	 q7H8IMyLfbSk0Wt+qRmeMz2i2O2hRg28OKSXVyd04/qj/prFlc+4NLHD/YiWVpktfn
	 jypHMvS6d0wXnOpdw2kk+P0xuBEE6G+cc2vcv0WX4Px437rRD4ZcjnHaIb6d9aiwRh
	 MFNOCiijkPbQg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 09/15] arm64: dts: freescale: imx8mn-var-som: enable
 FlexSPI interface
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <858f10730612e0225b69257eef833c3b84052ded.1783067947.git.stefano.r@variscite.com>
References: <cover.1783067947.git.stefano.r@variscite.com>
 <858f10730612e0225b69257eef833c3b84052ded.1783067947.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 08:56:54 +0000
Message-Id: <20260703085655.053431F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319942-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,variscite.com:email,sashiko.dev:url,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C7B670058F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The FlexSPI controller is enabled in the SOM `.dtsi` without a c=
orresponding flash memory child node, preventing flash access and forcing p=
inmux usage on all carrier boards.
--

commit c172727bc2bd192187db0f36d293f9c48809f6e4
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: freescale: imx8mn-var-som: enable FlexSPI interface

This commit enables the FlexSPI controller on the VAR-SOM-MX8MN and configu=
res
the corresponding pin multiplexing.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi b/arch/arm=
64/boot/dts/freescale/imx8mn-var-som.dtsi
> index 0abc2d33e7118..259d9f36f8a32 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
> @@ -176,6 +176,12 @@ ethphy: ethernet-phy@4 {
>  	};
>  };
> =20
> +&flexspi {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_flexspi0>;
> +	status =3D "okay";
> +};

[Severity: Medium]
Is this missing a child node for the flash device (e.g., flash@0)?

If the QSPI flash is physically located on the SOM, the kernel won't be able
to probe or access it without the child node defined in this tree.

Alternatively, if the flash is intended to be located on the carrier board,
does globally enabling the controller and its pinmux in the SOM's .dtsi
prevent other carrier boards from repurposing these pins if they do not use
FlexSPI?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783067947.gi=
t.stefano.r@variscite.com?part=3D9

