Return-Path: <devicetree+bounces-311640-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8FhdEg+VL2pZCwUAu9opvQ
	(envelope-from <devicetree+bounces-311640-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:00:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EBE683A09
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:00:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=U1Ib6nLJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311640-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311640-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EAD7C300D15B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 05:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8EB3AEF3F;
	Mon, 15 Jun 2026 05:58:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5107D279334
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 05:58:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781503138; cv=none; b=d8wDyBSMHbIorSnNl3XS4ieIJwk4qV+jyx+iqsB4v+kQ+j/CU76LNYz64tK3c0dlCjyDbyBHAX418QBeMoWDx6YkKrKoBPfIfSH4ExvfOq4MO/w1m0MLIabi0dDax79Eeju5BJU4hKsiMBcNtaa7WURwRfbBXdk+NmJFOiD2TpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781503138; c=relaxed/simple;
	bh=Pm4OyMAP61mA3mN4kSfp/jGpGMMPAUmftzYSHNt95bk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pR3TpsYHwsY+ZEMXibns0PMJXr/BHp85paUWMt02u181t8+Do+DPqTI3Zt7FTI0Ue3Sryb0S7QnUlFf7YUulmv7BNW9S16pbJryJGZoFKXj+xhh3xTvu0YMAAHDq4In/0hnyzRWIbwV7ARGwFQr1mROMId+laj1H7Llsggr23g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1Ib6nLJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C39D1F000E9;
	Mon, 15 Jun 2026 05:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781503137;
	bh=vSoFisx1yYAN5MrYKXbZPonPev23XeGsWoy2Yd+cYcw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U1Ib6nLJxfKxtrR+d0vjMge8pkriDFz4BTgjTB5iVxlvd1W6Ov6HmZAxNqufjBaK+
	 1OMNxBSo2zfR+RcW8CYKbcTrDhvsk1qcXfqn/guXoCewcgTY4v64gtRCE5FZkeFxgi
	 BVm4xgP0Tao4cwf/a1oNKdZo0lBNtoHiZumKCc9+nry2EhV/35DwY98HMKFyv6O5TE
	 iSJmixVNWQEncHCyK66xA9mvh92vpOOwQAgc4WvxiDsPuQwrjY2p6uRtsES2G43vqm
	 Ikf7hAUSnpDOlAFYFNwEKp2oRi6aeyA+7PuGcSrNk45pipeL5enkeLMhkUY1n5Eocb
	 Fpu9IK8k9wGjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend
 for dual-port OTG support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260615054911.48821-2-a0987203069@gmail.com>
References: <20260615054911.48821-2-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 05:58:56 +0000
Message-Id: <20260615055856.8C39D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311640-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linaro.org,gmail.com,lists.infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 99EBE683A09

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree example fails `dt_binding_check` validation due to =
a unit address mismatch and violations of the parent reset controller schem=
a.
--

commit abaf23416a1205bdc22b4891ef46a49e088031a4
Author: Joey Lu <a0987203069@gmail.com>

dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port OTG support

This extends the Nuvoton MA35D1 USB2 PHY binding to support two ports (OTG
and host-only). The PHY node becomes a child of the syscon node, and
properties are updated to reflect the new architecture.

> diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-ph=
y.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
> --- a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
> @@ -8,38 +8,72 @@ title: Nuvoton MA35D1 USB2 phy

[ ... ]

>  examples:
>    - |
> -    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
> +    system-management@40460000 {
> +        compatible =3D "nuvoton,ma35d1-reset", "syscon", "simple-mfd";
> +        reg =3D <0x0 0x40460000 0x0 0x200>;
> +        #reset-cells =3D <1>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> =20
> -    usb_phy: usb-phy {
> -        compatible =3D "nuvoton,ma35d1-usb2-phy";
> -        clocks =3D <&clk USBD_GATE>;
> -        nuvoton,sys =3D <&sys>;
> -        #phy-cells =3D <0>;
> +        usb-phy@60 {
> +            compatible =3D "nuvoton,ma35d1-usb2-phy";
> +            reg =3D <0x60 0x14>;
> +            #phy-cells =3D <1>;
> +        };
>      };

[Severity: Low]
Will this example pass dt_binding_check validation?

The schema for the parent node (nuvoton,ma35d1-reset.yaml) enforces
additionalProperties: false and requires exactly two compatible items
("nuvoton,ma35d1-reset" and "syscon"). It does not permit child nodes,
the "simple-mfd" compatible, or the #address-cells and #size-cells
properties.

Additionally, does the 4-cell reg array <0x0 0x40460000 0x0 0x200> mismatch
the unit address @40460000? Without a ranges property, the dt-schema wrapper
defaults to 1 cell for address and size, which parses this as two distinct
ranges and triggers a dtc unit_address_vs_reg warning.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615054911.4882=
1-1-a0987203069@gmail.com?part=3D1

