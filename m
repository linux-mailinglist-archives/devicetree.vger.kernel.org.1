Return-Path: <devicetree+bounces-324231-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A9iQCPmRUGoE1wIAu9opvQ
	(envelope-from <devicetree+bounces-324231-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:32:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A49E737B5E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 08:32:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QJAPL69b;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324231-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324231-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 146D53013003
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 06:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA402D97BB;
	Fri, 10 Jul 2026 06:32:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E6423392B
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 06:32:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783665141; cv=none; b=Nt5ERIL4GR+7W6mGYK0hSUdqqrML8q8LFgtAoZB/ceojARgxpoQGEwwqe2tfL0c00pCNsN8W3UxnwQWP4JatuYlsvdzQ5mFBuidxu9fM+EmojnDy75Vgs4k/y1pdU8uGeRuGAuRUiSfxFrduA9Vl/JzjnUVQtzem4DqD87lUy54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783665141; c=relaxed/simple;
	bh=88YZjYx94jsCTLjYtEgzuvlfoGhNLB8c7kZbjdR9rqg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rREsqDm6hkbeW61spLBns3Nvt8mJ5o4mpTr8HoLJBlIaRGqfixCgni84RLYUmpYXsNlO5fboXcJfKl+6WzqEp1fZ2en//j/HPGY2DHQuNUa3mlxvqC9XVG8xxMnzJZDcqjGkPW4vM2JuEATRC2XbAen9qk/g4+r30VdNudB9jQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJAPL69b; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49ED11F000E9;
	Fri, 10 Jul 2026 06:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783665139;
	bh=RikJpv32fGTW3ALOFnoYTWAc+cn17MVbLsk4ZtrLrEw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QJAPL69bbmdVAvLMlivyzgGfexRg77Z94UI3YUL5ZN9AJ64yReAUh4qJ6RD6fHk5E
	 5n8q2xqqiwdcAx7DhDZ3wrX7BHyktKNTXA9xV5gk8VmmjFRCKmWUGrsLvS5xbaG6bP
	 0MnwfWkfFs/yuL+21FfYCmV+qypqgToyoVgr70wBwJBRqWkqMFcJb/X5TohE1V/UWb
	 5l59AVQSIaN0e/7gddeaURLpgVsmU/qzCI9KxkopMOkuJYVKp2AB8UVQQZp1sIZdLg
	 WsZPkWW3uQyLXVj/AMdWg6MB5eFm1SC2u/RdPtqDN7QzCi/bzefu3uBQWppwaM+UQ+
	 wrxb3WrnPH2ww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8250-xiaomi-elish: Remove
 camera_front_active pinctrl
Reply-To: sashiko-reviews@lists.linux.dev
To: "Xin Xu" <xxsemail@qq.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <tencent_AEB4238D8669271E5C1CD19C2C61A45AD108@qq.com>
References: <tencent_AEB4238D8669271E5C1CD19C2C61A45AD108@qq.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 06:32:18 +0000
Message-Id: <20260710063219.49ED11F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324231-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[qq.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:xxsemail@qq.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A49E737B5E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Removal of explicit electrical pin configuration for camera rese=
t GPIO
--

--- Patch [1]: [PATCH] arm64: dts: qcom: sm8250-xiaomi-elish: Remove camera=
_front_active pinctrl ---
commit 0022e4fa862c463785a16fefb223c9ad61f2fc67
Author: Xin Xu <xxsemail@qq.com>

arm64: dts: qcom: sm8250-xiaomi-elish: Remove camera_front_active pinctrl

This commit removes the camera_front_active pinctrl node and its reference,
stating that the GPIO 109 configuration duplicates the reset-gpios property.

> diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi b/a=
rch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
> index 19aff83ecf7b6..26801d6a1ec5f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
> @@ -570,7 +570,7 @@ camera_front: camera@10 {
> =20
>  		reset-gpios =3D <&tlmm 109 GPIO_ACTIVE_LOW>;
> =20
> -		pinctrl-0 =3D <&cam_mclk3_default &camera_front_active>;
> +		pinctrl-0 =3D <&cam_mclk3_default>;
>  		pinctrl-names =3D "default";
> =20
>  		orientation =3D <0>; /* Front facing */

[ ... ]

> @@ -947,13 +947,6 @@ pm8008_reset_default: pm8008-reset-default-state {
>  		bias-pull-up;
>  	};
> =20
> -	camera_front_active: camera-front-active-state {
> -		pins =3D "gpio109";
> -		function =3D "gpio";
> -		drive-strength =3D <2>;
> -		bias-disable;
> -	};
> -

[Severity: Medium]
Does removing this pinctrl node leave the pin without a guaranteed electric=
al
configuration?

The reset-gpios property configures pin routing and logical polarity, but it
doesn't apply explicit electrical properties like drive-strength and
bias-disable.

If the bootloader leaves a pull-up or pull-down resistor enabled on this GP=
IO,
could the GPIO output driver end up fighting it and causing constant power
leakage?

>  	wlan_en_state: wlan-default-state {
>  		pins =3D "gpio20";
>  		function =3D "gpio";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/tencent_AEB4238D866=
9271E5C1CD19C2C61A45AD108@qq.com?part=3D1

