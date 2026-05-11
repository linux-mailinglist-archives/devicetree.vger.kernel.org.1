Return-Path: <devicetree+bounces-295813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIe0CX1JAmqoqAEAu9opvQ
	(envelope-from <devicetree+bounces-295813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:26:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BE981516461
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B7953015865
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1776E4D8D8E;
	Mon, 11 May 2026 21:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qt+aj8G+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C81381B19
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 21:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778534779; cv=none; b=m0zUhP3LqKCc23VzWQjoHhyDnTu1Blm5hPGOt7fqC/JmA8XvnxqdEZP1kwnXVXofL5A57bgnwpBJDl+Gtn6H9MV2Um1RPY6lug28yqqT3DoF4kU6JCA8feMqdCJRSLOS66HpN3oMB/cBfHIAhuKSQeBUTvYO9Bch0gnAnVXzSL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778534779; c=relaxed/simple;
	bh=+WM3WWLTotRNuVqCvUpBtpIQ8cLiCDD9jtXCfUdQf3s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TEA/UCB8W7YEoWfaDsXrHPRmSn/KsrkNzw7Ibo4aHdKU6ug1MTE5BXC+ZdyJd4PRDBPxxE8lBteIAoRvUbQOSWQ+yctyb2pUY5QO7dt/Dg33q6BsXCjyqJuU9wnN8LhVvl/DpnwpJI6eJMJBrOHcPF2rhSu+gjLwS+KrgvediIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qt+aj8G+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54424C2BCB0;
	Mon, 11 May 2026 21:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778534778;
	bh=+WM3WWLTotRNuVqCvUpBtpIQ8cLiCDD9jtXCfUdQf3s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Qt+aj8G+GJh/7ix8Lu6Nuh6wLcVxoAwkk8Br5vORq7tOBhxCVqNg0oxdf7TPjQiW5
	 qJNqcKrhjzGDySbymweYrJrpwPhJkRtsbi0g9YbEO9PPI7WwlGEQe5JFpdSqYwU6b+
	 upr/Z5BGAksj3yhM6G22dwsDn4B462zD3/YCY7p3DOZKWBow/aUD3ge16WVM2/QvrA
	 fJpMBLtjvg41AF7Kd67qyFqhitIgphccbsoT1XHhilzHrl35J/6GtPZtm5vXP3AR4P
	 K8AMf4ghR7qzSYalaplq+gpvqM6kwLP1HYjaolJ/H4k4B11piOaU8XSMd7hvbThYmr
	 USPTtn5JYWUsg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: regulator: add SGMicro SGM3804
Reply-To: sashiko@lists.linux.dev
To: "Alexandre Hamamdjian via B4 Relay" <devnull+azkali.limited.gmail.com@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260510-sgm3804-v1-1-e5e8799e0aa0@gmail.com>
References: <20260510-sgm3804-v1-1-e5e8799e0aa0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 21:26:17 +0000
Message-Id: <20260511212618.54424C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: BE981516461
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,3e:email];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295813-lists,devicetree=lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,azkali.limited.gmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The DT binding incorrectly models a dual-output regulator (positiv=
e and negative) as a single top-level regulator node, preventing independen=
t configuration and referencing of the two outputs.
--

commit db24a4c2f2c96be5ccf7d7d19de93b27ab20e291
Author: Alexandre Hamamdjian <azkali.limited@gmail.com>

dt-bindings: regulator: add SGMicro SGM3804

This commit introduces the device tree binding for the SGMicro SGM3804,
an I2C-controlled charge-pump regulator providing positive and negative
outputs. It also adds the corresponding MAINTAINERS entry.

> diff --git a/Documentation/devicetree/bindings/regulator/sgmicro,sgm3804.=
yaml b/Documentation/devicetree/bindings/regulator/sgmicro,sgm3804.yaml
> new file mode 100644
> index 0000000000000..f1de17bd5395a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/sgmicro,sgm3804.yaml
> @@ -0,0 +1,60 @@

[ ... ]

> +description:
> +  The SGM3804 is an I2C-controlled positive and negative output charge-p=
ump
> +  regulator typically used to provide the AVDD and AVEE supplies for dis=
play
> +  panels. Two reset GPIOs are used to sequence the positive and negative
> +  outputs independently.
> +
> +allOf:
> +  - $ref: regulator.yaml#

Does this binding correctly model the hardware's dual-output nature?

By applying regulator.yaml# directly to the parent I2C device node without
defining subnodes for the individual outputs, the entire device is treated
as a single regulator.

Since standard properties like regulator-name and regulator-min-microvolt
can only be specified once per node, how can consumers independently config=
ure
or reference the negative rail (AVEE) via phandles?

Should this device be modeled using child subnodes for the outputs (for
example, using patternProperties for outp and outn)?

[ ... ]

> +  reset-gpios:
> +    minItems: 1
> +    maxItems: 2
> +    description:
> +      Reset/enable GPIOs for the positive (index 0) and, optionally, the
> +      negative (index 1) output rails.

If child subnodes are introduced for the positive and negative regulators,
would it be more standard to place an enable-gpios property within each
individual regulator subnode instead of using a shared reset-gpios array on
the parent node?

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        regulator@3e {
> +            compatible =3D "sgmicro,sgm3804";
> +            reg =3D <0x3e>;
> +            reset-gpios =3D <&tlmm 10 GPIO_ACTIVE_HIGH>,
> +                          <&tlmm 11 GPIO_ACTIVE_HIGH>;
> +            regulator-name =3D "panel-avdd";
> +            regulator-min-microvolt =3D <5000000>;
> +            regulator-max-microvolt =3D <5000000>;
> +        };
> +    };

The example demonstrates this limitation, as it only configures constraints
for panel-avdd.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510-sgm3804-v1=
-0-e5e8799e0aa0@gmail.com?part=3D1

