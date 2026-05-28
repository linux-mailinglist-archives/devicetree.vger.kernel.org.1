Return-Path: <devicetree+bounces-304000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DPgKPrAGGp4nAgAu9opvQ
	(envelope-from <devicetree+bounces-304000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 00:26:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C1B5FAECA
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 00:26:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 85F153012546
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 22:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D072736897E;
	Thu, 28 May 2026 22:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+jSH3Bv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1C32139C9;
	Thu, 28 May 2026 22:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780007131; cv=none; b=ZdwiJ8CI5ubZPTS00cMiEjC19N2QeUw7SwNpJMK0PJj5iETnH2oxEyapmtznL7LKDbiAF3jR4AwHF0iuowyrc4fPnFpQuwW7kQTIP4S+8lJ/GAhhzVVREk2oA6mVOmxdDdg0p0gh3UQtLQ/brcRV20EqUKkqCFvBsQFoiYpFSRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780007131; c=relaxed/simple;
	bh=oNPnKeeB/VGAYuNi8T6SLmTVxfbQZulXfOxQ9xwXUQ8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=b8bqH2od8uiLI+79Q6sXofdn40xCTsGNEi0YYdODmdhArFqkNCIkWIAJjQBIzZn4USZc4LFG1YGW+J4emLH1gaNt3SvAHQqkKWi6TKygA1JFjGdsybK3OBwrOPeVo6M0N6CVpw71oapIb6EdMqe8I0elh/TdoE4DtZIfPrWFJ/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+jSH3Bv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DAB01F00A3A;
	Thu, 28 May 2026 22:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780007130;
	bh=j8zQm5Lv/13WN4F9GShad56Ydifs12o4VwIYSKGEsHY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K+jSH3BviXAc0ADmnF9riORanlwulz/ftMqaQBWp3/o/UXV/svclqCQh35sO3u9pY
	 j8HSbCA3xg1LRSqa8xNjBJTfEqPTQ6x6gGhxZz49+Vhtn7miE6WWCmW0pwGCsH0/Uj
	 matZyZa4eVYkO7YxAUNnfU/yYodYf4KPgn2PeWKqJ9c8Etoms0s8zJPOn7FlOAUKGr
	 F2KvJTNVKMtvBO7uMxC7x4X6QIzEnynZuH059johnlubnfsSfGej4jROZ0K5Hbj7Ni
	 1qGVDzMHn6AklTaKA+CZZP/dl78AqFLSrmSTeJ5bJ5p7gUwj4nhlaOI7Z1rvqoiF1s
	 MkttWhcSXawZw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/1] arm64: dts: imx95-var-dart-sonata: add TPM reset
 GPIO
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org
In-Reply-To: <20260528220550.34891-1-stefano.r@variscite.com>
References: <20260528220550.34891-1-stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 22:25:29 +0000
Message-Id: <20260528222530.3DAB01F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304000-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,0.0.0.21:email,smtp.kernel.org:mid,sashiko.dev:url,variscite.com:email,2e:email,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: A5C1B5FAECA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incomplete implementation for Sonata carrier board: missing TPM =
reset GPIO for i.MX91 DTS.
--

commit 0e430ef40e9b74a6759e3f9cd5622101a105206c
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx95-var-dart-sonata: add TPM reset GPIO

Add the reset GPIO for the TPM device on the Sonata carrier board and
label the node accordingly.

> diff --git a/arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts b/ar=
ch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
> index 0f3d2e488f4a9..d2c7d83e1624a 100644
> --- a/arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
> +++ b/arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
> @@ -274,6 +274,8 @@ pca6408_2: gpio@21 {
>  	st33ktpm2xi2c: tpm@2e {
>  		compatible =3D "st,st33ktpm2xi2c", "tcg,tpm-tis-i2c";
>  		reg =3D <0x2e>;
> +		label =3D "tpm";
> +		reset-gpios =3D <&pca9534 0 GPIO_ACTIVE_HIGH>;

[Severity: Medium]
Since the commit message indicates the reset GPIO is added for the TPM devi=
ce
on the Sonata carrier board, is there a regression here where
arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts is missing this
update?

The Sonata carrier board is used with both i.MX95 and i.MX91 SoMs, and
imx91-var-dart-sonata.dts instantiates the exact same PCA9534 GPIO expander
and ST33K TPM hardware.

Should it be updated to include the reset-gpios and label properties as well
to avoid leaving the TPM uninitialized on the i.MX91 configuration?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260528220550.3489=
1-1-stefano.r@variscite.com?part=3D1

