Return-Path: <devicetree+bounces-317615-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GMRNMa6WQ2oFcwoAu9opvQ
	(envelope-from <devicetree+bounces-317615-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:13:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 558036E2AC6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:13:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CLRHJGvS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317615-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317615-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1FC98301B837
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E78E3EBF0C;
	Tue, 30 Jun 2026 10:12:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58473EB10F
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 10:12:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782814364; cv=none; b=idUPz9tsOKc0vN5xx9+xeRb4Vbo3qnJSwvqvfkRe745LLg1Lj7CnFw1jpDM8eTKYRSpV6gY8ItUNRvDulRO7sfK0onOOzK2MyIT9KWaFcol15+ojnpIXaFh7XriWGRyjXiB6Q44Psex7HTm7QpOoqII/JKQDOkCglY0isrGSfC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782814364; c=relaxed/simple;
	bh=MX6Hw1vd1Kj5TEfvcIWrLlYetnqKjtDoCnB6oDVA6Gs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rQ+PXO/uwoS0do8QDTpUq2QHgn60tp3Dp5meZc72eOrzdiCjT+0fu6x7ODbthtv+IaqzpLKtEEcvQ0Mr72omId9UYkxhANn9Wt8WGC8I5BAkI5p59A/+1ilqNeKNbvAO93khzUeJQhT9J7JbqXYQ8eErANoNE1BU6NuyBTKKm8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLRHJGvS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4325B1F000E9;
	Tue, 30 Jun 2026 10:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782814362;
	bh=PfeHpsBARIYLXi5HKpkRUIIaoCPLjQnXRqb2d6EXbE8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CLRHJGvSrZ48gMK3K3mXs2mxK3ggUKZiTfj/N3sDBCGpSnel8ex24EnsQMzOpbVUg
	 tjBmQOwyCCaWcaBOqw8VC4I++OcN3WsEz91HQILMJZMu0bkcEixfwGU0W7x88cQLMd
	 9ctMDvhq+IT5d8T6ps6ERvyXTan1ZzYCBxpAggQPo/XFwz7NhjPaSJBK0SNhb4/+kl
	 6hOLFO5kGnQqESpsmglu5iqC4VWx/wz11BTM9rLHNtmz3fF+NCu25F2VhdCJtGpozx
	 aeExmUnRbY2BqKJjn0ogQQoLyb7/cgmyl3a0Br+6rPEGqW275QEnr00XAwVcC/H8E2
	 CTJrAlpInOMgg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 11/13] ARM: dts: microchip: sama7d65: add cells for
 temperature calibration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Varshini Rajendran" <varshini.rajendran@microchip.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260630093603.38663-12-varshini.rajendran@microchip.com>
References: <20260630093603.38663-1-varshini.rajendran@microchip.com>
 <20260630093603.38663-12-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 10:12:41 +0000
Message-Id: <20260630101242.4325B1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317615-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,microchip.com:email,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 558036E2AC6

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [Medium] Adding `nvmem-cells` and `nvmem-cell-names` to the ADC device tr=
ee node will cause `dtbs_check` validation failures because they are not do=
cumented in the corresponding YAML binding.

Pre-existing issues:
- [Critical] A raw ADC hardware reading of 0 for the bandgap voltage causes=
 a kernel panic due to division by zero.
- [High] The ADC driver fails to propagate `-EPROBE_DEFER` when acquiring t=
he calibration NVMEM cell, permanently breaking temperature calibration if =
the NVMEM provider probes later.
--

commit 6142abae648297aaf43eed2fdd08d882882efb74
Author: Varshini Rajendran <varshini.rajendran@microchip.com>
Subject: ARM: dts: microchip: sama7d65: add cells for temperature calibrati=
on

This commit adds NVMEM cells to the ADC node for temperature calibration da=
ta
on the sama7d65 platform.

> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dt=
s/microchip/sama7d65.dtsi
> index 5867fda378b19..c336f863406de 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi

[ ... ]

> @@ -323,6 +323,8 @@ adc: adc@e1000000 {
>  			atmel,trigger-edge-type =3D <IRQ_TYPE_EDGE_RISING>;
>  			atmel,startup-time-ms =3D <4>;
>  			#io-channel-cells =3D <1>;
> +			nvmem-cells =3D <&temperature_calib>;
> +			nvmem-cell-names =3D "temperature_calib";

[Severity: Medium]
Will adding these properties cause dtbs_check validation failures?

It appears the corresponding YAML binding schema
(Documentation/devicetree/bindings/iio/adc/atmel,sama5d2-adc.yaml) restricts
properties via additionalProperties: false, but lacks the definitions for
nvmem-cells and nvmem-cell-names. Do we need a matching binding update?

[Severity: High]
This is a pre-existing issue, but will adding these nvmem cells expose a
probe deferral bug in the driver?

Looking at at91_adc_probe() in drivers/iio/adc/at91-sama5d2_adc.c, if the
NVMEM provider hasn't probed yet, nvmem_cell_get() returns -EPROBE_DEFER:

drivers/iio/adc/at91-sama5d2_adc.c:at91_adc_probe() {
    ...
    ret =3D at91_adc_temp_sensor_init(st, &pdev->dev);
    /* Don't register temperature channel if initialization failed. */
    if (ret)
        num_channels =3D st->soc_info.platform->max_channels - 1;
    else
        num_channels =3D st->soc_info.platform->max_channels;
    ...
}

Since -EPROBE_DEFER is swallowed here and the probe completes successfully,
does this mean the driver will never retry, permanently breaking the
temperature calibration if the NVMEM provider probes later?

[Severity: Critical]
This is a pre-existing issue, but since we are enabling temperature sensor
capabilities here, does at91_adc_read_temp() have a division by zero risk?

When userspace reads the temperature from the IIO sysfs node, the hardware
is requested to read the bandgap voltage (vbg). If the hardware returns 0
(due to a glitch, lack of analog power, or being unplugged), it is used as
a divisor:

drivers/iio/adc/at91-sama5d2_adc.c:at91_adc_read_temp() {
    ...
    div1 =3D DIV_ROUND_CLOSEST_ULL(((u64)vtemp * clb->p6), vbg);
    ...
}

Can a raw ADC hardware reading of 0 for the bandgap voltage cause a system
crash due to this unchecked division by zero?

>  			status =3D "disabled";
>  		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630093603.3866=
3-1-varshini.rajendran@microchip.com?part=3D11

