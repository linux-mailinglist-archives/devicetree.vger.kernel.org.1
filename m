Return-Path: <devicetree+bounces-312015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o0dXHtUNMGpRMgUAu9opvQ
	(envelope-from <devicetree+bounces-312015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:36:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ACD6873B3
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:36:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Pd1ZiJnz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312015-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312015-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA8CC3108A6E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914E83F485F;
	Mon, 15 Jun 2026 14:31:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE3E3E51E4
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 14:31:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781533875; cv=none; b=fnNAs71tKmpYliKAih59OdRcGMH97PiVNgpvdyoN2xeanRJC3iKwd3QrXptPJWyBxt7BcK99+1E+Po6J0gzt8Mim5HCtbj9iRaPs4VlQNWoO6Lswg/07/3DoeQNsNHP9kQavaiwKrmTI3ACV5iesNCC7M433UOiD1ZBtb466Quk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781533875; c=relaxed/simple;
	bh=4E0J8XWdn+q9p7I5nzDbK1t1BpZqMYEn23vleASpMdo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=f6Q1NxFrrHruuL9dORkuRwyGhfBG+qrWxKHAUppngNj2LAlwJoH0hBdbRWwNKFy50Q4jzOZ9DSxUrCiE46UWcIqPGBxYBT5PoW0fUMUUMP/zwGL+m/yllqV2VQcRSs5qs0bYDFPQeryTKh115gAFOISHdP/sQzoCFF/CdQtBO2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pd1ZiJnz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 193D01F00A3A;
	Mon, 15 Jun 2026 14:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781533874;
	bh=pAzL6EIghRXcltCFcaXjbpXtXk7bD0ZIj53gHaGovd8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Pd1ZiJnzbiWgaatkbe7wucMrdW9EImB5tMbgoUv1hyKiAMmjvTjipUZBKlDR5eJ+H
	 oh+3jcXENKYjPkl20VnT+v3cKNN66O5+T5U5yZY8LxmPwVPkJCAHfclF1IfUs4SM6W
	 utTPjtOUAzr/T6Hxf67kqZ92OzFDhmE+ecBy0wAMBxtdoI5b9emJyCaES8bGIKmcAZ
	 T4jss6pDcXRrMRjscRcATr2EQ219ObK7S1KofZ7aS0p7odhlF7jpLbAwMNaamRxqyv
	 cXCtpNVSLBF1tG5p4nkiYXNV7o596O71Xy8Rk0fhsOMip4wD/um6BZCCRXBiaL5/Cp
	 lQPp91EOhFOgA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sc8180x-primus: Describe the
 display power net
Reply-To: sashiko-reviews@lists.linux.dev
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260615-topic-8180_disp_power-v1-2-18d36b548c48@oss.qualcomm.com>
References: <20260615-topic-8180_disp_power-v1-2-18d36b548c48@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 14:31:13 +0000
Message-Id: <20260615143114.193D01F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312015-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:konradybcio@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C0ACD6873B3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Typo in pinctrl node name: 'blw-pwr-en-state' instead of 'bl-pwr-en=
-state'.
--

commit 811dfdf2795d7b72d8bd9ca1c392faa696962302
Author: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

arm64: dts: qcom: sc8180x-primus: Describe the display power net

This commit describes and wires up the power supplies for the eDP panel and
its backlight. Previously, this was only working because of settings
inherited from the bootloader.

> diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boo=
t/dts/qcom/sc8180x-primus.dts
> index ffe7c45366ed4..ed4f7f10e3768 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts

[ ... ]

> @@ -769,6 +803,12 @@ &wifi {
>  };
> =20
>  /* PINCTRL */
> +&pmc8180_2_gpios {
> +	bl_pwr_en: blw-pwr-en-state {

[Severity: Low]
This isn't a bug, but there appears to be a typo in the pinctrl node name.
Should "blw-pwr-en-state" be "bl-pwr-en-state" to match the typical naming
conventions for backlight pin states?

> +		pins =3D "gpio1";
> +		function =3D "normal";
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-topic-8180=
_disp_power-v1-0-18d36b548c48@oss.qualcomm.com?part=3D2

