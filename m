Return-Path: <devicetree+bounces-321563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ruTMOu4cTGoMggEAu9opvQ
	(envelope-from <devicetree+bounces-321563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 23:23:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8E5715B1A
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 23:23:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qq.com header.s=s201512 header.b=b08t4qOa;
	dmarc=pass (policy=quarantine) header.from=qq.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321563-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321563-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 859073001F9B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 21:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 778DB3E0223;
	Mon,  6 Jul 2026 21:23:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-209.mail.qq.com (out203-205-221-209.mail.qq.com [203.205.221.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACE113D75A1;
	Mon,  6 Jul 2026 21:23:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783373033; cv=none; b=VbqIdGfCc7TyriGWUGch18CCLboJvAr3WVSy1rw3RVRF7trhchO01yNqwT6Tatx4eMBFSq/FdRzSzHnfOBA4HKyQMnTFNrwuvrgteBVX1ur1hlACkjuWSzupjVkiTRuLYMclgJ88Y9InBXY75PZjV6mZj+mCtZlt2Kskefgsuh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783373033; c=relaxed/simple;
	bh=T7UcQj8BAP3IsWSNgITYkVAZ1RR2i6YGU6gGEqrKQgA=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=g4ONHGQhTxNbD7BwE8UZIBjho1nwTeMLieEj2X75kN3s1OW9SfUiIncqPr6RtcaVgAV6zP/THMlxqGWiVM2TZK7OcoBjb/X9J2SxP80GGgst9FFPca7KFLOqiUMSJ9XYPdSYKE2WhSPgkR7GHDUQwXSd9AvGTzdBuwhTYKzqZXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=b08t4qOa; arc=none smtp.client-ip=203.205.221.209
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783373020; bh=THuhvPYxoUVY1fyXHYjm6ybRklyzNtpCS1SAJayw/aE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=b08t4qOa7amCbULr5F/3FGFixSA4T61dvvpWpmi1mVEROAvwOlsSZa2a3j/0TyWeH
	 trsNnOoo1xCn++fv2a+CO9fM17ngxKJsBw/syfR98Uv2Syx8TARAaWKZZpE/py3xsV
	 gM5a8EdUIjjsC5uzG8dWPMF0UKmXt02i2jW2U5uI=
Received: from AERO17.taila7786d.ts.net ([220.171.158.107])
	by newxmesmtplogicsvrsza53-0.qq.com (NewEsmtp) with SMTP
	id 5E484855; Tue, 07 Jul 2026 05:23:36 +0800
X-QQ-mid: xmsmtpt1783373016tfy6yz64c
Message-ID: <tencent_BF5741F8151925AFF7A3026460204C2B3108@qq.com>
X-QQ-XMAILINFO: No7DFzN00JnRdexOUT7KJ1j5GhTH/EFzHkmfx68KkdRR8eNizRxrO88bjOgmX/
	 iXmRjNojHUFtGyoDpyQWfTWCfqFHSaPh7H/LczkVVW+/CfPiVFnj/hya0BdudIZEJHyVe/JKLR5G
	 jr6F4lYn+XcAT/Bom4HFp7seyMXfXXEPHDl3E3sL+JgDVxEtsJX0P+8lZR1Glsh6dvcvkK1QuRcV
	 ymOf/kcoFINQEMlMMmSSvM/AmAgqq4um+grCW+UnzIDneXsD0Ai4Zpcfnq47wnFIN34iyURhu3A6
	 tjdq9oN1YpdVjZMikHMANXHqk+fIxNC345Wkm8IDxAigxef72y2RnhQZMl1FlKMQZpHMJ0SkLcD5
	 HlkpGd6kRpXI1O07dPZfLVekrDBqsTjZGnKuiNwm8G2tyTwfykKAFXRgfJrW3qZNQLEwv9+qfOI0
	 5ngDCAMxb3yZTw8xFs7gjWIaybSVjix0+Ee+frgensIW51SGZ/vMcsYYbSBDVo8fcy/LbYvbe9NP
	 WWb2wV6CHn3YNwSxiOGxRjGIrov6FISex49mIBQYIbnikRb92hOVnDP5vQJKMR97G9Ad+cSZRy9P
	 lHKJyhnIOtuP0tW1OIgjFL/zNKmQ4XOlzbdXumquzGXZUXZyoohSEYgyat1DufZPQlawKerZbFFK
	 jsEOiCE6t4RlWXqG5unHon0Uju/Yrr8Hz6drqBCev9EwGg8Ba6+EyENwSt/8h1JW88QtsTbOMX5J
	 2tMLz4YEv8xoBZqfFZd8rFKDO5mYrw4TiXM6uo+rPDr9TiI2UygtOntp2MOclSUC5kM28xynsBKq
	 ewzwo/ulaZ+dNHz7inyAv3pS/1+crWOb9+ziqK1aiC8ymEFlNtOFReV+5Ha5pL5mJHRK6z8s6CVa
	 w2zGCmVPWsaUGL4NHl+J5kmURjadZvSPOkQrwXDBMoSz4DDjoLB7BJn6600YBaEi7nMx3+Ju5iBu
	 cOS8W9LHOtXPEsa7VPjOTZMo05C8VN7Y1w9IbnQgEI0Pwkq89ur2O2jrmEKRcqTS/m0v/nKl4Q1V
	 WSyrQSrU+pZxTWNFx9MbPS1NjK0JBcLg7udIIU/A==
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
From: Pufan Jin <2254650260@qq.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add EmbedFire LubanCat 4 board
Date: Tue,  7 Jul 2026 05:20:35 +0800
X-OQ-MSGID: <20260706212220.688032-1-2254650260@qq.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <1ac2d0f4-e027-4633-9d34-2709cb3e43ec@lunn.ch>
References: <20260705135014.1004166-1-2254650260@qq.com> <tencent_6D311DC5F405B157049538DD5B080082A10A@qq.com> <1ac2d0f4-e027-4633-9d34-2709cb3e43ec@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321563-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[2254650260@qq.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[2254650260@qq.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[qq.com];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F8E5715B1A

On Sun, Jul 05, 2026 at 05:11:58PM +0200, Andrew Lunn wrote:
> > +	/* The board has 1.5ns delays on RX lines; TX delay is provided by the MAC. */
>
> That is pretty unusual. How is this RX delay done?

You're right to question this, and I apologise -- the comment was
inaccurate. I re-checked the board schematic and both TXC and RXC
have ~2ns of trace delay added on the PCB (annotated as
"TXC / RXC : delays 2ns" next to the RGMII bus). So neither the MAC
nor the PHY should add any internal delay.

> Ideally, you want to the PHY adding the delay, not the MAC. 99% of
> rockchip boards get this wrong, they have phy-mode 'rgmii', and
> {tx|rx}_delay properties. And i tell developers to swap to 'rgmii-id'
> and remove the delay properties.
>
> With the PCB adding some delays, you board is slightly
> different. Please drop the tx_delay and adjust the phy-mode so the PHY
> adds the delay.

Since the PCB already provides the required clock skew on both
directions, for v2 I will switch to:

    phy-mode = "rgmii";

and drop both the tx_delay property and the misleading comment.

I also need to correct the cover letter: the PHY on the shipping
board revision (20241026) is a Realtek RTL8211F, not a JLSemi JL21xx.
An earlier revision (20240221) used JL21xx, but the current hardware
uses RTL8211F. The cover letter and binding commit message will be
updated accordingly in v2.

I will collect the remaining reviewer feedback before sending v2 and
will re-test the link on hardware with the corrected phy-mode before
posting.

Thanks for the pointer to ethernet-controller.yaml.

Pufan Jin


