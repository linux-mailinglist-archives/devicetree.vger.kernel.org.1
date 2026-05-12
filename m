Return-Path: <devicetree+bounces-296491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0B6OAHmbA2p27wEAu9opvQ
	(envelope-from <devicetree+bounces-296491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:28:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A9D52A485
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:28:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FBFA3099B57
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 21:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4BCA381B00;
	Tue, 12 May 2026 21:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIX2t0T9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A083815F2
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 21:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778621031; cv=none; b=d7YDNH0XjeB2BihvPog2QgKCC2htgx2uUa5F+bzBmOWshoSnEiVthO72n2I8tKZw4tZFQmjMyMXi6QJ43w4h/6TCGeCKnPKpURgvAmzjfMuFGhlAaj5G4k45oKOom9hSGBR09Fyy1Ys/gcrRTssVct8etgj//5qGKTi3fI18nbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778621031; c=relaxed/simple;
	bh=8z/Rrv5/pal9WfiO9Dmlgj4sU5k+CPZVKmEks9T6SXo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Nq2lyQOAZh1/fbAfeaCxn+PaOlqQ25czsbSWNEBe9mRn4DFCttO0CHm317QpJDb8XpVtYKZ6/BWMrwQYhR0rVCTpBWo6uYGTzlJa+i4Nrf8JFST4QPwC/n0mGfTLF2emmHEe9goeFWYvhV9TQ+qoLPzbZFwOKpOrKu+fb8Wi7Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIX2t0T9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA05FC2BCB0;
	Tue, 12 May 2026 21:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778621031;
	bh=8z/Rrv5/pal9WfiO9Dmlgj4sU5k+CPZVKmEks9T6SXo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=tIX2t0T9GTalbCqf2iYZeMVhUQashtrEy+XwBaY/4SUUj7Ocbo6R7c/fuCh8anOek
	 qIaQom8kFNaZHzl0aQItZD3nXPkmCxUT/C16DYkf1owECg3JjZFrtOcGl3dNCVMok5
	 DLPwyehPk4XmSGsTtXh6PpfpIuwTXl2XiQl5pae2DemVG0jilcEhfgksQ0hotzRo15
	 XaTG/nMgd3Sk1mksFGQ63FT7+gw5E1ZXsejnrS9Di7yIV61bWuwmVN9tDcbo7Iui8J
	 2FKa35PIQWzcyf9HFUcHV8lY93AdarsnKhtsIAdoOui25hZpqNUJzv+f0FbfYe7zSS
	 sirm3C4bSHlpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 8/8] arm64: dts: qcom: Add Microsoft Surface Pro 12in
Reply-To: sashiko@lists.linux.dev
To: "Harrison Vanderbyl" <harrison.vanderbyl@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <67c50d27e133774e0a4edc17403e4218ddd86efd.1778498477.git.harrison.vanderbyl@gmail.com>
References: <67c50d27e133774e0a4edc17403e4218ddd86efd.1778498477.git.harrison.vanderbyl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 21:23:50 +0000
Message-Id: <20260512212350.EA05FC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 57A9D52A485
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296491-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.16:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:
- [High] Touchscreen reset pin is statically driven high before power is ap=
plied.
- [Medium] Audio routing specifies 4 DMICs but pinctrl only configures pins=
 for DMIC0 and DMIC1.
- [Medium] Regulator enable pin statically forced high by pinctrl.
- [Medium] Inconsistent regulator assignment for USB QMP PHYs.
- [Medium] Missing pinctrl configurations for volume keys.
- [Low] Unused `panel_pins` pinctrl state defined in device tree.
--

commit bfa1ccc215b18064216c44242bb8398931a0520f
Author: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>

arm64: dts: qcom: Add Microsoft Surface Pro 12in

This commit adds the initial device tree for the Microsoft Surface
Pro 12in, enabling various peripherals such as UFS, touchscreen,
audio, and USB.

> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts b/arc=
h/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts
> new file mode 100644
> index 0000000000000..3a754179a8481
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts
> @@ -0,0 +1,1160 @@
[ ... ]
> +		key-vol-up {
> +			gpios =3D <&pm8550_gpios 8 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_VOLUMEUP>;
> +			debounce-interval =3D <15>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +
> +		key-vol-down {
> +			gpios =3D <&pm8550_gpios 6 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_VOLUMEDOWN>;
> +			debounce-interval =3D <15>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};

Will these volume keys be prone to spurious interrupts? These nodes map
to pm8550_gpios as GPIO_ACTIVE_LOW, but do not specify any pinctrl to
configure internal pull-ups on the physical pads. Unless external
pull-ups are present on the board, floating pins could trigger unwanted
wakeups.

[ ... ]
> +	sound {
> +		compatible =3D "qcom,x1e80100-sndcard";
> +		model =3D "X1P42100-Microsoft-Surface-Pro-12in";
> +		audio-routing =3D "SpkrLeft IN", "WSA WSA_SPK1 OUT",
> +				"SpkrRight IN", "WSA WSA_SPK2 OUT",
> +				"VA DMIC0", "vdd-micb",
> +				"VA DMIC1", "vdd-micb",
> +				"VA DMIC2", "vdd-micb",
> +				"VA DMIC3", "vdd-micb";
[ ... ]
> +&lpass_vamacro {
> +	qcom,dmic-sample-rate =3D <4800000>;
> +
> +	vdd-micb-supply =3D <&vreg_l1b_1p8>;
> +
> +	pinctrl-0 =3D <&dmic01_default>;
> +	pinctrl-names =3D "default";
> +};

Will audio capture from DMIC2 and DMIC3 fail with this configuration?
The audio-routing maps 4 DMICs, but only the dmic01_default pins are
configured in pinctrl, leaving the data and clock pins for DMIC2 and
DMIC3 unconfigured. Should <&dmic23_default> be included here?

[ ... ]
> +	touchscreen@16 {
> +		compatible =3D "hid-over-i2c";
> +		reg =3D <0x16>;
> +
> +		hid-descr-addr =3D <0x1>;
> +		interrupts-extended =3D <&tlmm 38 IRQ_TYPE_LEVEL_LOW>;
> +		wakeup-source;
> +
> +		vddl-supply =3D <&vreg_l15b_1p8>;
> +
> +		pinctrl-0 =3D <&ts0_default>;
> +		pinctrl-names =3D "default";
> +	};

Could this damage the touchscreen IC? The touchscreen node omits a
reset-gpios property, but relies on ts0_default which hardcodes
output-high on the reset pin.

Because pinctrl states are applied prior to the driver probe (which
enables vddl-supply), driving logic high into the unpowered IC violates
power sequencing and risks back-powering via ESD diodes.

Would it be better to provide reset-gpios in the touchscreen node so
the driver can manage the line dynamically after regulators stabilize?

[ ... ]
> +&tlmm {
> +	gpio-reserved-ranges =3D <34 2>, /* Unused */
> +				   <44 4>; /* SPI (TPM) */
> +
> +	edp_reg_en: edp-reg-en-state {
> +		pins =3D "gpio70";
> +		function =3D "gpio";
> +		drive-strength =3D <2>;
> +		bias-disable;
> +		output-high;
> +	};

Does this prevent the regulator framework from turning off vreg_edp_3p3?
Hardcoding output-high in the pinctrl state overrides the regulator's
ability to autonomously pull the line low when the supply is disabled,
such as during system suspend.

[ ... ]
> +	panel_pins: panel-pins-state {
> +		pins =3D "gpio29";
> +		function =3D "gpio";
> +		drive-strength =3D <2>;
> +		bias-disable;
> +		output-low;
> +	};

This isn't a bug, but panel_pins is defined here yet never referenced
by the panel node or any other component. Is it dead code, or is a
reference to it missing elsewhere to properly enable the display?

[ ... ]
> +	 ts0_default: ts0-default-state {
> +		int-n-pins {
> +			pins =3D "gpio38";
> +			function =3D "gpio";
> +			bias-disable;
> +		};
> +
> +		reset-n-pins {
> +			pins =3D "gpio48";
> +			function =3D "gpio";
> +			output-high;
> +			drive-strength =3D <16>;
> +		};
> +	 };

(This is where output-high is currently defined for the touchscreen reset,
as mentioned above.)

[ ... ]
> +&usb_1_ss0_qmpphy {
> +	vdda-phy-supply =3D <&vreg_l3e_1p2>;
> +	vdda-pll-supply =3D <&vreg_l1j_0p8>;
> +
> +	status =3D "okay";
> +};

Should this use vreg_l2j_1p2 for the vdda-phy-supply instead?

Mixing a PHY supply from PMIC 'e' with a PLL supply from PMIC 'j' on
the same node differs from usb_1_ss1_qmpphy, which consistently uses
vreg_l2j_1p2. Using vreg_l3e_1p2 here looks similar to the pcie4_phy
configuration, which could be a copy-paste error resulting in improper
voltage scaling for this USB PHY.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1778498477.gi=
t.harrison.vanderbyl@gmail.com?part=3D8

