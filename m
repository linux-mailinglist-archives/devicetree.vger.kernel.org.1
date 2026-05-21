Return-Path: <devicetree+bounces-301489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCatEPRkD2rlKAYAu9opvQ
	(envelope-from <devicetree+bounces-301489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 22:03:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9895ABA20
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 22:02:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3761030095EB
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 20:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 401E6334C1C;
	Thu, 21 May 2026 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOQ3U4vP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6F52D0602;
	Thu, 21 May 2026 20:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779393773; cv=none; b=ZGyMuZlPkKcnqjoFT5hvwIK0VFPDcxqM4g4Z0dTV6bzJCGbOVStKRZySuQ3R2vBGk3HcTavNSF6VOg75fYUCsl9UBfkQxs5B+KJTYXSR1IJMWN7s0xjdBeceh5AGRuI/1IxkvfFE5hC7z0rAdYT3ik89l1AujxhUiI4DgnOu28E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779393773; c=relaxed/simple;
	bh=lBK1T6jqxoMgIlE53jWBXXlEp5cx1RD6pjhOVi2vH7U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sYFpDhiXGTxwYuNnik4MAYDDqH545LYl/pTFt0btQq+gMqNWBE13+L6sNiBwern94f8pxodkXgfMfXaen/ERu4/Rd2DsTjtGQ0fd0fxkqHl8ol119HupSUJhjvdnwG0vzo6xPt6B4P4FURLMbzu4Tc6II/K+eRjvT3UEe74pcB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOQ3U4vP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77A571F000E9;
	Thu, 21 May 2026 20:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779393771;
	bh=++2vcii0BJO22ENuyVDdLAfsA78uYwkLuyz5UW/9VTs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KOQ3U4vP+IeB+JwO8vKmRM35Um7ni8E/N9RXqGTVEawHL8+1InyrC4skU4Ousp8pm
	 e+bKnqm9WRAlFIkTcWhDepl3krcNSS0aS2CbOiiGe9AZCckkcgHZIUjeh9jMKsi48p
	 HmLKKNA31O+NW6PtVEgVp9mb+07D+41Qi4ECgZh0b9iUKsSzyvkSwCyr0fNi53u87C
	 NtOAl7im833HLS+ibw9wGdsr7xDoUyeYz40fHGmK8C4pSdlcp1869uE7PXEBf2Hoxp
	 Bp3wM8h3VReT7gLs5kQ0Wumceb3jvStWobbE6a3x0TMPZKdi0dMFWwupsnl/Nw7+l+
	 vG0DDyuh97qwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/1] dt-bindings: trivial-devices: add fsl,mc1323
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: devicetree@vger.kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260521195233.1532852-1-Frank.Li@oss.nxp.com>
References: <20260521195233.1532852-1-Frank.Li@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 20:02:51 +0000
Message-Id: <20260521200251.77A571F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,63ff0000:email,3.147.135.0:email,lists.linux.dev:replyto];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-301489-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 3A9895ABA20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The commit message incorrectly cites a CHECK_DTBS warning for a =
TV encoder ('fsl,imx53-tve') instead of the ZigBee transceiver ('fsl,mc1323=
') that the patch actually adds.
- [Low] A complex ZigBee radio transceiver is incorrectly classified as a t=
rivial device, masking an incomplete device tree node.
--

commit 2100488cb966e136f1c1fefe29da8444b4dcd893
Author: Frank Li <Frank.Li@nxp.com>
dt-bindings: trivial-devices: add fsl,mc1323

This commit adds the Freescale MC1323 2.4 GHz IEEE 802.15.4/ZigBee=20
transceiver to the trivial-devices bindings list to resolve dtbs_check=20
warnings on the i.MX53 SMD board.

> Add freescale 2.4 GHz IEEE=C2=AE 802.15.4/ZigBee mc1323 to fix the below
> CHECK_DTBS warnings.
>   arch/arm/boot/dts/nxp/imx/imx53-smd.dtb: /soc/bus@60000000/tve@63ff0000=
: failed to match any schema with compatible: ['fsl,imx53-tve']

[Severity: Medium]
Is the CHECK_DTBS warning cited here correct for this patch?

The warning mentions a TV encoder ('fsl,imx53-tve') at a different node,
but this patch adds the ZigBee transceiver ('fsl,mc1323').=20

It looks like the wrong error log might have been pasted into the commit
message.

> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Doc=
umentation/devicetree/bindings/trivial-devices.yaml
> index 23fd4513933a4..28b059c858dd1 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -127,6 +127,8 @@ properties:
>            - domintech,dmard09
>              # DMARD10: 3-axis Accelerometer
>            - domintech,dmard10
> +            # Freescale 2.4 GHz IEEE=C2=AE 802.15.4/ZigBee
> +          - fsl,mc1323

[Severity: Low]
Should a complex ZigBee radio transceiver be classified as a trivial device?

The trivial-devices.yaml schema is intended for simple devices requiring
only compatible, reg, and optionally interrupts properties. As an IEEE
802.15.4 MAC/PHY transceiver, wouldn't the MC1323 inherently require other
hardware resources like clocks or regulators?

Adding it to the trivial list seems to bypass proper DT validation and
could mask an incomplete device tree node.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521195233.1532=
852-1-Frank.Li@oss.nxp.com?part=3D1

