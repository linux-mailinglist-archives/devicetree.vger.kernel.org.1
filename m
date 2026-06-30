Return-Path: <devicetree+bounces-317412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oP0xKjBhQ2qYXgoAu9opvQ
	(envelope-from <devicetree+bounces-317412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:24:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEAD6E0BA4
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:24:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NZs8X7Wh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317412-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317412-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9643C300AD75
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD3A23C4F3;
	Tue, 30 Jun 2026 06:24:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2473428DC4;
	Tue, 30 Jun 2026 06:24:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782800650; cv=none; b=fXGRwQ/HiZhpwTyi8dMMHKtUwxJY6ELkJGda49DKsXO8X2sl4iuNAu6NK+ZlYUvNYWLH0EAGMZFOwnCSrDKNNGZTHEtXFtGkN3zL6r4NGEDecOwxBfPbXTQO+XPQY8ANVgcKzuxZ1k7phTnDjSTZMfhCw4/dCd0aOxFziCSdiCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782800650; c=relaxed/simple;
	bh=pvO2BJi9r4oc+R4EItYeAnU5j3KhRYaz+GrAb/T/fHs=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uZ6PWwLm2Z3ogg21fkghRYwmiHFoVdiSgosCt1+/3LB7dv6AqjNpIzYIvEX0sB1ibH3EKRFVBSUXgQJsN+Lnlxeht3E/W881yLPb1CpZ680Yy7g7vGwxGdob0skdGWQSSMuqKjozWXUHBTexPVWJrYcvHPrwb0onpnu1TS0bAkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZs8X7Wh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 683A71F000E9;
	Tue, 30 Jun 2026 06:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782800648;
	bh=B/XWZZOboEQOva1v86G5UIYvDsWsR8cQQFWTwbJHscQ=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=NZs8X7WhOvp3knRjsx07N7eSI612rjl03g4DuWzxps1w6BO5cewDI5z9WSU/puGV1
	 fOjWla7dLft1TGAdREwnpVYCKo7ZL6yKli/QjGGalqS2rWc9/AFk0RI13FWbbwISQw
	 PcOY9eHoOJ44LGpbpDANT5byVpEX9wkagUiqgxq+fDqgfxSQRD5DVtOhfSkpEJvlgr
	 /A8jhlzmJFDNnHpUeTf+UV9GBom7Pd4QrMo7OA15xsfzsKZFtzXg9IcCtEMjKLQV1S
	 znZ9Ybggn0dmAreIyegT28urVzEdIy3IPo0m+N+QR33tRz76tGi90FbmQp/r6yi5yy
	 dF5HSFaa+yFkA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V4 6/7] arm64: dts: imx8dxl/qm/qxp: Move power supply
 properties to Root Port node
Reply-To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260630060710.3294811-7-sherry.sun@oss.nxp.com>
References: <20260630060710.3294811-1-sherry.sun@oss.nxp.com>
 <20260630060710.3294811-7-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 06:24:08 +0000
Message-Id: <20260630062408.683A71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317412-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,nxp.com:email,vger.kernel.org:from_smtp];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DEEAD6E0BA4

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Moving `vpcie3v3aux-supply` to the Root Port node delegates its li=
fecycle to the generic `pci-pwrctrl` framework, causing auxiliary power to =
be disabled during system suspend, breaking Wake-on-PCIe.
- [High] Removal of `vpcie-supply` and `vpcie3v3aux-supply` from the host n=
ode breaks Devicetree forward compatibility for older kernels.
--

commit 5e5016406a44aded0d05f19605180a501f38ea48
Author: Sherry Sun <sherry.sun@nxp.com>

arm64: dts: imx8dxl/qm/qxp: Move power supply properties to Root Port node
   =20
This commit moves the power supply properties from the PCIe controller nodes
to the Root Port child nodes to support the new PCI pwrctrl framework.

> diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/b=
oot/dts/freescale/imx8dxl-evk.dts
> index 78e8d41e67916..59d9fe687aaf0 100644
> --- a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
> @@ -677,8 +677,6 @@ &pcie0 {
>  	pinctrl-names =3D "default";
>  	/* This property is deprecated, use reset-gpios from the Root Port node=
. */
>  	reset-gpio =3D <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
> -	vpcie-supply =3D <&reg_pcieb>;
> -	vpcie3v3aux-supply =3D <&reg_pcieb>;

[Severity: High]
Will removing these properties break Devicetree forward compatibility for
older kernels?

Older kernels lacking the new pci-pwrctrl framework rely on finding the
vpcie-supply property in the host controller node to power the PCIe physical
slots. Because these regulators are not marked regulator-always-on, older
kernels might fail to enable them, resulting in unpowered slots and complete
device enumeration failure.

Could these properties be kept in the host node as deprecated fallbacks,
similar to how reset-gpio is handled here? The kernel regulator framework
uses reference counting, which should safely handle multiple driver
consumers.

>  	status =3D "okay";
>  };
> =20
> @@ -692,6 +690,8 @@ &pcie0_ep {
> =20
>  &pcieb_port0 {
>  	reset-gpios =3D <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
> +	vpcie3v3-supply =3D <&reg_pcieb>;
> +	vpcie3v3aux-supply =3D <&reg_pcieb>;

[Severity: High]
Does moving vpcie3v3aux-supply to the Root Port node break Wake-on-PCIe
during system suspend?

By delegating the lifecycle to the generic pci-pwrctrl framework, the
regulator might be turned off during suspend. Looking at the pci-imx6.c
driver, during system suspend dw_pcie_suspend_noirq() delegates to the host
controller's deinit callback imx_pcie_host_exit().

This unconditionally calls pci_pwrctrl_power_off_devices(pci->dev) without
checking pci->pp.skip_pwrctrl_off, unlike other DWC drivers like pcie-qcom.

If the pci-pwrctrl framework takes ownership and turns the regulator off, it
would violate the PCIe hardware requirement to maintain Vaux for Wake-on-PC=
Ie
(PME from D3cold). Can we ensure the auxiliary supply remains active during
suspend events?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630060710.3294=
811-1-sherry.sun@oss.nxp.com?part=3D6

