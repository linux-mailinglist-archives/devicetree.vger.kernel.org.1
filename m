Return-Path: <devicetree+bounces-297157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uE07Hkr0BGoTQwIAu9opvQ
	(envelope-from <devicetree+bounces-297157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:59:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EAA53B350
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:59:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEEF0302D975
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:59:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E773C9895;
	Wed, 13 May 2026 21:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxFMC2WD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550533C9885
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 21:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778709575; cv=none; b=PZs4PC8nN0riWcz6gb6NDs0TsDtGTxOL9dBhRLWyXwFJFzBc+sS+BsrNXPPpa64z+eft3ncmDOb/LdE+6qmdUxApxRVKS+RqNdGvuSIGwrIEc/j4z/rN0NCFxueigry+o+wTmDQwwOLNRvR2GuZaRWWFmEatL8WjZPx0E29EZuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778709575; c=relaxed/simple;
	bh=8B4w43EyE7k0N1hagfOk3xtzZ+5vyH8PSAhe3erd3XI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dvL0S19O7/SH2a6GsFmukszD+yOfymWA2oMRSLEZcPAVKO4LTnZHAmNcSZpkIsjB1WMXCa24fiPJNncKPP95kIKDH8qWUlUS/FDB8OHCSao2NIQvwDMjiaxhB7L+eW0vHDGR1/pODLWXwAaD/JjZp/a3s5l8NVoFRHrm2+3c0vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxFMC2WD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3834C19425;
	Wed, 13 May 2026 21:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778709575;
	bh=8B4w43EyE7k0N1hagfOk3xtzZ+5vyH8PSAhe3erd3XI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=YxFMC2WDPrT74AIIdgYeufk8P/7W8uhoQJYVj6Cmte6B+43PDPiExd07RgpMR4OtH
	 /R8abzxLwWbGPFSysXlo5DuzlJg2EQ4djP7p96HteD11+8ZG9znzoAvbEwijVFzObZ
	 cmg06zd0a27JvrX0vlExR4W1yMb1ojQOsbnAGFaoeynR7Gz7u+ZGGXu56GO1v2PWu7
	 cM+xhEVRwXPFjjblmx6+sX3fH3Dj1rPtuC3IHW7IqWT2lcM6D/p7niV28D89Gs6FZS
	 pByWsRizgtv1gSqqNhiMl2n1+N5KAB6Xm3rdi+4vFqaxsbv/2J/K2enGWwLWemAB2o
	 09rCm41MVjeYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/4] arm64: dts: renesas: add support for solidrun
 rzg2lc som and hb-iiot evb
