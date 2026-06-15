Return-Path: <devicetree+bounces-312129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RAv6HqgzMGpnPwUAu9opvQ
	(envelope-from <devicetree+bounces-312129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:17:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7725B688C54
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:17:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LUnaKqNE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312129-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312129-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 962C73024E0B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6352413609;
	Mon, 15 Jun 2026 17:07:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CF341362A
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 17:07:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781543277; cv=none; b=SRXhIRhOfA/TdAw+WRUj6JYroigpqPOViVBuIFw5KOgQK/Cde/MVEHyCz/7AjRo62FJSjYngkSVxmkgvsHfM/cD3mE4ZUZ/r8zkkeor5+bGhfW14cl+zwdRrOwRtn1hKUdWkoxtgvSZtGjfBD6ryKyrA3T/EWeoDxilwWOvK5i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781543277; c=relaxed/simple;
	bh=8ggSGu6leRZJrIquijy3ro7hS4nfodjflQ/+FeVCCAk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dhuu9mrttA9bak7/Nn+VTpF5wDMU4FOpCmMTrax35EhsxiuSB91l015xiaZeSVydybS4x52Y0iw4BrW54NBpVS4KNcqZguzOLhyEVpUifavTMnutJX5DUsIm0GXInDB5pwkbbAnOSGF6vuOmwgnNNMUlSWjl8xn1At47okNvSb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUnaKqNE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BD611F000E9;
	Mon, 15 Jun 2026 17:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781543276;
	bh=8ggSGu6leRZJrIquijy3ro7hS4nfodjflQ/+FeVCCAk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LUnaKqNEgrGOQp39pUzEjRCN6/52wKvKaV6C0uDFWquY5x6BZdK4Hwb8Qg9CQowd2
	 Mfcg3byNtGPLyhJ+mYlzJXY3IE1d+yvrkPXoJbw1yB/cd6WnMynhUWDsrTPwGayeev
	 AXw15sBJQE+oVrkLpwwr/La1jxHqagBmMUTYnByCerVhdlLV0caUxhKFTmeOe+cyuQ
	 8ugreEoHD/57HeVlqDs1gMxPfkQVxRiVSZXp1zY8/M7Q3zUvsTEIoyhj0XNZs9fx5S
	 UhXj4GfCixJZ52DWXkXhHoT9D/u5u0U96sFTbz8PI4vygTIQLQfLi/wATwynqDUawF
	 iYBOjc44vl8ew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 1/6] arm64: dts: qcom: add PMIC5 Gen3 macros for
 channel numbers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615-topic-sm8x50-adc5-gen3-v3-1-216a2b5ccb85@linaro.org>
References: <20260615-topic-sm8x50-adc5-gen3-v3-1-216a2b5ccb85@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 17:07:55 +0000
Message-Id: <20260615170756.0BD611F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312129-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,checkpatch.pl:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7725B688C54

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Incorrect include guards ('ACD5' instead of 'ADC5') in the PMIC spe=
cific ADC headers.
- [Low] Leading space before SPDX-License-Identifier comment.
--

commit 3eda1039cbb8425b3c3af45f1320fc946f6b44cd
Author: Neil Armstrong <neil.armstrong@linaro.org>

arm64: dts: qcom: add PMIC5 Gen3 macros for channel numbers

This commit adds PMIC5 Gen3 macros to calculate ADC channel numbers based on
SPMI bus numbers and sensor configurations. It moves the macro definitions =
from
dt-bindings to local includes for better DT source readability.

Link: https://lore.kernel.org/all/20250826083657.4005727-4-jishnu.prakash@o=
ss.qualcomm.com/

> diff --git a/arch/arm64/boot/dts/qcom/qcom,adc5-gen3-channels.h b/arch/ar=
m64/boot/dts/qcom/qcom,adc5-gen3-channels.h
> new file mode 100644
> index 0000000000000..a8aac9ae6f404
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcom,adc5-gen3-channels.h
> @@ -0,0 +1,88 @@
> + /* SPDX-License-Identifier: GPL-2.0 */

[Severity: Low]
This isn't a bug, but there is a leading space before the SPDX identifier on
the first line. Could this be removed to ensure automated scanners and
checkpatch.pl find the tag where they expect it?

[ ... ]
> diff --git a/arch/arm64/boot/dts/qcom/qcom,pm8550-adc5-gen3.h b/arch/arm6=
4/boot/dts/qcom/qcom,pm8550-adc5-gen3.h
> new file mode 100644
> index 0000000000000..2a6338812d4e9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcom,pm8550-adc5-gen3.h
> @@ -0,0 +1,46 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reser=
ved.
> + */
> +
> +#ifndef _QCOM_PM8550_ACD5_GEN3_H
> +#define _QCOM_PM8550_ACD5_GEN3_H

[Severity: Low]
This isn't a bug, but should these header guards use ADC5 instead of ACD5?

[ ... ]
> diff --git a/arch/arm64/boot/dts/qcom/qcom,pm8550b-adc5-gen3.h b/arch/arm=
64/boot/dts/qcom/qcom,pm8550b-adc5-gen3.h
> new file mode 100644
> index 0000000000000..312daa846f798
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcom,pm8550b-adc5-gen3.h
> @@ -0,0 +1,85 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reser=
ved.
> + */
> +
> +#ifndef _QCOM_PM8550B_ACD5_GEN3_H
> +#define _QCOM_PM8550B_ACD5_GEN3_H

[Severity: Low]
This isn't a bug, but there is also a typo here using ACD5 instead of ADC5
in the include guards.

[ ... ]
> diff --git a/arch/arm64/boot/dts/qcom/qcom,pm8550vx-adc5-gen3.h b/arch/ar=
m64/boot/dts/qcom/qcom,pm8550vx-adc5-gen3.h
> new file mode 100644
> index 0000000000000..7a261a7a9cb08
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcom,pm8550vx-adc5-gen3.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reser=
ved.
> + */
> +
> +#ifndef _QCOM_PM8550VX_ACD5_GEN3_H
> +#define _QCOM_PM8550VX_ACD5_GEN3_H

[Severity: Low]
This isn't a bug, but this guard also has the ACD5 typo.

[ ... ]
> diff --git a/arch/arm64/boot/dts/qcom/qcom,pmk8550-adc5-gen3.h b/arch/arm=
64/boot/dts/qcom/qcom,pmk8550-adc5-gen3.h
> new file mode 100644
> index 0000000000000..60b3b9c60d4e2
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcom,pmk8550-adc5-gen3.h
> @@ -0,0 +1,52 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reser=
ved.
> + */
> +
> +#ifndef _QCOM_PMK8550_ACD5_GEN3_H
> +#define _QCOM_PMK8550_ACD5_GEN3_H

[Severity: Low]
This isn't a bug, but this guard has the same ACD5 typo as well.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-topic-sm8x=
50-adc5-gen3-v3-0-216a2b5ccb85@linaro.org?part=3D1

