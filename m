Return-Path: <devicetree+bounces-309378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CNFTLd7IKGpMJgMAu9opvQ
	(envelope-from <devicetree+bounces-309378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 04:15:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4856656C5
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 04:15:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Pf+4pfP2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309378-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309378-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C7E3301A712
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 02:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384891F3D56;
	Wed, 10 Jun 2026 02:15:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33216198E91
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 02:15:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781057733; cv=none; b=stCnp+4GDayTdwa4o8GWJho92u+Leef0ITShbafBWBltxemtXAX1ZKTrKQK/ipVR3TJeCH0xnl8NmZ7PK5EYjsGxT37HCnhgGcrSSImVrZ+pO6GmLOeeRCV1ptdcX2piEp8yCz/8DJ2wbyiNk0RwVZjK7txR0SSgKpfr91yt4NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781057733; c=relaxed/simple;
	bh=vWFC5gwYnWmCFTCnTqGdtPvTDQvyYYJQ0U31tjPa494=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uYSmwOk3CK15HX22mLcset205jIvec1Ta1G4vgzJcSJMhXFZOtFY0VRFEkTvSTNXFNYp1ggsBRVaSCDYOBMffmpP84H7DnAQGfm4LHWBhQ5l4qXJ9sSyWNWBtrhy54Z0jQzO+djfQXZpp9J00bFvXBjq7JS1FkzcxInVCjQC4Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf+4pfP2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8BB91F00893;
	Wed, 10 Jun 2026 02:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781057732;
	bh=3jYwYmErqlhV3Nj99/ZBDXBccLhGbeFcQUBAL+1tu/E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Pf+4pfP2/FGK5xjthZma5uHFeEMjsihYisY32Qlaqtgozqys5HUT+ztvllD3sdAIn
	 JZeqdvisoufH4+WAr4UhSJnmp2nQhiTxiYDENrJdpT6denmFAmuSpQTG4hyayojKGw
	 bO5AaQCTWY1yDYUKf6lECaDyxTM5bAEyQnQPiLSMXw8KOTo1pAQrhanhAQUha6VTg2
	 wIAHV0NkmokEOjkdhexHDEFAQRSGh7B3Zq0ROaiolsvxC7/uOLpjyQ04XN3utt34+w
	 k4tI49QQbDxAHPgZ8tx3EYkXI8ofhlIt9ArkV6QxPI0AN41HI5zfAZM8MFuoulO03r
	 NeaAHLtTLP6Og==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: pressure: Add MS5637
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis Adamian" <adamianlouis@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610020458.104818-2-adamianlouis@gmail.com>
References: <20260610020458.104818-2-adamianlouis@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 02:15:31 +0000
Message-Id: <20260610021531.D8BB91F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309378-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:adamianlouis@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B4856656C5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Adding `vdd-supply` as a strictly required property breaks backwar=
d compatibility for existing device trees.
--

commit 8073eb9fc3f96931b47510a0323c9f632b9db41f
Author: Louis Adamian <adamianlouis@gmail.com>

dt-bindings: iio: pressure: Add MS5637

Create meas,ms5637 devicetree binding and move existing devices from
trivial-devices.yaml. Explicit compatible strings are added for the
different sub-variants because each requires different constants for the
second-order temperature compensation formulas.

> diff --git a/Documentation/devicetree/bindings/iio/pressure/meas,ms5637.y=
aml b/Documentation/devicetree/bindings/iio/pressure/meas,ms5637.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/pressure/meas,ms5637.yaml

[ ... ]

> +properties:

[ ... ]

> +  vdd-supply:
> +    description: Regulator that provides power to the sensor
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply

[Severity: High]
Does adding vdd-supply to the required list break backward compatibility for
existing device trees?

The generic compatibles like meas,ms5637 and meas,ms5803 were moved from
trivial-devices.yaml to this new standalone binding. In trivial-devices.yam=
l,
vdd-supply was not defined and additionalProperties was set to false.

This means any valid, existing device tree for these sensors strictly could
not have included a vdd-supply property without failing validation. By
unconditionally adding vdd-supply to the required list, existing device tre=
es
in the wild will fail dtbs_check.

Furthermore, the corresponding Linux driver (drivers/iio/pressure/ms5637.c)
does not appear to fetch or use a regulator, confirming it is not functiona=
lly
required.

Should vdd-supply be omitted from the required list, or only made
conditionally required for newly introduced compatibles, to preserve the
Device Tree ABI?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610020458.1048=
18-1-adamianlouis@gmail.com?part=3D1

