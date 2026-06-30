Return-Path: <devicetree+bounces-317929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tiAoLoHoQ2qVlQoAu9opvQ
	(envelope-from <devicetree+bounces-317929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:02:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 952156E636B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:02:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=c5qGriNw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317929-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317929-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6C4A317A58C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA019477992;
	Tue, 30 Jun 2026 15:52:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53DC47279F
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 15:52:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782834763; cv=none; b=g+lRktlIOgest35Dq7ERVoYNsvJmXclmIETkOw63VW0k5LoDHjJi9E315yhIt5BwmiZeWhRFZEvGpHm7rTbNlXKozZEziqy7xx9BuwAyAzpWH9M0pYvgQ1e+iahtgN40l/Tud+L7NWo8YCdGp8H/SElvMkjV1/17hE57bW7/Xq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782834763; c=relaxed/simple;
	bh=8Tng/785TOksM3cqv9je7/B9gCJxv05mWOFSi5TVs0c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OzKX5WCaI+1YGiZZzjvlRSJxRWFYT0Kjrmx+fXMyU9YF4ElyF/xUW7lhzWTHiNHfEWo9v2Yrh2zLl3Lybb463vkAjixRxwUEwKHPgZaKcf30e1W6ugJkx5GCtJeHgClJ8p9xK3Q9pLN60Z/sDSBcxL515ivuRDnqxdEmLtKntNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5qGriNw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF2421F000E9;
	Tue, 30 Jun 2026 15:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782834759;
	bh=LAXi/kUgq6JGyQXb76UTzEBFHHAJALz8A/M7dhKRQ4c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=c5qGriNweCCtAQNyHxZM0DDKH1+q4mcVmJex4/7sqQTzSviSfx5o1oN75YV0TG9BC
	 TwwPoEp3/jFFaNo1JnxLWSdWnhymOkObh0QIkSS2I1o6N1lpJKNw0uly01JB+sJzfc
	 XhlnyGrlCpmjxcCNRD1//l+WrWeBAZzVZTmJFEklfIc3p1T7PIgR+4FL0cJMLH24JG
	 IeCp4+TZ34q3nKIIw+zeCDcsDV17NsdiZ0VqZs2DTjigiBnIT/qKV8ZXc4GMiL2YKN
	 n91GKn0F4a2Sy13J9BJWvHbvbDe7NWRhwH69aiRczLX2bkd39/mBjO3V5+KX6OGgqN
	 2NiQ9KPSkJisg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add devicetree for the
 Graperain G3568 v2
Reply-To: sashiko-reviews@lists.linux.dev
To: "Coia Prant" <coiaprant@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260630153810.3574714-7-coiaprant@gmail.com>
References: <20260630153810.3574714-2-coiaprant@gmail.com>
 <20260630153810.3574714-7-coiaprant@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 15:52:38 +0000
Message-Id: <20260630155238.EF2421F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-317929-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:coiaprant@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,chukouplus.com:url,gov.cooking:url,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 952156E636B

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `press-threshold-microvolt` values for the ADC keys are inco=
rrectly set to the midpoints instead of the nominal voltages, breaking the =
closest-match logic.
- [Medium] The `uart8` pinmux configuration for the AP6356S Bluetooth modul=
e omits the RTS pin, breaking hardware flow control.
--

commit fa96250010d1434d5bd9c7fed26ebc77f8c2f9f1
Author: Coia Prant <coiaprant@gmail.com>

arm64: dts: rockchip: Add devicetree for the Graperain G3568 v2

This patch adds support for the Graperain G3568 v2, an RK3568-based
development board. It defines the device tree including CPU, memory, networ=
k,
wireless, storage, display, and standard IO interfaces.

Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6dadd=
ec9e400458816dd4c57ba807fc3.pdf
Link: https://blog.gov.cooking/archives/research-graperain-g3568-v2-and-fla=
sh.html

> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts b=
/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts
> new file mode 100644
> index 0000000000000..221992d6c6003
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts
> @@ -0,0 +1,894 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)

[ ... ]

> +	adc-keys {
> +		compatible =3D "adc-keys";
> +		io-channels =3D <&saradc 0>;
> +		io-channel-names =3D "buttons";
> +		keyup-threshold-microvolt =3D <1800000>;
> +		poll-interval =3D <100>;
> +
> +		button-esc {
> +			label =3D "esc";
> +			linux,code =3D <KEY_ESC>;
> +			press-threshold-microvolt =3D <1250000>;
> +		};
> +
> +		button-menu {
> +			label =3D "menu";
> +			linux,code =3D <KEY_MENU>;
> +			press-threshold-microvolt =3D <1600000>;
> +		};

[Severity: Medium]
Are these threshold values correct? The commit message declares nominal
voltages (e.g., 1.1V for ESC and 1.4V for MENU), but the values here seem to
be configured to the midpoints.

The adc-keys driver dynamically matches the read voltage to the closest
defined threshold. By configuring midpoints instead of actual nominal
voltages, the distance calculations can become skewed.

For example, when the MENU key (nominal 1.4V) is pressed, its distance to
the configured MENU threshold (1.6V) is 200mV, but its distance to the ESC
threshold (1.25V) is only 150mV.

Won't the driver incorrectly register the MENU key as ESC?

> +		button-vol-down {
> +			label =3D "volume down";
> +			linux,code =3D <KEY_VOLUMEDOWN>;
> +			press-threshold-microvolt =3D <600000>;
> +		};
> +
> +		button-vol-up {
> +			label =3D "volume up";
> +			linux,code =3D <KEY_VOLUMEUP>;
> +			press-threshold-microvolt =3D <100000>;
> +		};
> +	};

[ ... ]

> +/* used for WiFi/BT AP6356S */
> +&uart8 {
> +	pinctrl-0 =3D <&uart8m0_xfer &uart8m0_ctsn>;
> +	status =3D "okay";
> +};

[Severity: Medium]
Does this UART configuration omit the RTS pin (&uart8m0_rtsn)?

High-speed Bluetooth modules like the AP6356S require hardware flow control=
 to
prevent packet loss. Without the host RTS pin explicitly muxed, the Bluetoo=
th
module may receive an invalid or floating RTS signal.

Could this prevent it from successfully transmitting data to the host or
cause buffer overflows when hardware flow control is utilized?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630153810.3574=
714-2-coiaprant@gmail.com?part=3D3

