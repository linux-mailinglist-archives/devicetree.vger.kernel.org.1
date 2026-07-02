Return-Path: <devicetree+bounces-319567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aB46JNG3RmrXcAsAu9opvQ
	(envelope-from <devicetree+bounces-319567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:11:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 185B56FC6C2
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:11:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=GnNg4Icb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319567-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319567-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 298D430B090C
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28FB2386554;
	Thu,  2 Jul 2026 19:05:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF21384CE6;
	Thu,  2 Jul 2026 19:05:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019111; cv=none; b=YHxrxkYR378LoMKuS6OplKakLMquopeLdIuDm+6iX7o9CWf2t4bMMJ7xpdH7cNbhfwojX2m4Oto0QTZj4pE4ff8CP3AREOIVw+9Zts7kPRDdp7ap4vDhCnQOAKj2aOiRLWknRlL2oSF3+OvJoZEe5i0uIpqX+OX4O5T4HjmMYYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019111; c=relaxed/simple;
	bh=z7/w/pYYW2C0//0iZWTY5xIDGiNhY5WNZKz21cDtZlo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QlcowwGRIFDcpZLV8CCNv4ClQiK/ZWpz179dTnbG3/mQ/Crjwlq32/ug6vUR1M8e7H9DNOUbQ7U/xOTWiygEduhz4x9pAHu/8UId3XPviR3nvXVXA8sUOgyCRk7X7lxvDm4x9tbNud4PnDclgO1H9nODe5cq6nj+A3wIXTfCsH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=GnNg4Icb; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=kwkpuFiJFSig1yrgIRHVrq1BQtVphda099BHLY4gXx8=; b=GnNg4IcbGHj4LG3T+K83pcS4qd
	g1bV+9BkUhKcRb20kwj58+CxUOs7De7lebEY06waM02j88XzE13GSkX4jwLL0ebUnOYw9ojoZUtTW
	jIMnYrZuIL5i8e27f2CXf6jcA+kvgOm9Aj8/S3h+myUR6FZiTVPcF4v47aDTwCrUeUaMYv8nXJlm6
	2JynNtRFpf2i/fL8kFsAI6jXv/Vib0HWY+UL0VzeGGw5IfqSVEYPHm6vz5ocSIKShLKu5jBYG1Jq7
	39+58w0Q8cW5sa/mG5wh+QX5s9W2gPRnpjpGD6GfYivmtxnVyddQTrhiTeVHO1T5D4YYrwUds32lv
	gjLwNegA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Thu,  2 Jul 2026 21:04:55 +0200
Message-ID: <178301901903.3838694.3276523670393868229.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260608060940.52549-1-hrushirajg23@gmail.com>
References: <20260608060940.52549-1-hrushirajg23@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319567-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hrushirajg23@gmail.com,m:heiko@sntech.de,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:dkim,sntech.de:email,sntech.de:mid,sntech.de:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 185B56FC6C2


On Mon, 08 Jun 2026 11:39:38 +0530, Hrushiraj Gandhi wrote:
> This series adds initial device tree support for the Vicharak Axon
> single-board computer, which is based on the Rockchip RK3588 SoC.
> 
> The Vicharak Axon is a feature-rich SBC targeting developer and embedded
> use cases. It ships with:
> 
>   - Rockchip RK3588 (4x Cortex-A76 + 4x Cortex-A55)
>   - RK806 PMIC providing all SoC power domains
>   - eMMC 5.1 (on-board) and microSD slot
>   - Gigabit Ethernet via RGMII (RTL8211F)
>   - Dual HDMI 2.1 output and one HDMI 2.0 input (receiver)
>   - PCIe 3.0 x4 and two PCIe 2.0 slots
>   - SATA 3.0
>   - USB 2.0 host ports (EHCI/OHCI)
>   - NXP PCA9554 I/O expander for status LEDs
>   - Haoyu HYM8563 RTC
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: add Vicharak Axon board
      commit: e0008b108aaf8c5aa22930b2ceadf8f894562acb
[2/2] arm64: dts: rockchip: add Vicharak Axon board
      commit: e08c3389c78dbefd31a57df8807cf57ef6f3c9b1

Please check for double empty lines and ordering in future patches.
I've cleaned up some things.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

