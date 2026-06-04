Return-Path: <devicetree+bounces-306692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wBL4DME3IWoQBQEAu9opvQ
	(envelope-from <devicetree+bounces-306692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 10:30:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C8F63E018
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 10:30:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SQHjIXSc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306692-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306692-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A139E30182BD
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 08:22:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05C2337DE9B;
	Thu,  4 Jun 2026 08:22:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7FF305682
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 08:22:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780561347; cv=none; b=G32dTVaM6azlyW4GvQ2HoUlbWC/wkUkTgAGZP3mI0Uhqq11GramD+/JFwKOQDtf7fgwlb2AW1syCd0IzMBgsvFwvpOnBpGOyJ2mezZsJ8ia16ojIuXSIjGtDZ/aILf9wn3ux8udYh2XYDnuoGVJVQqZAOXIOJX1iv2ZUgj520HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780561347; c=relaxed/simple;
	bh=qIf0q6nPGKv9Kn7b5/DqMsF0DvqjDrnhgzFo5r92Dyk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=klk1hECoUvKJ4Qtv0BJ0aFvjqGwZR5MQ2xhboMGZgtx9OWpf0rjPVCfBVOiTL+oMoQm5doJ1ut3hr+5wQ+Yg1zEAmb2Pno4IwZx/xwJYSHfvaMLqpHehl7mAsE4flPsJOJ/f92CuSwJctX763ZBfdYDnr8Iwd9CGCx2lUGHxjLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQHjIXSc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 787D21F00893;
	Thu,  4 Jun 2026 08:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780561346;
	bh=qLESv79Gs9i/g3fBG1Ar34reaAJiM2FZ8YIohVIqRUw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SQHjIXScgJXDMfdK5itfyUkXp+9Cw8vo5GPX2aWf9CosmbKN9v8hZrfbSCVzBsRK9
	 LMt1VQn6YCO/Itla9b+u01m5hewVzPAAggChb6Ug1pC3PB83HURSnIjxgYmJXHqCpD
	 ARQSmjqmJlG5ZE231wrX0NqDa1Uuae6/xhRxo86cCyoXmaa/otBBd/2hfoiG+Q6iFS
	 3QZpRvbiPfTfvpbup1rInNJM4x2bWIMpX6M9SVymg1q98rQf5H2x/TT/NM8CeooCPR
	 6w3AkhqRSesYg/kpSlmZI1zJ9lwMu6pA6XRgmOel17q5rzQ/6KKI1zpBryNc1lzG8y
	 tYRsN8G8T+Lcw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add Glymur-based Lenovo Yoga Slim
 7x Gen11
Reply-To: sashiko-reviews@lists.linux.dev
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260604-topic-yoga_submission-v1-3-57c70c23d0d6@oss.qualcomm.com>
References: <20260604-topic-yoga_submission-v1-3-57c70c23d0d6@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 08:22:25 +0000
Message-Id: <20260604082226.787D21F00893@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306692-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 96C8F63E018

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Missing `vdd-micb-supply` in `lpass_vamacro` node breaks DMIC capt=
ure.
- [Low] Missing `key-volume-up` subnode in `gpio-keys` despite claiming its=
 pinctrl.
- [Low] The `nvme_sec_reg_en` pinctrl node is defined but never referenced.
--

commit cf25549a8fd93e158d3d638230deeb2a24306da5
Author: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

arm64: dts: qcom: Add Glymur-based Lenovo Yoga Slim 7x Gen11

This commit introduces the device tree for the Lenovo Yoga Slim 7x Gen11
laptop. It defines nodes and configurations for several supported hardware
features such as audio, GPU, keyboard, and networking.

> diff --git a/arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts b/arc=
h/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/glymur-lenovo-yoga-slim7x.dts
[ ... ]
> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +
> +		pinctrl-0 =3D <&key_vol_up_default>, <&hall_int_n_default>;
> +		pinctrl-names =3D "default";
> +
> +		switch-lid {
> +			label =3D "lid";
> +			gpios =3D <&tlmm 92 GPIO_ACTIVE_LOW>;
> +			linux,input-type =3D <EV_SW>;
> +			linux,code =3D <SW_LID>;
> +			wakeup-source;
> +			wakeup-event-action =3D <EV_ACT_DEASSERTED>;
> +		};
> +	};

[Severity: Low]
Does this code miss a subnode for the volume up key?

The pinctrl state for key_vol_up_default is claimed by the gpio-keys node
here, but without a corresponding child node, the input subsystem will not
register the volume up button.

[ ... ]
> +&lpass_vamacro {
> +	pinctrl-0 =3D <&dmic01_default>, <&dmic23_default>;
> +	pinctrl-names =3D "default";
> +	qcom,dmic-sample-rate =3D <4800000>;
> +};

[Severity: High]
Should this node include a vdd-micb-supply property pointing to vreg_l1b_e0?

The audio routing connects the digital microphones to the vdd-micb DAPM
widget. Without a vdd-micb-supply property here, the lpass-va-macro driver
falls back to a dummy regulator.

Since the physical supply (vreg_l1b_e0) has no consumers and lacks a boot-on
or always-on property, the kernel regulator core will disable it. Will this
leave the microphones without bias power and result in silent audio capture?

[ ... ]
> +&pmh0110_f_e1_gpios {
> +	nvme_sec_reg_en: nvme-reg-en-state {
> +		pins =3D "gpio14";
> +		function =3D "normal";
> +		bias-disable;
> +	};
> +};

[Severity: Low]
Is this pinctrl state needed?

It is defined here but does not appear to be referenced by any device node's
pinctrl properties. Could this be leftover dead code from a reference desig=
n?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604-topic-yoga=
_submission-v1-0-57c70c23d0d6@oss.qualcomm.com?part=3D3

