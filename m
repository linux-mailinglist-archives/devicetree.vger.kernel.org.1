Return-Path: <devicetree+bounces-309913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6E40MHqGKWrHYgMAu9opvQ
	(envelope-from <devicetree+bounces-309913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:44:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BC566AF85
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:44:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=h7PS2NJC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309913-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309913-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 89F23305C54F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01FF7416D1D;
	Wed, 10 Jun 2026 15:28:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BA1403AFD
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 15:28:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781105304; cv=none; b=jRwWyZ8Q38kk4rqn/oV5woNWxvC25u0u9UrXp56jsY5GF4Ct+NKrAyrrW8A0SeEjH79EPrEaMlIr+lh/vZsOL/2bM5wNWforsP8gBXe/Xt7O/0sxsxV/hpNUgshFqCPWTu44sB6ZYwnlFG/kzio/+A3WgUn4J5NPWTanwWMHjhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781105304; c=relaxed/simple;
	bh=Q1Wr7G5CL1bKjpuhk+kh8HHDgWE5aQ4DCtyG3m55WIc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bElkUX6IZPnS4v9yqLY7Woj1ikYFOEMp6yEFq0heXA+cctSxHRJk2nJeMMXl/mhha4TN48tP65enxJtRii6ZD4rksjsp0DfBnarIdFZzMmGZ1oHKZz1F481rvF/bV3L/A1vaQzxLiaY5vqZaNFLi39mC0TrgnCvgo6L8uQw4Jfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7PS2NJC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 837971F008A2;
	Wed, 10 Jun 2026 15:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781105303;
	bh=3gl2RRiOnvwnZg2sTU04CssNnY3oqMoYFK93mtd05FY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=h7PS2NJCjBt4rVyjx7vrXRFGhAnnNwcmtfDreufeVOFgs+QdQw3C87odO7D6Dfm+t
	 PGilWWB68KGCLFLY7KyVwsCPNGPf2J5nhzF82oHMp+ak7LRGpkUImpKV8mIZZVfR5h
	 j0NMT2zE5y4oB3WsZEtK9LXfO6QEQ/Y3El15Y99dYM9bDEUzbz83GrLGom+8JPWtFV
	 3PlXgy2AtzMWBcUKaLwndAbMOSgkQcKjhEUn3ppmEOnuorzfdAIAdLcEhPGxyHdJCO
	 2Y6S4Aj8maDTx1OlHnyHnKzgCJ5YZ2NZjVAnGbxGGUOQzGPy9BCwB8eU8/108wouV4
	 rsNO6PnZ8uYIQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 08/13] net: ethernet: oa_tc6: Use the
 read_mms/write_mms functions for C45
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus via B4 Relay" <devnull+ciprian.regus.analog.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609-adin1140-driver-v4-8-0753e28ee004@analog.com>
References: <20260609-adin1140-driver-v4-8-0753e28ee004@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 15:28:22 +0000
Message-Id: <20260610152823.837971F008A2@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309913-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+ciprian.regus.analog.com@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ciprian.regus.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,analog.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0BC566AF85

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The MDIO bus read callback incorrectly transforms negative I/O err=
or codes into a successful read of register value `1`, masking SPI communic=
ation or device errors.
--

commit 1a0bc4b5b89b86918a4916cb260bddd03f3d58c8
Author: Ciprian Regus <ciprian.regus@analog.com>
net: ethernet: oa_tc6: Use the read_mms/write_mms functions for C45

This commit replaces the formatting of register addresses in C45 reads and
writes with the new oa_tc6_read_register_mms() and=20
oa_tc6_write_register_mms() functions. It also renames the ret variable to=
=20
mms for storing the memory map returned by oa_tc6_get_phy_c45_mms().

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index d32a1a323d488..4fe4e41136c17 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c
> @@ -500,13 +500,14 @@ int oa_tc6_mdiobus_read_c45(struct mii_bus *bus, in=
t addr, int devnum,
>  {
>  	struct oa_tc6 *tc6 =3D bus->priv;
>  	u32 regval;
> +	int mms;
>  	int ret;
> =20
> -	ret =3D oa_tc6_get_phy_c45_mms(devnum);
> -	if (ret < 0)
> -		return ret;
> +	mms =3D oa_tc6_get_phy_c45_mms(devnum);
> +	if (mms < 0)
> +		return mms;
> =20
> -	ret =3D oa_tc6_read_register(tc6, (ret << 16) | regnum, &regval);
> +	ret =3D oa_tc6_read_register_mms(tc6, mms, regnum, &regval);
>  	if (ret)
>  		return ret;

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing the error
handling for MDIO reads here, I noticed an issue in the related standard re=
ad
function.

Does oa_tc6_mdiobus_read() incorrectly handle negative error codes?

In drivers/net/ethernet/oa_tc6.c:oa_tc6_mdiobus_read():

    bool ret;

    ret =3D oa_tc6_read_register(tc6, OA_TC6_PHY_STD_REG_ADDR_BASE |
                   (regnum & OA_TC6_PHY_STD_REG_ADDR_MASK),
                   &regval);
    if (ret)
        return ret;

When oa_tc6_read_register() fails and returns a negative error code (like
-ENODEV or -EIO), the bool cast converts it to 1 (true).

Returning 1 instead of the negative error code causes the PHY framework to
interpret the I/O error as a successful read of the value 1.

Could this lead to silent failures, incorrect PHY ID detection, or
misconfiguration of the MAC-PHY device?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-adin1140-d=
river-v4-0-0753e28ee004@analog.com?part=3D8

