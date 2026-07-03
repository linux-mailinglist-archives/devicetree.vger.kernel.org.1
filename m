Return-Path: <devicetree+bounces-319772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SthXO7ZER2pMVAAAu9opvQ
	(envelope-from <devicetree+bounces-319772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:12:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4DF6FE9B9
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 07:12:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="HZ9/vb5V";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319772-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319772-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 339B5301E7DC
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 05:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2572F35674D;
	Fri,  3 Jul 2026 05:10:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9608D233134
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 05:10:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783055448; cv=none; b=slm9njuetRubn/h8KaklBzoE4WULQyWh3paMVdneOub6A3Vbti4a7hoCkgP7tYWWem7rwPNCsDtgUCaMtHW51KkFfqsmKIKuYpd/Z5GjaHwXCM6vSX0hD6hcpl7Fmy36b8RFZt8cYtbYr8isPIh38KtHBZvXQNcvHx7IoYhUbT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783055448; c=relaxed/simple;
	bh=S8OrYcn614sp/cWgjmVymd1l4nxBKw+kN8XfEg13vkY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Km6YCaJJypW5hD6WxGvO504PA3FSQLwARtrhfU150mCt5lwD8bvaD5rVMJHb92z13MDfxpEqYeHwkdbttN5HKsDcCGkUCZkxGq8YAus/ZjN8ecIGyfd/Sdxufs5zvgVbQVj8nGCFjkW28FSlj+KWsa7GQIwnuuTxlUMyBUAVXhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ9/vb5V; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F28241F000E9;
	Fri,  3 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783055434;
	bh=QZ2CO3jLVy9ZaRH74FxPea8ve1av0ZDaH6dxrvYn27k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HZ9/vb5VRKYaoEXd92qkzwvWgn9szJ3xwEqCi7EkSBw0vnHjavJqu92jKBs8m7vt9
	 Eu06ToTbUN209MYqZK0B3HmlQBXdfaxWH7mvRbumoQ9xG1kJi5PVHL6EZZOrP8B5kc
	 XbumAcwZDPMgrirNuEZu6FTtnm1XhW56LicQ5e5TEHLgJ6xsDS+woI/fBvonxAmB96
	 Jc2KwnVFmYDNqt9w9P7zR2+jea0dGEHNSN4xi2rbHg50l9iCk65/WKjQIUiDGAn3bi
	 6jCKHrh4xyQYu/kHV3wKd995OqNrOK/kFrj9TaeCp57/loKKcXn7ZK0DncF9VdUi7S
	 s1GfVlwYt6PjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: ipq5018: add nodes required
 for Bluetooth support
Reply-To: sashiko-reviews@lists.linux.dev
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260703-ipq5018-bluetooth-v3-5-62da72818ab3@outlook.com>
References: <20260703-ipq5018-bluetooth-v3-0-62da72818ab3@outlook.com>
 <20260703-ipq5018-bluetooth-v3-5-62da72818ab3@outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 05:10:33 +0000
Message-Id: <20260703051033.F28241F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319772-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[outlook.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:george.moussalem@outlook.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,outlook.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5C4DF6FE9B9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Adding the 'syscon' compatible string to the 'apcs_glb' node withou=
t updating the device tree binding schema violates the schema and causes dt=
bs_check failures.
--

commit 8f9212782ff3d8470d83aca03720126dc8c3c25b
Author: George Moussalem <george.moussalem@outlook.com>

arm64: dts: qcom: ipq5018: add nodes required for Bluetooth support

This commit adds device tree nodes for the reserved memory carveout and
Bluetooth on the ipq5018 platform. It also modifies the apcs_glb
mailbox node to include "syscon" in its compatible list.

> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/=
qcom/ipq5018.dtsi
> index 6f8004a22a1ff..65a47ba7d3a34 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi

[ ... ]

> @@ -647,7 +669,8 @@ watchdog: watchdog@b017000 {
> =20
>  		apcs_glb: mailbox@b111000 {
>  			compatible =3D "qcom,ipq5018-apcs-apps-global",
> -				     "qcom,ipq6018-apcs-apps-global";
> +				     "qcom,ipq6018-apcs-apps-global",
> +				     "syscon";
                     ^^^^^^^^

[Severity: Low]
Will adding "syscon" here without updating the device tree binding schema
cause a make dtbs_check validation failure?

Looking at Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.=
yaml,
the schema currently restricts the compatible list for this hardware to exa=
ctly
two items:

      - items:
          - enum:
              - qcom,ipq5018-apcs-apps-global
              - qcom,ipq5332-apcs-apps-global
              - qcom,ipq5424-apcs-apps-global
              - qcom,ipq8074-apcs-apps-global
              - qcom,ipq9574-apcs-apps-global
          - const: qcom,ipq6018-apcs-apps-global

Does the yaml binding need to be updated alongside this patch to permit
"syscon" as a third compatible string for this device?

>  			reg =3D <0x0b111000 0x1000>;
>  			#clock-cells =3D <1>;
>  			clocks =3D <&a53pll>, <&xo_board_clk>, <&gcc GPLL0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-ipq5018-bl=
uetooth-v3-0-62da72818ab3@outlook.com?part=3D5

