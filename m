Return-Path: <devicetree+bounces-303502-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBKwLn0XF2px3wcAu9opvQ
	(envelope-from <devicetree+bounces-303502-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 18:10:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1303E5E77FD
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 18:10:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 047BC307830C
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 16:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9848937F721;
	Wed, 27 May 2026 16:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3b8UrCT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6417437DE83
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 16:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779897799; cv=none; b=Bd13XKTYsOjyKdcFqVlcDmdlwm8igxgj/AzP1dW0hbpbO984OQjTtiDp9qK4sr7st109WMrrLfjWXSarXnsZ6oLNtCWvyaN86GU8X97gFXD0bgiv3xRUA7nHYCl7yVyf9QQqRG4PDcICZV+3Q2+VeBWN2VFLq+eqfGLoAbFJPD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779897799; c=relaxed/simple;
	bh=U8a/4AjcgUUEbnLVXvOrDSZheBCAWWxCfaXjMpnSpLI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YAgQ/jVYsLI5qqoI50KpJVTSA0PB7qNp0/xVst16hkbZpC57lQgc6IWviu7sHZqR5vNrhMsZ4+30aOShATxcGmaLHwtpnO6xHflJV1wpFQbGSFCsC7XE/FfzYRKk1Uf6IC3F4t7Ut95WW9pUKx194RWomAWRsIIzZCeDL6eb1OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3b8UrCT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1075E1F000E9;
	Wed, 27 May 2026 16:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779897798;
	bh=Hc/E+mFaCWmSZ6TNBGt3lnXd5BiqwA16BeqXQpBZSwc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b3b8UrCTFw73N5v9MNS5fNO14oVBEx5ATu/cymk66iw3Rd9lJL4L1IHBEJGhfHA3v
	 o6WoneKLbHsMngGuMOAkFaJuCeOc1gNNL69vfVaK8UJ8+0zUyN29N0jKWQW77i3pLJ
	 s1PJgSV6yiXdc/c4+rYXuIXRB5nX+1DNxfTqt9FgzsWEG/Vls6czOPHUPeB3nOvywE
	 FHwSvXIaDX6OvjOwOhIAV4yUR92s9IIKrjnb1unuEjjmx5yYO7OGT2bOjmtZlXU/ee
	 eGew8uTgUbO8X3w01F8ppnZR4/VUdEh+3jvjFBnJxMaP6d50SBUyuOE5TnocUop6yQ
	 g4RggvdMq+vtQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: popuplate reset property
 for I3C and NAND
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dinh Nguyen" <dinguyen@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260527151239.55650-1-dinguyen@kernel.org>
References: <20260527151239.55650-1-dinguyen@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 16:03:17 +0000
Message-Id: <20260527160318.1075E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303502-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,10b80000:email]
X-Rspamd-Queue-Id: 1303E5E77FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Missing `reset-names` property causes the `dw-i3c-master` driver t=
o silently fail to deassert the I3C resets.
- [Medium] The Cadence NAND driver lacks reset subsystem integration, rende=
ring the new `resets` property ineffective.
- [Medium] Adding the `resets` property violates the `snps,dw-i3c-master` a=
nd `cdns,hp-nfc` DT bindings, causing `dtbs_check` validation errors.
--

commit 8dcedebea5fbdeab502fe0008a7be9fe724b28a3
Author: Dinh Nguyen <dinguyen@kernel.org>

arm64: dts: socfpga: agilex5: popuplate reset property for I3C and NAND

This commit adds the resets property to the I3C and NAND nodes for Agilex5.
The goal is to provide the necessary properties to bring the IP blocks out
of reset.

> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/=
boot/dts/intel/socfpga_agilex5.dtsi
> index 02e62d954e949..7fc75b439925c 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> @@ -244,6 +244,7 @@ i3c0: i3c@10da0000 {
>  			reg =3D <0x10da0000 0x1000>;
>  			#address-cells =3D <3>;
>  			#size-cells =3D <0>;
> +			resets =3D <&rst I3C0_RESET>;

[Severity: Medium]
Will this cause dtbs_check validation errors?

The resets property is currently undefined in the dt-binding schema for the
Synopsys DesignWare I3C master:

Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml

Since the schema enforces unevaluatedProperties: false, adding this property
without updating the YAML binding will result in compilation warnings.

[Severity: High]
Does the dw-i3c-master driver require a corresponding reset-names property
to function correctly?

Looking at the driver implementation, it explicitly requests the reset line
by name:

drivers/i3c/master/dw-i3c-master.c:
    devm_reset_control_get_optional_exclusive_deasserted(&pdev->dev,
                                                         "core_rst");

If reset-names =3D "core_rst" is missing from the device tree node, the loo=
kup
fails. Because the driver uses the optional API variant, it silently returns
NULL, and the IP block will not be brought out of reset.

[ ... ]

> @@ -313,6 +315,7 @@ nand: nand-controller@10b80000 {
>  			cdns,board-delay-ps =3D <4830>;
>  			iommus =3D <&smmu 4>;
>  			dma-coherent;
> +			resets =3D <&rst NAND_RESET>;

[Severity: Medium]
Is this property supported by the Cadence NAND dt-bindings?

Similar to the I3C master, the cdns,hp-nfc YAML schema enforces
unevaluatedProperties: false but does not define a resets property.

Documentation/devicetree/bindings/mtd/cdns,hp-nfc.yaml

[Severity: Medium]
Does the Cadence NAND driver actually consume this reset property?

The driver code does not currently appear to contain any logic to acquire
or deassert a reset control:

drivers/mtd/nand/raw/cadence-nand-controller.c

Since it never calls a function like devm_reset_control_get(), the NAND IP
will remain in reset until the driver implementation is updated.

>  			status =3D "disabled";
>  		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527151239.5565=
0-1-dinguyen@kernel.org?part=3D1

