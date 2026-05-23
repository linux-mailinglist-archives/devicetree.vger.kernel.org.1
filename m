Return-Path: <devicetree+bounces-302128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id P7++NmBzEWpKmQYAu9opvQ
	(envelope-from <devicetree+bounces-302128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 11:29:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2225BE33C
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 11:29:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98AC93011F06
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 09:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206DB37F8BD;
	Sat, 23 May 2026 09:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ejgwnckr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056DD32E692
	for <devicetree@vger.kernel.org>; Sat, 23 May 2026 09:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779528540; cv=none; b=r3Mll7SSz1saewE+8yhQ3Kdgh4eBmjNu6RX6ltYaVGr33dM1TMzl3VmkFhNKVTUeoGD2Sde9g3Lvu71yFQhGyMEdhND8fguv7q1XDjPXPDys5LwD/GpQV0HvtoO6weFgS5Z74EyMaiKSbHL4tBUCBhMsnntKtqfrWDa2gKq5RCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779528540; c=relaxed/simple;
	bh=Suna57AKS8SF1LmkJJKnN3s7tadW270IEL2T+7jjTUY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ovZCIc9GuMpNXGuL14fV/xnw24Ftdqav9YyPGfdZ8wgnX8XEojFtMXTc5HyGF90AgOaBC6+spLg0z16KBosZNZOrjSlPMwKoJzRasQKpxdcZxaTj6kA22qeRqlxLhwELQ0rI02Z8Me2Xj2jhex/CIfPVVYEmNplVYvCduGAGJrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ejgwnckr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64F791F000E9;
	Sat, 23 May 2026 09:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779528538;
	bh=rHGvWHFea79KSC7rg+wVJ1nteDylhqfjvrQQICzLCsY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EjgwnckrW9DYCLdfO/uIV/EBzgtm+syB3pgoH3wtxkpcf//9wiXGSXzfqLZxvD0yp
	 yxFWl2dsE7S1Mh6oDQ82aBvvDJYfViexo0vx3Sv4lRFb465WHA6lgKSekzGPBYKgBO
	 gD6i38yQhSYpAzL/4RMWT8kulBhNOZvnHMTXxvDxS3aeNTZwcC5VhEnMAJkYHmioXe
	 GiNWOJTHiAF8XjGbIG4dvV/tIu8GoryJ+8jNZJI7L/1/0xBkIQYnn65Ul08T3JXGl1
	 u0zyRkrVtC4ZhbM7imqq6S6HjEJ3hwvGzkqoqq1vRMdQO6l4ejz3tB7zP4M7ThOrz+
	 0aEpzmaqcVX3Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] usb: chipidea: tegra: Expose tegra_usb structure
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260523083013.46372-5-clamor95@gmail.com>
References: <20260523083013.46372-5-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 23 May 2026 09:28:57 +0000
Message-Id: <20260523092858.64F791F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302128-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 0B2225BE33C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Exposing the private driver data structure `struct tegra_usb` in a =
public header violates driver encapsulation.
--

commit 458c2154b4c34aa542cc2d5d1ce84db0b5258a4b
Author: Svyatoslav Ryhel <clamor95@gmail.com>
usb: chipidea: tegra: Expose tegra_usb structure

This commit moves the tegra_usb structure from the tegra chipidea driver in=
to
a public header file. The commit message states this is required for proper
manipulation when init and deinit are externally controlled.

> diff --git a/include/linux/usb/tegra_usb_phy.h b/include/linux/usb/tegra_=
usb_phy.h
> index 6343f88df5de8..ba74b7ebfba0e 100644
> --- a/include/linux/usb/tegra_usb_phy.h
> +++ b/include/linux/usb/tegra_usb_phy.h
[ ... ]
> @@ -62,6 +63,20 @@ enum tegra_usb_phy_port_speed {
>  	TEGRA_USB_PHY_PORT_SPEED_HIGH,
>  };
> =20
> +struct tegra_usb_soc_info;
> +
> +struct tegra_usb {
> +	struct ci_hdrc_platform_data data;
> +	struct platform_device *dev;
> +
> +	const struct tegra_usb_soc_info *soc;
> +	struct usb_phy *phy;
> +	struct clk *clk;
> +
> +	bool needs_double_reset;
> +	bool externally_controlled;
> +};

[Severity: Low]
Does moving this private runtime state into a public header break driver
encapsulation?

Exposing the raw internal state structure allows external entities to
directly manipulate the controller's internal state, tightly coupling the
PHY and controller drivers.

Would it be better to provide explicit API functions, such as init and
deinit helpers, for cross-driver manipulation instead of exposing the
internal structure?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260523083013.4637=
2-1-clamor95@gmail.com?part=3D4

