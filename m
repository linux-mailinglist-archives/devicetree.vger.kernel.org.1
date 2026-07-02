Return-Path: <devicetree+bounces-319251-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id b38XOpQ/RmoSMwsAu9opvQ
	(envelope-from <devicetree+bounces-319251-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:38:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EC16F6079
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:38:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YmuQUDox;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319251-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319251-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6DB1E30E6F56
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9CF0494A08;
	Thu,  2 Jul 2026 09:49:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9B94963D4
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 09:49:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782985742; cv=none; b=g3R7hmJlRTjSc8795DJc0cvIlRleobLc7bwd9f1hYFWIoFJkaoSlOPgAhYed+6t6OFSez85ZV1g0LQl2IWg/1LqunpWSFY4hNM+hHDu4gTe9XAq0KIf+eNhUeNaAiMObdBoMQSrK7rw/poBvOYszAQiLwRhwPrZjU2m+U8vmeg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782985742; c=relaxed/simple;
	bh=CEh/vOMpZ+l67gY637b64XwY4RpR733uWLFb1+py5uU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FCSMwh/RNKg8Aq04kjHylEmehfQHwSwxz8KRy+N1LvXHxTEQba5OlEuXFqDVgi3a4vHvaT04VslSeFQVTRyzwUygEdGuaI/e5D6B2WFC60TUMZ6+E7V31HaTpCextOff2pJ7aQLAHDVCFvodeCLMBM2Ik/V7HkmMHH7n5Cq5bJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmuQUDox; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0593A1F00ACA;
	Thu,  2 Jul 2026 09:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782985740;
	bh=uomZFN4HTEMP8tEVV7pDW9ZSSqwHxb4e6Ad21zW1C2g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YmuQUDoxkPPFEH3X6yzyFllhFY1641r1e9tS1kPlCZ2yz/ClSkVGGorznDQ1yhd4S
	 Nvg8q0LaMkFsCrJxXTB90PHbajOFAvej2SAgifX+8U55xCD7Ji+NjQcLfTv3cPzrHZ
	 RScm8tcCGzk0kBxZHG0hAH6kzqUcRa1YrD3v+EffFI8pF1UKDLrRRbhPkwDL6Cf4ZV
	 ec3Mb0LDL1eP+14XxYdyBckswlj1U1+e9qiF2rg8r6b1Es0jX1UrXVu71wsqskC/Wg
	 SanvrxUif9CUznNUnGLg6ecfNoGZ/aXzJD0NUAv0dHZByQ4zzNtzizivb8FDgrotWJ
	 b0tPofBa6wN/A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: sm8650-ayaneo-pocket-s2: add
 display nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260702-topic-sm8650-ayaneo-pocket-s2-display-dt-v3-1-e6de68d33f9b@linaro.org>
References: <20260702-topic-sm8650-ayaneo-pocket-s2-display-dt-v3-1-e6de68d33f9b@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:48:59 +0000
Message-Id: <20260702094900.0593A1F00ACA@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-319251-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,outlook.com:email,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58EC16F6079

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `mdp_vsync_active` and `mdp_vsync_suspend` pinctrl states ar=
e defined to configure hardware VSYNC, but they are never applied to any de=
vice node.
- [Low] The patch introduces devicetree nodes with undocumented `compatible=
` strings (`sgmicro,sgm3804`, `silergy,sy7758`, `ayaneo,wt0630-2k`, `renesa=
s,r63419`) that lack in-tree bindings and drivers.
--

commit 64734ca20f06a3d7e88667241a73106d33fde6b6
Author: KancyJoe <kancy2333@outlook.com>

arm64: dts: qcom: sm8650-ayaneo-pocket-s2: add display nodes

Add nodes for the dual DSI panel, the SGM3804 regulator, the
SY7758 backlight controller, the touch controller, and enable
the GPU to enable full display support.

> diff --git a/arch/arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts b/arch/=
arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts
> index 0dc994f4e48d9..56818fc9edbfc 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-ayaneo-pocket-s2.dts

[ ... ]

> @@ -1053,6 +1102,51 @@ redriver_ss_in: endpoint {
>  	};
>  };
> =20
> +&i2c9 {
> +	status =3D "okay";
> +
> +	/* Screen power */
> +	regulator@3e {
> +		compatible =3D "sgmicro,sgm3804";

[Severity: Low]
Are the compatible strings sgmicro,sgm3804, silergy,sy7758, ayaneo,wt0630-2=
k,
and renesas,r63419 missing bindings? It looks like dtbs_check validation co=
uld
fail due to missing bindings, and the corresponding devices might not
instantiate if no drivers exist in the tree.

> +		reg =3D <0x3e>;
> +
> +		pinctrl-0 =3D <&sgm3804_default>;

[ ... ]

> +	panel@0 {
> +		status =3D "okay";
> +		compatible =3D "ayaneo,wt0630-2k", "renesas,r63419";
> +		reg =3D <0>;
> +
> +		pinctrl-0 =3D <&disp0_reset_n_active>;
> +		pinctrl-1 =3D <&disp0_reset_n_suspend>;

[Severity: Medium]
Should mdp_vsync_active and mdp_vsync_suspend be included in pinctrl-0 and
pinctrl-1 alongside the reset states?

The mdp_vsync_active and mdp_vsync_suspend states are defined below to
configure hardware VSYNC, but they do not seem to be applied to any device
node. This might leave the VSYNC pin unmuxed, disconnecting the hardware
Tearing Effect signal and causing screen tearing on the display.

> +		pinctrl-names =3D "default", "sleep";
> +
> +		vddio-supply =3D <&vreg_l12b_1p8>;

[ ... ]

> +	mdp_vsync_active: mdp-vsync-active-state {
> +		pins =3D "gpio86";
> +		function =3D "mdp_vsync";
> +		drive-strength =3D <2>;
> +		bias-pull-down;
> +	};
> +
> +	mdp_vsync_suspend: mdp-vsync-suspend-state {
> +		pins =3D "gpio86";
> +		function =3D "mdp_vsync";
> +		drive-strength =3D <2>;
> +		bias-pull-down;
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-topic-sm86=
50-ayaneo-pocket-s2-display-dt-v3-1-e6de68d33f9b@linaro.org?part=3D1

