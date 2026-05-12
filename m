Return-Path: <devicetree+bounces-295922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HReEVyJAmrVtwEAu9opvQ
	(envelope-from <devicetree+bounces-295922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:58:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC2F51888E
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1C0A83027365
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 01:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A872D877A;
	Tue, 12 May 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIAj5lLf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7483B2C11D6
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778551114; cv=none; b=ig9y9oSwOqIsJSs4vmtLqz1Q+//Xgtfd0/6QH+daIn2unTC46mG1gbtA+Z9ehHqAWNHId/bjO+phfK2I/3yB1fb+/uZZFjjbFHz1Ei3DnJFwmm6jOnx6+pJG4JDi1XDoOBerc2WbJCnRv3apNx5wNgYgbmZE6IaKl+VcoqZrobQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778551114; c=relaxed/simple;
	bh=EFzY7OCt6QQM+kvuKl8Y9DqE3KwdZtxEdB9wlTOVvjs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sbRxEcPbsX5pRYoi6vzCtcgwH2FlmWyErvqeYuUuUI2SLFtaF0hyS2WNSv3D07a1kh3162MedaMmxq2dprYYZA/mx/F8ImLJvn+syHuVcUq7CiyWTRf1NElvPPSLwIhXMgBMl/4mwlxxox7inUkl5mNtZQyCcfyP/op8kWGFeYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIAj5lLf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9463C2BCF7;
	Tue, 12 May 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778551114;
	bh=EFzY7OCt6QQM+kvuKl8Y9DqE3KwdZtxEdB9wlTOVvjs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=YIAj5lLfTSYHcONU665ptILwczxXfeEn9dCwsUQpJwdicIS9bsB7+dB2pOuNliMdK
	 gkMB0GzOk/K4CtHPJ1hzOpEe+RfTh+kaXtSpCZLs5Ly+2EAJAUVA/5bHkzfIkzYAsk
	 UuEUwnX86XA2D32MScCCv1iMWJKhazV7ZrcmgH8MZ357eMg9GgQIlyFZcGtVdFXIcL
	 Wv8r54tgJplCjakv2ad1bl15fXPSAWjE6eFGLzkemXrU5Q2MTD8qGAHKcqxIcx44hh
	 yVE6+cuBXNRMMEiwma24CgCfx2X9oQX0QEqCiyk/55VemjwqP1nRd3KPGR7rN0pQY2
	 W2BWpji7M2TBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 4/9 RESEND] ARM: tegra: grouper: Add support for
 front camera
Reply-To: sashiko@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260511074859.24930-5-clamor95@gmail.com>
References: <20260511074859.24930-5-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 01:58:33 +0000
Message-Id: <20260512015833.C9463C2BCF7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: AFC2F51888E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295922-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,1c:email,0.0.0.48:email];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The 'orientation' property is not allowed by the 'aptina,mi1040' bi=
nding schema.
- [Low] Devicetree node name 'front-camera@48' does not follow generic nami=
ng conventions.
--

commit c5071430d670662429d8b5764f80cefdddb8903b
Author: Svyatoslav Ryhel <clamor95@gmail.com>

ARM: tegra: grouper: Add support for front camera

This commit adds the front camera video path to the Tegra 30 Nexus 7
(grouper) device tree. It includes the necessary host1x, vi, and csi
endpoints, a new camera node on the I2C bus, and updates the relevant
power supply bindings.

> diff --git a/arch/arm/boot/dts/nvidia/tegra30-asus-nexus7-grouper-common.=
dtsi b/arch/arm/boot/dts/nvidia/tegra30-asus-nexus7-grouper-common.dtsi
> index 15f53babdc217..892d718294dd1 100644
> --- a/arch/arm/boot/dts/nvidia/tegra30-asus-nexus7-grouper-common.dtsi
> +++ b/arch/arm/boot/dts/nvidia/tegra30-asus-nexus7-grouper-common.dtsi

[ ... ]

> @@ -890,6 +978,36 @@ light-sensor@1c {
>  			vdd-supply =3D <&vdd_3v3_sys>;
>  		};
> =20
> +		/* Aptina 1/6" HD SOC (MI1040) */
> +		front-camera@48 {

This isn't a bug, but does the node name front-camera@48 follow the Devicet=
ree
generic naming conventions?

It might be better to use a generic name like camera@48 to avoid dtbs_check
warnings.

> +			compatible =3D "aptina,mi1040";
> +			reg =3D <0x48>;
> +
> +			clocks =3D <&tegra_car TEGRA30_CLK_CSUS>;
> +
> +			reset-gpios =3D <&gpio TEGRA_GPIO(O, 0) GPIO_ACTIVE_LOW>;
> +
> +			vddio-supply =3D <&avdd_cam1>;
> +			vdd-supply =3D <&vddio_cam>;
> +			vaa-supply =3D <&avdd_cam1>;
> +
> +			orientation =3D <0>; /* Front camera */

Is the orientation property supported by the aptina,mi1040 binding?

The corresponding schema onnn,mt9m114.yaml sets additionalProperties: false
at the root level and does not define the orientation property. It also
does not reference the common video-interface-devices.yaml schema at the
device node level.

Could this inclusion cause a schema validation error during dtbs_check?

> +
> +			assigned-clocks =3D <&tegra_car TEGRA30_CLK_VI_SENSOR>,
> +					  <&tegra_car TEGRA30_CLK_CSUS>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511074859.2493=
0-1-clamor95@gmail.com?part=3D4

