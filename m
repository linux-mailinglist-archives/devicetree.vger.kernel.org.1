Return-Path: <devicetree+bounces-319175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ir2oGcUvRmpjLQsAu9opvQ
	(envelope-from <devicetree+bounces-319175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:30:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9B16F5439
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:30:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SkwwL2r5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319175-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319175-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E6A1B30BDA58
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0278B47DD75;
	Thu,  2 Jul 2026 09:07:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24F347DD58
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 09:07:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782983269; cv=none; b=uWFCz1D+kWcfZ8CEdD8cC9BuBoqgthBdMT1L9oZXIIgIJ4zBF8difNGWcsN1+faM2E8BnH2LjVse9oF+km5WnnHKXHoS6gRUuANDO8OzbeVN5w22KYNYYoBEN9UVC7Hf3X88JvEQpwA7DcefMQ4GscMOcYW1UTbVFDcGW6k+OSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782983269; c=relaxed/simple;
	bh=HBkefB7x96oKwGQlLbHmpLtBxzPdAGJ1kHf71RbfxgU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jduBnR51l/8OnJ1YnhtfrhxzLV+dinVR2nhJIbZlEYui3JPBwIE7nT+sYP+M/3iPbiQ4TetTJhfSksxSbLX3nmdh/KXrCUuVQ79W28zWuZ2cQ9gA6mWirhHLqtkuFaa15os+M2cN/VQu8LSrL2+e4VrPBxtD4pNUBXH9ftFkQFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkwwL2r5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2958F1F00A3D;
	Thu,  2 Jul 2026 09:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782983268;
	bh=sfQJdhwPVhbgBEzXkE4VFdyHCTHzwch5B9PKJQndVC8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SkwwL2r5og6rnIgfBI20ws6S4k9k61CMC7CeqzNYiBwv6bmPo9ovpxERtmW374D6P
	 xqJUE7KVpIINkO/hXMRdEq2TFULnyEkej73mM6ehZs+dKs/cWOy/MW/2/pizLCBArm
	 o7gyGFRbgV8vBbNz2MYv2nXbgSnyDOgsBElvvHCRbGd7NMi8rQXwUO5PArFFnAzQgI
	 ChDDhyK0cR6+qcgq1ADd7RS4AUw5FQFPyipAMjcGWcnsxjhnr4P/9ONUNy634ZrQh/
	 iMAbIlnuCoRO2k+Ndc22kc2U98sWgc44y7UMTcP3qIi339MTdaL9C7EDe7tvM8hwI+
	 yEc93BnT8FOCg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/4] arm64: dts: realtek: Add GPIO support for
 RTD1625
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702090115.2564318-5-eleanor.lin@realtek.com>
References: <20260702090115.2564318-1-eleanor.lin@realtek.com>
 <20260702090115.2564318-5-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:07:47 +0000
Message-Id: <20260702090748.2958F1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319175-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,realtek.com:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D9B16F5439

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Device Tree mapping conflict where two distinct GPIO controllers=
 claim the exact same pins from the `isom_pinctrl` controller.
--

commit ca40dcb33ea07a0408e101ec08ff651fed48479b
Author: Yu-Chun Lin <eleanor.lin@realtek.com>

arm64: dts: realtek: Add GPIO support for RTD1625

This commit adds the GPIO nodes for the Realtek RTD1625 SoC.
It configures multiple GPIO controllers and establishes their=20
pin controller mapping ranges.

> diff --git a/arch/arm64/boot/dts/realtek/kent.dtsi b/arch/arm64/boot/dts/=
realtek/kent.dtsi
> index 8d4293cd4c036..228b82dfdb7ac 100644
> --- a/arch/arm64/boot/dts/realtek/kent.dtsi
> +++ b/arch/arm64/boot/dts/realtek/kent.dtsi
> @@ -151,6 +151,37 @@ uart0: serial@7800 {
>  				status =3D "disabled";
>  			};
> =20
> +			gpio: gpio@31000 {
> +				compatible =3D "realtek,rtd1625-iso-gpio";
> +				reg =3D <0x31000 0x398>;
> +				gpio-controller;
> +				gpio-ranges =3D <&isom_pinctrl 0 0 2>,
> +					      <&ve4_pinctrl 2 0 6>,
> +					      <&iso_pinctrl 8 0 4>,
[ ... ]
> +					      <&iso_pinctrl 26 4 2>,
> +					      <&isom_pinctrl 28 2 2>,
[ ... ]
> +			iso_m_gpio: gpio@89100 {
> +				compatible =3D "realtek,rtd1625-isom-gpio";
> +				reg =3D <0x89100 0x30>;
> +				gpio-controller;
> +				gpio-ranges =3D <&isom_pinctrl 0 0 4>;

[Severity: Medium]
Is it intended for both the gpio@31000 and iso_m_gpio controllers to claim
the exact same pins from the isom_pinctrl controller?

Looking at gpio@31000, it maps pins 0-1 and 2-3 from isom_pinctrl. Down here
in iso_m_gpio, the gpio-ranges property identically maps isom_pinctrl pins =
0,
1, 2, and 3.

Could this cause unexpected behavior in the pinctrl subsystem? Functions li=
ke
pinctrl_find_gpio_range_from_pin() strictly return the first matched range,
which might silently shadow the other controller's reverse lookups. Also, if
both controllers attempt to request the same pin via pinctrl_gpio_request(),
would the second request fail because the pin will be marked as already in-=
use?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702090115.2564=
318-1-eleanor.lin@realtek.com?part=3D4

