Return-Path: <devicetree+bounces-326725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lWa6A849V2rkHwEAu9opvQ
	(envelope-from <devicetree+bounces-326725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:59:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 570C475BAC7
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:59:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SZ30F6qK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326725-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326725-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3AF93012272
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 07:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C2782F39B5;
	Wed, 15 Jul 2026 07:55:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D4D2F7EFC
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 07:55:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784102133; cv=none; b=KKYitZDrVqSqeyB/modEd/Ii/40AsO/OvFIV80F8xcHxto7fItAk7UTwuJfHlbEYflkq7Pevk30qJKxqanynzKRlv/ySldvN0tf5UyyekjtXM6YrrGTSNmzTXxh33Tt6Su5m9ElUcN6xc8YQyfJYRzcZc1166kdt/g0WBYFTNG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784102133; c=relaxed/simple;
	bh=0w0zSlvrcQuSTr/AmOiIs1Y4bOFDxfyzhUgdeHb/gGs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z7BQ/D7JhRZty0TpJhY4tiz7SR5mGfbVkyVvi221dLPmOsy8nfBBvt7nEHa/LMljGa0qGFhUdzujzu9QOyVXhMVdYhQTiNq+cx1yU+l/9cjbmupqCFZZGq8Mbb6jPeZZcUgkB74vrNUJ5P+9oidknMb5J79r4LvJf5+uiGbkyI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZ30F6qK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75E061F000E9;
	Wed, 15 Jul 2026 07:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784102131;
	bh=pRkt9oxpTYa/kMADIATZRJyFgtinUWhIZXYxw+8mn2k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SZ30F6qKnMF0RZQ87IcX6j7ulbOaxFVFZgONhk8CHgrvRUK7X4IZr+gyM1OgB2o92
	 cDE87LCKgEWNJDs5+NbzaPrvPypXI8ghtxhrhOHe9vOnqKVlXgYvLpbNWphXMI0Kph
	 b3/faF8N/ilgQ5fWH0dWlO5WHSX1kSXYUdIRBoMHd6GXbkKdkrGxmtSVXyPKpQ1SaD
	 k6QpqqefKzViMZ8h9DIR3puqEd05dhHgVG5ExNQO0cPN+WxFWWAyXaTZgEAMoCilm6
	 t0Dgxd4HmOP7HlANmu939Esj4OFnEtpmPp7bDez+zDkqoW7EZjhSKJUl7pwAe2f688
	 13sMRfmQxEjPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: Add PMIC thermal support for
 Shikra CQ2390M SoM platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jishnu Prakash" <jishnu.prakash@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715-shikra_adc_support-v4-3-5e07b6d21429@oss.qualcomm.com>
References: <20260715-shikra_adc_support-v4-0-5e07b6d21429@oss.qualcomm.com>
 <20260715-shikra_adc_support-v4-3-5e07b6d21429@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 07:55:31 +0000
Message-Id: <20260715075531.75E061F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326725-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jishnu.prakash@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 570C475BAC7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing `polling-delay` in thermal zones using `generic-adc-therma=
l` renders thermal mitigation non-functional.
- [Medium] Mismatch between ADC channel definitions and pinctrl configurati=
ons causes bogus sensor readings.
--

--- Patch [3]: [PATCH v4 3/4] arm64: dts: qcom: Add PMIC thermal support fo=
r Shikra CQ2390M SoM platform ---
commit 0bee643f0fa64e35671928d7a4baae1362c3d049
Author: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

arm64: dts: qcom: Add PMIC thermal support for Shikra CQ2390M SoM platform

This commit adds ADC channels for pa, quiet, and msm thermistors along with
their ADC thermal bridge nodes. It also configures thermal zones for PMIC
thermal mitigation on the Shikra CQ2390M SoM platform.

> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi b/arch/arm64/bo=
ot/dts/qcom/shikra-cqm-som.dtsi
> index dc3861489f64d..139d0ad0b1ab2 100644
> --- a/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-som.dtsi

[ ... ]

> +	thermal-zones {
> +		sys-1-thermal {
> +			polling-delay-passive =3D <2000>;
> +			thermal-sensors =3D <&pa_therm_bridge>;

[Severity: High]
Does this thermal zone require a polling-delay property to function correct=
ly?

The generic-adc-thermal driver relies entirely on software polling by the
thermal core since it doesn't support hardware temperature interrupts. Beca=
use
the trips defined below are only "hot" and not for passive cooling, passive
cooling is never engaged.

Without a polling-delay property, the core defaults to 0 and might never
schedule the delayed work to read the ADC, effectively disabling thermal
mitigation.

> +
> +			trips {
> +				active-config0 {
> +					temperature =3D <80000>;
> +					hysteresis =3D <2000>;
> +					type =3D "hot";
> +				};
> +			};
> +		};

[ ... ]

> +&pm4125_adc {
> +	pinctrl-0 =3D <&pm4125_adc_gpio5_default>, <&pm4125_adc_gpio6_default>;
> +	pinctrl-names =3D "default";
> +
> +	channel@4d {
> +		reg =3D <ADC5_AMUX_THM1_100K_PU>;
> +		label =3D "pa_therm";

[ ... ]

> +	channel@54 {
> +		reg =3D <ADC5_GPIO3_100K_PU>;
> +		label =3D "chgr_skin";
> +		qcom,ratiometric;
> +		qcom,hw-settle-time =3D <200>;
> +		qcom,pre-scaling =3D <1 1>;
> +	};
> +
> +	channel@55 {
> +		reg =3D <ADC5_GPIO4_100K_PU>;
> +		label =3D "gnss_therm";

[Severity: Medium]
Is there a mismatch between the pinctrl configuration and the ADC channels
being added here?

The pinctrl property for the ADC node configures gpio5 and gpio6 for ADC us=
e,
but these new channels are mapped to ADC5_GPIO3 and ADC5_GPIO4.

Will these channels read from unconfigured pins and produce incorrect
temperature readings?

> +		qcom,ratiometric;
> +		qcom,hw-settle-time =3D <200>;
> +		qcom,pre-scaling =3D <1 1>;
> +	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-shikra_adc=
_support-v4-0-5e07b6d21429@oss.qualcomm.com?part=3D3

