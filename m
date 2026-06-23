Return-Path: <devicetree+bounces-314834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h/2kGDR/Omo9+QcAu9opvQ
	(envelope-from <devicetree+bounces-314834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:42:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD08E6B7261
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:42:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gBx+oUQH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314834-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314834-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A20D30456B6
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 12:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087B43C3797;
	Tue, 23 Jun 2026 12:42:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD6729ACDD
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 12:42:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782218545; cv=none; b=VClew4+P+6NK9bmn2U3qIEpMoMazoYyI20AUrvuEZtUIff/dkSKF/YU24GmsGdlDLNNTwQLa2H9/sSPH1mEKG6tFs6igwKUMuf4HmxZZEuC6yJxap76354qW58mwr+9dLHyxvGF0YzLKTduhZU0eBYY+FwcwDRnbny26J/LdvvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782218545; c=relaxed/simple;
	bh=DE4qJzgzT2xxCaVMaa9qUgWfWyoz4qxpUpAG6mipaNk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=K0dbMYz/U2pnYZScqVfg2zNxU8zp79bKb+Fyx67sJhIqn2hpiD3iZHVCgXBQTDs+jw7wFId+aXvUWHff04Vnh0SGkqoOTvr0w7nF4IPVGEJ7plfUpi3EsCd3LuVVEv3MmJiNx3Cw60PAPKTtkiYRDFGzZojlsY+LqndpzzjJA7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBx+oUQH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1C621F000E9;
	Tue, 23 Jun 2026 12:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782218544;
	bh=+5uDSicQK8v7Nq0njjZYmmL+Hu9T6ZrlSAlsdx95TSY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gBx+oUQHI0Xlt9z0fbQV0nxlii4EwHxSl65L97Ctqv2HjajZF+93jK/n04WlV7em1
	 rbTF32OwEKK64qYXOruEPLe4fxPD4dA3ZNz9NXJLcihEFzNRx+uyNm3F+jxrUcdIxk
	 6l3YMJLMn9rpohTf7nbX+5mRp4/o82RoUwgqTErOK9s7l/v5nL3kFxr8cJ0GXLLrWS
	 g+Jo5ZSibAfUA+Olx6izfszuZHLZtVSJIR05z2q/5GAzMh+L0qGAwLfsmH8O35lvIr
	 l8n8siUGTUrSn9+Y7+s4DL8ZR8D4kIvyZcYRooMB+iTO4LJ/fwPKXGyAexBJJS2k2b
	 d/gP2z5J1hqXQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/12] ARM: dts: microchip: sama7d65: add cells for
 temperature calibration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varshini Rajendran" <varshini.rajendran@microchip.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260623105944.128840-11-varshini.rajendran@microchip.com>
References: <20260623105944.128840-1-varshini.rajendran@microchip.com>
 <20260623105944.128840-11-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 12:42:24 +0000
Message-Id: <20260623124224.A1C621F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314834-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,microchip.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AD08E6B7261

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The ADC driver fails to propagate `-EPROBE_DEFER` when acquiring t=
he NVMEM cell, leading to silent loss of the temperature channel and therma=
l protection.
--

commit ef1a2c61577cd00a6df4dd81d5825424af16746d
Author: Varshini Rajendran <varshini.rajendran@microchip.com>

ARM: dts: microchip: sama7d65: add cells for temperature calibration

This commit adds an NVMEM cell to the ADC node for temperature calibration
data.

> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dt=
s/microchip/sama7d65.dtsi
> index 5867fda378b19..c336f863406de 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -323,6 +323,8 @@ adc: adc@e1000000 {
>  			atmel,trigger-edge-type =3D <IRQ_TYPE_EDGE_RISING>;
>  			atmel,startup-time-ms =3D <4>;
>  			#io-channel-cells =3D <1>;
> +			nvmem-cells =3D <&temperature_calib>;
> +			nvmem-cell-names =3D "temperature_calib";

[Severity: High]
This is a pre-existing issue, but will adding these cells expose a probe
deferral issue in the ADC driver?

In drivers/iio/adc/at91-sama5d2_adc.c:at91_adc_temp_sensor_init(),
nvmem_cell_get() may return -EPROBE_DEFER:

	temp_calib =3D nvmem_cell_get(dev, "temperature_calib");
	if (IS_ERR(temp_calib)) {
		ret =3D PTR_ERR(temp_calib);
		if (ret !=3D -ENOENT)
			dev_err(dev, "Failed to get temperature_calib cell!\n");
		return ret;
	}

However, in at91_adc_probe(), this returned error appears to be swallowed:

	ret =3D at91_adc_temp_sensor_init(st, &pdev->dev);
	/* Don't register temperature channel if initialization failed. */
	if (ret)
		num_channels =3D st->soc_info.platform->max_channels - 1;

If the NVMEM provider (OTPC) probes after the ADC driver, the ADC driver wi=
ll
permanently skip registering the temperature channel instead of deferring
its probe.

Since the system's thermal zones might rely on this channel for CPU
temperature monitoring and emergency shutdown, could this lead to a silent
loss of thermal protection?=20

Would it make sense to update the driver to use dev_err_probe() and properly
propagate -EPROBE_DEFER before these cells are added?

>  			status =3D "disabled";
>  		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623105944.1288=
40-1-varshini.rajendran@microchip.com?part=3D10

