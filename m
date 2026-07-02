Return-Path: <devicetree+bounces-319321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5OLoJKVTRmp5QwsAu9opvQ
	(envelope-from <devicetree+bounces-319321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:03:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F11BD6F7431
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:03:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AjLV2HrS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319321-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319321-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D76E730A554B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 11:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEE303D9DD0;
	Thu,  2 Jul 2026 11:06:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D957F3CC9F2
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 11:06:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782990394; cv=none; b=nRpNhDPe5MYkmQyfe0XXeDjU0jMRGfTGdO9+mMzeczS1Iy6lTWaEzQhWeH62wKHeU0kRH+SK9LQ4zCkmaLgBJ8CfqxGY3SLdAeXisrIewIrNoXLViF0KzWtT1l2fnsqkrv4VJ+y7CDdKG6/8fNHZCxJNhfACpQLOsyHT2Ri6C1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782990394; c=relaxed/simple;
	bh=+3VAEUr9TmVT1YvT5p00nD4iv2QA6Uxa4fZ2paSQQN0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fQfYpmEXxvs5cjL+zov63rE6pgpGHFYnJTeUyBghBoXu4yDn7Q2ZD4iiFulfh+duLrhI63C61bg5M0EzotCXzev/1yrfW4NE8TBIxr4NNU/BTlsriTJGdzvm6HwcP2odK2DeSooNHRrRXz8D5aNPXVgQ8+TNkafckAgjFlWgrZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjLV2HrS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BFF51F000E9;
	Thu,  2 Jul 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782990393;
	bh=bDrH5gewXRkNXXXy41nXJPGdsvc7PAWzwpYNSTvs+6M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AjLV2HrSQ31+9xI1x/NUSACz50R2U1YYsmphPoOzKOZKJsRkaNtmxyThcIqY+P1dp
	 1jHdEoSYXhB1ZWid4T46S+Rqk6aUNK0oZlBAOS44f+eakZAlh8dMfRdzHvLr6oUkKf
	 anNRJmokF48hBuHpenSm8cdZIQ+NtpdLZBQ+bUt9tNlDOiIizzzR55lT509oyqQsB0
	 Mr1aEAJCn2xMVf5YbcQB/lOeT86Bmmt1cKBTswjdLxWw6geNwucjw7RSbHneef0+W7
	 sI9hTvCANX64tsk6Y1pT3M4GaWozq9kjdFFFrJ58+t4acfa1CLJzLBIB0WkchaDCjS
	 5Z5ZPq3v8QeEg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: qcom6490-idp: Add IPA nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sarat Addepalli" <sarat.addepalli@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260702105509.1360340-1-sarat.addepalli@oss.qualcomm.com>
References: <2qlpabzpyvjwd2siwkpcdcjq7geyzj5egu732dg775asn2wtbq@tcbj6r5ti2o5>
 <20260702105509.1360340-1-sarat.addepalli@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 11:06:32 +0000
Message-Id: <20260702110633.3BFF51F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319321-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sarat.addepalli@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F11BD6F7431

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing `qcom,gsi-loader` and `memory-region` properties in the `&=
ipa` node cause driver probe to fail.
--

commit 340452b6b574043f9bbb5c7064a4d13788d8709e
Author: Sarat Addepalli <sarat.addepalli@oss.qualcomm.com>

arm64: dts: qcom: qcom6490-idp: Add IPA nodes

This commit adds the IPA nodes for the Qualcomm qcm6490 board by enabling
the &ipa node and setting the firmware name in qcm6490-idp.dts.

Link: https://lore.kernel.org/all/20260517-ipa-loader-v1-0-3c3764c1b4a3@oss=
.qualcomm.com/

> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/d=
ts/qcom/qcm6490-idp.dts
> index bdc02260f902b..d4f96bdd3a90b 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -619,6 +619,11 @@ &gpu_zap_shader {
>  	firmware-name =3D "qcom/qcm6490/a660_zap.mbn";
>  };
> =20
> +&ipa {
> +	firmware-name =3D "qcom/qcm6490/ipa_fws.mbn";
> +	status =3D "okay";
> +};

[Severity: High]
Does kodiak.dtsi actually provide the qcom,gsi-loader and memory-region
properties at this revision?

If they are missing from kodiak.dtsi, the IPA driver defaults to
IPA_LOADER_SELF (since modem-init is also absent) and requires a memory-reg=
ion.
Without it, ipa_probe() in drivers/net/ipa/ipa_main.c will fail with -EINVAL
when it calls ipa_firmware_load() -> of_reserved_mem_region_to_resource().

Will this cause the IPA driver probe to fail on this board?

> +
>  &lpass_rx_macro {
>  	status =3D "okay";
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702105509.1360=
340-1-sarat.addepalli@oss.qualcomm.com?part=3D1

