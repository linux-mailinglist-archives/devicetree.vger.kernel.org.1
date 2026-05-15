Return-Path: <devicetree+bounces-297934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPaVBfbEBmpdngIAu9opvQ
	(envelope-from <devicetree+bounces-297934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:02:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2852354A42D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BDF03088DB1
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 06:56:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34E783CC306;
	Fri, 15 May 2026 06:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2KtZE3O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E6C383C73;
	Fri, 15 May 2026 06:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778828171; cv=none; b=eJYZJb0zafxDXxE+eCETLnugPOlFzaVmK61eiDPiK5lVbCTnpK7zxfAwlh1bLoELPMrB2NmV7zKlW7q5GOSq0YDNz6QcM7qlx6LFLD7ZMIsXJYKTSwgEuC1/KqAlPcaLvrZfUHwAWdjalk1peKze8tURbg6xw/VOqZZH5v3MgrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778828171; c=relaxed/simple;
	bh=3MYXcY5bK69+nHsX7pMrQgWBCJmYG+C77BsrhTCHBOo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mLNITzJFAJdKvwp2opDJRGTKrhxATKvUxQB5UuIaY50rg/RtvqEM7EmGdZg4bj7Htbgdbzqz1JweB4/sKncjvRioNjutD39fYYa23ins6mj0+laRq7YJ+dNDt8WbiE1ddAb4frHASwef0vlsmIqQE02kSJSbEkrG0xImjY+ZQeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2KtZE3O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C88AC2BCB0;
	Fri, 15 May 2026 06:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778828170;
	bh=3MYXcY5bK69+nHsX7pMrQgWBCJmYG+C77BsrhTCHBOo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=G2KtZE3OPF/yqXo5cP4aZDLpcxfhe0dvFzTOulquynRWItBLRNyYekMqiveJYNhiz
	 AmS/Q5IF0oZfsa99hDritB8jjBu8ufNvpwBErs9eJywrxtsTDfZqBuYy1CB8RAyzvN
	 0nRYYMKT+PpsEmbNZuE8pWWrs79NT8VclbNrae0kfkaIY45/vbIpu3DU2JrbCNI+Ak
	 5UbUFXRx6Pp4vpgMtnWg39yS4UM8sb7VLLPvxJEaR/hyL+Iz0g2vBzsRzGPdsfenUa
	 F1F98bq2AAEFIRfeO+DosLbVegx7L+s8WE0dA+bXnideovaKHqcXnoej49Pc7HqAdN
	 eOcj3Cruc0I+A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: Add Microsoft Surface Pro 12in
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harrison Vanderbyl" <harrison.vanderbyl@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <8ac29ee38ba80a3fbde8bfe43b74b9b936b31cb1.1778822464.git.harrison.vanderbyl@gmail.com>
References: <8ac29ee38ba80a3fbde8bfe43b74b9b936b31cb1.1778822464.git.harrison.vanderbyl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 06:56:09 +0000
Message-Id: <20260515065610.5C88AC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 2852354A42D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297934-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Device Tree and Driver mismatch for WSA8845 speaker reset GPIO
- [Low] Incorrect indentation in `&pm8550_gpios` node
--

commit 0876a51b5a0549c867accb3d391daa4e0f3c28b3
Author: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>

arm64: dts: qcom: Add Microsoft Surface Pro 12in

This commit introduces the initial device tree for the Microsoft Surface Pro
12in, adding support for various peripherals including UFS, touchscreen,
USB, audio, Wi-Fi, and Bluetooth.

> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts b/arc=
h/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts
> new file mode 100644
> index 0000000000000..32b8df2497913
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts

[ ... ]

> +&pm8550_gpios {
> +    vol_up_n_default: vol-up-n-state {
> +		pins =3D "gpio8";
> +		function =3D "normal";
> +		power-source =3D <1>;
> +		bias-pull-up;
> +		input-enable;
> +	};
> +
> +    vol_down_n_default: vol-down-n-state {

This isn't a bug, but should these subnodes be indented with a hardware tab
instead of spaces to match standard device tree coding guidelines?

[ ... ]

> +&swr0 {
> +	pinctrl-0 =3D <&wsa_swr_active>, <&spkr_01_sd_n_active>;
> +	pinctrl-names =3D "default";
> +
> +	status =3D "okay";
> +
> +	/* WSA8845, Left speaker */
> +	left_spkr: speaker@0,0 {
> +		compatible =3D "sdw20217020400";
> +		reg =3D <0 0>;
> +		reset-gpios =3D <&lpass_tlmm 12 GPIO_ACTIVE_LOW>;

Will this prevent the speakers from enumerating on the SoundWire bus?

Looking at the WSA884x codec driver in sound/soc/codecs/wsa884x.c, it
requests this GPIO by the name "powerdown":

    devm_gpiod_get_optional(dev, "powerdown", ...)

Because the driver looks for the powerdown-gpios property, it will fail to
acquire the GPIO named reset-gpios here. Concurrently, the pinctrl state
spkr_01_sd_n_active drives this pin output-low, asserting the active-low
reset.

Since the driver never releases the reset, the speakers will stay powered
down and audio playback will fail. Should this property be renamed to
powerdown-gpios?

> +		#sound-dai-cells =3D <0>;
> +		sound-name-prefix =3D "SpkrLeft";
> +		vdd-1p8-supply =3D <&vreg_l15b_1p8>;
> +		vdd-io-supply =3D <&vreg_l12b_1p2>;
> +		qcom,port-mapping =3D <1 2 3 7 10 13>;
> +	};
> +
> +	/* WSA8845, Right speaker */
> +	right_spkr: speaker@0,1 {
> +		compatible =3D "sdw20217020400";
> +		reg =3D <0 1>;
> +		reset-gpios =3D <&lpass_tlmm 12 GPIO_ACTIVE_LOW>;

Does this speaker node have the same naming issue where it should use
powerdown-gpios instead of reset-gpios?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1778822464.gi=
t.harrison.vanderbyl@gmail.com?part=3D7

