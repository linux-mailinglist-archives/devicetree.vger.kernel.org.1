Return-Path: <devicetree+bounces-316875-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h3KTMYg/Qmq22gkAu9opvQ
	(envelope-from <devicetree+bounces-316875-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:48:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 158E96D86F9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:48:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=S1Ov1fTa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316875-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316875-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F35093045472
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FE223B71B6;
	Mon, 29 Jun 2026 09:45:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00653B71B5
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 09:45:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782726331; cv=none; b=N6z2cCesQV9aV30p2sKXbj+aIL/NtUbp4NBrZDpVcfjGrDd5hWPdl9VWtIHbrNb8XX9Ssb+2t3dK5gp3QjQ3e/N0OcP118NDyJs7zrPw/V/P7TvLI5FDK41qRKsP7MAc1wcGo3j/BZbbvzmNRADLdmvItkKbJA5Sx4QujhzuUOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782726331; c=relaxed/simple;
	bh=MBQGPy5IWAkdF4aC66BC9lwMVhy2Aabk32/ei903M18=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=V+r7E3gRQm7Tbxp3M140AmjpjDIEv+PcP3+C0ZXOLc6wquz7XPDyDWxXlSV200VWFT28pvtKIEvCbh504L+A2qAcI/pC/05wCnXuKT6igxUP9zPO9s5950iQMCdth5Bpx38PqKLHWB+bePIUWi2FutuDZlLQlBvylA8SUshzK5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1Ov1fTa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D07981F000E9;
	Mon, 29 Jun 2026 09:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726326;
	bh=E7gPGaM9RQeO3jkA4ZoBpPSkAnV3cLriNrHnyZMMg9k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=S1Ov1fTaqr9KWXr8gCRZGKtMtdK8Ro5YRdeW9JDyOeJwIZ72xJ9L31y7SgZd5shGE
	 cPs6pcYZhB3I+RLvcJYclwmLJ/0RQrk9GXjHQILJxw4aukRuRQm3FcPS6Q004wYvpU
	 JJZghO7SAjnb3oa7k0vNtScZ5MPdN5bcBN2k1YGZ+ymNrvo2VM8kC6/TSN4nUCIxWF
	 9Fr2Rj6BUfZWX53P3OrmJE+WW8vTeSiQ25gdhdWK7fK6PtPn7ihEK8zsi9EfatpaEJ
	 XMP1LCrmHtwn9KKsBrtweIJDFt+zBb7Ltz0X3cby3ieeBUXI+ZuL1DkFZpXXIS78cf
	 8hvXologSynaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/8] phy: tegra: xusb: Add Tegra264 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wayne Chang" <waynec@nvidia.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629093406.1118594-7-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-7-waynec@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 09:45:25 +0000
Message-Id: <20260629094525.D07981F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316875-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:waynec@nvidia.com,m:olteanv@gmail.com,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 158E96D86F9

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing `.has_per_pad_term =3D true` for `tegra264_xusb_padctl_s=
oc` leads to incorrect USB2 PHY termination calibration.
- [Low] Missing prototype compiler warning for `tegra264_xusb_padctl_soc` w=
hen its specific config is disabled.
--

commit 22b0fd28aa94a55231606c8cbbf28effe50f3f35
Author: Wayne Chang <waynec@nvidia.com>

phy: tegra: xusb: Add Tegra264 support
   =20
Add support for the XUSB pad controller for Tegra264. Most of the Tegra264
XUSB PADCTL registers definition and programming sequence are the same as
Tegra234, and they can share the same driver.

> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-t=
egra186.c
> index 9c1bcd4a72ac6..3eb60ed09b687 100644
> --- a/drivers/phy/tegra/xusb-tegra186.c
> +++ b/drivers/phy/tegra/xusb-tegra186.c
[ ... ]
> @@ -1753,6 +1754,29 @@ const struct tegra_xusb_padctl_soc tegra234_xusb_p=
adctl_soc =3D {
>  	.has_per_pad_term =3D true,
>  };
>  EXPORT_SYMBOL_GPL(tegra234_xusb_padctl_soc);
> +
> +const struct tegra_xusb_padctl_soc tegra264_xusb_padctl_soc =3D {
> +	.num_pads =3D ARRAY_SIZE(tegra194_pads),
> +	.pads =3D tegra194_pads,
> +	.ports =3D {
> +		.usb2 =3D {
> +			.ops =3D &tegra186_usb2_port_ops,
> +			.count =3D 4,
> +		},
> +		.usb3 =3D {
> +			.ops =3D &tegra186_usb3_port_ops,
> +			.count =3D 4,
> +		},
> +	},
> +	.ops =3D &tegra186_xusb_padctl_ops,
> +	.supply_names =3D tegra194_xusb_padctl_supply_names,
> +	.num_supplies =3D ARRAY_SIZE(tegra194_xusb_padctl_supply_names),
> +	.supports_gen2 =3D true,
> +	.poll_trk_completed =3D true,
> +	.trk_hw_mode =3D true,
> +	.supports_lp_cfg_en =3D true,
> +};

[Severity: Medium]
Since the commit message states Tegra264 shares the same programming sequen=
ce
as Tegra234, should this struct also include .has_per_pad_term =3D true?

Without this flag, tegra186_xusb_read_fuse_calibration() will default to
copying pad 0's calibration to pads 1-3 instead of reading their specific
hardware values.

> +EXPORT_SYMBOL_GPL(tegra264_xusb_padctl_soc);
>  #endif
> =20
>  MODULE_AUTHOR("JC Kuo <jckuo@nvidia.com>");

[ ... ]

> diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
> index 77609e54de66a..d8d799d9e7522 100644
> --- a/drivers/phy/tegra/xusb.h
> +++ b/drivers/phy/tegra/xusb.h
> @@ -514,5 +514,8 @@ extern const struct tegra_xusb_padctl_soc tegra194_xu=
sb_padctl_soc;
>  #if defined(CONFIG_ARCH_TEGRA_234_SOC)
>  extern const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc;
>  #endif
> +#if defined(CONFIG_ARCH_TEGRA_264_SOC)
> +extern const struct tegra_xusb_padctl_soc tegra264_xusb_padctl_soc;
> +#endif

[Severity: Low]
Does this create a missing prototype warning (-Wmissing-prototypes) when
building with CONFIG_ARCH_TEGRA_194_SOC=3Dy but CONFIG_ARCH_TEGRA_264_SOC=
=3Dn?

In xusb-tegra186.c, tegra264_xusb_padctl_soc is defined unconditionally if
any of the 194, 234, or 264 configs are enabled. However, the extern
declaration here in xusb.h is only visible if CONFIG_ARCH_TEGRA_264_SOC is =
set.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629093406.1118=
594-1-waynec@nvidia.com?part=3D6

