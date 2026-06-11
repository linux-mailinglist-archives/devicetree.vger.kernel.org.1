Return-Path: <devicetree+bounces-310287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vHLXEvR9KmpfrAMAu9opvQ
	(envelope-from <devicetree+bounces-310287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:20:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 94919670584
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:20:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Gmym22m9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310287-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310287-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 264AF33ADC07
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7D4334EF1F;
	Thu, 11 Jun 2026 09:14:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F7C3A254C
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 09:14:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781169258; cv=none; b=tgogHpFo4zmhxanl6HrkxypFJCvk1kl8A5mnjpxmSTQx+bEzVLha3ceUhjcW4z8i/MEf68Pc4EuHy0VBWc6quHu8EW1YmeijwaN9A03MhWRsoEiri504MUb+jD+FC+VKWDldh9QV/D+4O8WcD5M1MGs9iVBIdXGCJfCbf3/MfIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781169258; c=relaxed/simple;
	bh=vkmkoCRxO5KqC+ht0+pUldVDMpevd5JAZIEtNHnWUT8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m4hvx38cbyJa5XbsVPNs/gljCWjXSbXYD4E1H4NgNbgrqHrXSb5/4T/67gzbsltxFg1LeQgS/ZrKurEODD+gYjbeFO3pqxrNhmyCJv687RF0sOZI6Lxa4wUQLpKHo9AQHek9xl0qeBYe0jI/2hI4F+DIpOTRkXMc8MHAgeUmVTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gmym22m9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60AE21F00893;
	Thu, 11 Jun 2026 09:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781169257;
	bh=+uGIkDPBZFKsGsyl6Cp6X6gL4+BnzPI6rQdzDnzCQa0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gmym22m96Dzqj7WX+SEx9ToXrlM46QpMfwriq0d07yopH+A0MW90xC4xyPaI+1uqM
	 DFVi3BPR1BQzot883nfZ12uMlVCrxHVOtGiNYdrgMYWYcxqwySuWfKT/vdAnNMzIIw
	 HnXoM2qFZHMxlG8yyZOl172btUhdzPZ3rHOuH6uXIKUA6r96nkNqWL36yMPjBKhp9R
	 h6kVpru63cxHK1byHTxnBxRxw75070DTbqmseV49h0hL9jWelr0hv6W4s0OSROVSpt
	 qM6TlpMoLWYw4tLDxEpNpjHckAgT8UJvquTIht9AUZI7J1NiXfa8AZG56kRw9QAVux
	 gHWEpKSUKzzVw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2
 BMC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kyle Hsieh" <kylehsieh1995@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260611-ventura2_initial_dts-v7-2-a61d8902bc5f@gmail.com>
References: <20260611-ventura2_initial_dts-v7-2-a61d8902bc5f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 09:14:16 +0000
Message-Id: <20260611091417.60AE21F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310287-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kylehsieh1995@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 94919670584

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Missing `reg` property in flash nodes causes `unit_address_vs_reg` =
Device Tree compiler warnings.
- [Low] Device Tree node names violate naming conventions and will fail `dt=
bs_check` validation.
--

commit 2eeab78b32b1eec6637ab72a9ca3d05a4cfb0f70
Author: Kyle Hsieh <kylehsieh1995@gmail.com>

ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC

This commit introduces the device tree for the Meta Ventura2 Rack
Management Controller (RMC). The system uses an AST2600 BMC for managing
liquid cooling systems, monitoring hardware states, and supports an extensi=
ve
I2C and IO expander topology.

> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-ventura2.dts b/=
arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-ventura2.dts
> new file mode 100644
> index 0000000000000..12fad349e71b4
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-ventura2.dts
> @@ -0,0 +1,2897 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright (c) 2023 Facebook Inc.
> +/dts-v1/;
> +
> +#include "aspeed-g6.dtsi"
> +#include <dt-bindings/i2c/i2c.h>
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +
> +/ {
> +	model =3D "Facebook Ventura2 RMC";
> +	compatible =3D "facebook,ventura2-rmc", "aspeed,ast2600";

[ ... ]

> +	chosen {
> +		stdout-path =3D "serial4:57600n8";
> +	};
> +
> +	fan_leds {
        ^^^^^^^^

[Severity: Low]
Does this node name violate naming conventions? Device tree node names shou=
ld
typically use hyphens instead of underscores (e.g., fan-leds) to pass dtbs_=
check
validation.

> +		compatible =3D "gpio-leds";
> +
> +		led-0 {

[ ... ]

> +&fmc {
> +	status =3D "okay";
> +
> +	flash@0 {
> +		status =3D "okay";
> +		m25p,fast-read;
> +		label =3D "bmc";
> +		spi-max-frequency =3D <50000000>;
> +		#include "openbmc-flash-layout-128.dtsi"
> +	};
> +
> +	flash@1 {
> +		status =3D "okay";
> +		m25p,fast-read;
> +		label =3D "alt-bmc";
> +		spi-max-frequency =3D <50000000>;
> +	};
> +};

[Severity: Low]
Are these flash nodes missing a reg property? Since the parent controller
defines #address-cells =3D <1>, omitting reg for nodes with a unit address
(e.g., flash@0, flash@1) will cause dtc to emit a unit_address_vs_reg warni=
ng.

[ ... ]

> +		i2c4mux0ch1: i2c@1 {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			reg =3D <1>;
> +
> +			temp-sensor@48 {
                        ^^^^^^^^^^^

[Severity: Low]
Is this using a non-standard name? Device tree bindings for temperature sen=
sors
typically expect temperature-sensor@ instead of temp-sensor@ to pass valida=
tion.
This pattern appears here and in the &i2c5 and &i2c10 nodes.

> +				compatible =3D "ti,tmp75";
> +				reg =3D <0x48>;
> +			};

[ ... ]

> +&spi2 {
> +	status =3D "okay";
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_spi2_default &pinctrl_spi2cs1_default>;
> +
> +	flash@0 {
> +		status =3D "okay";
> +		m25p,fast-read;
> +		label =3D "pnor";
> +		spi-max-frequency =3D <12000000>;
> +		spi-tx-bus-width =3D <2>;
> +		spi-rx-bus-width =3D <2>;
> +	};
> +
> +	flash@1 {
> +		status =3D "okay";
> +		m25p,fast-read;
> +		label =3D "e810";
> +		spi-max-frequency =3D <12000000>;
> +		spi-tx-bus-width =3D <2>;
> +		spi-rx-bus-width =3D <2>;
> +	};
> +};

[Severity: Low]
Are the flash nodes under spi2 missing a reg property as well? Just like
the fmc controller, nodes with unit addresses should include matching reg
properties.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-ventura2_i=
nitial_dts-v7-0-a61d8902bc5f@gmail.com?part=3D2

