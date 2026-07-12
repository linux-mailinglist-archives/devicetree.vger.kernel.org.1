Return-Path: <devicetree+bounces-325122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4PQ0EVb6U2odggMAu9opvQ
	(envelope-from <devicetree+bounces-325122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:34:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 134D5745D6B
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:34:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=W9a1W2JL;
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325122-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325122-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E32253001CD1
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 20:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08FDD3655EA;
	Sun, 12 Jul 2026 20:34:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6B63537F6
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 20:34:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783888462; cv=none; b=RbpWdGYxw8EhM6308KLdC5r14vQ1uNC/tFoDcn22oQWgI6yLYth/8isKPjbSim5UGVt10cqHdXDIUCsjddTb7fPmBhqL6mMfVjpjQ0eY6WdZc9nESDaBKfyCzGwiVSponVG5HqXI3wcHALu4/zFgFUX/VfrYbmTbBMixMPNg34o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783888462; c=relaxed/simple;
	bh=dBU8l5R2sweidiStvcrUmSm8OjRhnPD1eOTwonLNwm4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d7jNAU9IotYllv9TR32unS4hydZlcAC4fCChrZSn7BDDJptlVHqPf8v8dmAm/QlKOPR8Hq/V2eRX/cPbV83cg5jKEdyHGlbcDzk87w6FwlXpTJDEF3BrmpHTJNY8ZUOiG5SClHznlerbFB1XXUkUTzXKW/dmpnpCIvE6cC4NQVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=W9a1W2JL; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=TE8MBqoAj0FtTOcSUdLwCfJt+0lmd+CK3qEgeuR8JEo=; b=W9a1W2JLX7Vl/q81wLcZHVfiki
	aPmb2NSV6/JU8miYhfk5KyKu0vvLLNuhwOJB+Kdlvm4PCyUcsfzyxQXVAbTR8ZOGNapsieUdKCkoH
	vKX8ys4wgnABD8XQKSZFqTuSeM9q7EJx0xf5M7OYQRTSikStHQDTYRsv4JG+7EaHEtCqvSPj8B65p
	FVTswJS+q09kxLMOSzUb61XdypaiQ7DiM/BilNROyY3Enm7C9rCUvtOgkV7dJ5YC8lVWbLZ3+0tym
	lrB2d0SfF92tG3YY0g87nzZgOqT7y3zDM7Rk3+KxX5V2wJXiCUYenfg1xkcY0Fwu+MRzChBrQwJzE
	VD0Oe8vQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable USB device mode on rk3588s-roc-pc
Date: Sun, 12 Jul 2026 22:33:56 +0200
Message-ID: <178388833971.1396294.14091650862105286693.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260709005006.413145-1-festevam@gmail.com>
References: <20260709005006.413145-1-festevam@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325122-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:festevam@gmail.com,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:festevam@nabladev.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:from_mime,sntech.de:email,sntech.de:mid,sntech.de:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 134D5745D6B


On Wed, 08 Jul 2026 21:50:05 -0300, Fabio Estevam wrote:
> The USB3 OTG controller on the ROC-PC can be used in device mode,
> but the board description only enabled the DWC3 controller and USB2 PHY.
> The USBDP PHY remained disabled and the controller had no role-switch
> default, so DWC3 did not register a UDC and USB gadget drivers such
> as g_mass_storage failed to bind.
> 
> Enable the USBDP PHY and describe the controller as a USB role switch
> with peripheral as the default role. This lets the controller register
> as a UDC when no external role provider has selected a host role.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable USB device mode on rk3588s-roc-pc
      commit: 9d1e32bfdda1aef3291e47c2949b3b9978162a5c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

