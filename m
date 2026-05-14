Return-Path: <devicetree+bounces-297227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EE9cNSMTBWpoSAIAu9opvQ
	(envelope-from <devicetree+bounces-297227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:11:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FB653C43B
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:11:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D7333303F247
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7359078F4A;
	Thu, 14 May 2026 00:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdjZGaIm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D8078F26;
	Thu, 14 May 2026 00:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778717426; cv=none; b=M9gmA3Y0g6H5RChBScqyTz4K+N92M9MdrvpQtb9HxO22S+IVlsnfY6eFvPF/qlgmDQlIarLj/OCriOhDRt4zVdXEFAdnjCFkSo3q/+tYADo2yCiQODpn9Lu3tMltjzPNYBzcgtmIZrGoqY6wVPqsk2F8krEctqcdK2YNuyMkw/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778717426; c=relaxed/simple;
	bh=gppp5HdjLL8AzFManE8Yuhxxzc0ZHRZSSO5L0dVYbxI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=L2LGOqx0wrg27GeCBTamZnX3uTn8z7fjlptDgLMsSddhXM+Jbms2REaLdqHPqHL0mdzEBJ8j0bTvw+sUUPdknaAXXQYgHWDlT00LvVmaFkdlrHA10m55hRNgZPMgl4pX97DURU5hInVFzopE1fuZujN5g5Ccqa07yGG7/vqp6Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdjZGaIm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D4FBC19425;
	Thu, 14 May 2026 00:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778717426;
	bh=gppp5HdjLL8AzFManE8Yuhxxzc0ZHRZSSO5L0dVYbxI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=LdjZGaImwwRE5mg747Yd2i/R4XIeBQB11GTofsZemtrr3cPLKI6+e2nmmcRywVEnx
	 X1M0H8L8ly0cEDLOrJvv+wfXZSPb9ZXnER/uer1ZpcgYmEh0VkM+J9MHo6Mh4EePAB
	 GTvB6pT2dzKvYuR7NFo4G+A1PveFunWflgue+2INRs3Q4utyxZENF1z5DMGyQMZ5Lk
	 zmvC1QFt9iw1nX255sDPPTQeXNLRUHmk9RZaZQVvt6H97yDFrXn512ciKtxmAK9NPB
	 xZBC1udt7nIQkMe6fuEYkXFHU/nIouymIV2hgYdPoeQmx3AdVTZVQVSx7UAR8idZTi
	 y/E9fGuQIPthQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: net: dsa: Convert lan9303.txt to yaml
 format
Reply-To: sashiko-reviews@lists.linux.dev
To: "Frank Li" <Frank.Li@nxp.com>
Cc: imx@lists.linux.dev, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260512214704.1084890-1-Frank.Li@nxp.com>
References: <20260512214704.1084890-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 00:10:25 +0000
Message-Id: <20260514001025.8D4FBC19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 43FB653C43B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297227-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,a:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Unresolved phandles in YAML examples will cause `dt_binding_check` =
to fail.
--

commit ff1d6b54c66febb1ac2492f6699ba1d476db3541
Author: Frank Li <Frank.Li@nxp.com>

dt-bindings: net: dsa: Convert lan9303.txt to yaml format

This commit converts the SMSC/MicroChip LAN9303 device tree binding from
text to YAML format. It also renames switch-phy to switch in the example
to resolve warnings during device tree checks.

> diff --git a/Documentation/devicetree/bindings/net/dsa/smsc,lan9303.yaml =
b/Documentation/devicetree/bindings/net/dsa/smsc,lan9303.yaml
> new file mode 100644
> index 0000000000000..42f8473538a07
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/dsa/smsc,lan9303.yaml
[ ... ]
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    /* I2C managed mode */
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        switch@a {
> +            compatible =3D "smsc,lan9303-i2c";
> +            reg =3D <0xa>;
> +            reset-gpios =3D <&gpio7 6 GPIO_ACTIVE_LOW>;

Will this example fail dt_binding_check? The &gpio7 phandle is referenced
here, but there does not appear to be a corresponding gpio7 label defined
within the scope of the example.

> +            reset-duration =3D <200>;
> +
> +            ports {
> +                #address-cells =3D <1>;
> +                #size-cells =3D <0>;
> +
> +                port@0 {
> +                    reg =3D <0>;
> +                    label =3D "cpu";
> +                    ethernet =3D <&master>;

Similarly, the &master phandle is used here but is not defined. When the
example is compiled into a standalone DTS file during dt_binding_check,
does this result in a reference to non-existent node or label error from
dtc?=20

Defining dummy nodes for these labels within the examples might be necessary
to allow the schema to pass validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512214704.1084=
890-1-Frank.Li@nxp.com?part=3D1

