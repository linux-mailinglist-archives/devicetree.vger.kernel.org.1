Return-Path: <devicetree+bounces-309306-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f43QFRZsKGpjEAMAu9opvQ
	(envelope-from <devicetree+bounces-309306-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:40:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B9895663D23
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:40:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=d7IH+sAm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309306-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309306-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15E0930D21CB
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 19:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0603749E7;
	Tue,  9 Jun 2026 19:31:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF509346FA1
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 19:31:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781033467; cv=none; b=dszBetxqdia+AaORkdVDaDvrnrMN3wcndkspgaSG1737K62In4i0Yria7ZE4nZ3LLsl3AyQPczY0CdN6MwJKQlYTufwbMcb47yw/n86PrdC2zqp7lyI93LXTRLii68D10Gg470h2sMRXFsFr7qdC+zQb3hGIpkmMgqgw8/oMNLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781033467; c=relaxed/simple;
	bh=KexEdUi8eVPfaImhTbcvd83BzVBcwqTYB+ktPEy0qlw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oKWHtElkLwHFdf0oogL7nmi6woX9mi5d+WE7MBCg0Qfhr73gB8oracVfqwldfkOVu0MBeqQu+zSSojTVNWqMgsDECas2RiKSdpfZ3Bgfc/qTzNjS0S8iRraYbvPvdg8LLiaioTUbvr5ZKi3AHoNd5Vo5aTEepDwregkRk+3/1gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7IH+sAm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BCF51F00898;
	Tue,  9 Jun 2026 19:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781033466;
	bh=cS3dfSPSpLBsHz0bJgREN0NTqwG02LgSNsquw5EjwpA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d7IH+sAmvye8THzrJdb6+6orOln8RwdjnyQ0c92T8+UmhWlAQo8o6R40LeDT3TwD6
	 DICM1VCmpH9LD7Tg03KYxaMkWNAe7bRVuXJ15Dcd7g1PhYBpwviFGmDKT+Cv0kJdZo
	 nDfw9XEzaoDVp0LrirylfNMqLWjfVGBRiXhxOu91DC6wyNcUptbI/3PSf1dweoE/ZV
	 fCK5iX2pkGhjeTRZl4csrwexGtwcXnuNV4JVDeCfvD6pOFIHejrV+7AMz5ep4iOoAW
	 xBQ8440w7Jjt4HDvHc0E7IP1+s7IGhKHxzVWJn+vNrNV6f4JJHvZgSE3rpQuJ4ngKM
	 YB4ztYvgfRBng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 2/4] net: phy: mediatek: add phy driver for
 MT7628 built-in Fast Ethernet PHYs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joris Vaisvila" <joey@tinyisr.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608192948.289745-3-joey@tinyisr.com>
References: <20260608192948.289745-3-joey@tinyisr.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 19:31:05 +0000
Message-Id: <20260609193106.1BCF51F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309306-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joey@tinyisr.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,tinyisr.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9895663D23

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Register overwrite due to unconditional write instead of read-mo=
dify-write.
--

commit c56d71446569801055eeaf712bd2739d4e88d605
Author: Joris Vaisvila <joey@tinyisr.com>

net: phy: mediatek: add phy driver for MT7628 built-in Fast Ethernet PHYs

This commit adds a new driver for MediaTek MT7628 built-in Fast Ethernet PH=
Ys.
It configures the PHY to establish 100mbps links by setting an initializati=
on
bit in an undocumented register.

> diff --git a/drivers/net/phy/mediatek/mtk-fe-soc.c b/drivers/net/phy/medi=
atek/mtk-fe-soc.c
> new file mode 100644
> index 0000000000000..317944411fbe7
> --- /dev/null
> +++ b/drivers/net/phy/mediatek/mtk-fe-soc.c

[ ... ]

> +static int mt7628_phy_config_init(struct phy_device *phydev)
> +{
> +	/*
> +	 * This undocumented bit is required for the PHYs to be able to
> +	 * establish 100mbps links.
> +	 */
> +	return phy_write_paged(phydev, 0x8000, 30, BIT(13));

[Severity: Medium]
The comment and commit message mention setting an initialization bit. Does
this unconditional write safely preserve the other bits in this register?

If other fields in this undocumented register are initialized by hardware
reset or the bootloader, writing 0x2000 will destructively clear them to 0.
Should this use a read-modify-write operation like phy_modify_paged()
instead, or is overwriting the entire register intentional?

> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608192948.2897=
45-1-joey@tinyisr.com?part=3D2

