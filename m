Return-Path: <devicetree+bounces-311422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wbCXEThjLmpTvAQAu9opvQ
	(envelope-from <devicetree+bounces-311422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 10:15:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 974F6680A15
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 10:15:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=O3EPHs7x;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311422-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311422-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6411E30068F6
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 08:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F01732FF144;
	Sun, 14 Jun 2026 08:15:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E662FDDA9
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 08:15:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781424947; cv=none; b=nuryHfFtr/cZmhVwZyW5QLW5+w63x7Oh/U48BbFGgC3Tyzi/d0SrMx5wL7MLnw7Z0gCLzZqqmnkVoy3sNilN/h91/7u7R5qjTnhxmehu+omRFIeK9xqp4ztM7sUZbJvGQNHxU/0xeJ/7e3t/UAZXXxkApiHe5oVj9JE2zoaXVMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781424947; c=relaxed/simple;
	bh=YJiVc/A8oo7Y+esyalbRAf6ZSza2Px9jgfvyLJRRulY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=i2AuqTzLfeJi4F+R+EO/XkhU2Yq4d9RHHfLbMa5uW3ayI7I259d3ftfWogqY3fx82Bc5EOFZpeFgn0S8Cm54Akyqrm18+A3n8H7pA/NEkNUNxcGKuM3OBbqOCzmgBiE6psZjrpNgqiQLWYGeifMeao2X/dNC8eQNzK0KHvj2FYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3EPHs7x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 585941F000E9;
	Sun, 14 Jun 2026 08:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781424946;
	bh=QRTPg0bFeG6+BjTcyS16YvgwayJFsYRD/RwJ5wRsRYs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=O3EPHs7xdxChJo4uvUCDlA2grQgM57JMvKP8aidnkAt4vkhonB/h/Ty8K/jB++jm1
	 /Ibu3ULMpl1PJxSBqC7jNfP2JumuzGtwobO5xjGxJmwuzNpFbG6QLhz4fBTYbPOTLi
	 fvoq+hTizAlkLK9q7UJJDuQRbbrjxONi5CFfxsyRLO/OnSXFp+LZkicq+p2OAtXGD0
	 a8ODDApI5wVlXRzZSr5i68KUSWhM0oIA8y71Nrgauf5mbsAAyA5Y4+sIAhMKC0Rmq8
	 w3wStnwFu/6NDDWUt4Oj9rjYHUoico/nnuoO3nEnh5rT40OrbVi1Z1hI2E+DgJfGYJ
	 l/iT9ljWP8fxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: monaco-pmics: Add ADC support
 for PMM8620AU
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jishnu Prakash" <jishnu.prakash@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260614-adc5_gen3_dt-v2-3-32ec576c5865@oss.qualcomm.com>
References: <20260614-adc5_gen3_dt-v2-3-32ec576c5865@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jun 2026 08:15:45 +0000
Message-Id: <20260614081546.585941F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311422-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jishnu.prakash@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 974F6680A15

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The ADC interrupt handler `adc5_gen3_isr()` may dereference a NULL=
 pointer `adc->handler` if an interrupt fires before the thermal auxiliary =
driver has registered its event notifier.
--

commit 2afa9a558734cf9fc6ad1120da9026df8390137c
Author: Ayyagari Ushasreevalli <aushasre@qti.qualcomm.com>

arm64: dts: qcom: monaco-pmics: Add ADC support for PMM8620AU
   =20
This commit adds ADC nodes for PMM8620AU PMIC instances on the Monaco
platform. It exposes the DIE_TEMP and VPH_PWR channels.

> diff --git a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi b/arch/arm64/boot=
/dts/qcom/monaco-pmics.dtsi
> index e990d7367719b..232bcb942b54c 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
[ ... ]
> @@ -20,6 +21,27 @@ pmm8620au_0_rtc: rtc@6100 {
>  			interrupts =3D <0x0 0x62 0x1 IRQ_TYPE_EDGE_RISING>;
>  		};
> =20
> +		pmm8620au_0_adc: adc@8000 {
> +			compatible =3D "qcom,spmi-adc5-gen3";
> +			reg =3D <0x8000>;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			interrupts =3D <0x0 0x80 0x1 IRQ_TYPE_EDGE_RISING>;

[Severity: High]
This is a pre-existing issue, but by enabling the qcom,spmi-adc5-gen3
interrupts here, does this expose a NULL pointer dereference in the
ADC driver's interrupt handler?

In drivers/iio/adc/qcom-spmi-adc5-gen3.c:adc5_gen3_isr(), the handler
checks the device driver state rather than the function pointer:

		adev =3D adc->tm_aux;
		if (!adev || !adev->dev.driver) {
			dev_err(dev, "adc_tm auxiliary device not initialized\n");
			return IRQ_HANDLED;
		}

		adc->handler(adev);

If an interrupt fires after the driver core sets adev->dev.driver but
before the thermal driver calls adc5_gen3_register_tm_event_notifier()
to set adc->handler, will this result in a kernel panic by dereferencing
a NULL adc->handler?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614-adc5_gen3_=
dt-v2-0-32ec576c5865@oss.qualcomm.com?part=3D3

