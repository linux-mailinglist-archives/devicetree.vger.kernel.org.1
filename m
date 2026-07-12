Return-Path: <devicetree+bounces-325023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id akCxOtdjU2rvaQMAu9opvQ
	(envelope-from <devicetree+bounces-325023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:52:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 363EE744516
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:52:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WxLGXV14;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325023-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325023-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00A18300DDE3
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 09:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A5C371D10;
	Sun, 12 Jul 2026 09:52:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197762F39B5
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 09:52:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783849941; cv=none; b=A38o3xa4ZnbNNDcdrGqwccH4zPeoBshBknlOQBB8WdL69Tw0mVi70uxK3VvQvuRFRC3t96wjlbbGwl24e9hhqsL/PDEi+tdIrZ3DP2EN0zRTr/QF6HlIe9Ni7dyXuHexxLZ1i85d6rkluEQisBBV6I8Fn8x+7KZOS6KVhCpkFgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783849941; c=relaxed/simple;
	bh=MrzkTauUQCr6sN8d+/BSKqJaYDRaFlC9T5n/NsxGx64=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JCqwnaLyOYb31emQNGseJ/X5VDlaFtqBGVP1qWSg8m6bmdmvp6hr0I/rHTh3qRoUhntvtHaZbrcILfcOfmbYbMnIKtwwA4KNddSvZ7dW6Hi3KPqmhh8ISHA+hqlLO/xnf+v24h3Q6fzp31TjDzg/dAMhkQpB7k04/Xf73431oNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxLGXV14; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 965CD1F000E9;
	Sun, 12 Jul 2026 09:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783849939;
	bh=Ofxh8Rp0hgB2Nimi6uutsUDrPGmS7KganYLRaNWqfV4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WxLGXV14BFzs9B8EfHcg0fUW+9BHnQhtQMU+rm5erkqfqmYuvi3OVl7TOqoc4/U3S
	 kQaV4IBBgFy7FEi6llMxV1ZX3pmB/lGj/PxvyJbTUOUSGHk/QkBIb9PDpUbkBEVcML
	 W9TLxEOA2TFXsJf/rQlDe2wdtpVCRjSiLgM/ho/avgjt++FKbcrQmsY2sfkBZjInjV
	 vnGMyRR32DIaTvQDyWFMdV4KUb7ydsvcYhkYBzptD2KxJVIl/nDCQu5HVXatwoxlWJ
	 iOZPU4kQssU8N0ZHfI3qYWJKJtoyOi6pS5rhT8IlS078r16ipBu5JjnAqME6uSbhvL
	 PTuKykx48+b7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 12/12] arm64: dts: apple: t60xx: jxxx: Add
 device-specific SMC hwmon sensors
Reply-To: sashiko-reviews@lists.linux.dev
To: "James Calligeros" <jcalligeros99@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260712-smc-subdev-dt-v1-12-7763006d57c7@gmail.com>
References: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
 <20260712-smc-subdev-dt-v1-12-7763006d57c7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 09:52:19 +0000
Message-Id: <20260712095219.965CD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325023-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jcalligeros99@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 363EE744516

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] M2 Mac Studio models incorrectly include the single-fan hwmon co=
nfiguration instead of the dual-fan configuration.
--

--- Patch [12]: [PATCH 12/12] arm64: dts: apple: t60xx: jxxx: Add device-sp=
ecific SMC hwmon sensors ---
commit 9b6661d8907736a04d8f29e1718ac346ff51ced8
Author: James Calligeros <jcalligeros99@gmail.com>

arm64: dts: apple: t60xx: jxxx: Add device-specific SMC hwmon sensors

Add the device-specific hwmon sensors for select T60xx-based devices.

[ ... ]
> diff --git a/arch/arm64/boot/dts/apple/t6021-j475c.dts b/arch/arm64/boot/=
dts/apple/t6021-j475c.dts
> index 533e357748746..82689c380cdf2 100644
> --- a/arch/arm64/boot/dts/apple/t6021-j475c.dts
> +++ b/arch/arm64/boot/dts/apple/t6021-j475c.dts
> @@ -35,3 +35,5 @@ &port01 {
>  &pcie0_dart_1 {
>  	status =3D "okay";
>  };
> +
> +#include "hwmon-fan.dtsi"

[Severity: Medium]
Should this M2 Max Mac Studio use hwmon-fan-dual.dtsi instead of
hwmon-fan.dtsi?

Using the single-fan configuration might cause hardware monitoring telemetry
to miss the second fan on this device, leading to incomplete fan statistics
in userspace.

> diff --git a/arch/arm64/boot/dts/apple/t6022-j475d.dts b/arch/arm64/boot/=
dts/apple/t6022-j475d.dts
> index 31f24bbda9689..f50a6d56f3d8e 100644
> --- a/arch/arm64/boot/dts/apple/t6022-j475d.dts
> +++ b/arch/arm64/boot/dts/apple/t6022-j475d.dts
> @@ -44,6 +44,8 @@ &typec5 {
>  	label =3D "USB-C Front Left";
>  };
> =20
> +#include "hwmon-fan.dtsi"

[Severity: Medium]
Does this M2 Ultra Mac Studio also need hwmon-fan-dual.dtsi rather than
hwmon-fan.dtsi?

Similar to the M2 Max model, using the single-fan configuration could cause
hardware monitoring to miss the second fan's telemetry.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712-smc-subdev=
-dt-v1-0-7763006d57c7@gmail.com?part=3D12

