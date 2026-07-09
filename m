Return-Path: <devicetree+bounces-323293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sb2QE/ggT2rXawIAu9opvQ
	(envelope-from <devicetree+bounces-323293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:18:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9992A72C884
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:17:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IAo3hzza;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323293-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323293-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63DEB300B9D8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 04:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDBC035A393;
	Thu,  9 Jul 2026 04:17:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF7732BF5C
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 04:17:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783570677; cv=none; b=sMokIMVpRoQa/y8CqT7r/9mgN2vTuwg63u2f66uKTgutz7BXL0u4i7jxUWKF+10oaG7mhhFi/SBw9H5s3H6AXdl4niiWL0JNE+mLa2fbwhs0a2cLED1D3tpa4dFWLtVIt0r/yAZ3FUBmdzf3YWyJNf9aWf6ISkxMBGK0CSaPXMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783570677; c=relaxed/simple;
	bh=EQdbxnLjkkurIyh2wdA9JBnmnhNsomIlJP7C6lZpM/8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pvbLJ8M4gKPq3y8pbJLEtK4fyAlUmmCswWJIUfMWXtpwZD7xKkIdQjHIetGYS0NUvEuRQO/wvZqEQiiIGLAm3mHfeGWP0b1CozlzrOlH3ATa9p7z4Q/86slwsovTdBXxE3p+6ICTaifAx2tzX3MWszSLGM6FwP1C2Gnx2TD+/aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAo3hzza; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 094941F000E9;
	Thu,  9 Jul 2026 04:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783570676;
	bh=lM1eaMYUSrYfI4QW+/35Cyvw1WrYOjv85J0CxJ9BXgE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IAo3hzza4g+3AADh2QtfKzmm5U5+wnX+V6t0EdUAnzfVr5XLouD1AkciNrkw8ZUCZ
	 qtZ5ysVaV8NtnkDJ56+wqslNhAw6j/suZvCQooWT//X0XPqXixvTg6qzC+ckRHBsw6
	 Pqpd6xpJJofZPZrl4PjpqbSHc0mUinVQ8CUcbKdYQnVSnPEYSna5BYcFuP8c7tVEQ0
	 D95wv8t/NXGBfh3T16SpGgv/ENErvhxBhHoahAAbBujiiED5uSZELFlVoK701AtXTD
	 xCLLY93Hwhflp/J6DSZWxs1BP+xsP3vnbTsywv3qKeMZySvyhbUSXG7nNFcBSw7nNL
	 HYi/alAz5Tp8A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] riscv: dts: spacemit: k3: Add PCIe device node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709040415.977784-3-inochiama@gmail.com>
References: <20260709040415.977784-1-inochiama@gmail.com>
 <20260709040415.977784-3-inochiama@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 04:17:55 +0000
Message-Id: <20260709041756.094941F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323293-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9992A72C884

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:
- [High] Incorrect and inconsistent PCI I/O space mapping in the ranges pro=
perty.
- [High] PCIe root complex nodes are missing mandatory interrupt properties.
- [High] pcie0_rc requests 4 lanes but only provides 2 PHYs.
- [High] The phys and vpcie3v3-supply properties are incorrectly nested ins=
ide the child nodes.
- [Medium] Undocumented compatible string 'spacemit,k3-pcie' prevents schem=
a validation.
- [Medium] The bus-range property is incorrectly placed on the child PCI-PC=
I bridge node.
--

--- Patch [2]: [PATCH 2/2] riscv: dts: spacemit: k3: Add PCIe device node -=
--
commit d6aabd33ce9c5592fb5dc09875e34a446d2e973d
Author: Inochi Amaoto <inochiama@gmail.com>

riscv: dts: spacemit: k3: Add PCIe device node
   =20
Add all PCIe device node for Spacemit K3.

> diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/bo=
ot/dts/spacemit/k3-pico-itx.dts
> index 2a6d35a64d5ce..1eb5abbc61f97 100644
> --- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> @@ -205,6 +205,44 @@ phy0: phy@1 {
>  	};
>  };
> =20
> +&pcie0_rc {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pcie0_0_cfg>;
> +	num-lanes =3D <4>;
> +	status =3D "okay";
> +
> +	pcie@0 {
> +		vpcie3v3-supply =3D <&reg_aux_vcc3v3>;
> +		phys =3D <&combophy 0 PHY_TYPE_PCIE>,
> +		       <&combophy 1 PHY_TYPE_PCIE>;
> +	};

[Severity: High]
Are there PHY definitions missing here? The pcie0_rc node requests 4 lanes=
=20
(num-lanes =3D <4>) but only provides 2 PHYs in the phys array. This mismat=
ch=20
typically causes controller initialization failures or degraded links.

[Severity: High]
Should the vpcie3v3-supply and phys properties be placed in the parent=20
pcie0_rc node instead of the pcie@0 child node? Standard host controller=20
drivers typically query regulators and phys on the host controller's own=20
device node. If they are nested under the bridge node, the regulator query=
=20
will fail and the slot may not receive power.

[ ... ]

> diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/s=
pacemit/k3.dtsi
> index 82c9e2da82e9f..53cfb2ad48cf7 100644
> --- a/arch/riscv/boot/dts/spacemit/k3.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
> @@ -439,6 +439,201 @@ soc: soc {
>  		dma-noncoherent;
>  		ranges;
> =20
> +		pcie0_rc: pcie@80000000 {
> +			compatible =3D "spacemit,k3-pcie";

[Severity: Medium]
Is there a companion patch that adds the DT binding documentation for=20
spacemit,k3-pcie? Without the schema documentation, dt_binding_check=20
cannot validate constraints and required properties.

[Severity: High]
Does this PCIe root complex node need interrupts, #interrupt-cells, and=20
interrupt-map properties? Without these mandatory interrupt properties,=20
legacy INTx routing, AER, and power management host events will typically=20
fail to function.

> +			reg =3D <0x0 0x80000000 0x0 0x00001000>,
> +			      <0x0 0x80300000 0x0 0x00003f20>,
> +			      <0x11 0x00000000 0x0 0x00010000>,
> +			      <0x0 0x82900000 0x0 0x00001000>,
> +			      <0x0 0x80100000 0x0 0x00001000>;
> +			reg-names =3D "dbi", "atu", "config", "link", "dbi2";
> +			device_type =3D "pci";
> +			#address-cells =3D <3>;
> +			#size-cells =3D <2>;
> +			clocks =3D <&syscon_apmu CLK_APMU_PCIE_PORTA_DBI>,
> +				 <&syscon_apmu CLK_APMU_PCIE_PORTA_MSTE>,
> +				 <&syscon_apmu CLK_APMU_PCIE_PORTA_SLV>;
> +			clock-names =3D "dbi", "mstr", "slv";
> +			msi-parent =3D <&simsic>;
> +			ranges =3D <0x01000000 0x00 0x00010000 0x11 0x00010000 0x0 0x00100000=
>,

[Severity: High]
Is the PCI I/O space child address intentionally mapped to 0x00010000=20
instead of 0x00000000? Legacy PCI endpoints expecting standard I/O BAR=20
behavior might fail since the base address is shifted beyond the typical=20
16-bit legacy I/O boundary.

> +				 <0x02000000 0x0 0x00110000 0x11 0x00110000 0x0 0x7fef0000>,
> +				 <0x43000000 0x18 0x00000000 0x18 0x00000000 0x1 0x00000000>;
> +			resets =3D <&syscon_apmu RESET_APMU_PCIE_A_DBI>,
> +				 <&syscon_apmu RESET_APMU_PCIE_A_MASTER>,
> +				 <&syscon_apmu RESET_APMU_PCIE_A_SLAVE>;
> +			reset-names =3D "dbi", "mstr", "slv";
> +			max-link-speed =3D <3>;
> +			linux,pci-domain =3D <0>;
> +			spacemit,apmu =3D <&syscon_apmu 0x1f0>;
> +			status =3D "disabled";
> +
> +			pcie0_port: pcie@0 {
> +				device_type =3D "pci";
> +				compatible =3D "pciclass,0604";
> +				reg =3D <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range =3D <0x01 0xff>;

[Severity: Medium]
Should the bus-range property be located in the parent pcie0_rc node=20
rather than here in the child PCI-PCI bridge node? The PCI core subsystem=20
relies on bus-range at the host controller level to properly define the=20
decoded buses.

> +				#address-cells =3D <3>;
> +				#size-cells =3D <2>;
> +				ranges;
> +			};
> +		};
> +
> +		pcie1_rc: pcie@80400000 {
> +			compatible =3D "spacemit,k3-pcie";

[ ... ]

> +			ranges =3D <0x01000000 0x0 0x00010000 0x11 0x80010000 0x0 0x00100000>,

[Severity: High]
Does this mapping also have the same offset issue for the child PCI address=
,=20
starting at 0x00010000 instead of 0x00000000?

[ ... ]

> +		pcie3_rc: pcie@80c00000 {
> +			compatible =3D "spacemit,k3-pcie";

[ ... ]

> +			ranges =3D <0x01000000 0x0 0x00010000 0x12 0x80010000 0x0 0x100000>,

[Severity: High]
Similarly, is this child PCI address mapping offset intentionally starting=
=20
at 0x00010000 here as well?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709040415.9777=
84-1-inochiama@gmail.com?part=3D2

