Return-Path: <devicetree+bounces-326724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AvNgFo09V2rNHwEAu9opvQ
	(envelope-from <devicetree+bounces-326724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:58:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D57075BA9A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:58:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ru1NgFqa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326724-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326724-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD0A7308FA6C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 07:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7AC130C152;
	Wed, 15 Jul 2026 07:53:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83532931D1
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 07:53:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784102005; cv=none; b=Dl34jlzSzJ2wpgt1Vagixow9US9rwVbNyYMHsWF7ktUWHs7H74Wo8UKEmCeingqQgh0y54lGMicxVZUno8OSiZ9gotINRElDrWL4g/W3mqOa6C1u9UcHuWT+1ydp9MqcAruU+d54SFSpK8frjvubLV/AH/2Mpx7iSi8EnKxyQvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784102005; c=relaxed/simple;
	bh=w8Sr/yZ5IDen0Rto2IjpnojLO6iEGCgnq1kkTY2e0Ds=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GLMxnywAep418naJDOb4Ym3OkpoR4EAtsBVGhiwn3HAH/BrbVn4aPr+G7bW+Ns2Sh8eMKKV0LQ6RPDXJ96T4So/tOcL95BHDjq4jTrlHioLpgX1srDMX9L55AZUtfU3RbbwqlaB65NCbvkGNyRF1W4A+d3RKzAikADO+rZzN2oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru1NgFqa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E7861F00A3A;
	Wed, 15 Jul 2026 07:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784102002;
	bh=FnI9/0K5gwuJAgN+woXwNCCGMyoOoB3nUGCjh0lvWJc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ru1NgFqaJ5wKnEH+HLU1Sste8zw4BrHhQNjT9NiEr+p5efA/Org1wR8yQIqgJZYZ7
	 oD3I2iSQ5VlV7IjUPW7g9P8ycRdREzLNL19jVzv3ztu/xeqpYmLjuqPlutb7rQUagl
	 eV67/qwBM48WoaZ+lo7pByiQDlmENaCW0TXWtntJ7RVocBUYDcrvevmFmEJyg/LKm7
	 mYfTH1QPVZu21hGeO+CS+rXQPw2dT2HtuYKDbVBTJGL/RHl9vvBmKI9cO+t4uChK8l
	 5IoSXKxUK6SgCezuG8xq7Mp2o6JVI5Mrva2sX1QruOPCa5HpOA472Rn9uy9jYTJFe4
	 pvdrMJuziFMFw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: pm8005: Add temp alarm node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jishnu Prakash" <jishnu.prakash@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715-shikra_adc_support-v4-2-5e07b6d21429@oss.qualcomm.com>
References: <20260715-shikra_adc_support-v4-0-5e07b6d21429@oss.qualcomm.com>
 <20260715-shikra_adc_support-v4-2-5e07b6d21429@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 07:53:21 +0000
Message-Id: <20260715075322.1E7861F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326724-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jishnu.prakash@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D57075BA9A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The critical thermal trip exceeds the hardware maximum limit for a=
 PMIC temp-alarm without an ADC, causing sudden hardware shutdown and boot =
warnings.
--

--- Patch [2]: [PATCH v4 2/4] arm64: dts: qcom: pm8005: Add temp alarm node=
 ---
commit 6fe65cc601cbda83fdc5adbaeaef49d876e5ddff
Author: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

arm64: dts: qcom: pm8005: Add temp alarm node

Add temperature alarm node along with thermal zone used
for PMIC thermal mitigation.

> diff --git a/arch/arm64/boot/dts/qcom/pm8005.dtsi b/arch/arm64/boot/dts/q=
com/pm8005.dtsi
> index 0f0ab2da83055..ce31a85450200 100644
> --- a/arch/arm64/boot/dts/qcom/pm8005.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8005.dtsi
> @@ -4,6 +4,34 @@
>  #include <dt-bindings/spmi/spmi.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
> =20
> +/ {
> +	thermal-zones {
> +		pm8005-thermal {
> +			thermal-sensors =3D <&pm8005_tz>;
> +
> +			trips {

[ ... ]

> +				pm8005_trip2: trip2 {
> +					temperature =3D <145000>;
> +					hysteresis =3D <0>;
> +					type =3D "critical";
> +				};

[Severity: High]
Does this critical trip temperature exceed the hardware maximum limit?

The critical thermal trip is set to 145=C2=B0C, but the temp alarm node bel=
ow lacks
an io-channels property to specify an ADC.

Without an ADC, the qcom,spmi-temp-alarm driver will clamp the critical tri=
p to
the hardware maximum (140=C2=B0C) and leave the hardware auto-shutdown enab=
led. This
can cause an abrupt power cut at 140=C2=B0C, bypassing the OS's graceful sh=
utdown
procedure that was intended to happen at 145=C2=B0C, and will also print a =
warning
on every boot.

> +			};
> +		};
> +	};
> +};
> +
>  &spmi_bus {
>  	pm8005_lsid0: pmic@4 {
>  		compatible =3D "qcom,pm8005", "qcom,spmi-pmic";
> @@ -11,6 +39,13 @@ pm8005_lsid0: pmic@4 {
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> =20
> +		pm8005_tz: temp-alarm@2400 {
> +			compatible =3D "qcom,spmi-temp-alarm";
> +			reg =3D <0x2400>;
> +			interrupts =3D <0x4 0x24 0x0 IRQ_TYPE_EDGE_BOTH>;
> +			#thermal-sensor-cells =3D <0>;
> +		};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-shikra_adc=
_support-v4-0-5e07b6d21429@oss.qualcomm.com?part=3D2

