Return-Path: <devicetree+bounces-306201-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JmRQDlscIGoewAAAu9opvQ
	(envelope-from <devicetree+bounces-306201-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:21:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9468463770A
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:21:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Of9U9Ow/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306201-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306201-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C97943083CCF
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 12:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0427947AF4D;
	Wed,  3 Jun 2026 12:13:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2589E47A0B6;
	Wed,  3 Jun 2026 12:13:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780488832; cv=none; b=DxQzlY9Enzu2RJbUibLKxF5+EJdt+cDGf8ufLedfQGwYeZNieRbsvV/xoJVgap3JKEbFVXvevdo/eDt5UPEAL4BNJGx5sS7Yj2XazxQYG7Fp4WaevFCEEFl6NZUQypkXKSGgaA7AUZiUUKa8w/BQRy13HG5OTX/mlvNOlk4vRAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780488832; c=relaxed/simple;
	bh=g6SJ1Mf9OfM3frbGGn2BFZd4iZ6PWOEr6iiohNogedQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IurG37fqfyaYFziBz6E808ogW3LzHGpwNnXbAZfjYCLJbjcImZMJPjr8wCtAJOdDyLrQUetl9Ciu9Fx7IwGJ4IjxPVBHMvQ7jzGwB/hGwgcU4Em46iX1qdda56uoCMW3LQtI3Ox9bpF2AIciKyfXBGoms+/SJONltdbuYJfIcjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of9U9Ow/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7956B1F00893;
	Wed,  3 Jun 2026 12:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780488830;
	bh=LZsBl6rZ0GKZDKBKqKsNq/XCzKBIN0c4jpA2+usFrT8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Of9U9Ow/5dmRs71dC6rKR+/Cw1TusjJbPWdNZ85h2tb9AVCznUQ39eurlP4yqh1d3
	 VG4hgjbWERN++CIVBGYy4dvWo/kyrR3cWP8XIjypGee2/0E07UgPKV7hvCIA4CoKYr
	 IQmzvO/h9BO89dJOXptQ0DlKhTVb58+9pinaRXb1AzrYlRSKJnXgMzOizIL92On9rT
	 8m02La3X6Nf1Bq/Nqs2KAhASFCodYOGr/CEUlVLVKdZuoeMf2XaAiLKHmBj0TZFz7w
	 Diel564XycxUqrdIa3zxOlJxEi9XklH0C0OApICLrvngA6B2vvOW5ObIG9m1p2TxYx
	 6G1SWI75U4GHg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 07/12] arm64: dts: imx8mp-var-som-symphony: add HDMI
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <35c4e4182d90db29f447d0ea96794d7230a75fac.1780487415.git.stefano.r@variscite.com>
References: <35c4e4182d90db29f447d0ea96794d7230a75fac.1780487415.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 12:13:49 +0000
Message-Id: <20260603121350.7956B1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306201-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,variscite.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9468463770A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `lcdif3` display controller is not enabled, breaking the HDMI =
video pipeline because it is the sole video source for the HDMI interface o=
n the i.MX8MP.
- [High] The `hdmi_tx` node lacks pin multiplexing configuration for the DD=
C and HPD pins, which breaks EDID reading and Hot Plug Detect.
--

commit aea2bfe7fe7a358c3badcef46d4148e23cb37818
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8mp-var-som-symphony: add HDMI support

Enable HDMI output on Symphony iMX8MP Carrier Board along with audio
support.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> index fe16996494141..6878b89c4db8e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts

[ ... ]

> @@ -74,6 +86,41 @@ reg_usdhc2_vqmmc: regulator-usdhc2-vqmmc {
>  		states =3D <3300000 0x0 1800000 0x1>;
>  		vin-supply =3D <&ldo5>;
>  	};
> +
> +	sound-hdmi {
> +		compatible =3D "fsl,imx-audio-hdmi";
> +		model =3D "audio-hdmi";
> +		audio-cpu =3D <&aud2htx>;
> +		hdmi-out;
> +	};
> +};
> +
> +&aud2htx {
> +	status =3D "okay";
> +};
> +
> +&hdmi_pai {
> +	status =3D "okay";
> +};
> +
> +&hdmi_pvi {
> +	status =3D "okay";
> +};
> +

[Severity: High]
Does the lcdif3 display controller also need to be enabled here?

On the i.MX8MP architecture, the HDMI transmitter receives its video stream
from the Parallel Video Interface (hdmi_pvi), which is driven exclusively by
the lcdif3 display controller.

Since lcdif3 is disabled in the base imx8mp.dtsi, omitting its enablement
means the DRM framework will lack a CRTC for the HDMI pipeline, causing vid=
eo
output initialization to fail.

> +&hdmi_tx {
> +	status =3D "okay";
> +

[Severity: High]
Does this node need explicit pin multiplexing configuration for the DDC and
HPD pins?

Without pinctrl-names and pinctrl-0 properties here, the configuration reli=
es
on the bootloader. If the kernel does not configure the internal pull-ups f=
or
the I2C DDC bus and route the pins correctly, Hot Plug Detect and EDID reads
will fail, preventing the driver from detecting display capabilities.

> +	ports {
> +		port@1 {
> +			hdmi_tx_out: endpoint {
> +				remote-endpoint =3D <&hdmi_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&hdmi_tx_phy {
> +	status =3D "okay";
>  };
> =20
>  &i2c3 {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780487415.gi=
t.stefano.r@variscite.com?part=3D7

