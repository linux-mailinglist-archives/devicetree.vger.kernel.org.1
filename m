Return-Path: <devicetree+bounces-317016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XIpSL5BoQmod6gkAu9opvQ
	(envelope-from <devicetree+bounces-317016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:44:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 585EC6DA6FD
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:44:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="WfON/Q/5";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317016-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317016-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 32DCF30747D3
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B1821E4AF;
	Mon, 29 Jun 2026 12:37:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386F42BB17
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 12:37:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782736641; cv=none; b=mON47a3ycOEwTtMxySc2r+oabP1BpoWglPsXWyfIrnZzbTKKQWWssje6VnWslLRwcy6mItNZU6eH/oe8pmRjZR1JhGT5SsXjlAxIr7Z8g+5ZHkMDaRuddonRn+pDmDScTgfYnX8FxtijO1MwmIGfiBVSvXtFiwWoyePq/gaxMYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782736641; c=relaxed/simple;
	bh=AzcAQSfHg/iYcFXKIJwL6LcvzJer9F7Qkv/OnVZAoUg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=S/byM5tU2aL+lAnBNVAhht/watNPlPzcJipwU7GhpFtUI6TNa7JqnpNGbLrbORUxj0SKVL+ikOwyrUBKJ47goGDN+egHPWWdWor0k4MG5S+lTjDZ4+h8LGGMlIelKDwCimeLfBDlV4qclATyTPLlYAdfZ0H6obcp8qh6fQr0e4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfON/Q/5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9809E1F000E9;
	Mon, 29 Jun 2026 12:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782736639;
	bh=1vG9sjO+Tgoxlg6xgzteUnXLglOrKizQ1T8IINFD1ss=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WfON/Q/57/Qr4C3Hoov1rR0MzfZA3xLXGk35hjB7dW/zSJBuL6MKxnyj3yDe389Vk
	 2+Y9GzJVJOVbRDrtbW31yJDvg3rqeHYUnbNlVfnRt6gZZ0QAK/Dwe4WPx3zkKIuYpS
	 dyqqQmJlB4/VTktiTQ0E8sHF741cLgFi0ZiMo+ItoPq2bMAtHCRawP5zC2bYva8TU3
	 CE7fIbFeu0PfFQuwAcZr2cXhpjuSP072hDpSDL83KGO5byveyzEqFiwwO2GHh5ZYhn
	 HCGf/rCTIRYb/+BjiuHjTae7oYgIVtV0i5MKYTd++0tQgvCNT2ca7pLxdTFqb2u5g6
	 Vj/+qI7o7o6zQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] net: ethernet: ti: am65-cpsw: Fix MAC
 configuration for SGMII mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gokul Praveen" <g-praveen@ti.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629102308.56616-3-g-praveen@ti.com>
References: <20260629102308.56616-1-g-praveen@ti.com>
 <20260629102308.56616-3-g-praveen@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 12:37:19 +0000
Message-Id: <20260629123719.9809E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317016-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 585EC6DA6FD

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The MAC is unconditionally forced into SGMII MASTER mode and hardc=
oded to advertise a 1000 Mbps Full-Duplex link, breaking 10/100 Mbps suppor=
t and standard MAC-to-PHY connections.
- [High] Moving the write to `AM65_CPSW_SGMII_CONTROL_REG` inside the SGMII=
-only block inadvertently disables auto-negotiation for USXGMII and QSGMII =
modes.
--

commit f84ed4938492bf35df72f44323de46f0c35177e0
Author: Gokul Praveen <g-praveen@ti.com>

net: ethernet: ti: am65-cpsw: Fix MAC configuration for SGMII mode

This modifies the CPSW_SGMII_MR_ADV_ABILITY_REG to update the MAC
configuration of the CPSW Ethernet Switch in SGMII mode. It configures
the MAC in master mode as per the CPSGMII Module specification.

> diff --git a/drivers/net/ethernet/ti/am65-cpsw-nuss.c b/drivers/net/ether=
net/ti/am65-cpsw-nuss.c
> index 7ac75fc8cdcf4..df99a80dbfe1e 100644
> --- a/drivers/net/ethernet/ti/am65-cpsw-nuss.c
> +++ b/drivers/net/ethernet/ti/am65-cpsw-nuss.c

[ ... ]

> @@ -2063,8 +2064,10 @@ static void am65_cpsw_nuss_mac_config(struct phyli=
nk_config *config, unsigned in
> =20
>  	if (common->pdata.extra_modes & BIT(state->interface)) {
>  		if (state->interface =3D=3D PHY_INTERFACE_MODE_SGMII) {
> -			writel(ADVERTISE_SGMII,
> -			       port->sgmii_base + AM65_CPSW_SGMII_MR_ADV_ABILITY_REG);
> +			writel(ADVERTISE_SGMII | LPA_SGMII_1000FULL | LPA_SGMII_LINK,
> +				port->sgmii_base + AM65_CPSW_SGMII_MR_ADV_ABILITY_REG);
> +			writel(AM65_CPSW_SGMII_CONTROL_MR_AN_ENABLE|AM65_CPSW_SGMII_CONTROL_M=
ASTER,
> +				port->sgmii_base + AM65_CPSW_SGMII_CONTROL_REG);

[Severity: High]
Does am65_cpsw_nuss_mac_config() now hardcode the SGMII advertisement to
1000 Mbps Full-Duplex while ignoring the dynamic link parameters in
state->speed and state->duplex?

If the MAC is unconditionally forced into SGMII MASTER mode and forced to
advertise a 1000 Mbps full-duplex link, could this break 10 Mbps and 100 Mb=
ps
connections, as well as standard MAC-to-PHY connections where the PHY expec=
ts
to be the SGMII Master?

>  			cpsw_sl_ctl_set(port->slave.mac_sl, CPSW_SL_CTL_EXT_EN);
>  		} else {
>  			cpsw_sl_ctl_clr(port->slave.mac_sl, CPSW_SL_CTL_EXT_EN);
> @@ -2078,8 +2081,6 @@ static void am65_cpsw_nuss_mac_config(struct phylin=
k_config *config, unsigned in
>  					CPSW_SL_CTL_XGIG | CPSW_SL_CTL_XGMII_EN);
>  		}
> =20
> -		writel(AM65_CPSW_SGMII_CONTROL_MR_AN_ENABLE,
> -		       port->sgmii_base + AM65_CPSW_SGMII_CONTROL_REG);

[Severity: High]
Will removing this write and moving it inside the SGMII-only block disable
auto-negotiation for USXGMII and QSGMII modes?

Since this unconditional write enabled auto-negotiation for all extra modes,
moving it to the PHY_INTERFACE_MODE_SGMII branch means it is never configur=
ed
when state->interface is USXGMII or QSGMII, which might prevent link
establishment.

>  	}
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629102308.5661=
6-1-g-praveen@ti.com?part=3D2

