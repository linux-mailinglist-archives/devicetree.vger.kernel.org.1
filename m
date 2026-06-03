Return-Path: <devicetree+bounces-305973-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XNgzBjXEH2qYpgAAu9opvQ
	(envelope-from <devicetree+bounces-305973-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 08:05:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6709163481D
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 08:05:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=D9KyRGSn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305973-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305973-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43FDB300D954
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 06:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A153F58E9;
	Wed,  3 Jun 2026 06:04:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0453ED5BE
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 06:04:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780466670; cv=none; b=iDKL42jt65mF4N/N4kInkKK5cqUkfV+lBhkp6Fjcc23IIelHMIJ62TS0gEdZ0q/xIxnOVDsZQaxfdm6kbDrlG33cpz6hSvb6quS1RQdV6pN3XOZeEU9iNgxMu3jT8zO1aTviEau6Bv20MQwsBdTzvdZ/wHoaxJ33QTA/aiH+N00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780466670; c=relaxed/simple;
	bh=Txx0m0u/wIQ2Eb11pzACye+GWqNgGbdzXmkuYuJw1vE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BNK44DX5/55rBNtwugZ1A3WGMi8qWhDiBP5CErXi1czd11EYPN+aBCrPkKTywQ5SaLdOipU9aRPAnPh9vP2kHdPtzOjl0A9TR/ecoXhPppXsCgUfXy1IFdqrbuyhnAqk9AkSb5rzNoxadyrXJMYeRN63nVzQ9PdY0AL3BT97SsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9KyRGSn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6368A1F00898;
	Wed,  3 Jun 2026 06:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780466668;
	bh=KYTllQXUj2SscBlwr48WhRn92uq5ux2V65wcmEsrFLc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D9KyRGSnj1ZwdHMszQf26N8Jcq8+JZhMni0gT7Psaz2zmY6p/cf97jeSj+fNcyNwc
	 H6TLDrNYvy5loqGFCXO2qXCrTvf8tSevXmHvtHDWeCBCc8gzuAK08/ZP3qoQBrrcBv
	 /75tQ4vc63NmkdgT4NsJcHmpT9MlbP/BsQS5s/HP1I/PU9y/0lpPp/qxPsFLveZimj
	 QVXWrzfhT9a7ZY+lW3lo+t+/8pwzGyG4BGo/b9PYfMGiAdiXOOE9l1YqPSoqv1IoWj
	 QpmMA0Y1O6roEWd1qw/6PIKur8F8Ao/3Em9/ItewS/nlirbFywQgkgLRmWeX4Lua7e
	 KG25G9G4vockQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v31 1/5] dt-bindings: i2c: Split AST2600 binding into a
 new YAML
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ryan Chen" <ryan_chen@aspeedtech.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260603-upstream_i2c-v31-1-ba7a02714f22@aspeedtech.com>
References: <20260603-upstream_i2c-v31-1-ba7a02714f22@aspeedtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 06:04:27 +0000
Message-Id: <20260603060428.6368A1F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305973-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ryan_chen@aspeedtech.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6709163481D

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The dt-binding YAML example uses incorrect clock and reset defin=
itions for the AST2600 SoC, which maps the I2C controller to the wrong hard=
ware lines.
- [Medium] The newly introduced AST2600 I2C binding schema file is not regi=
stered in the MAINTAINERS file under the ASPEED I2C CONTROLLER DRIVER secti=
on.
--

commit ac52f88742bbf18c3be4d1bbc7f7a9f7bd2850ae
Author: Ryan Chen <ryan_chen@aspeedtech.com>

dt-bindings: i2c: Split AST2600 binding into a new YAML

The AST2600 I2C controller introduces a completely new register layout
with separate controller and target register blocks. This commit moves
the AST2600 I2C binding into a dedicated aspeed,ast2600-i2c.yaml schema
and adjusts for AST2600-specific requirements.

[Severity: Medium]
This patch splits out a new file but misses adding it to the maintainer
index.

MAINTAINERS:
ARM/ASPEED I2C DRIVER
...
F:	Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml

Since there is no wildcard covering the directory, will get_maintainer.pl
fail to match aspeed,ast2600-i2c.yaml to the ASPEED I2C maintainers?
This regression means the primary maintainers might not be automatically
copied on future patches modifying these bindings.

> diff --git a/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yam=
l b/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml
> new file mode 100644
> index 0000000000000..abc614315dffb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    i2c@80 {
> +        compatible =3D "aspeed,ast2600-i2c-bus";
> +        reg =3D <0x80 0x80>, <0xc00 0x20>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        clocks =3D <&syscon ASPEED_CLK_APB>;
> +        resets =3D <&syscon ASPEED_RESET_I2C>;

[Severity: Medium]
Are these the correct clock and reset definitions for the AST2600 SoC?

The example includes the legacy <dt-bindings/clock/aspeed-clock.h> header
where ASPEED_CLK_APB evaluates to 26 and ASPEED_RESET_I2C evaluates to 7.

For the AST2600 hardware, clock index 26 maps to ASPEED_CLK_GATE_UART5CLK
and the correct I2C reset index is 34.

If this example is copied into an AST2600 device tree, will the driver
toggle the UART5 clock gate and the wrong reset line? This regression could
cause the I2C bus to fail initialization and disrupt UART5 operations.

Should this use <dt-bindings/clock/ast2600-clock.h> instead?

> +        clock-frequency =3D <100000>;
> +        interrupts =3D <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603-upstream_i=
2c-v31-0-ba7a02714f22@aspeedtech.com?part=3D1

