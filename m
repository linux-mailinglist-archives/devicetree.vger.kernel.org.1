Return-Path: <devicetree+bounces-304749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Om0Nu8xG2qkAAkAu9opvQ
	(envelope-from <devicetree+bounces-304749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 20:52:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4226E612ADB
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 20:52:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6528230F863E
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 18:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8663F3C37B3;
	Sat, 30 May 2026 18:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLU3tdyy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C990331A56
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 18:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780166523; cv=none; b=njt4nxQs6uL35t8fev861V8tmLHp76g18F5I/ARjpiUVRI7ttvpAhuYrkiNGnbKZwDMMjxQBlbTuE7hoNdS5Q3LEr7rkGoZaEABRr9PCJR7OJpmz+DZVL+Mfl62NQlT8g0gBjSevxazGW5ONMXq9AhV45LmbN1lNWubQzZz38QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780166523; c=relaxed/simple;
	bh=uqMt0BL8hUn7SlZc5CCtcg/dzASYHoQbNXxZ2zg7/eM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ECETeHFtONaJrfytU7sCV7ndDaWbUqJHpVELlp9cl6RcpVuwP6BKq0O5YLvzaYS/xtaAAMd42S4CYpTUlpLw2nEBLIr2N2Ji2yXt8A/yd088eyC0m26KkX0mzL7dpz2hwk1nLImuMVKU372EzSSwKbQO+DEdEq5B7NHsz3GhUkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLU3tdyy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 676F61F00898;
	Sat, 30 May 2026 18:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780166521;
	bh=XmIm0NbaAQZuHR3sT3lyRolzOqJpfR5Md7ZdZoDVre4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CLU3tdyyP7hRaQF5R1BAehaJpWA1ddAi3FpgS33I5NCse5eoOvWSx1G3fC5An1J9h
	 cFkkFjfQK7PAJKJxtIUml8ht+5veyG23sgfp3BY6BuTacPFYiCfgT2t03tiSqenBQ9
	 xQSlsye0qe7NRibQXajOUSLXlfj0O7R2VD7GN9Ifde0DSIX6DnJNf+fxoYDHoXpW5O
	 G/qWDaChAbkvhLSGEgEHGxWBGSGuvJmUetlujsSjapEbhGp4yQQbGo5U3iPcMYo44Z
	 MnSCI+UNz97gkJykokiVe71alf0QW23y+YSqGX+Il2wfkjbv+MeMQ1paLPljRBMiI0
	 OQA0RZLfIV9qQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 13/14] dt-bindings: net: add onsemi's S2500
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal" <Selvamani.Rajagopal@onsemi.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <CY8PR02MB92494D02A1209BC9BC72EAC883162@CY8PR02MB9249.namprd02.prod.outlook.com>
References: <CY8PR02MB92494D02A1209BC9BC72EAC883162@CY8PR02MB9249.namprd02.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 18:41:59 +0000
Message-Id: <20260530184200.676F61F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304749-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Queue-Id: 4226E612ADB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing `spi-max-frequency` in the device tree binding propertie=
s, required list, and example for an SPI peripheral.
--

commit ad5dbf88af08e186c5df6e55d01443c7fc4840ab
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

dt-bindings: net: add onsemi's S2500

Add YAML device tree binding for the onsemi S2500 IEEE 802.3cg
compliant Ethernet transceiver device.

> diff --git a/Documentation/devicetree/bindings/net/onnn,s2500.yaml b/Docu=
mentation/devicetree/bindings/net/onnn,s2500.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/onnn,s2500.yaml
[ ... ]
> +properties:
> +  compatible:
> +    const: onnn,s2500
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      Interrupt from MAC-PHY asserted in the event of Receive Chunks
> +      Available, Transmit Chunk Credits Available and Extended Status
> +      Event.
> +    maxItems: 1

[Severity: Medium]
Since this is an SPI peripheral, should spi-max-frequency be defined in the
properties section with device-specific maximum frequency constraints?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts

[Severity: Medium]
Would it be appropriate to add spi-max-frequency to this required list?
Omitting it allows incomplete device tree nodes to pass schema validation,
even though the SPI host controller needs it to configure the bus clock
speed.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    spi {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      ethernet@0 {
> +        compatible =3D "onnn,s2500";
> +        reg =3D <0>;
> +        pinctrl-names =3D "default";
> +        pinctrl-0 =3D <&eth0_pins>;
> +        interrupt-parent =3D <&gpio>;
> +        interrupts =3D <25 IRQ_TYPE_LEVEL_LOW>;

[Severity: Medium]
Is spi-max-frequency missing from this example? If developers copy this node
configuration, could it fail to configure the SPI host properly at runtime
without the max frequency property?

> +      };
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/CY8PR02MB92494D02A1=
209BC9BC72EAC883162@CY8PR02MB9249.namprd02.prod.outlook.com?part=3D13

