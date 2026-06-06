Return-Path: <devicetree+bounces-307566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ougXF71xI2obuAEAu9opvQ
	(envelope-from <devicetree+bounces-307566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:02:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AF264C133
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:02:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=laP29AlN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307566-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307566-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B9926303580E
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 01:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2881D23A564;
	Sat,  6 Jun 2026 01:01:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3223233950;
	Sat,  6 Jun 2026 01:01:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780707686; cv=none; b=BTONjuUQNAiUVNj6GuBdmbMbMAHyTPT+HbJAzdJvs1jMM2woUR/oYikRPAxUOAJ9ytARDMVJgp151ayhrwnaVI1dyzhwySDB8CY2n2uLyHSyQ/fzpD5TWKyT3jpccZ+PbuUEZWkInVDKrbBypgUYoeugUBAYhW9cN4yyTPVfrY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780707686; c=relaxed/simple;
	bh=sCgGa3h6oJQbzDMULG5il6M4SxyEBIKz1L22Yc7YIhc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=M5pGerMP41eiSfzIGTV4P6htUqtVfSlbuOQuYPvIUC3dA3OypcEjR+uSgLT7d03Cs6Pzu/ocEVNEW5FOKWw1gdEs3TCgLvQHAto5L2OmWxdyUKNzS3lYf9vF6282J6sbdcoi2cvdnjU+/BWRKcfRfjtZyC/wmIHH+2MBmthh0oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laP29AlN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7878F1F00899;
	Sat,  6 Jun 2026 01:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780707684;
	bh=2hJLK06CussSPw+chVf931RMNhxIWQ61cw6PGJRHYPM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=laP29AlNeuOcsYG2KwWgRbBGU4vcRZhR6IcAKOYcTih79Z/bigw9V3YZPjfKHnfXm
	 CokkVv62FC5hF600oXoopkvoWm023aKVXG9Oa6dgH0HYth+aneFGp3ieVV7PlQm9UR
	 hIY0j38wkZ5HIdgw8GnQLrAyOARPtsdi2W+j5HQQ7CgND1V3NeMv+eGpsOC6wFwMLy
	 7sGdPqbjnYvCLvlXjNYltBbODs9c+TIBuhniXnogM3RnPSU31fspI5uDZCdAZk7+4r
	 XJ7/5XDhPLHSVxYhEAxq/DSMbmDuZx1INblO5wZg9fMrpg0+bRnBECgUTr6lWqwV0J
	 Z1M26/7f58epg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 10/14] dt-bindings: net:
 toshiba,tc9654-dwmac: add TC9564 Ethernet bridge
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alex Elder" <elder@riscstar.com>
Cc: bpf@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605010022.968612-11-elder@riscstar.com>
References: <20260605010022.968612-11-elder@riscstar.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 01:01:24 +0000
Message-Id: <20260606010124.7878F1F00899@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,riscstar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,get_maintainer.pl:url];
	TAGGED_FROM(0.00)[bounces-307566-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:elder@riscstar.com,m:bpf@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9AF264C133

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The DT binding schema for the embedded GPIO controller lacks req=
uired provider properties and constraints.
- [Medium] The schema incorrectly includes PCI bus properties (`device_type=
 =3D "pci"`, `ranges`, `#address-cells`) on a PCIe endpoint node.
- [Low] The file pattern listed in the new MAINTAINERS entry does not match=
 the actual file added by the commit.
--

commit b83533ab8022940a0adcc430e19c789576b6a45b
Author: Daniel Thompson <daniel@riscstar.com>

dt-bindings: net: toshiba,tc9654-dwmac: add TC9564 Ethernet bridge

Add devicetree bindings for the Toshiba TC956x family of Ethernet-AVB/TSN
bridges. The TC9564 contains a PCIe switch with an attached embedded PCIe
endpoint implementing two PCIe functions, each with an Ethernet interface
and an embedded GPIO controller.

> diff --git a/Documentation/devicetree/bindings/net/toshiba,tc9564-dwmac.y=
aml b/Documentation/devicetree/bindings/net/toshiba,tc9564-dwmac.yaml
> new file mode 100644
> index 0000000000000..6e7a63dfcf86a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/toshiba,tc9564-dwmac.yaml
> @@ -0,0 +1,120 @@

[ ... ]

> +properties:
> +  compatible:
> +    enum:
> +      - pci1179,0220 # Toshiba TC9564 (a.k.a. Qualcomm QPS615)
> +
> +  gpio:
> +    type: object
> +    description: Embedded GPIO controller
> +    $ref: /schemas/gpio/gpio.yaml#

[Severity: Medium]
When adding a hardware capability like a GPIO controller, should the schema
explicitly list standard properties like gpio-controller and #gpio-cells
in the required list?

Also, would it make sense to enforce a const constraint for #gpio-cells?
Without these requirements, device tree nodes missing the provider properti=
es
might silently pass validation.

[ ... ]

> +allOf:
> +  - $ref: /schemas/pci/pci-device.yaml#
> +  - $ref: /schemas/pci/pci-bus-common.yaml#

[Severity: Medium]
Is it intentional to reference pci-bus-common.yaml# for a PCIe endpoint?

This reference applies bus-specific properties to an endpoint node.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    pcie {
> +        #address-cells =3D <3>;
> +        #size-cells =3D <2>;
> +
> +        pci@0,0 {
> +            compatible =3D "pci1179,0220";
> +            reg =3D <0x50000 0x0 0x0 0x0 0x0>;
> +            #address-cells =3D <3>;
> +            #size-cells =3D <2>;
> +            device_type =3D "pci";
> +            ranges;

[Severity: Medium]
Are device_type =3D "pci", ranges, and the address translation cell propert=
ies
valid on this endpoint node?

The Devicetree specification dictates that device_type =3D "pci" should str=
ictly
be used on PCI bus nodes like host bridges or PCI-to-PCI bridges.

Additionally, since the gpio and ethernet child nodes do not use reg
properties, the address and size cell sizing here seems unnecessary.

> +
> +            gpio {
> +                  gpio-controller;
> +                  #gpio-cells =3D <2>;
> +            };

[ ... ]

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2aa6ea012c848..f976c9fa9d9c0 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -27052,6 +27052,12 @@ F:	Documentation/devicetree/bindings/media/i2c/t=
oshiba,tc358743.txt
>  F:	drivers/media/i2c/tc358743*
>  F:	include/media/i2c/tc358743.h
> =20
> +TOSHIBA TC956X/QUALCOMM QPS615 DWMAC ETHERNET DRIVER
> +M:	Alex Elder <elder@kernel.org>
> +M:	Daniel Thompson <danielt@kernel.org>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/net/toshiba,tc956x-dwmac.yaml

[Severity: Low]
Is there a typo in the filename here?

The commit introduces the file toshiba,tc9564-dwmac.yaml, but the MAINTAINE=
RS
entry lists toshiba,tc956x-dwmac.yaml. This might prevent get_maintainer.pl
from properly matching the new binding file.

> +
>  TOSHIBA WMI HOTKEYS DRIVER
>  M:	Azael Avalos <coproscefalo@gmail.com>
>  L:	platform-driver-x86@vger.kernel.org

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605010022.9686=
12-1-elder@riscstar.com?part=3D10

