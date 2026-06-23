Return-Path: <devicetree+bounces-314578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id suO3E3nbOWobyQcAu9opvQ
	(envelope-from <devicetree+bounces-314578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:03:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2DF6B3151
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:03:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=c4EKrc1V;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314578-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314578-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48A763019B9A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 01:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21F2F1A6807;
	Tue, 23 Jun 2026 01:03:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCFC14E2F2
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 01:03:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782176630; cv=none; b=F+zqv1RG6/YGzFDIxYUK2DrMqSG+Ni5/3Zn8hPnuJHIAgs98w18Bn+2CWEjq7ojmTs4ulzA0p17wUuicPj0KSYmdOl8TBT8RKkidBZtYS7/eNf6khBYG/zD/z22sACy/W9YPbExLuO1mxjvKTp/0UbZjSmYSSO7WhHW+MT4ntfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782176630; c=relaxed/simple;
	bh=dE38o5K1+3Vu6huXZM8zSm1n5Z9ExLtlWxt7qTmR150=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hktj/MaKfoGAe7eXYkbxjfYfS0926Ty0py5tXFVUEmvkaNIa4gD3uWKJMsGe0blrKjFGGlJZ15ltv/K4jrH66avyQFUb4l57MUw2rIG13wtlHHizWHPpp5QC84wgXt0+FzOHRg+MFxgs2XkWXEh/iDATBrYTFeDmlXKHrgJ/XUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4EKrc1V; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 411431F000E9;
	Tue, 23 Jun 2026 01:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782176628;
	bh=A+OgmDHnBTm+wK8UGNsQDShMG2VzeVtcaGpwe9DDtjk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=c4EKrc1VzsSNzV79yO/X1cy0X/jbRYxxy52N4cOzBp4GG0v7Mhe1hFGmqstO84yBl
	 uF4M4qKFkH6e0CGOouj+3sMTg3/3mxV79MTjp8u0vmdCPIGGyXE/7MpRmi/XYVIaqM
	 ADhsxa1mNDwcuJxShj3Uh9CU0rNaWz1yLC8+tpF3xw0i9ioJYL0SKmwRNXcX4wWGpG
	 u9mcqf19hZh2z0IPKeCQnJ4p79bU+4co+s2K0tIp3tUBjQsKfIDDqFzOVEUfvXe+6E
	 mqaCTAnLn3P86Dg4pbxTV9UVtWyIuQQfvgdzZ0ZI7SxTZeNbSbJtj63DnNt7m5cglJ
	 7rvwr4lheURJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/8] arm64: dts: qcom: sm8450: Add missing PCM_OUT port
Reply-To: sashiko-reviews@lists.linux.dev
To: "Esteban Urrutia via B4 Relay" <devnull+esteuwu.proton.me@kernel.org>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260622-sm8450-qol-v1-4-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
 <20260622-sm8450-qol-v1-4-37e2ee8df9da@proton.me>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 01:03:47 +0000
Message-Id: <20260623010348.411431F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314578-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+esteuwu.proton.me@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,lists.infradead.org,kernel.org,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,esteuwu.proton.me,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,proton.me:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C2DF6B3151

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Silent and likely accidental modification of the sample interval=
 for the second SoundWire port from 0x1f to 0x3f.
--

commit c423fe48b88cf765efc50ccc2d69ba6fafa2266a
Author: Esteban Urrutia <esteuwu@proton.me>

arm64: dts: qcom: sm8450: Add missing PCM_OUT port

This commit updates the sm8450 device tree to add a missing PCM_OUT port
to the soundwire RX controller, incrementing the dout-ports count from 5
to 6. It also expands the corresponding configuration arrays, migrating the
ports-sinterval array to 16 bits to accommodate the new 0x18f value.

> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/q=
com/sm8450.dtsi
> index 5e331a25e22a2..8fc58a02e5c51 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2914,20 +2914,20 @@ swr1: soundwire@3210000 {

[ ... ]

> -			qcom,ports-sinterval-low =3D	/bits/ 8 <0x03 0x1f 0x1f 0x07 0x00>;
> -			qcom,ports-offset1 =3D		/bits/ 8 <0x00 0x00 0x0b 0x01 0x00>;
> -			qcom,ports-offset2 =3D		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00>;
> -			qcom,ports-hstart =3D		/bits/ 8 <0xff 0x03 0xff 0xff 0xff>;
> -			qcom,ports-hstop =3D		/bits/ 8 <0xff 0x06 0xff 0xff 0xff>;
> -			qcom,ports-word-length =3D	/bits/ 8 <0x01 0x07 0x04 0xff 0xff>;
> -			qcom,ports-block-pack-mode =3D	/bits/ 8 <0xff 0x00 0x01 0xff 0xff>;
> -			qcom,ports-block-group-count =3D	/bits/ 8 <0xff 0xff 0xff 0xff 0x00>;
> -			qcom,ports-lane-control =3D	/bits/ 8 <0x01 0x00 0x00 0x00 0x00>;
> +			qcom,ports-sinterval =3D		/bits/ 16 <0x03 0x3f 0x1f 0x07 0x00 0x18f>;

[Severity: Medium]
Was it intended to change the sample interval of the second port from 0x1f =
to
0x3f when migrating to the 16-bit array here in swr1: soundwire@3210000?

Could this regression cause a configuration mismatch between the SoundWire
controller and the expected transport window of the codec?

An incorrect sample interval might break Class-H envelope tracking or cause
SoundWire bus errors on the RX macro when the controller is initialized and
negotiates port parameters.

> +			qcom,ports-offset1 =3D		/bits/ 8 <0x00 0x00 0x0b 0x01 0x00 0x00>;
> +			qcom,ports-offset2 =3D		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00 0x00>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-sm8450-qol=
-v1-0-37e2ee8df9da@proton.me?part=3D4

