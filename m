Return-Path: <devicetree+bounces-305629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1GSDJsbLHmrpVAAAu9opvQ
	(envelope-from <devicetree+bounces-305629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:25:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3399E62E02A
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:25:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Tey44he1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305629-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305629-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1028A3017E4B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7EE3CC7F4;
	Tue,  2 Jun 2026 12:23:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9243DA5AD
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:23:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780402997; cv=none; b=ThwE5e69oFCBiwhEdGxt4p/reLUffOf9qsIj6if9BvmmWfCoU5T/e5kkbfDlBNsPiBn3bbDPbR/Vz3pmacDJrLqzQ2zHykraUw9T+oZnZ8qCY3j7/HVy48V4Sf1D15XtjGLh7rN3vmGc8MXpL51D5IWWCPCpPgBrWD7dQc5uGx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780402997; c=relaxed/simple;
	bh=nSmhYnFjiBllFJ3iaSijaRcPvGIlwqtxNQ4jmN3Lddw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jd786KB8qmY5e3rLO52Bi8j7l+MFdAqA8XOAbghJmY/4DE8zi0E47+9G80k5PZILYNMEi142gZaex2jgfWZ2AZdtHu3vFaELH5T7WvBkQRN27DkXTXlfB2Wh50GCwF/6RVCeRRAjG3J99tdDZz4F7QXZHod2bP/uXak1G1jY9Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tey44he1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA42D1F00893;
	Tue,  2 Jun 2026 12:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780402996;
	bh=pc9ei3tOlnHQ2Ou0VDqvYC4tWxsURZul0CJz7OAsSK8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Tey44he1SrX32oKLEE33xdkdEOHYocA8eVzS9sW0zt7Pcci6qpYxsjsoEF5TWbfQS
	 nKJm0c6SLxkaFrg1vSVJFZcfb5w1tA4H/hp8UGMZ+Sj+rFT/6jkHOQ+4Rw+aMOQhay
	 /P6q+LKJJyEl4vsiFw9H4+12ctL7X4/FYhYVTj0fAMkJdGFlbKUagwCzPQHgKeqE2i
	 5KaAhABQxV4NItJ7KDml8h556Jvjz5UhJFKEeR/5R4nir6ssTJiuvItUTTj7jzCSPy
	 eX7wC9LgDNSmYv4Tn6rbLz4aN/Ubqv9ZuVp8FRkx2D1zukoBEKqWDFde0LYRhUrSXD
	 UIljmy9WTWhRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/7] arm64: dts: ti: k3-am69-aquila: Add Toradex
 Capacitive Touch Display 7" DSI with adapter
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vitor Soares" <ivitro@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260602115123.1324474-13-ivitro@gmail.com>
References: <20260602115123.1324474-13-ivitro@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 12:23:15 +0000
Message-Id: <20260602122315.BA42D1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305629-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ivitro@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3399E62E02A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree overlay introduces an undocumented 'riverdi' vendor=
 prefix and an unlisted compatible string for 'panel-lvds'.
--

commit 99fbcf48f1baef1bcb344b1c59410f3c79e90a6e
Author: Vitor Soares <vitor.soares@toradex.com>

arm64: dts: ti: k3-am69-aquila: Add Toradex Capacitive Touch Display 7" DSI=
 with adapter

This commit adds a device tree overlay for the Toradex Capacitive Touch Dis=
play
7" DSI used with the Toradex DSI Display Adapter on the Aquila Development
Board. It configures the internal SN65DSI83 DSI-to-LVDS bridge, the Riverdi
TFT LCD panel, and the Ilitek capacitive touch controller.

Link: https://developer.toradex.com/hardware/accessories/displays/capacitiv=
e-touch-display-7inch-dsi
Link: https://developer.toradex.com/hardware/accessories/add-ons/dsi-displa=
y-adapter

> diff --git a/arch/arm64/boot/dts/ti/k3-am69-aquila-adapter-panel-cap-touc=
h-7inch-dsi.dtso b/arch/arm64/boot/dts/ti/k3-am69-aquila-adapter-panel-cap-=
touch-7inch-dsi.dtso
> new file mode 100644
> index 0000000000000..36d3746c8bd08
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am69-aquila-adapter-panel-cap-touch-7inch=
-dsi.dtso

[ ... ]

> +&{/} {
> +	backlight_pwm3: backlight-pwm3 {
> +		compatible =3D "pwm-backlight";
> +		brightness-levels =3D <0 45 63 88 119 158 203 255>;
> +		default-brightness-level =3D <4>;
> +		/* Aquila PWM_3_DSI (AQUILA B46) */
> +		pwms =3D <&main_ehrpwm5 0 6666667 0>;
> +	};
> +
> +	panel-lvds-bridge {
> +		compatible =3D "riverdi,rvt70hslnwca0", "panel-lvds";

[Severity: Low]
This isn't a bug, but are the vendor prefix "riverdi" and the specific
compatible string "riverdi,rvt70hslnwca0" documented in the devicetree
bindings?

Since Documentation/devicetree/bindings/display/panel/panel-lvds.yaml stric=
tly
enumerates valid specific compatible strings for the panel-lvds fallback, w=
ill
this cause "make dtbs_check" validation errors if it hasn't been added to t=
he
bindings?

> +		backlight =3D <&backlight_pwm3>;
> +		data-mapping =3D "vesa-24";
> +		height-mm =3D <86>;
> +		width-mm =3D <154>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602115123.1324=
474-9-ivitro@gmail.com?part=3D4

