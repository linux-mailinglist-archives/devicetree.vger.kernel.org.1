Return-Path: <devicetree+bounces-322113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h6llDLgJTWr3twEAu9opvQ
	(envelope-from <devicetree+bounces-322113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:14:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B326471C6B4
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:14:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mEFfCV8p;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322113-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322113-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5A75E3044C13
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10583313E2B;
	Tue,  7 Jul 2026 14:11:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7CE3246F4;
	Tue,  7 Jul 2026 14:11:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783433503; cv=none; b=UwVc8Gwxfi6vlvelHzIac/Px6f+yBlqStMbsBO2QFFGf/YlYdUnT3J3sqniITMTZC4ZnNeh70yCUiHYFFvt4dYvqekg9zhx+/u+y+bL+x8vtTh4f6M1XqZBcy+zaVum47Ed9J3D2fom8Ttj/1z5rWeOmKkGuaAYky7dVjcjRT3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783433503; c=relaxed/simple;
	bh=zT8Y3SjC2nqXNS/CG/GpMNUJVHow+swr01D5EcTbkdQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JxO/bVhR7B3sT9yv1DVAcpNeUFrr5BcPy0JDgy865eoAe/B9h+deV52ZT7vITYox4v0v5DNmo8nOnvBWHJAQssl0u3DX2U8crArw7z1xpnjy3S81+P4LGSSwAVWvNEqw7XgQdpYleqXn+7TzbkIcVNIIZxpGE3n0V+thtLVtRSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEFfCV8p; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA8C11F000E9;
	Tue,  7 Jul 2026 14:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783433501;
	bh=cJaCu3Jw52AiZ+LxMPFERxVwD1Nes7fUxaczBwh3T6s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mEFfCV8plDwefkSgToR9MrKDDNLnMPJFSrntnFY54/pwPAgoVIHUA54P4xMazqHqL
	 GrZzFzDALdf3oQnX0cZF2w01B4UvkfWga+5bS/kCdIwWw3n+l5Uw93Gq/Y21w6zxLN
	 3hXbHqZJeu0gp7640gZhay46cbj5zyWjMjuvGlxnI+MMcbUBGcObSLmVQhJG1BWJVY
	 oqC6Tzg419k08v/VC4vbm8kxt5/j4bSpR8gKvT1u3Dn4EWjZT9PZuiScgWHjfsgpmX
	 qcoPppoIii8VsSraIIy9xbIbeFc54EVDU9Fhh8vJ/sZVkaOUuECkhYNaPCCFid3ajg
	 O5PkbJ6fnEQMw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v12 7/7] net: stmmac: qcom-ethqos: add support
 for sa8255p
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: Frank.Li@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev, wsa+renesas@sang-engineering.com, robh@kernel.org, devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, neil.armstrong@linaro.org, linux-amlogic@lists.infradead.org
In-Reply-To: <20260706-qcom-sa8255p-emac-v12-7-e3ab1ecf2901@oss.qualcomm.com>
References: <20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com>
 <20260706-qcom-sa8255p-emac-v12-7-e3ab1ecf2901@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:11:40 +0000
Message-Id: <20260707141140.CA8C11F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322113-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-sunxi@lists.linux.dev,m:neil.armstrong@linaro.org,m:linux-amlogic@lists.infradead.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B326471C6B4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing rejection of unsupported RGMII PHY modes in ethqos_scmi_=
setup()
--

commit c343cb8d359e16483f354f89b27f2cd9e3505850
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

net: stmmac: qcom-ethqos: add support for sa8255p

This commit extends the qcom-ethqos driver to support the sa8255p model,
which handles power management in firmware over SCMI. It adds a new emac
data variant and a separate setup callback.

> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/dr=
ivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index f379570f80680..47175670a3263 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
[ ... ]
> @@ -749,6 +775,62 @@ static int ethqos_hlos_setup(struct qcom_ethqos *eth=
qos,
>  	return 0;
>  }
> =20
> +static const char *const ethqos_scmi_pd_names[] =3D { "core", "mdio" };
> +
> +static int ethqos_scmi_setup(struct qcom_ethqos *ethqos,
> +			     struct plat_stmmacenet_data *plat_dat)
> +{
[ ... ]
> +	switch (ethqos->phy_mode) {
> +	case PHY_INTERFACE_MODE_2500BASEX:
> +	case PHY_INTERFACE_MODE_SGMII:
> +		plat_dat->fix_mac_speed =3D ethqos_fix_mac_speed_sgmii;
> +		break;
> +	default:
> +		break;

[Severity: Medium]
Will this silently ignore RGMII and other unsupported PHY modes without
returning an error?

If a misconfigured device tree specifies an unsupported mode like RGMII for=
 an
SCMI-based variant, qcom_ethqos_probe() allows it globally, but this setup
function in dwmac-qcom-ethqos.c will silently fall through the default case
without configuring plat_dat->fix_mac_speed or returning -EINVAL.

Could this leave the interface in a broken state that is difficult to debug,
rather than failing probe explicitly?

> +	}
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-qcom-sa825=
5p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com?part=3D7

