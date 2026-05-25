Return-Path: <devicetree+bounces-302570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FlbJg8iFGpjKAcAu9opvQ
	(envelope-from <devicetree+bounces-302570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:18:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F6E5C92EB
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED287301301A
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 10:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A985C34BA24;
	Mon, 25 May 2026 10:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKSGEK6J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37075340281
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 10:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779704205; cv=none; b=fdxzK/SWG37NLCL/vZ65iaPQR/cDs7RfmtqqpIa9VRhw9cM0DwtRuaVCplQhkTsSLHKmiJtkCn83InYTz77YGTPMAqiB4LHjKeBZE+ZfLayepq72g2eMgwH8+gAOFZdGp+ZCgOH+txcdY8o2qr+Rqy7hffNwZ2SBIUXpwGduPzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779704205; c=relaxed/simple;
	bh=huuOY4OFqIjYbYjf/1WxZ6zSArs/nHkHfP5r8GFMDbU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ntMrjSLm/w9DS5YCq3vbZkLfGa2SJ81GoeSvF7DpIBaMfAAIhsPobFVBl3WlYj+Up+3uSpdyfAAReS2QMdFqm6io5T4NEGo4coW1yTRZV51DQetA9lPfqXoq8C85WkUrMWFdNlvZckC3bKdTK7kOy8jaiwgfO2mlBOTzM/hLhOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKSGEK6J; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 710831F000E9;
	Mon, 25 May 2026 10:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779704202;
	bh=GFS/qRTLADfhdjtvoHOTp3K6ugbLQhgrl3j60MV8QTs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oKSGEK6JI+ld5PUDhhwEZZ/d1bCaKQBnG0GWe9Zn6NF70Vt1YTu36YVzWvskoiUK0
	 lAtxOGRjxtfGBX3n6arOstwaQ2FUFWIgfkfIcZMMLl18/V4gkF2tc2d9FvbBKbppY3
	 sF58D9eWESAjHolD8PLi9AxuHk21FpPFtFcS3jlOEnfFOS/9KRVYCJK0mCA7qle3Yi
	 HypEE4LomTKNBV1ZZvJfkRdAL/9vnW+90hJY0IqsyysYv0rULVys7WdV2vXO0RGz7t
	 jDnUgjjK3p8Np1yB89zTr75RVpes+2dNOZk560HauIqnX0X47UIkM8HcrXK6XN9jjQ
	 CyJ70q9jQvxNw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 1/6] dt-bindings: iio: adc: add AD4691 family
Reply-To: sashiko-reviews@lists.linux.dev
To: "Radu Sabau via B4 Relay" <devnull+radu.sabau.analog.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260525-ad4692-multichannel-sar-adc-driver-v13-1-1b7626d3b35c@analog.com>
References: <20260525-ad4692-multichannel-sar-adc-driver-v13-1-1b7626d3b35c@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 10:16:42 +0000
Message-Id: <20260525101642.710831F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302570-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,radu.sabau.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 13F6E5C92EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The binding introduces GPIO controller capabilities (`gpio-contr=
oller` and `#gpio-cells`) but fails to include them in the `required` list =
and omits them from the `examples` section.
--

commit 77c288f18d0b66cc82083af2dbedfa800cf9c577
Author: Radu Sabau <radu.sabau@analog.com>

dt-bindings: iio: adc: add AD4691 family

Add DT bindings for the Analog Devices AD4691 family of multichannel
SAR ADCs (AD4691, AD4692, AD4693, AD4694).

> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml
> new file mode 100644
> index 0000000000000..af28a0c1cfa9e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4691.yaml

[ ... ]

> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    const: 2
> +
> +  '#trigger-source-cells':
> +    description:
> +      This node can act as a trigger source. The single cell in a consum=
er
> +      reference specifies the GP pin number (0-3) used as the trigger ou=
tput.
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - avdd-supply
> +  - vio-supply

[Severity: Medium]
Since this binding introduces GPIO controller capabilities, should
gpio-controller and #gpio-cells be added to this required list?

Without these properties in the required list, incomplete device tree nodes
missing the GPIO provider capabilities can pass schema validation.

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

[Severity: Medium]
Are the GPIO controller properties missing from this example?

Including gpio-controller and #gpio-cells ensures the example passes
dt_binding_check validation once they are made required properties.

> +        };
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525-ad4692-mul=
tichannel-sar-adc-driver-v13-0-1b7626d3b35c@analog.com?part=3D1

