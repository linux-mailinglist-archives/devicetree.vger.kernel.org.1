Return-Path: <devicetree+bounces-318183-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4EReF4C+RGpS0AoAu9opvQ
	(envelope-from <devicetree+bounces-318183-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:15:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B2E6EA8B6
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 09:15:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kvSDr+Lw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318183-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318183-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73F9F3046FF4
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 07:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 519A93947B5;
	Wed,  1 Jul 2026 07:13:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C124B3B42C7
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 07:13:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782890026; cv=none; b=ojXLiP3lI2Qs7QW60QKqDYmiopRoys2Y5QxQ9J4paDfz2iToSFCteWv1/DfH4E4eJ+atHEcT5vFb8V+KaQAdGCCbGk2THsVtTELsyxWsfdzEelnOr15gr5VgOeBT6KlBzSwuNXGJUaFJBax8MdejbloD5N5Wb0PyufzpEGPyffc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782890026; c=relaxed/simple;
	bh=FrIohamvir8NDdlTDuIJAm0LABurGHift9C9kRVr/Ak=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ioBteS2//+eztWtPbkPmYYfhTBxKaB3fk4eCC0PBDMz8/gGPDmQrAYEjUTSev/EjsA7hUbm7DmiCVn+GsufP9kl5Wqplls4Se4WLQhCS8ye4K2Ffedaz5udtvkg/jvSXw7xv/5TUc/RQMZ/wlXvF7CADLPO3j7XdpUSID8KMLJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvSDr+Lw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDEA81F000E9;
	Wed,  1 Jul 2026 07:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782890024;
	bh=s0Skc6YuH+2TjFlIomEDVkGXN7RJsPN5uFy7MDljchI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kvSDr+Lw51nJhRrE6ioPBSYZLRpBOXPV293AYx/ogyrooAaFWWU8CV//wtDolObef
	 6tX0ypEpX/fK0IGgqFXwrxjj4dyWWUsoLrkHX/iecsBijKTQD9dtSB/Zy8CAt2GUVE
	 AYOCzZh4B+jSj9qB8JmMGQLYyepxio59ZUhjcFjAvFZ+sfyBuBC+Ltz1xOOEdiq9lW
	 cSHk17KhaaFKCTVymTVzQT03pz7881rbIrZcfLjJwEM6LglcrwxAFk5cJix4uplh4m
	 kHAUFHhrGq/WMAiPF5Hcdh0W8qWwivhWJ6vHsru57WtFTlF1pNuB/Cr0BDeHg34W4o
	 XdS71jAaJ1OwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 2/7] dt-bindings: i3c: Add NXP P3H2x4x i3c-hub
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: conor+dt@kernel.org, linux-i3c@lists.infradead.org, robh@kernel.org, Frank.Li@kernel.org, "Alexandre
 Belloni" <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org
In-Reply-To: <20260701065755.2067793-3-lakshay.piplani@nxp.com>
References: <20260701065755.2067793-1-lakshay.piplani@nxp.com>
 <20260701065755.2067793-3-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 07:13:43 +0000
Message-Id: <20260701071343.EDEA81F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318183-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:conor+dt@kernel.org,m:linux-i3c@lists.infradead.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:alexandre.belloni@bootlin.com,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7B2E6EA8B6

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The device tree binding advertises GPIO capabilities in the hard=
ware description but omits the required GPIO controller properties from the=
 schema.
- [Medium] The binding schema fails to include compatible strings for all h=
ardware variants claimed in the commit message.
--

commit 02eaa0b7ff6f65192cd318d6704be98b321762da
Author: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

dt-bindings: i3c: Add NXP P3H2x4x i3c-hub support

Add bindings for the NXP P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841)
multiport I3C hub family.

> diff --git a/Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml b/Doc=
umentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
[ ... ]
> +description: |
> +  P3H2x4x (P3H2440/P3H2441/P3H2840/P3H2841) is a family of multiport I3C
> +  hub devices that connect to:-
> +  1. A host CPU via I3C/I2C/SMBus bus on upstream side and connect to mu=
ltiple
> +     peripheral devices on the downstream  side.
> +  2. Have two Controller Ports which can support either
> +     I2C/SMBus or I3C buses and connect to a CPU, BMC or SOC.
> +  3. P3H2840/ P3H2841 are 8 port I3C hub with eight I3C/I2C Target Port.
> +  4. P3H2440/ P3H2441 are 4 port I3C hub with four I3C/I2C Target Port.
> +     Target ports can be configured as I2C/SMBus, I3C or GPIO and connec=
t to
> +     peripherals.

[Severity: Medium]
The description states that target ports can be configured as GPIO.
Since unevaluatedProperties is set to false, shouldn't this schema include =
the
standard GPIO provider properties (like gpio-controller and #gpio-cells)
so device trees can actually configure and utilize the advertised GPIO
capabilities without triggering validation errors?

> +
> +properties:
> +  compatible:
> +    const: nxp,p3h2840

[Severity: Medium]
The commit message and schema description indicate support for the P3H2x4x
family, including the P3H2440, P3H2441, and P3H2841. Does this compatible b=
lock
need to be expanded from a const constraint to an enum to allow strings for
those other variants?

Also, if the 4-port variants are added, would they require different schema
constraints, such as a maximum port reg of 3 rather than 7 for the
patternProperties?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701065755.2067=
793-1-lakshay.piplani@nxp.com?part=3D2

