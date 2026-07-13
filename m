Return-Path: <devicetree+bounces-325444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rt0yKTvHVGpmSwAAu9opvQ
	(envelope-from <devicetree+bounces-325444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:08:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3065F74A25B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:08:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=D+sVLDbo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325444-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325444-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A02623013473
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2AEF37A83B;
	Mon, 13 Jul 2026 11:08:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996263769FE
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:08:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940919; cv=none; b=T5+QT1gV8QfApvGOi+Zhaer6l4TLsrvEWUltwGRJ4OSeqhEUZW7yLKv+tc0C52QFti3ALyTxZG9OGItbFbQVnl0q/TDDzKDlfNopAe8vMELb9kbjgAYaxKY2Lt9IHPQAxj3RvwuqPmjTGFIkIX1NAZP91iodmtN+AV9ysLK3o1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940919; c=relaxed/simple;
	bh=by+MwEPQqTlLCS7iJO0PZb3i613G1nqvs6vP9p3Z4v8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uJLdOLPGWZ8RmDfqs0s9iT2SMq0kegCq9xlyMJXWcP0FREZB+hLxSLOmT7h9DTmvwf2jX6z0t0baCM+jWj4TZy4tpGFADZh6SmtA89C7Xc11vP6Xy33riRj/tttNF6ogDfVgcVNu6pRGVjno2gksytYvQB7iTtUbtE9Eo8VfL24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+sVLDbo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 295471F00A3A;
	Mon, 13 Jul 2026 11:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783940918;
	bh=eGy6apbUIEeXVGXAwlgKW7wAM6uglNzH7WfsNa6UpC8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D+sVLDboHdrj3Dj3/W4N7QEc1XpOuaSe6WN4UNoprQpbvJqtnJKQkQj5h965/+iAp
	 5ucKbtVhNqakNM0I/eFRUUDFb7SUqPDs4uAWPFm65emvnkMJTARdP4/9G2F+sy0xDd
	 UluHxunfN5ZFzARZjUyxpFpLfXCIPkX0RHSHDZeh87n5FjXNPFAnz/X8BRqGdPdhBN
	 FUOsmO0b+HB5iR06wUsoLlqSeQ6YtE+d8NdEDeeVk/ZknkFrIMxNDydI2GupDYTEET
	 YM27ng1KCjNoqej/YAreQ0wkPma5UtviBxGkG0qNm+5uxzIIisDMNhPipQz8a61G26
	 tiWNvxHqRVYOQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/8] ARM: dts: mstar: unitv2: Add regulators
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Palmer" <daniel@thingy.jp>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260713105950.1346962-3-daniel@thingy.jp>
References: <20260713105950.1346962-1-daniel@thingy.jp>
 <20260713105950.1346962-3-daniel@thingy.jp>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:08:37 +0000
Message-Id: <20260713110838.295471F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325444-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:daniel@thingy.jp,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0x0f.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3065F74A25B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing `enable-active-high` property in `reg_vcc_wifi` causes t=
he gpiolib core to forcefully invert its GPIO polarity to active-low.
--

--- Patch [2]: [PATCH 2/8] ARM: dts: mstar: unitv2: Add regulators ---
commit 45b1e50aa0d58e3444d010d9375cea0bd438d0d9
Author: Daniel Palmer <daniel@0x0f.com>
ARM: dts: mstar: unitv2: Add regulators

This commit adds fixed regulators for the core, IO, and DRAM voltage rails.
It also introduces a GPIO-controlled switch that supplies the WiFi chip.

> diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.=
dts b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts
> --- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts
> +++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts
[ ... ]
> +	reg_vcc_wifi: regulator-vcc-wifi {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "vcc_wifi";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		gpio =3D <&gpio SSD20XD_GPIO_GPIO14 GPIO_ACTIVE_HIGH>;

[Severity: Medium]
Will the gpiolib core force this GPIO to active-low polarity?

Due to a legacy quirk for regulator-fixed nodes in the gpiolib core, the
GPIO_ACTIVE_HIGH flag in the phandle is ignored in favor of the boolean
enable-active-high property. Without the enable-active-high property present
here, will the WiFi chip receive inverted power control and fail to operate?

> +	};
>  };
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713105950.1346=
962-1-daniel@thingy.jp?part=3D2

