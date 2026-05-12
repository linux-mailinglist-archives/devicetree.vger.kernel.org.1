Return-Path: <devicetree+bounces-295942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEofMEGRAmpJugEAu9opvQ
	(envelope-from <devicetree+bounces-295942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:32:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3661F518F73
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F5AF301D338
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 02:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A996E332EBC;
	Tue, 12 May 2026 02:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPQvzqGH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868AB383304
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 02:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778553151; cv=none; b=Nd4BEphb/BgVwGwF2Qnj7tOAv6jdbZYsUnyj9DuWF81sIZPg9hcRmoBg3JltB4GvS0XD5MBtKuq/xKCbPQpjIcFNlSOCXgm6I3BMuKZwSJAHSC3duc2r0WXT90XrvMwAZVWyELMQwz/eQK+lfBP/i6xLDlfjF8xWt5wC+t1Dcow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778553151; c=relaxed/simple;
	bh=9lO1GdQ3GklBIKqVsoyyCxeY+dEFqsn8ClCInidKweU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HIo7Zm5cPUufp1O1kIqql4YJeBgAZP5VoGMEWEZgOL0Ryjx2gsm1yt4J7WAROfEYUukT2+gnxEiPImCzwBP5/hHO6S8NOhg3/FIq7nmVbxj72tmHC6d0Wiru2SFqOncLLdnOAKhjmNfwWrlcem/D/FwhgaGQpLh8aFBaow9Aa78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPQvzqGH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E220CC2BCB0;
	Tue, 12 May 2026 02:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778553151;
	bh=9lO1GdQ3GklBIKqVsoyyCxeY+dEFqsn8ClCInidKweU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=fPQvzqGHlPJRR+/KWSiVK9Fwr366qKqxKzNuPHehE52dT0Qg5XWo/wyYXeIVs3vYr
	 AoLKPDmBZdg6qm8bagbvFyoJs4mI/S6HZN22aYHRpcrkmFc+TKyYmvSOHXLlhFapNl
	 DeRiY9K5uNzQZ9GXtWGaIwqenRuDhgXdt7w+V6Q8wc2PZ5I+d9c5qoULgoWrAwmNBY
	 51Nh0rqvFNHCRThBuMSSXURxkh8BvVUtg6ZwZOde7HiVRvlvbRmeT2q4LUeok7IivD
	 moBpE2uA1SFsCBFd11WM5PJyATt3ejJcs31hTbjdI8KRAl4pk/Nydz7cX/dkVlhIuc
	 /r5ureaipN7Rg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 1/6] dt-bindings: iio: adc: add AD4691 family
Reply-To: sashiko@lists.linux.dev
To: "Radu Sabau via B4 Relay" <devnull+radu.sabau.analog.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511-ad4692-multichannel-sar-adc-driver-v10-1-e1fbb1744e38@analog.com>
References: <20260511-ad4692-multichannel-sar-adc-driver-v10-1-e1fbb1744e38@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 02:32:30 +0000
Message-Id: <20260512023230.E220CC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3661F518F73
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,analog.com:email];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295942-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,radu.sabau.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The AD4691 binding introduces GPIO provider capabilities (`gpio-=
controller`, `#gpio-cells`) but fails to list them as required properties a=
nd omits them from the examples.
--

commit 3d6e918750431cd1fe37b615bc0436f12070ffa3
Author: Radu Sabau <radu.sabau@analog.com>

dt-bindings: iio: adc: add AD4691 family

This commit adds Device Tree bindings for the Analog Devices AD4691 family
of multichannel SAR ADCs. It describes the hardware connections, including
power domains, PWM, reset GPIO, and interrupt configurations.

> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml
> new file mode 100644
> index 0000000000000..af28a0c1cfa9e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - avdd-supply
> +  - vio-supply

Should gpio-controller and #gpio-cells be added to this required list?

The binding introduces GPIO provider capabilities, but these properties
are not marked as required. Subsystem guidelines indicate that when
hardware acts as a provider, the corresponding standard properties must
be included in the required list to ensure complete device tree nodes.

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    /* AD4692 in CNV Burst Mode with SPI offload */
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        adc@0 {
> +            compatible =3D "adi,ad4692";
> +            reg =3D <0>;
> +            spi-cpol;
> +            spi-cpha;
> +            spi-max-frequency =3D <40000000>;
> +
> +            avdd-supply =3D <&avdd_supply>;
> +            ldo-in-supply =3D <&avdd_supply>;
> +            vio-supply =3D <&vio_supply>;
> +            ref-supply =3D <&ref_5v>;
> +
> +            reset-gpios =3D <&gpio0 15 GPIO_ACTIVE_LOW>;
> +
> +            pwms =3D <&pwm_gen 0 0>;
> +
> +            #trigger-source-cells =3D <1>;

Are the gpio-controller and #gpio-cells properties missing from this exampl=
e?

The subsystem guidelines state that the examples section must include all
required properties to pass dt_binding_check.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-ad4692-mul=
tichannel-sar-adc-driver-v10-0-e1fbb1744e38@analog.com?part=3D1

