Return-Path: <devicetree+bounces-308807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C4+sMdjMJ2rP2QIAu9opvQ
	(envelope-from <devicetree+bounces-308807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:20:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C46365DB0D
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:20:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=c1bfHzgt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308807-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308807-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A17C300CBFA
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 08:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A0B23EDE77;
	Tue,  9 Jun 2026 08:12:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96BD3ED3CF
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 08:12:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780992731; cv=none; b=aq81jGcILzPpRjcLUij6O2e34U2NQXOhU7Fss9NaL/RtFhfk76Y25EoN1vx3qOzIGJ1jzXju7OOEv9utzOPZBtnPY9Bpl7jRpub5eksV/ExNwjYPAjd8pH0ptH4kqCTl4TmwXKdwzY1X+2KZCmLhQ7Glmaw7G28Ug2vJhR+U+hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780992731; c=relaxed/simple;
	bh=WfhzaYDh+coHnmVdglW1QG5VsKn0NOQHAZiOFbMI10g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EhTqt0MmxhOvJoOV2KN0bVnWnqGc1bbbRB44n5WYOy8wtQtQikSYQtJsW+LsQ2AurZzrlreEIIxeWH7aVnRUKPpQjb0cb0pIzfp5RN6YHxiaPkAxBzrFnpogFRQYQXVju/J5+spzu+RM/HgnNkH8LV8do8O1OQVwq9xqodEuCio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1bfHzgt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 097C91F00898;
	Tue,  9 Jun 2026 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780992730;
	bh=efS1TadNvY0fGKhRQTnoLSLI98umOyJMWicU26by+Zg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=c1bfHzgtwP5SaC5BqHRfkYfwXgMesJEFwsiCq5CXzYtLet2UQxiPAgBmDFdsms5iB
	 0cPN5sJIbzPPjaRPDx3kTVOWelxtoqJzi8b5XfcF/Pt7r/rr0zdXYGnsWBWzS3mhQu
	 yjE1Hh6DUxCUx8ZTfGbAb3t42gkE6sRGRAo6GindU6KqNNQHwLsZapOkGm/DQaXCBF
	 CQbAtwAHZhBpn6x/u4uZP8y+Nquy0/Y90J4aMoMGAVwjtMuFKTkTq+4RkntMacNNNl
	 u59LR1yvxvYhhylRxedgOp416cnIkM9PJjD+5P0j1EkQYnB1fEUWUEtTvuy9zfuHlq
	 kkdlC5QAJ770w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: Add Eliza CQS SoM platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609-eliza-dts-qcs-evk-v3-2-b4e9b033a6dc@oss.qualcomm.com>
References: <20260609-eliza-dts-qcs-evk-v3-2-b4e9b033a6dc@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 08:12:08 +0000
Message-Id: <20260609081210.097C91F00898@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308807-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:abel.vesa@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C46365DB0D

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The device tree source includes `pm7550ba-eliza.dtsi`, which does n=
ot exist in the source tree, causing a C preprocessor failure during compil=
ation.
- [Low] References to device tree labels `&sdhc_1`, `&sdc1_default`, `&sdc1=
_sleep`, and `&remoteproc_adsp` lack definitions in the base SoC device tre=
e (`eliza.dtsi`).
--

commit 49ba8d899e255d89a8013a6ccd6b518c9f069ea6
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

arm64: dts: qcom: Add Eliza CQS SoM platform

This commit adds the Eliza CQS System-on-Module DTSI file. It describes
the regulators, board clocks, eMMC support, and ADSP firmware.

> diff --git a/arch/arm64/boot/dts/qcom/eliza-cqs-som.dtsi b/arch/arm64/boo=
t/dts/qcom/eliza-cqs-som.dtsi
> new file mode 100644
> index 0000000000000..33f4cd2822724
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/eliza-cqs-som.dtsi
> @@ -0,0 +1,394 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "eliza.dtsi"
> +#include "pm7550ba-eliza.dtsi"

[Severity: Low]
Is pm7550ba-eliza.dtsi missing from the tree? It doesn't appear to be added
in this commit or present in the baseline, which causes a preprocessor
failure during compilation.

[ ... ]

> +&remoteproc_adsp {
> +	firmware-name =3D "qcom/eliza/adsp.mbn",
> +			"qcom/eliza/adsp_dtb.mbn";
> +
> +	status =3D "okay";
> +};

[Severity: Low]
Is the &remoteproc_adsp label defined in the base eliza.dtsi? Compiling
this device tree fails with a reference to a non-existent node or label.

> +
> +&sdhc_1 {
> +	vmmc-supply =3D <&vreg_l12b>;
> +	vqmmc-supply =3D <&vreg_l1d>;
> +	pinctrl-0 =3D <&sdc1_default>;
> +	pinctrl-1 =3D <&sdc1_sleep>;
> +	pinctrl-names =3D "default", "sleep";

[Severity: Low]
Are the labels &sdhc_1, &sdc1_default, and &sdc1_sleep defined? They appear
to be missing from eliza.dtsi and the included files, leading to a build
failure.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-eliza-dts-=
qcs-evk-v3-0-b4e9b033a6dc@oss.qualcomm.com?part=3D2

