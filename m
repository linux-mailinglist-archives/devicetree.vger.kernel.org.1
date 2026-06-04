Return-Path: <devicetree+bounces-306646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0Wm4NW0lIWrA/gAAu9opvQ
	(envelope-from <devicetree+bounces-306646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:12:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE8563D8B7
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:12:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DSt8RFCt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306646-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306646-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93026304C63D
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63BCB3B8D5C;
	Thu,  4 Jun 2026 07:05:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519EA3DD514
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:05:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780556722; cv=none; b=al3fU4V/8Fdr/EkUJwrFdU9Bii63th6ubH3mztB4LE4m6MFwAQsVgrFZ7lSbExn/MjZOo+iaPRFDrPB/UqHkyR0IvG19KZYwWKO8uq9spilG168y6iz+Ds3W6xacvELOO0mpD20kyumvHgpMCrH44OwJoLC/RIHna+j0z3DrK1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780556722; c=relaxed/simple;
	bh=2mCurJksHCQmse7EYxjjuOAv0PkmCZbA8RDtxluv4EM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iipiGEZF1YYoa8AgWDRPvFK90jZ04U8+6wkdPy863yStjl7szU0QUxILiE9ejlgeqj0FBSqYI985smcTyEVoZFG2RYt3v5YvSACwDfPZWCaHoPp9BiNz9dXtEFd2M9zbc5n/JPDaV7oc0J3Ajb/7FfGJaT+dq9x+gfwa5VPrJmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSt8RFCt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2F311F00893;
	Thu,  4 Jun 2026 07:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780556721;
	bh=VHT+6oChzNUqEAlGZJPSiJGFpR72hARr4wkbABJZhQI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DSt8RFCtt6Aa71s1jF7nKkem3i0fvIr54G6svC4zfOezCt3sR1FBhasRX2g+TzJHZ
	 6aq+UNSsXEMcthvzLaPEPkPH+0bl2KX9xejRN9AKUH+8VBhX9suN5tqR3lgyFgT03d
	 DO+RIWC0rqQtxVBPg481k0HE4/vATxE2RIwYz0GA9qPzh2jN14gl4FdwX4PtY7iGWZ
	 6lC0Fx/oSyIRHnXa0Dx2jDu6X457BsJmn7DexdlNA5qPdLnPb7KlruJsS0B0LHuN3w
	 iSYtwcFLW11n6JkJ0iQt/miEnqv/rObyog6WbLh3liNq2nYDe+oy6JQ3zHbLWSSy+T
	 jYWr3NebsqcrA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 05/10] ARM: tegra: tf701t: Add thermal zones for
 nct1008 sensor
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260604065556.137614-6-clamor95@gmail.com>
References: <20260604065556.137614-6-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 07:05:20 +0000
Message-Id: <20260604070520.C2F311F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306646-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:clamor95@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CE8563D8B7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The trip point label `skip_alert_trip` and cooling map node `map-sk=
ip` use 'skip' instead of 'skin', which is inconsistent with the node name =
and context.
--

commit d0ffa943912777c608b0f811f5bcfceeb964f099
Author: Svyatoslav Ryhel <clamor95@gmail.com>

ARM: tegra: tf701t: Add thermal zones for nct1008 sensor

This commit adds thermal zones for the NCT72 sensor in the ASUS TF701T to
provide more accurate temperature readings for both the skin and CPU.

> diff --git a/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts b/arch/arm=
/boot/dts/nvidia/tegra114-asus-tf701t.dts
> --- a/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts
> +++ b/arch/arm/boot/dts/nvidia/tegra114-asus-tf701t.dts
[ ... ]
> +		nct72-skin-thermal {
> +			polling-delay-passive =3D <1000>; /* milliseconds */
> +			polling-delay =3D <5000>; /* milliseconds */
> +
> +			thermal-sensors =3D <&temp_sensor 0>;
> +
> +			trips {
> +				skip_alert_trip: skin-alert {

[Severity: Low]
This isn't a bug, but is skip_alert_trip a typo? Given the zone is named
nct72-skin-thermal and the trip is skin-alert, it looks like this should
probably be skin_alert_trip.

> +					/* throttle at 57C until temperature drops to 56.5C */
> +					temperature =3D <57000>;
> +					hysteresis =3D <500>;
> +					type =3D "passive";
> +				};
> +
> +				skin-crit {
> +					/* shut down at 65C */
> +					temperature =3D <65000>;
> +					hysteresis =3D <2000>;
> +					type =3D "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map-skip {

[Severity: Low]
This isn't a bug, but similarly, should map-skip be named map-skin instead
to match the rest of the skin thermal zone naming?

> +					trip =3D <&skip_alert_trip>;
> +					cooling-device =3D <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604065556.1376=
14-1-clamor95@gmail.com?part=3D5

