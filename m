Return-Path: <devicetree+bounces-295071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDohEIliAGq4IAEAu9opvQ
	(envelope-from <devicetree+bounces-295071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:48:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29089503A8B
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 12:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4C36D3003992
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 10:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3F64372B50;
	Sun, 10 May 2026 10:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEvcZJoW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EA037269B;
	Sun, 10 May 2026 10:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778410118; cv=none; b=okwjD0POPT9dyJeD6E6cg/VvmosFja8qKidDsvAwm7g2l+kospFte10Yw1VPpy3/uH2K/85zSJhDeriC+uhDFE8L5gyOhmGh8W4iO7/+3ulWjLgiQ6uO2AnXqjtJLImBJEvD3it1Fc+L0wuYo2ZFS+eVw/BP1uQoivflX1vVE48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778410118; c=relaxed/simple;
	bh=HR8PZphg5u2a++M8YaNX8wvl9xMnxQCqiitjGHB8pVA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Jk9rzgnX+K5VAKojVVT1frUm6Ojy5PbvePA21KYZXmrnbi2l2YV12RlegCmzOPOANE6LlKH+hUbO6Qp9kx8lJpdvmhZoQOIx2Up7xpzFlP0jYCZOogTkSIGTyKgsmC7L1pjZSW5MFtZs+A1lxKC6jFktbcGgUbMiCscrEbn3VMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEvcZJoW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B72D6C2BCB8;
	Sun, 10 May 2026 10:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778410118;
	bh=HR8PZphg5u2a++M8YaNX8wvl9xMnxQCqiitjGHB8pVA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=PEvcZJoW83MelwCJYiNDOacK3ePqg8LWvMK1Iybym9RmanE5CMAESjc3ksa8hqK1F
	 /jrNsQ5FUQxlSnjU+ueZPiWdR7xinaC9zWfSzXYBWRflOPQWXq1ZFZPGbs/65J2KAs
	 BNaJypCEvDrh0UTVqkdOZfZ6/82zEKG1ua8KXeIFWDpRvvP9InVPVHXv+LM+z8FoLX
	 I6qsJVd+pFxUuYHyD/nPXVZwW6hCYhOmX+LFxoTj2iVFkLmRtIBXCHjbms/bpOMN44
	 VV+cOH32o+fjqDyZgQTSvp+Asatogie7S7F0MQjyGvrE1ZyN2ZSeKlJmNxCyM/DKnG
	 U6yhpzV22EXTA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 net-next 11/15] net: dsa: netc: add phylink MAC
 operations
Reply-To: sashiko@lists.linux.dev
To: "Wei Fang" <wei.fang@nxp.com>
Cc: Frank.Li@kernel.org, imx@lists.linux.dev, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260509102954.4116624-12-wei.fang@nxp.com>
References: <20260509102954.4116624-12-wei.fang@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 May 2026 10:48:37 +0000
Message-Id: <20260510104837.B72D6C2BCB8@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 29089503A8B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295071-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Flawed read-modify-write logic in `netc_mac_port_rmw()` causes sta=
te desynchronization and clobbers PMAC registers.
--

commit e2073763516dc99734e9f1436d4b8e960d8ce680
Author: Wei Fang <wei.fang@nxp.com>

    net: dsa: netc: add phylink MAC operations

This commit implements phylink MAC operations for NETC switch ports, includ=
ing
capabilities retrieval and link configuration callbacks.

> diff --git a/drivers/net/dsa/netc/netc_main.c b/drivers/net/dsa/netc/netc=
_main.c
> index 8e3a3230226c3..8c1317b72a81d 100644
> --- a/drivers/net/dsa/netc/netc_main.c
> +++ b/drivers/net/dsa/netc/netc_main.c
[ ... ]
> @@ -43,6 +43,26 @@ static void netc_mac_port_wr(struct netc_port *np, u32=
 reg, u32 val)
>  		netc_port_wr(np, reg + NETC_PMAC_OFFSET, val);
>  }
> =20
> +static void netc_mac_port_rmw(struct netc_port *np, u32 reg,
> +			      u32 mask, u32 val)
> +{
> +	u32 old, new;
> +
> +	if (is_netc_pseudo_port(np))
> +		return;
> +
> +	WARN_ON((mask | val) !=3D mask);
> +
> +	old =3D netc_port_rd(np, reg);
> +	new =3D (old & ~mask) | val;
> +	if (new =3D=3D old)
> +		return;
> +
> +	netc_port_wr(np, reg, new);
> +	if (np->caps.pmac)
> +		netc_port_wr(np, reg + NETC_PMAC_OFFSET, new);

Does this code lead to desynchronized state and clobbered PMAC registers?

Because old is read exclusively from the MAC 0 register, if new =3D=3D old,=
 the
function returns immediately. If the preemptable MAC 1 register had a
different state (e.g. from the bootloader), it would not be updated and cou=
ld
remain permanently out of sync.

Additionally, if new !=3D old, this writes the modified MAC 0 state to MAC =
1.
Could this clobber any independent state in the MAC 1 register by overwriti=
ng
unmasked bits with MAC 0's values?

Would it be safer to perform independent read-modify-write cycles for each
MAC's register to preserve their respective unmasked bits?

> +}
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509102954.4116=
624-1-wei.fang@nxp.com?part=3D11

