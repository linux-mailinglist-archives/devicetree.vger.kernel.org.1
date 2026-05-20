Return-Path: <devicetree+bounces-300855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEzjGxAFDmqs5QUAu9opvQ
	(envelope-from <devicetree+bounces-300855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 21:01:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4E259796F
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 21:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29E42327286E
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF34A401A3F;
	Wed, 20 May 2026 18:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0FGiKTJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EA6840243A
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 18:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779302438; cv=none; b=pcXG6L1orEG8lrfsSPUE7TUNGMG7yLqPFqi9TNBqd5dbTm+WJQfQaV31ZEB2SCOXIWUItxs/V4cy4V57FRNA85sc7iwpUaPzC5tzEnwu/v44P43lefNAVpAsjKtmblfSpyZEyxIwws0cfGPwBTZoitxf8EURAlD6cAI+s1dij1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779302438; c=relaxed/simple;
	bh=wYYqFUDUawMVRT5kXS03kUzvXvPPgnuJRmsGkNV9cBc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bxe+ZPKQqwKEzsGyh814cBLIucVLSOOoni8GFTufHOYqAEFtEx4P6ow88Zu31qEyo3gazf5KZtD4j55U9+CRqwyskckxdvwfRMebigFEnovFof6osp8HdHnTlC/8Iy97tVWxfx00I7zjtKsfPQDp4j8AZn5VYr3wrReYoutE96k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0FGiKTJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E4341F00893;
	Wed, 20 May 2026 18:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779302437;
	bh=MNEfECMSOoRp1f+W4XmoT0z+dbCq3xbrDLEuA9Ju9bA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l0FGiKTJSJKrj1ig2bPUeJpLc1NAKg90yX20bCTWY2i9LECOxJ/g1IpOacU2ec3MZ
	 rDWTsDXh2K22w0PD/xn4sgTHY4No+sr3cloRCMUEYl2/JaR8gkbrybYpDlraNvZ1q9
	 ZBNmvyiWE27ax+6mRFHaCWImhdJZGdONyNyt14OlNvrOUsZJzplOwS2QJJvkvMbVRI
	 HspVzaUN9fLPkkHY7PQve0Tld/N6GiOnuZkcG7cEHoavTqF4kyxQ1+uyLVpBgVL64b
	 Dad201JaqBrqQTKiNZFx9BYuMxNN1kXICqooTo3VLYaEug/Ieu99bO/YwK3MCcyXxZ
	 pf1jNDlOz6/0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/6] phy: realtek: usb2: introduce read and write
 functions to driver data
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rustam Adilov" <adilov@disroot.org>
Cc: vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260520175728.720877-3-adilov@disroot.org>
References: <20260520175728.720877-3-adilov@disroot.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 18:40:35 +0000
Message-Id: <20260520184036.4E4341F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300855-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,disroot.org:email,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 9A4E259796F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The return values of `of_iomap()` are not checked, which can lead =
to a NULL pointer dereference.
- [High] MMIO regions mapped with `of_iomap()` are never unmapped, and are =
redundantly mapped in a loop.
- [High] Incorrect pointer arithmetic on a `void __iomem *` leads to unalig=
ned memory accesses for multi-PHY configurations.
--

commit cc0b13f36e44c7fb7f45ae90cdfa2f1c10a50993
Author: Rustam Adilov <adilov@disroot.org>

phy: realtek: usb2: introduce read and write functions to driver data

This commit introduces read and write function pointers to the driver data
to handle RTL9607C, which has a little endian USB host controller but a big
endian vstatus register. It also provides default accessors for existing So=
Cs.

> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy=
-rtk-usb2.c
> index bd9ee895b9f90..a9e29d2f7e6fd 100644
> --- a/drivers/phy/realtek/phy-rtk-usb2.c
> +++ b/drivers/phy/realtek/phy-rtk-usb2.c

[ ... ]

> @@ -985,6 +1001,8 @@ static int parse_phy_data(struct rtk_phy *rtk_phy)
>  		phy_parameter->phy_reg.vstatus_offset =3D phy_cfg->vstatus_offset;
>  		phy_parameter->phy_reg.vstatus_busy =3D phy_cfg->vstatus_busy;
>  		phy_parameter->phy_reg.new_reg_req =3D phy_cfg->new_reg_req;

[Severity: High]
This isn't a bug introduced by this patch, but looking at the earlier lines=
 in
this loop:

    phy_parameter->phy_reg.reg_wrap_vstatus =3D of_iomap(np, 0);
    phy_parameter->phy_reg.reg_gusb2phyacc0 =3D of_iomap(np, 1) + index;

Could we add a check to verify if of_iomap() returns NULL? Dereferencing a
NULL pointer during subsequent I/O operations will cause a kernel panic
during device probe.

[Severity: High]
This is a pre-existing issue, but does this code cause a resource leak?

The of_iomap() function is called inside a for loop that iterates
rtk_phy->num_phy times. For configurations with multiple PHYs (like
rtd1395_phy_cfg_2port), this maps the exact same device tree resources
multiple times.

There appear to be no corresponding iounmap() calls in the driver's error
handling paths or the remove function, which could lead to a permanent
vmalloc space resource leak upon driver unbind or probe failure.

[Severity: High]
This is a pre-existing issue, but could this pointer arithmetic lead to
unaligned memory accesses?

    phy_parameter->phy_reg.reg_gusb2phyacc0 =3D of_iomap(np, 1) + index;

Since of_iomap() returns a void __iomem *, pointer arithmetic is performed
in single bytes. For multi-PHY configurations where index is 1, this
increments the base address by exactly 1 byte, resulting in an unaligned
32-bit offset that could cause an alignment fault during writel().

> +		phy_parameter->phy_reg.read =3D phy_cfg->read;
> +		phy_parameter->phy_reg.write =3D phy_cfg->write;
> =20
>  		if (of_property_read_bool(np, "realtek,inverse-hstx-sync-clock"))
>  			phy_parameter->inverse_hstx_sync_clock =3D true;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520175728.7208=
77-1-adilov@disroot.org?part=3D2

