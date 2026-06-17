Return-Path: <devicetree+bounces-313006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5g9cOwqdMmpG2wUAu9opvQ
	(envelope-from <devicetree+bounces-313006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 15:11:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE38699FD6
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 15:11:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bMmacHv1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313006-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313006-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 611903058490
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEFE53B7752;
	Wed, 17 Jun 2026 13:11:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB24227B94
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 13:11:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781701896; cv=none; b=TDGm3jUnGOQyLdIgXF1i1PbU2nnzNyMpc7CSsQvzC2V061DegxX+SOQI6AA+kyZ6VItVYWplDdUueZPuYAo5h6IG5Ntj0MxRW78w1lGTjKGfb49jEdmxiUdsEcBWCZB9oSB89yQBsjTI6Datb3S6E21neL3C+GJTUYXoM2KPQPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781701896; c=relaxed/simple;
	bh=YesshAeFkDsR6skteVZQ4i+hqKZBtAioLK9hHZr+cLg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=otSN/RcgAy9iDVS8PPr3tncnIfM/rVQtTXDYZ4g9nc6gpafUDGmAUJNhtchk4E7pFcJFJ5X1An1mSvqzr2NMmP5gXwzXI7LGexSRBkBT+TsvSy+a3jLkwhzl55AYkBTzTxIh3fWNQ5YFqSNcP/EDcgFedkEOhKEFAjHdjubOilY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMmacHv1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08C911F000E9;
	Wed, 17 Jun 2026 13:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781701895;
	bh=n/K38EFlSS+ioTV5TwxVQgsUk6194krC34kqYx0W02Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bMmacHv1bOGkjWgE3NwSw4qcZyosSfgoYtqJCZLFU4kliIsiF5aQhk/EBWo9pEo+0
	 KloDlngQHOiV66sjfhJqzsKgEJNA20fj8oJoQgZc+ts8ShJUQQGDxAShWfJeF2E+V3
	 oy5zl+wQKKGKjdU6S5kkjei5FIpFRDjNb8zJIlJlEOoKMR0wicPbenO3jRaLsNkq7O
	 GWbwIUsZICAuV2bA0SiJXwcg674J2OVnzS7KxErUY6qeEY3r6kWS4iE3PhuOr5KV9d
	 Sotb5ZRk70aBxxy9s6Qjeqm7S+N5FTWSRnXWhRo18XGMQpZZzxcjp6WmsVvUtHPRBW
	 tZdagn6yGkzEw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: sm8650-qrd: add SPMI ADC
 channels and thermal nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260617-topic-sm8x50-adc5-gen3-v4-4-4af9251731f1@linaro.org>
References: <20260617-topic-sm8x50-adc5-gen3-v4-0-4af9251731f1@linaro.org>
 <20260617-topic-sm8x50-adc5-gen3-v4-4-4af9251731f1@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 13:11:34 +0000
Message-Id: <20260617131135.08C911F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313006-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,linaro.org:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5CE38699FD6

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The patch relies on undefined parameterized macros (e.g., `ADC5_GEN=
3_DIE_TEMP(1)`), which will completely break device tree compilation.
- [Low] The unit-address of the PM8550VE thermal channel node (`channel@503=
`) does not match its evaluated `reg` property (`0x803`), causing a DTC uni=
t_address_vs_reg warning.
--

commit 3ff480d3d3bffdbe30ed6468b6ac6d09de994eeb
Author: Neil Armstrong <neil.armstrong@linaro.org>

arm64: dts: qcom: sm8650-qrd: add SPMI ADC channels and thermal nodes

Add the SPMI ADC channels on the PMK8550 SPMI5 ADC3 for the
other PMICS on the system. The thermal nodes are sorted by the
sensor channel to be coherent with the system thermal nodes ordering.

> diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dt=
s/qcom/sm8650-qrd.dts
> index a3982ae229290..d4a0627ebbf6e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> @@ -158,6 +158,92 @@ platform {
>  		};
>  	};
> =20
> +	thermal-zones {
> +		skin-thermal {
> +			thermal-sensors =3D <&pmk8550_vadc ADC5_GEN3_AMUX1_THM_100K_PU(1)>;

[Severity: Low]
Will this cause a device tree compilation failure?

It appears this patch uses parameterized macros like
ADC5_GEN3_AMUX1_THM_100K_PU(1) and ADC5_GEN3_DIE_TEMP(1), but the required
header defining them (qcom-adc5-gen3.h) isn't present in the tree.

The existing qcom-adc5-gen3-common.h defines these macros without arguments
(e.g., ADC5_GEN3_DIE_TEMP is 0x03), so using them with parameters will
evaluate to a syntax error like 0x03(1).

[ ... ]

> +	/* PM8550VE Channel nodes */
> +	channel@503 {
> +		reg =3D <ADC5_GEN3_DIE_TEMP(PMK8550VE_SID)>;

[Severity: Low]
Does this unit-address match the evaluated reg property?

PMK8550VE_SID evaluates to 8 in sm8650-qrd.dts. Assuming the macro calculat=
es
the address using the SID, the reg property will logically evaluate to 0x80=
3.

The hardcoded channel@503 unit-address would then mismatch the 0x803 reg
property, which will trigger a DTC unit_address_vs_reg warning once the bui=
ld
failure is resolved. Should this node be named channel@803?

> +		label =3D "pm8550ve_die_temp";
> +		qcom,pre-scaling =3D <1 1>;
> +	};
> +
> +	/* PM8550VS_G Channel nodes */

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-topic-sm8x=
50-adc5-gen3-v4-0-4af9251731f1@linaro.org?part=3D4

