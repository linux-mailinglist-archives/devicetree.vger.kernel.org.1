Return-Path: <devicetree+bounces-300720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJ5xDQjaDWrE4AUAu9opvQ
	(envelope-from <devicetree+bounces-300720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:58:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 33117591575
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5AA2E31ECB8F
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6C13F1AD8;
	Wed, 20 May 2026 15:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUk5MIqL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8C1392C5F
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 15:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779289617; cv=none; b=OJAJv2dyTOtlW7cUaHqPEPW8y6tusjQKrZmUj3qY3Tbx1STi0KmKCZKr3dUp9JLTyFsGbi5B80WNb2/i26kviKBCWHespNXbHWkzAKS9EAbr1bndanBDEcuTRMy5auyP1cqpFhLU76XIKABYuLztOC0uNOzY2AayrzsSOTMH6so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779289617; c=relaxed/simple;
	bh=Xu6quwpldsVK+JaB6APinYDaGuB72GfCHhH2IxyrwbI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JUsgcCYyvoH3VXYiA8YEI16HDEOj90W+aMrp2G1ylGe57s2cYvwBPdjKg5Kg0ljSnJes4WjBZ5IUEERJJWJPoNAvPajRICNo4k9IaH4FZYrI1/aOom3tfyBkAeUpEJOJYfum96JMBoQTgrurWAiHq9h369Su/LNOzJJEIyefSZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUk5MIqL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCAB41F000E9;
	Wed, 20 May 2026 15:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779289616;
	bh=7noMjEJiyhncX9hIpPPKFZgleyAb+LR9BVe3ZTsJ8Yc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VUk5MIqLjDgI08X9+4b/CAvfFBLWvzl+ehfIfYS7swuFzGuWzsGX9c11yaFqSdDLu
	 sPAK0kIycLw8Lg+IwcKvgIU2C9cILYtu3cLc3KCPWIvMpJOgQ/lggbfQbLLDrU2qK1
	 Uc9QMf4MCPEJ5TfjnWPCxamIQJ2b/8WszFeM6ZywNOBFpseelgeE03NulpB5+kM4T8
	 DZ0S9f9rAZsui5p9BCEZQgnrmmT4PtfV3abHZd/CCfHg5GOEMcpx9GISPwhfpVSb9R
	 8PdmQzV/F9wJlFVHtHve7Ul2di1fNOI+ic6QkUwAcPw5KCqUqVYxd4teIchtVZaPYZ
	 m2ugOSjUokbKw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V8 2/2] arm64: dts: qcom: glymur-crd: add Audio sound
 card node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sibi Sankar" <sibi.sankar@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260520141828.2724689-3-sibi.sankar@oss.qualcomm.com>
References: <20260520141828.2724689-3-sibi.sankar@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 15:06:55 +0000
Message-Id: <20260520150655.DCAB41F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300720-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,0.0.0.0:email,qualcomm.com:email,sashiko.dev:url]
X-Rspamd-Queue-Id: 33117591575
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `audio-routing` property uses lowercase strings, which will fa=
il to match the dynamically created ALSA ASoC DAPM widgets, leaving the spe=
akers disconnected.
- [High] The right woofer is incorrectly routed to the SPK2 output instead =
of SPK1, which breaks the audio stream routing.
--

commit 4086f61ae4a41fcc2e29b8dbcc7878956275252b
Author: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

arm64: dts: qcom: glymur-crd: add Audio sound card node

This commit adds the sound card node for the Glymur-crd board. It defines
the audio routing for speakers and adds device nodes for the WSA884x
smart speakers and DMIC microphones.

> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi b/arch/arm64/boot/d=
ts/qcom/glymur-crd.dtsi
> index e784b538f42e1..4c00d09f766c2 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
> @@ -68,6 +68,54 @@ switch-lid {
>  		};
>  	};
> =20
> +	sound {
> +		compatible =3D "qcom,glymur-sndcard";
> +		model =3D "GLYMUR-CRD";
> +		audio-routing =3D "wooferleft in", "wsa wsa_spk1 out",
> +				"tweeterleft in", "wsa wsa_spk2 out",
> +				"wooferright in", "wsa2 wsa_spk2 out",

[Severity: High]
ALSA DAPM string matching for audio routing is exact and case-sensitive.
The widgets are created with names derived from sound-name-prefix (e.g.,
WooferLeft) and the widget type suffix (e.g., IN), making the expected name
"WooferLeft IN".

Similarly, the WSA macros create widgets with uppercase names like
"WSA WSA_SPK1 OUT".

Does using lowercase names here cause snd_soc_dapm_add_route() to silently
fail to find the matching widgets, leaving the speakers disconnected?

[Severity: High]
The right_woofer node defines qcom,port-mapping =3D <1 2 3 7 12 14>, which
corresponds to the first SoundWire stream on the WSA2 macro. This first
stream connects to the WSA2 WSA_SPK1 OUT DAPM widget.

Could routing wooferright to wsa2 wsa_spk2 out connect the woofer to the
tweeter's stream instead, breaking the crossover and preventing the right
woofer from receiving its proper audio stream?

[ ... ]

> +&swr3 {
> +	status =3D "okay";
> +
> +	/* WSA8845, Right Woofer */
> +	right_woofer: speaker@0,0 {
> +		compatible =3D "sdw20217020400";
> +		reg =3D <0 0>;
> +		reset-gpios =3D <&lpass_tlmm 13 GPIO_ACTIVE_LOW>;
> +		#sound-dai-cells =3D <0>;
> +		sound-name-prefix =3D "WooferRight";
> +		vdd-1p8-supply =3D <&vreg_l15b_e0_1p8>;
> +		vdd-io-supply =3D <&vreg_l18b_e0_1p2>;
> +		qcom,port-mapping =3D <1 2 3 7 12 14>;
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520141828.2724=
689-1-sibi.sankar@oss.qualcomm.com?part=3D2

