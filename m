Return-Path: <devicetree+bounces-280048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPpKHdHtwmkdnQQAu9opvQ
	(envelope-from <devicetree+bounces-280048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 21:02:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7DE31C0A3
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 21:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0A7B53031D47
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 19:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E3138D69D;
	Tue, 24 Mar 2026 19:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="jWLfHngN"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F16318EF4;
	Tue, 24 Mar 2026 19:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774382055; cv=none; b=Uv4y0Fd8Na2bHFCMHrqVySONXndvPAFUj0+heVz+gk9b7qxX/sbYjoiRmOSFf29XlVM1+C0Np0REnFvvmrmWbE4DepCUgrRWA+WDRTFSgAo53PEdgZprNCtSo4Vnvs33mDPoVaZtNwASe/v3i9POTqknzmBvanO9r+bxJnP9hEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774382055; c=relaxed/simple;
	bh=N7xdAsnYEa5es0/W84G3FWLBWJWjfzVxkeMKl+CJLqY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o2odXfZYHd67VYtCurAIuu733TTGYrv185fby6+yt/F/oCFb75qqL9SRE3cPg5+fCkPgCl/5RiU0iMaLYkLb8nf30oEOws1SurIVvce/rVA6dMc2LzLWym4RMnn3W4d0tJk9ZzRWW58x/AsB2AbP6cDvk3cVrjjCGNZHdGyjnq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=jWLfHngN; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dl4I20khcnPtNiwIO0FoSOod5kTJzQ8CNj323iUPvp0=; b=jWLfHngN8P9DFmaJcfaWOIaxga
	HfjqYFOuMkFYHp7n4o3R+WPs1GdYMYLzXn1Iw4+DtLatHcStX0ZfaMoXocjzohmUy/qd+p2OgWZ7m
	Jccvq6lxzJ+c2/KiExS0ESO6EfdAqzAu+pS9GmjqviUn/FfjelTkv+5m6bXP5u8nxnO6VSxIS1gkb
	KMGh+/bp4ZWLIQgODZyKppiTbl5x0PaFy0hW+6oKlRERicZ3ULqGQsG5PCcBiNvGiNeWjJ2PLW91Z
	6Vlt3FS3oS4pfWIZelEltL06Ozpe80v7dTTSWoK+U7XzO5AK96iMKIWJB3ko7+53rnXNfJh2kGHua
	WS3BLLqg==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Gray Huang <gray.huang@wesion.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	naoki@radxa.com,
	jonas@kwiboo.se,
	chaoyi.chen@rock-chips.com,
	i@chainsx.cn,
	michael.opdenacker@rootcommit.com,
	inindev@gmail.com,
	quentin.schulz@cherry.de,
	andrew@lunn.ch,
	alchark@gmail.com,
	pbrobinson@gmail.com,
	nick@khadas.com
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add initial support for Khadas Edge 2L
Date: Tue, 24 Mar 2026 20:53:52 +0100
Message-ID: <177438200679.818857.10509162196522852647.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260317090731.600787-1-gray.huang@wesion.com>
References: <20260317090731.600787-1-gray.huang@wesion.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280048-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[sntech.de,lists.infradead.org,vger.kernel.org,radxa.com,kwiboo.se,rock-chips.com,chainsx.cn,rootcommit.com,gmail.com,cherry.de,lunn.ch,khadas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:dkim,sntech.de:email,sntech.de:mid]
X-Rspamd-Queue-Id: 6E7DE31C0A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 17 Mar 2026 17:07:29 +0800, Gray Huang wrote:
> This patch series adds initial basic support for the Khadas Edge 2L board,
> which is based on the Rockchip RK3576 SoC.
> 
> To keep the initial review process simple and easy, this series only
> enables the bare minimum peripherals required to boot the board to a shell:
> - UART (for serial console)
> - eMMC (for root filesystem)
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Khadas Edge 2L board
      commit: b1a9b33cff4f58f2507e930d2c5805877928c6f7
[2/2] arm64: dts: rockchip: Add Khadas Edge 2L board
      commit: 254c6ae9c5014497e840a6fb8520f70caef31097

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

