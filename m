Return-Path: <devicetree+bounces-306140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0e3NDGYDIGo7uAAAu9opvQ
	(envelope-from <devicetree+bounces-306140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 12:35:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB9D636A3F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 12:35:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Tn3KpQMU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306140-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306140-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 211D93022671
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 10:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A96539D3D3;
	Wed,  3 Jun 2026 10:23:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834F83002DD;
	Wed,  3 Jun 2026 10:23:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780482213; cv=none; b=oG0ON3TVu9l2alY/bqqArYvzRGAvqpPAplEsKKDa/HgpJfu/LuAlNvnsX2fVSgcyzm9TaP6I/bI+ZPeShAkzaWPV6mJACjvYd7ToWzY5lfKBJu9Ihp/tnR0AQfeC+9udjAgOgyhxQLKEPGostpihyQ0pyqcCHIsfmBEO9jcsXv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780482213; c=relaxed/simple;
	bh=BltK2ItbtfLVIPd4Jm8RKN8UBqwQ6rWn9mts6j+Qtsc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=e2GZzn60S+2QZiP65IEZXMiH5Y9mAToTRXrSnUA2nhtNhQiEn+weko0IBqeasjxYUnn5Qa3l/L3YAzP6jtDWE3wK154SdddWNHZjqdOLkWHq79BfeCSL9BiDSUybH7sOOLTZ0Bv/kkG1ldb7vh2RSesWdfpyNgEKxAoUetRFh3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn3KpQMU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2F881F00893;
	Wed,  3 Jun 2026 10:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780482212;
	bh=wedUPkP/ZkbDoVrJh/keu1QRh9w3bsDLnSt98yeq5qY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Tn3KpQMUfaQvVJk5AMJjykERNeVGi1VsuAkyeLkoU9sAeSlnJhMFvA7rzEWwrII7N
	 lxNQLHjdvtXkAY7YCBQGpQ304h1ukSlzZ2nheTtU/4FAPvXHxHaRs1bdjYGPShnjTC
	 lV0gNWjeqh+1HyzayhtZINbPzLMLrZ2cH3j6U1MlnCxIbMYGQLaPSndJYvwHdwCy0X
	 m+whf2KrdYnfg6uCgCoOOpAOWl4ygWbmW9z37SfvuumwZIuNV/OiW+cJ9g7abKXBpB
	 ExPsEasJsSWjr5cl4mcgbdr+bupl0FdZTVGVRI1KKRxNavmbv+SmuRr6rkAmFOjdDb
	 0H+AkDUhMXp6A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/4] arm64: dts: freescale: Add dual-channel LVDS
 overlay for TQMa8MPxS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexander Stein" <alexander.stein@ew.tq-group.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260603093621.2504490-4-alexander.stein@ew.tq-group.com>
References: <20260603093621.2504490-4-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 10:23:31 +0000
Message-Id: <20260603102331.C2F881F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306140-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:alexander.stein@ew.tq-group.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,tq-group.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1FB9D636A3F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing deletion of the original 'port' node when adding 'ports' to=
 'panel_lvds0', causing DT schema violations and broken bidirectional links.
--

commit f3c8e1f6a8535dc5df481fba1097371fa89698ff
Author: Alexander Stein <alexander.stein@ew.tq-group.com>

arm64: dts: freescale: Add dual-channel LVDS overlay for TQMa8MPxS

This adds an overlay for the supported LVDS display AUO G133HAN01.
Configure the video PLL frequency to exactly match typical pixel clock of
141.200 MHz.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpqs-mb-smarc-2-lv=
ds-g133han01.dtso b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpqs-mb-smarc=
-2-lvds-g133han01.dtso
> new file mode 100644
> index 0000000000000..9595cf4d43cd0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpqs-mb-smarc-2-lvds-g133=
han01.dtso
[ ... ]
> +&panel_lvds0 {
> +	compatible =3D "auo,g133han01";
> +	status =3D "okay";
> +
> +	ports {

[Severity: Low]
Does this overlay need to explicitly remove the original port node using
/delete-node/ port;?

The base device tree defines panel_lvds0 with a single port node. Because
device tree overlays merge rather than overwrite nodes, the original port
node remains in the merged tree alongside this new ports node.

This violates the OF graph device tree schema which enforces
oneOf: [port, ports]. It also breaks the OF graph bidirectional link
requirement, as the old endpoint points to ldb_lvds_ch0, but ldb_lvds_ch0
no longer points back to it, triggering a remote-endpoint is not
bidirectional error in dtbs_check.

> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		port@0 {
> +			reg =3D <0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603093621.2504=
490-1-alexander.stein@ew.tq-group.com?part=3D4