Reply-To: sashiko-reviews@lists.linux.dev
To: "Josua Mayer" <josua@solid-run.com>
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260512-rzg2-sr-boards-v3-4-f033fc96c906@solid-run.com>
References: <20260512-rzg2-sr-boards-v3-4-f033fc96c906@solid-run.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 21:59:34 +0000
Message-Id: <20260513215934.E3834C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C1EAA53B350
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297157-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[4.13.153.0:email,2.98.90.0:email,3.117.2.128:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Device tree node name collision for sdhi0 pins causes 1.8V overrid=
e for 3.3V state.
- [High] Statically allocated reserved-memory ranges fall outside defined p=
hysical RAM.
- [High] Devicetree configuration contradiction for vmmc GPIO polarity.
--

commit 07693c5c9c5d074ca939a25ad18d8d94023515ac
Author: Josua Mayer <josua@solid-run.com>

arm64: dts: renesas: add support for solidrun rzg2lc som and hb-iiot evb

Add support for the SolidRun RZ/G2LC SoM on Hummingboard IIoT. The RZ/G2LC
SoM was designed to be pin compatible to G2L SoM, with slightly reduced
feature set.

Link: https://www.solid-run.com/embedded-industrial-iot/renesas-rz-family/r=
z-g2lc-som/
Link: https://www.solid-run.com/embedded-industrial-iot/renesas-rz-family/h=
ummingboard-rz-series-sbcs/hummingboard-rz-g2l-iot-sbc/

> diff --git a/arch/arm64/boot/dts/renesas/r9a07g044c2-hummingboard-iiot.dt=
s b/arch/arm64/boot/dts/renesas/r9a07g044c2-hummingboard-iiot.dts
> new file mode 100644
> index 0000000000000..06d9d031cbe91
> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r9a07g044c2-hummingboard-iiot.dts
[ ... ]
> +&vmmc {
> +	gpio =3D <&pinctrl RZG2L_GPIO(18, 1) GPIO_ACTIVE_LOW>;
> +};

In the common file rzg2l-hummingboard-iiot-common.dtsi, vmmc is defined
with the enable-active-high boolean property. Since this overrides the gpio
property to use GPIO_ACTIVE_LOW, does the enable-active-high property need
to be explicitly removed using /delete-property/ enable-active-high;?

According to fixed-regulator bindings, if enable-active-high is present, it
forces the GPIO line to be active high, overriding the GPIO_ACTIVE_LOW flag.
Will this result in the SD power control signal functioning with inverted
polarity and breaking SD card power sequencing?

> diff --git a/arch/arm64/boot/dts/renesas/rzg2lc-sr-som.dtsi b/arch/arm64/=
boot/dts/renesas/rzg2lc-sr-som.dtsi
> new file mode 100644
> index 0000000000000..0505af6926a5e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/rzg2lc-sr-som.dtsi
[ ... ]
> +	reserved-memory {
> +		ranges;
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +
> +		mmp_reserved: linux,multimedia@68000000 {
> +			compatible =3D "shared-dma-pool";
> +			reg =3D <0x0 0x68000000 0x0 0x8000000>;
> +			reusable;
> +		};
> +
> +		global_cma: linux,cma@58000000 {
> +			compatible =3D "shared-dma-pool";
> +			reg =3D <0x0 0x58000000 0x0 0x10000000>;
> +			reusable;
> +			linux,cma-default;
> +		};
> +	};
[ ... ]
> +	memory@40000000 {
> +		reg =3D <0x0 0x40000000 0x0 0x20000000>;
> +		device_type =3D "memory";
> +	};

The standard memory configuration is defined as 512MB ending at 0x60000000.
Do these static reserved-memory ranges fall outside the defined physical
RAM?

The global_cma reservation ends at 0x68000000 and mmp_reserved ends at
0x70000000. Will attempting to reserve and map non-existent physical
memory cause the CMA allocator to fail or the kernel to panic during early
boot on 512MB hardware variants?

Could these use dynamic allocation with alloc-ranges instead of fixed reg
properties, or be resized to fit strictly within the minimum supported RAM
size?

[ ... ]
> +&pinctrl {
[ ... ]
> +	sdhi0_pins: sdhi0 {
> +		pins =3D "SD0_DATA0", "SD0_DATA1", "SD0_DATA2", "SD0_DATA3",
> +		       "SD0_DATA4", "SD0_DATA5", "SD0_DATA6", "SD0_DATA7",
> +		       "SD0_CLK", "SD0_CMD";
> +		power-source =3D <3300>;
> +	};
> +
> +	sdhi0_uhs_pins: sdhi0 {
> +		pins =3D "SD0_DATA0", "SD0_DATA1", "SD0_DATA2", "SD0_DATA3",
> +		       "SD0_DATA4", "SD0_DATA5", "SD0_DATA6", "SD0_DATA7",
> +		       "SD0_CLK", "SD0_CMD";
> +		power-source =3D <1800>;
> +	};

Does this cause a device tree node name collision? Both sdhi0_pins and
sdhi0_uhs_pins define a child node named sdhi0 inside pinctrl.

Because the Device Tree Compiler merges sibling nodes with identical names,
the properties of sdhi0_uhs_pins will overwrite sdhi0_pins. Both phandles
will point to a merged node with power-source =3D <1800>.

Will this break standard 3.3V SD card initialization since the pinctrl
subsystem will configure the default pins for 1.8V instead? Could the UHS
node be renamed to something like sdhi0-uhs to avoid the collision?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512-rzg2-sr-bo=
ards-v3-0-f033fc96c906@solid-run.com?part=3D4

