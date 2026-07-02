Return-Path: <devicetree+bounces-319565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oyhvAsK3RmrPcAsAu9opvQ
	(envelope-from <devicetree+bounces-319565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:10:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 543526FC6B4
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:10:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=eTywfsWS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319565-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319565-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B242130A1ED1
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87FB4384CCE;
	Thu,  2 Jul 2026 19:05:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E690834D93B;
	Thu,  2 Jul 2026 19:05:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019108; cv=none; b=oiZPAqAUZB5Sn6EB2i/0mVn5F5/IXON27TcKfBBIEgOPQ/vYUMM6AIEDxpLjNxevLHgtPzk2VUoI0XtiB9Y8/hWFqKppGASJgkmzNY/aI+NgsHpurZ4YK+FgEknt+kaSLV7SnzC4vO+Ehxjyl/oxtxRMfHoRFoCBF0PyNl+uADA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019108; c=relaxed/simple;
	bh=vJ2tGzJF2LErYweoP83eknePZrDwsxl0+Dppbc9kzUA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=joG0cs68lvYMR1GGcoxXQqYVZoMP3I4LSqSryAsJaDW+mPS1eQnFv6JMxI0KOZHvXKScq1x7d/jVtY+0HCwCFl6ZG3Y259pE2ergQnY73W5CF9K6W8g0S+eSMdEJG9Gw6+oShKDxXuSjzLH/i3pxac0Ms+6G3H6Ur1NIOlo77H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=eTywfsWS; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IshAWt4/DIFZNA6GzomErw4c1aLbhwUOU+mr49tAGsE=; b=eTywfsWSQOpKYUcE57sDt0+/rH
	BoalqJdQj8/xNPn+J9TS7rNzzrgp+pyn0qgPmg7+znk9WJgq5CHN8G4r4Ww/qxSQVQEr2bKskDyrk
	uPzAcC63X6eU7S5rOxXB+c/AFbHj/PfdGUBJUDtS6bHNYHO7dP1NH33cR46XzKg2F+/gIeb+i/j52
	8uyZFY2u9LT9uv47LtAASbul7cx/8BQslvJB5IJ+Wt8jHCgy7wGBui1ravI9Ri6iyS3Bd1kkCwOL1
	PAV+cndA/iFJR80jGWmOOZzzpX8h0qXhMuSch7alg9SbRXh/pp2+vNwnsvJapYmGbQSUpVSESbhio
	UySmuaVw==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Thu,  2 Jul 2026 21:04:54 +0200
Message-ID: <178301901898.3838694.8414378440353261290.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627102633.86222-1-hrushirajg23@gmail.com>
References: <20260627102633.86222-1-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319565-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:hrushirajg23@gmail.com,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sntech.de:dkim,sntech.de:email,sntech.de:mid,sntech.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 543526FC6B4


On Sat, 27 Jun 2026 15:56:31 +0530, Hrushiraj Gandhi wrote:
> This patch series adds device tree support for the Vicharak Vaaman2,
> a single-board computer based on the Rockchip RK3588 SoC.
> 
> The Vaaman2 board features include:
> - RK3588 SoC
> - eMMC storage and microSD support
> - RK806 PMIC and multiple RK8602/RK8603 regulators
> - Real-time clock and status LED
> - UART serial console and SARADC
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
      commit: b4a5e628936cc01ccfa713115bc56b46e798ebff
[2/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board
      commit: 0aec094dff13ab5526a3e602243576c3ac993ec3

Please check for double empty lines and ordering in future patches.
I've cleaned up some things.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

