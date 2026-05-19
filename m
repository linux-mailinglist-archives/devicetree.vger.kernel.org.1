Return-Path: <devicetree+bounces-300117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCntAsNYDGodfwUAu9opvQ
	(envelope-from <devicetree+bounces-300117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:34:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2AE57EC22
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 14:34:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E5E430779F2
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D3624D990D;
	Tue, 19 May 2026 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXK01tFi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4910E4CA293
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 12:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779193643; cv=none; b=eMmP74dVuXQgCJTKlQv+2Ix+3+jrmq1eSjZ/larFpFYYrDH47cYOT8mjSY46UZvFOT1xmUT6XrrQconZiNDTobnuR6UNPVHLJurTmcY+b7nNm5eT3Yu1pCa2XxAr92VIp4G7X2m48SDccg+a0DPQ+oGe0eKS5vlaIUVN1r/OeB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779193643; c=relaxed/simple;
	bh=BFf3VFB8xcFgSyLxs/cqHfVYB35euTD2DsixJKgqP8w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pdrfcm0rLxs/Q829Osnxi6T+c9R62d/USZQfsi1MXT+d1XRFL1QhD2IjdkKBIAwxR3XwFz1N2kNHWK1eaUY5dzpfxnSKRvw/NiZIBGms6mEbwgTeUidje57hQbFn29JjorgZ1sX4ChTAzxzqQ5zF6RWL65N7tc3+AX4EX+5sM2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXK01tFi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7D62C2BCB8;
	Tue, 19 May 2026 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779193643;
	bh=BFf3VFB8xcFgSyLxs/cqHfVYB35euTD2DsixJKgqP8w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=pXK01tFipA2n/f+KWPIdiI95cW62T2Q4QY08dPTgGILXrqAcpPp3MIXxe5V1xPKla
	 e1M6c5kBaL2IF/oilnMRXbneBtGpmm+W/37qoRB6H5/RqkBuCAzfoySXLQKhB9zelr
	 oFbe5DpuGYrd113249vUHy0nxvKsH+iZI2Gh4rYisql3Mti49iKyN/VgnbvrSEl1rx
	 WmvcWOhAHtpezxn7q/DHX1fYk6KlE8FuZyR+Wyxu/ntwMbd5qC8QPq+EMkC+KuF96x
	 0DknqBSgGsm2C3Bo/r9tCE9oxUa8/DuLHFY3yQaasvd+yhBr+QHVsQDwyYHa53beP4
	 Zu1v8+YbIezRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 2/9] dt-bindings: net: lan9645x: add
 LAN9645X switch bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260518-dsa_lan9645x_switch_driver_base-v5-2-968fbf34ffa3@microchip.com>
References: <20260518-dsa_lan9645x_switch_driver_base-v5-2-968fbf34ffa3@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 12:27:22 +0000
Message-Id: <20260519122722.B7D62C2BCB8@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300117-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sashiko.dev:url,0.0.0.0:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,0.0.15.160:email]
X-Rspamd-Queue-Id: 5B2AE57EC22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The binding lacks an `mdio` child node definition for configurin=
g the integrated PHYs.
- [Low] The YAML example references undefined phandles, which will cause `d=
t_binding_check` to fail.
--

commit dfc8fe1c18d2c902cfb1fb3287b2bba778b46c7f
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

dt-bindings: net: lan9645x: add LAN9645X switch bindings

Add bindings for LAN9645X switch. We use a fallback compatible for the
smallest SKU microchip,lan96455s-switch.

> diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,lan96455=
s-switch.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,lan9645=
5s-switch.yaml
> new file mode 100644
> index 0000000000000..043fb48922b41
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/dsa/microchip,lan96455s-switc=
h.yaml
> @@ -0,0 +1,111 @@

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - ethernet-ports
> +
> +unevaluatedProperties: false

Since the description mentions the hardware has five integrated PHYs, how a=
re
they expected to be configured?

Because this schema sets unevaluatedProperties: false at the root and does
not define an mdio property, any attempt to add an mdio node for the PHYs
in a device tree will fail schema validation.=20

Does the binding need to explicitly document and allow an mdio node?

> +
> +examples:
> +  - |
> +    ethernet-switch@4000 {
> +        compatible =3D "microchip,lan96459f-switch", "microchip,lan96455=
s-switch";
> +        reg =3D <0x4000 0x244>;
> +
> +        ethernet-ports {
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +
> +            ethernet-port@0 {
> +                reg =3D <0>;
> +                phy-mode =3D "gmii";
> +                phy-handle =3D <&cuphy0>;
> +            };

Will this example pass make dt_binding_check?

The example references &cuphy0 (and later &cuphy1 through &cuphy3, as well
as &cpu_host_port), but these labels are not defined anywhere in the snippe=
t.
This usually causes the dtc compiler to throw a "Reference to non-existent
node or label" error during the build.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518-dsa_lan964=
5x_switch_driver_base-v5-0-968fbf34ffa3@microchip.com?part=3D2

