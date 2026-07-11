Return-Path: <devicetree+bounces-324744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5UEsFUbeUWo7JwMAu9opvQ
	(envelope-from <devicetree+bounces-324744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:10:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DF71A7408DC
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 08:10:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Z/4kge4Q";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324744-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324744-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 40497301DD35
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 06:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CFF73264CA;
	Sat, 11 Jul 2026 06:10:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EBA32B117;
	Sat, 11 Jul 2026 06:10:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783750212; cv=none; b=C1Qf8LKO+1eq+sp9epGjAMMG+2tWPvDm2w5SriHl9IfSBBgDf37Pr87mhVseDJbP2YDPbtFnI60MQdD+YOppYR0vPv4fGTtOMUcUi59YGBoAfztH8FxtxPmWfiyPS1pCqLnL8k3x7VwduIRTgCE9E578dMjFj47VJ5o2MZwj2NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783750212; c=relaxed/simple;
	bh=7T6UngGUpv0L7G4CV9PF53NGDOXynk4fBRsE5rr/nVE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PcFbOSCYzk76AXqiI64hWWGMYrjCwxc6WqPVHr0B92+pok5bTGVOVLkX+x/UrUJB16Au2e6lCgnvYw+cmF8ep2KeeoIRc+1qD9vOdnJVYX4B4179jsYC57e8cSPhp1+Rpo7o2qcKuhjK6AU3GXfqcxWb72R3GhTjKRT0Tx+n2QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/4kge4Q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB35D1F00A3A;
	Sat, 11 Jul 2026 06:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783750211;
	bh=z4HPMfp/dbJBvNgR4Y04O1a4tKA+tPNLRETTTi0oPds=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z/4kge4QcUNFgBQN7Doa2Dgzta8FqOBfpAhNAEbilIGrlKyGu7UdYpOH1N+3InI9n
	 IE22HbAIhoT3xliFfRTaiwvM/o6oF1K6Kt6wBKxlUG6LtYt6ApyRQpFB383mDlzwiC
	 6CeBw0v+TIDfTTbBW6UXuR3q8h5zPDwNPFmojKy/G/0dRnCPWFw3iHjOhjF+RP8xn2
	 1GVrMG1TCGPGveqZzOGbmpcmqwd1fLhnIhIVS4rnVxvATD0+p12PdaF+DB/g/4xWp5
	 CNCQUaX+ObUFjyPIx+TQJ2yNTbwMqjbR/dvSkXLl/6iOMTgb3mENk1XIySHcSmlQDW
	 8/1NloFLI2R/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 01/16] dt-bindings: twl-regulator: Add bindings for
 exposing ti, twl4030-regen
Reply-To: sashiko-reviews@lists.linux.dev
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: lee@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, mfd@lists.linux.dev
In-Reply-To: <00718b18253a764c2a7c9a2b95c3b8c411796583.1783749722.git.hns@goldelico.com>
References: <cover.1783749722.git.hns@goldelico.com>
 <00718b18253a764c2a7c9a2b95c3b8c411796583.1783749722.git.hns@goldelico.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 06:10:10 +0000
Message-Id: <20260711061010.AB35D1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324744-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hns@goldelico.com,m:lee@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:mfd@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,riseup.net:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF71A7408DC

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The binding schema fails to enforce the required properties for =
the `ti,twl4030-regen` compatible string and rejects the `startup-delay-us`=
 property.
- [Low] The commit message contains misspellings and an incorrect hardware =
model number.
--

--- Patch [1]: [PATCH 01/16] dt-bindings: twl-regulator: Add bindings for e=
xposing ti,twl4030-regen ---
commit 47a2b827603c26c697c09f74aba57400724a478c
Author: Grond <grond66@riseup.net>

dt-bindings: twl-regulator: Add bindings for exposing ti,twl4030-regen

This commit adds the ti,twl4030-regen compatible string to the bindings. It
also updates the commit message to document its newly required regulator
properties.

>     +Reguired properties:
>     +For twl3040 REGEN signal:

[Severity: Low]
This isn't a bug, but should "Reguired" be "Required" and "twl3040" be
"twl4030"?

> diff --git a/Documentation/devicetree/bindings/mfd/ti,twl.yaml b/Document=
ation/devicetree/bindings/mfd/ti,twl.yaml
> index 9cc3e4721612e..183fc015e40ad 100644
> --- a/Documentation/devicetree/bindings/mfd/ti,twl.yaml
> +++ b/Documentation/devicetree/bindings/mfd/ti,twl.yaml
> @@ -46,6 +46,7 @@ allOf:
>                  - ti,twl4030-vusb1v5
>                  - ti,twl4030-vusb1v8
>                  - ti,twl4030-vusb3v1
> +                - ti,twl4030-regen
>              ti,retain-on-reset: false
> =20
>        properties:

[Severity: Medium]
Will this schema allow validation to pass without the properties described =
in
the commit message?

Since there is no corresponding if-then block added to enforce
regulator-min-microvolt and regulator-max-microvolt, they won't be required
for ti,twl4030-regen.

Also, does this cause validation to fail when startup-delay-us is used?=20

Because startup-delay-us is not defined in the base regulator schema and
unevaluatedProperties is set to false for the regulator pattern block, any
device tree attempting to use startup-delay-us as instructed will likely be
rejected during dt_binding_check and dtbs_check.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783749722.gi=
t.hns@goldelico.com?part=3D1

