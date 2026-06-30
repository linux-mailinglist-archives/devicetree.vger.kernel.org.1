Return-Path: <devicetree+bounces-317414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ++IPNUlhQ2qgXgoAu9opvQ
	(envelope-from <devicetree+bounces-317414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:25:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B026E0BAF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:25:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OLAqA19D;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317414-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317414-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D308300578E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 744FA23C4F3;
	Tue, 30 Jun 2026 06:25:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685A528DC4;
	Tue, 30 Jun 2026 06:25:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782800711; cv=none; b=NZQMhILaGAvh80gxSkxBQYllaWQ6bBSXP0fmSSAQfjlpL0W6XLzQijBs0Vbwys7iCCNAkBjWblApaPnrfvXz9ARhWEz0b9NlXYlwPftdUoU5bELeoZHPvDgQyrHdIfHSp5Ooa6f/WYRpnd1QRgGwjj08oBYQkGGyk5xn8f9vLLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782800711; c=relaxed/simple;
	bh=yQDF6daR9hmdhnKHYO09dTsJZYvzr5LzuIphe4/LYCU=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ntud6rf/IvrgCiDQDc9tA+/HPoprx7kZpknzWvPG/xq7xIFD1cioKKH+s11Cv4yO0OEM58LIjLYdF6Ep1jX0iYv1HK6Dtv6SqKnZn3tJewkn4oZmc0FFduejqEAJdfwJRvwkjgJVSegf1zE2mwrJh/xTcdkb2Rs3xlXN7IKlncw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLAqA19D; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01751F000E9;
	Tue, 30 Jun 2026 06:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782800710;
	bh=SlfqcWdSspYUDQt9VOyb0jq/6VppfzyCtLUsCXL39PE=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=OLAqA19DRJEqJdaPbVkai6eiOXz7XfOZ8tssTj1451I39TRPGzM6dg/Nr2UfFgLKR
	 M3i+WN5+s6HJkpJlXJOx0yQ2f2Gzl2BnVp+HMk5pqWvQklVIThsHGGNWjmT6rVcuRC
	 9fvVWBwjLjx3ZfrLmBC55BaEkvZxwT6wigaZ7p/SvM7b0Sf+fohgBkvejIO3CCRLPg
	 /u1cz3+DLcTjqJ+Do80gtZLhIwJxYh1k+lVWlPoweFfGdjP9PCVGSjRs+Mdr9XLvA/
	 f2Wbx29KB1eUeUTU9g4Tvte0okS1YeBhI3e0FyaHm5iFPCs2+Qr4A2VWttZ0sZ2pjx
	 20M0ucXYJx4YA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V4 2/7] arm: dts: imx6sx-sdb: Move power supply property
 to Root Port node
Reply-To: sashiko-reviews@lists.linux.dev
Cc: linux-pci@vger.kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260630060710.3294811-3-sherry.sun@oss.nxp.com>
References: <20260630060710.3294811-1-sherry.sun@oss.nxp.com>
 <20260630060710.3294811-3-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 06:25:09 +0000
Message-Id: <20260630062509.B01751F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_TO(2.00)[];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,nxp.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-pci@vger.kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38B026E0BAF

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Removing `vpcie-supply` from the host controller node breaks DT ba=
ckward compatibility, as older kernels will fail to enable the regulator an=
d initialize PCIe.
- [Low] Adding `vpcie3v3-supply` to the Root Port node without updating the=
 corresponding binding schema causes `dtbs_check` validation failures.
--

commit 9019771c92c02473e9f2657166c7dc76a65b606d
Author: Sherry Sun <sherry.sun@nxp.com>

arm: dts: imx6sx-sdb: Move power supply property to Root Port node

Move the power supply property from the PCIe controller node to the Root
Port child node to support the new PCI pwrctrl framework.

> diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi b/arch/arm/boot/dt=
s/nxp/imx/imx6sx-sdb.dtsi
> index 338de4d144b2a..41a69fe83be85 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6sx-sdb.dtsi
> @@ -284,12 +284,12 @@ &pcie {
>  	pinctrl-0 =3D <&pinctrl_pcie>;
>  	/* This property is deprecated, use reset-gpios from the Root Port node=
. */
>  	reset-gpio =3D <&gpio2 0 GPIO_ACTIVE_LOW>;
> -	vpcie-supply =3D <&reg_pcie_gpio>;

[Severity: High]
Does removing this property break device tree backward compatibility for
older kernels?

Older kernels using the pci-imx6.c driver expect the vpcie-supply property
in the host controller node to find and enable the regulator. If this is
removed instead of being left as a deprecated fallback (similar to the
reset-gpio property above), will PCIe initialization fail on older kernels
booted with this new device tree?

>  	status =3D "okay";
>  };
> =20
>  &pcie_port0 {
>  	reset-gpios =3D <&gpio2 0 GPIO_ACTIVE_LOW>;
> +	vpcie3v3-supply =3D <&reg_pcie_gpio>;

[Severity: Low]
Does adding this property to the Root Port node without a corresponding
schema update cause dtbs_check validation failures?

The fsl,imx6q-pcie.yaml binding schema defines the root port node with
unevaluatedProperties: false, but it does not appear to document the newly
added vpcie3v3-supply property.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630060710.3294=
811-1-sherry.sun@oss.nxp.com?part=3D2

