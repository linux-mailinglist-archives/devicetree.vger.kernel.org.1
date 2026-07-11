Return-Path: <devicetree+bounces-324755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MmCrLkDgUWqQJwMAu9opvQ
	(envelope-from <devicetree+bounces-324755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:18:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B3774095A
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:18:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mqqFLwH8;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324755-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324755-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7A123011C76
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 06:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467AF315793;
	Sat, 11 Jul 2026 06:18:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1302C1F4C8E;
	Sat, 11 Jul 2026 06:18:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750718; cv=none; b=Tlwy31E4EO4Dv5ipczJXZbvQlHdIUD95TQKbLfx1XpvQRS+P3AtO5/yrNwqCWz9Dopaw8Xozd0XtPWVubH1OfUkWXIz8+ujY928NVKVQJfO/XDIHer5vGcu1TGuROw5xiAaNAvI5wMMc0erqQLz9Tr071La6WvsL52DkPFGdWgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750718; c=relaxed/simple;
	bh=p38HUrfHinRNj0OorppQLrhy1x+um64ate9kg+EPLbU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WxRgXJzrCsozaMYPgkbZ/lbQiP/BUeT9VTtNf2HzbdJXIOQsuR5q/KWbDwJ2gSs0n/RIoMOA8FohLWYAhA6JRPriaOu6FIVoTenvQWO2DBUv2mykY8stnGJUdrd9SOPH+GwGRMXue7lfR0l2rPWlihqaF8zeKW/G4LdLvTcGtVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqqFLwH8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9293B1F000E9;
	Sat, 11 Jul 2026 06:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783750717;
	bh=9dwp56lt+fOyVa6umsS7TouBkgrFNUMWOAoELkoOT3Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mqqFLwH8e/WlN61f6UHxaA15u6s+q3casiojLelrvmmqhuhCk7Te2JJeCnhNCPPGz
	 y0GJq3/QjANXcFdEOIRpdAovVNAdq2pagWgtPsS2oUvX+LkQDKUcbrsyIcaqYTmQDg
	 8cQnVT12LOSYr4GUHVcm3pDQfRbhoG1n7lVifWfhmNkJABsf6dNmKsq4KL3CHQkWGj
	 c86YGtHi22JBMKjIm6UHoorYTaxLQsPQWcnyZg1fEfmkRnDKlN/Kj6ZmXLr1biFARH
	 rnq4RDittLPOuPly6vaGgsan7s/cjgRQJjd2MeEyTL0faUUUSfJDT6iaFDdPsda2vF
	 fl+zkGlZQ7HgQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 03/16] arm: dts: twl4030: add twl4030-regen child
Reply-To: sashiko-reviews@lists.linux.dev
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, mfd@lists.linux.dev, lee@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <ca467f11b708be8529de5e25b0863dce0d7edbb6.1783749722.git.hns@goldelico.com>
References: <cover.1783749722.git.hns@goldelico.com>
 <ca467f11b708be8529de5e25b0863dce0d7edbb6.1783749722.git.hns@goldelico.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 06:18:36 +0000
Message-Id: <20260711061836.9293B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324755-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hns@goldelico.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:mfd@lists.linux.dev,m:lee@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riseup.net:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13B3774095A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The YAML binding schema fails to allow 'startup-delay-us', causing=
 a conflict between driver probe requirements and dtbs_check validation.
- [Medium] Architectural flaw in Device Tree design: conflating a PMIC digi=
tal control signal with an external voltage regulator.
--

--- Patch [3]: [PATCH 03/16] arm: dts: twl4030: add twl4030-regen child ---
commit a39086d961abe1def74820ce0f67a5656f16f99d
Author: Grond <grond66@riseup.net>

arm: dts: twl4030: add twl4030-regen child
   =20
This is needed on some boards (for example, the Pandora), where REGEN is
used to drive external regulators.

> diff --git a/arch/arm/boot/dts/ti/omap/twl4030.dtsi b/arch/arm/boot/dts/t=
i/omap/twl4030.dtsi
> index 07b9ca942e78d..e6f80b8f0a731 100644
> --- a/arch/arm/boot/dts/ti/omap/twl4030.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/twl4030.dtsi
> @@ -112,6 +112,20 @@ vsim: regulator-vsim {
>  		regulator-max-microvolt =3D <3000000>;
>  	};
> =20
> +	regen: regulator-regen {
> +		compatible =3D "ti,twl4030-regen";
> +		/*
> +		 * Since REGEN is technically just a signal that actuates an
> +		 * external regulator, we do not know what voltage it will

[Severity: Medium]
Is there an architectural mismatch in how this external regulator is modele=
d?

The comment acknowledges that REGEN is just a control signal, but the driver
forces the PMIC's digital signal node to define the external component's
voltage parameters:

drivers/regulator/twl-regulator.c:twlreg_probe() {
        if (c->min_uV =3D=3D 0 || c->max_uV =3D=3D 0) {
                dev_err(&pdev->dev, "minimum or maximum regulator voltage z=
ero in DT\n");
                return -EINVAL;
        }
}

Would it be more aligned with Device Tree principles to model the PMIC's
REGEN pin as an enable-gpio or a voltage-less switch, and define a separate
regulator-fixed node for the external regulator that uses REGEN to enable i=
t?

> +		 * eventually have, or what it's on/off timing should be.
> +		 * Therefore, disable it here; boards that use it can override
> +		 * the status to "okay" once they have set the
> +		 * regulator-{min,max}-microvolt and startup-delay-us
> +		 * attributes.
> +		 */

[Severity: High]
Will this cause a conflict between driver probe requirements and the
dtbs_check validation?

Looking at twlreg_probe() in drivers/regulator/twl-regulator.c, the driver
explicitly requires the startup-delay-us property:

drivers/regulator/twl-regulator.c:twlreg_probe() {
        ret =3D of_property_read_u32(pdev->dev.of_node, "startup-delay-us",
                                   &info->desc.enable_time);
        if (ret) {
                dev_err(&pdev->dev, "no valid startup delay set in DT: %d\n=
", ret);
                return ret;
        }
}

However, the ti,twl.yaml binding schema introduces ti,twl4030-regen but fai=
ls
to add startup-delay-us to the allowed properties, leading to
unevaluatedProperties: false rejecting it during validation.

If board developers provide the property to satisfy the driver, they will
fail schema validation, but if they omit it to pass validation, the driver
will fail to probe at runtime. Can the schema be updated to allow this, or
is there a different expected behavior?

> +		status =3D "disabled";
> +	};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783749722.gi=
t.hns@goldelico.com?part=3D3

