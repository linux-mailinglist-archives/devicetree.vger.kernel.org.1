Return-Path: <devicetree+bounces-301817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDC7EMlSEGovWQYAu9opvQ
	(envelope-from <devicetree+bounces-301817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:57:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 832BC5B4A1B
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B287E304347C
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB391FC7C5;
	Fri, 22 May 2026 12:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efv8wF5c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A384D3438BF;
	Fri, 22 May 2026 12:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779454122; cv=none; b=KhCjdQ7fS5/ixvcCJrBYQPyXG01f59YdSml/rTgqg4s1MbkgdGMB5XCgkEtOagQvFoKuJsrQ36Cr5h9G5AF0Fl2y6rVapyZO5KVr5jY1MMvU7AtBkBc/B8FVh1iyC7k2aeTsmgExKaLuOodjFrmUUOWqxiwTMpVUp5SS/F3CqW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779454122; c=relaxed/simple;
	bh=/yQ15zoIUf3PW00iEQHXiEzZ+bQ9BAGBkgtX/DusXJw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OHi8hTztpDZHYzqHdI++Pfep1/K7WPxYDBd1rAD5jYOjHoWW2NWCzwWfmvkDlqMWJkDAPc+6lK3IRLmMMFGD4HZeGEx0RiAj/dXcfcXkI+bNEmodjej9ZRSJ+57Jo7u72E/i7YTFKMp5b1PBVPjX8O1HgX3ydFJGFVl6ecoJlxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efv8wF5c; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03AFD1F000E9;
	Fri, 22 May 2026 12:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779454121;
	bh=9/KuRQ8AxZuWtUn0RjYkJC48RaqjdGOYWT9OFAWaRAw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=efv8wF5ce7VI5HOf40BgmCAONa9fM17Zg5/sjva9YMsyr6/oyj2S7tN5VKPoKcQr/
	 NiCliLa9+CugqyOXVjsdqcfCVMX++Re8eF+cMDbCnNRmTD7OUuFJLPifhZNGfFF+xN
	 gNBGiwxgEth8bY3Ry0rE8/qQbLaFK0fryG+G10yXkrZLWBmYMFmdJuPk7WUR6iNwll
	 DYfVoNa7wrECRCo8dVQLnsU1Dcmz5gYZjYGSiBK8CHkkJjBwuZs0JD3Czy8z4aaScu
	 fE1K3zOHaCnWFvqziAsNEyaTZRFzQKXyjPkx6aCMPxJQJYQtDKQqdd/MTyP4P52b8h
	 /pkST7Sa3ncmw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: freescale: add DT overlay for
 MX95-15x15-FRDM RPMSG usage
Reply-To: sashiko-reviews@lists.linux.dev
To: "Laurentiu Mihalcea" <laurentiumihalcea111@gmail.com>
Cc: conor+dt@kernel.org, Frank.Li@kernel.org, robh@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260522111849.783-6-laurentiumihalcea111@gmail.com>
References: <20260522111849.783-6-laurentiumihalcea111@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 12:48:40 +0000
Message-Id: <20260522124841.03AFD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301817-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email,sashiko.dev:url,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 832BC5B4A1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `dma-channel-mask` property is incorrectly defined as a mask=
 of unavailable (reserved) channels rather than available channels, violati=
ng standard DT binding semantics by relying on a buggy driver implementatio=
n.
--

commit cbf89994f08b1b68af6ef4fcaffd7d5ceac2c8f0
Author: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

arm64: dts: freescale: add DT overlay for MX95-15x15-FRDM RPMSG usage

This commit adds an RPMSG device tree overlay for the MX95-15x15-FRDM board.
It configures reserved memory regions for vdev vrings and buffers, and
updates the cm7, edma, and micfil nodes to support remoteproc and audio
use cases.

> diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-frdm-rpmsg.dtso b/=
arch/arm64/boot/dts/freescale/imx95-15x15-frdm-rpmsg.dtso
> new file mode 100644
> index 0000000000000..b39444dde66e0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-15x15-frdm-rpmsg.dtso

[ ... ]

> +&edma1 {
> +	/* reserved for M7 */
> +	dma-channel-mask =3D <0x40>;
> +};
> +
> +&edma2 {
> +	/* reserved for M7 and V2X */
> +	dma-channel-mask =3D <0xf>;
> +};

[Severity: Medium]
Is this property defining available or reserved channels?

The standard device tree binding in dma-common.yaml explicitly defines
dma-channel-mask as a bitmask of available DMA channels that are not reserv=
ed
by firmware. However, the comments here indicate the mask is being used to
define reserved channels.

While there appears to be an existing bug in the fsl-edma driver where it
interprets this property as unavailable channels, encoding a driver bug into
the hardware description breaks the device tree ABI and will cause issues
if the driver is ever corrected.

Could this be updated to correctly reflect available channels according to =
the
standard binding?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522111849.783-=
1-laurentiumihalcea111@gmail.com?part=3D5

