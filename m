Return-Path: <devicetree+bounces-240856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3C6C767B0
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:24:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 3E48E315D8
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:24:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E1F22FFF92;
	Thu, 20 Nov 2025 22:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="IK0aoKtx"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F282FE04D
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 22:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763677420; cv=none; b=TYIQ7h5YC61JC7RYmniRkoDNY5p4d0Jfjd17et8+t8lW8fNpSq86hSXpSToR61Qpo9UY5hliqnpkyyYy/vEbLyaLkg8WfZlWqsaDNOpk4VXd5f9ptDSFfU2VE9eN+olH8so6f9CcCg2nSMECw6WEjhNznIB/1BO0a7bgihbyTXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763677420; c=relaxed/simple;
	bh=PUswWeBANXfd0MhzEVXroAEZLWidtVy8L8qbG+OiMXc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YhhIOZcOdhwldejY0+es7tYYrPu89ZysqlJ+2SucqFw5FAGosoCNLGLqpT7aVevnB7YIl2pAsqSUDkJzUPZNhTcCuPaiiiPxo82eaCLwqdlmByaQ2k7RLvOyq5OYZxjsIB9kqB7ujCX9lKpPgekqRdhjw5bjUu/UEa8It0JW4ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=IK0aoKtx; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=bwxznhMq6xEErFPu2+B+diw5QbORrPtnVJP8dxJ7wuA=; b=IK0aoKtxCDr6DIZiVPIZLAmy6i
	FxmVFlAvA/0A1eVM2tqj4eXzc30wsK2hXYK8zu4oWpUcJJg9jS5nV8qH6OBE3KlELRYlxgII7q+Xu
	iv5xXBOECXLjwWarOJ1CnQFMkfqCD41CM8ksIf1PJ7+qqEymnHvihDFE9Zj0Ltit3eJZy1QaxIun9
	4AED3p9AK1pRQ4+jg1PDi7av30h+RNKsxRca/ePse2Pm1Hjj61P+fB1LAZbaulBC/Dg49yUax9qX5
	HACtnj47McMkCe7WRR5pKlEZvfPbbZBYGhd7GZJvVG9cEn2XMms3FPhveJFRr4Al+ecEcsvJ1ztSQ
	WIYOqp/g==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3a-0007Je-2H; Thu, 20 Nov 2025 23:23:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	pgwipeout@gmail.com,
	didi.debian@cknow.org,
	jonas@kwiboo.se,
	ziyao@disroot.org,
	amadeus@jmu.edu.cn,
	nicolas.frattaroli@collabora.com,
	pbrobinson@gmail.com,
	wens@kernel.org,
	detlev.casanova@collabora.com,
	stephen@radxa.com,
	sebastian.reichel@collabora.com,
	liujianfeng1994@gmail.com,
	andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com,
	kuninori.morimoto.gx@renesas.com,
	damon.ding@rock-chips.com,
	kylepzak@projectinitiative.io,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v3 0/3] Consolidate and clarify LED device tree descriptions on Radxa boards
Date: Thu, 20 Nov 2025 23:23:04 +0100
Message-ID: <176367711181.9778.6379873847365673369.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251113124222.4691-1-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 13 Nov 2025 12:42:19 +0000, FUKAUMI Naoki wrote:
> Currently, on Radxa boards, the power LED is turned on immediately
> after power-up, independent of software control. The heartbeat LED and
> other available LEDs are subsequently turned on by the initial
> software, such as U-Boot, to indicate software is running.
> 
> However, the device tree description for this behavior is inconsistent
> and fragmented, with definitions split between the main Linux DTS
> files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Use default-state for power LED for Radxa boards
      commit: 6ed597fdbcfa5ffc1a01c8740320c5a20093b863

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

