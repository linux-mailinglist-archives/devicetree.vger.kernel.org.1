Return-Path: <devicetree+bounces-309619-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kEPHAQMqKWpPRwMAu9opvQ
	(envelope-from <devicetree+bounces-309619-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:10:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 603D0667AB8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:10:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PbAIfqpY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309619-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309619-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0FA9C31CE2B0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0930C3AE1A8;
	Wed, 10 Jun 2026 09:02:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E699A40D585
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:02:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082158; cv=none; b=HNsqfHhaiAvpEYimONrxpKFeY0BuegDNHLfL/DbAuoWADWZe723mQBPWoACj23HwDuCYlT7cjhH13sik1z29zfJtH2HX37Up4O+PSHNoKKN4OnrXvy84ZstDE5xOMvaZGjNWFBK8egN9uLTyiGo7jaMY3uVpL8p2267Ay4rQIDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082158; c=relaxed/simple;
	bh=3kR1dZ2Gc7YMrHKGPGxxf2V1yVJKuYgIuXhD3FG8rOE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NZUu7uCEShNHcmwtWSA9T9kr47pB6agaJgxm7LbOOMGm35bLyZiHZdQDVtTftcSrNbfd3i51p1UYA4qCVY+zMVErxAQ7yCIBBOByS+fk2my0ELBj4U1g4Zu0ZMhFvtGFelTuf7tKKQu1RYxf7o8IqMSuqNj1RrkbabdN3bdMCqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbAIfqpY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F8F81F00898;
	Wed, 10 Jun 2026 09:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082157;
	bh=Db9PYlwm15Z5iuZ3e7tJUmfQ9RXJOY3Oc7W9i1hxoyc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PbAIfqpYLCZpxghne3ilQrtH3ZlGpymkS9zErxjh34WDr3EL9jLoiS8bVgPQKWYej
	 ZPh8FfC0ud00csvCLjV8X/gt5UIMkOMzxCk4y/TgGSockQGk0yJpppnx0yFSse7DRq
	 hGX/sYILCroZDh+5gwpnro8hxghiCBR0LiuZHK8TA1/koNH7T0mSLrkFsSv5nEAPtO
	 x9kA6xtDIaSap5Nr+yZ3M5Kxbgwfbukr/0zZEFAjlbHMGM2vvGxaWCg4OaZrsZbZM+
	 B/Fo7qG00tElfMe2mox5nt6GJ9hpysAbv51m48cBJ4/V1vmWI6kmc4Y/1eOhV26Apj
	 MOfYN9nYUAreQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 16/16] arm64: dts: mediatek: mt8188-geralt: Add
 WiFi/BT as M.2 E-key slot
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610084053.2059858-17-wenst@chromium.org>
References: <20260610084053.2059858-17-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 09:02:36 +0000
Message-Id: <20260610090237.0F8F81F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309619-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,chromium.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 603D0667AB8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The pinctrl configuration for the W_DISABLE kill pins drives them =
physically HIGH before the VIO/VCC regulators are enabled, causing chip bac=
k-powering and an initial signal glitch.
--

commit c9c4e7dd87a963320b0c2bf646e1e008f5ee5638
Author: Chen-Yu Tsai <wenst@chromium.org>

arm64: dts: mediatek: mt8188-geralt: Add WiFi/BT as M.2 E-key slot

This commit models the chip-on-board WiFi/BT solution on MT8188 Geralt as
an M.2 E-key slot. It adds the PMU_EN pin controls and drops the always-on
property from the pp3300_wlan regulator to properly reflect power sequencin=
g.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8188-geralt.dtsi
> index 4cb23595d17b4..d7b5eb95ba0fe 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
[ ... ]
> @@ -193,6 +202,39 @@ adsp_dma_mem: memory@61000000 {
>  			no-map;
>  		};
>  	};
> +
> +	wifi-bt-connector {
> +		compatible =3D "pcie-m2-e-connector";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&m2_e_key_kill_pins>;
> +		vpcie1v8-supply =3D <&mt6359_vcn18_ldo_reg>;
> +		vpcie3v3-supply =3D <&wlan_pmu>;
> +		w-disable1-gpios =3D <&pio 13 GPIO_ACTIVE_LOW>;
> +		w-disable2-gpios =3D <&pio 14 GPIO_ACTIVE_LOW>;
[ ... ]
> @@ -999,6 +1057,14 @@ pins-bus {
>  		};
>  	};
> =20
> +	m2_e_key_kill_pins: m2-e-key-kill-pins {
> +		pins-kill {
> +			pinmux =3D <PINMUX_GPIO13__FUNC_B_GPIO13>,
> +				 <PINMUX_GPIO14__FUNC_B_GPIO14>;
> +			output-high;

[Severity: High]
Since pp3300_wlan is no longer always-on, does this output-high configurati=
on
cause the unpowered Wi-Fi/BT chip to be back-powered?

The device core automatically applies the default pinctrl state during
instantiation, before the power sequence driver probes and turns on the
regulators. Driving a physical HIGH voltage into the w-disable pins of an
unpowered IC can forward-bias internal ESD diodes and leak current.

Additionally, when the driver eventually probes, it will request the
w-disable pins. Since the wifi-bt-connector node defines them as
GPIO_ACTIVE_LOW, requesting a logical HIGH translates to a physical LOW.

Will this result in an unintended HIGH-to-LOW physical glitch on the
unpowered chip's w-disable lines before the regulators are finally enabled?

> +		};
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610084053.2059=
858-1-wenst@chromium.org?part=3D16

