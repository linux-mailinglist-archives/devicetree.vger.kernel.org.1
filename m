Return-Path: <devicetree+bounces-172706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F86AA5F34
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 15:30:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD0471BA6F8D
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 13:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C95F1A314C;
	Thu,  1 May 2025 13:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ODSs7RMw"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944CD18A6C1
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 13:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746106203; cv=none; b=AVWbqTsL7JcNdLJ48djd8EJV/yKeQYI0iwUIizxbATa3YoQNJBKJCLM7bPigx9ffvH+h6x+p0U4QmT8mKiLWM1nQ4vg6wSkxIMhjHn2VyiD/X9RxvCl4MPZqGj7wwIhjijAkX9mzMY7baLuykx24IFf4Q9m9so1SqSaV5GxvNL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746106203; c=relaxed/simple;
	bh=mYePsRyjj876maRSoJl+YzWbd5NC9eOe6FPpx+9Q7wU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=F/HviyI01tSijijBDCDRry+ubTKhOOn6TtwVsB+Z0Ds2Cb9HhJSI52jYcBCu2LtuzTgAeAw4JY9YlULNpCPcksDtQhnUkio81Sc3zRb1xImu0FyLbD5kOq+yWDQt5cW0w3kLco7bhub1I6B6q8xLsGHNDYkpE4Ib7rO1BH9J1m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ODSs7RMw; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=WQapiMUsqLctAxkgX9dXBZAjV7cdFsWlzKkeB+Niv0U=; b=ODSs7RMwPsA+22A8yAIGj/mbwj
	ZdBCEtCjWCjwOWVruBpFeP8ewMivf3gWmD7hvwEin89jVS1xnBkjdldEgv2qRgFzZKcOnF94K/E6v
	r9CQJPC5iocFeEov0Vvl8yg24GdE5zdmZeJkXAJKDAmlzaz6WgA6+4kdkK4L4U06yHQgmG1/N/dJx
	YJ8CBLPQbEinjb6l0Go/L9AMBmxnSR1u5r76InDRNwtQGY2XsEVxoUiSESJWe+fqKfMsFQWK0eggX
	GD+Rhkt4XebJRYjPGCD32ISvmt9SFDcSZVaqijBtTK3o+BWzkjTCqcdCF3a8jsCaIzlf3GoNFc4za
	FiU7greQ==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uATyy-0001xd-QL; Thu, 01 May 2025 15:29:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johannes Erdfelt <johannes@erdfelt.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable bluetooth of AP6611s on OPI5 Max/Ultra
Date: Thu,  1 May 2025 15:29:33 +0200
Message-ID: <174610616059.401554.10034489142081349913.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250427182019.1862-1-honyuenkwun@gmail.com>
References: <20250427182019.1862-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 27 Apr 2025 13:20:19 -0500, Jimmy Hon wrote:
> Orange Pi 5 Max and Ultra has onboard AP6611s with Bluetooth 5.3
> connected via UART7.
> 
> The chip reports as:
> [    3.747864] Bluetooth: hci0: BCM: chip id 3
> [    3.750021] Bluetooth: hci0: BCM: features 0x0f
> [    3.775923] Bluetooth: hci0: SYN43711A0
> [    3.775930] Bluetooth: hci0: BCM (001.001.030) build 0000
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable bluetooth of AP6611s on OPI5 Max/Ultra
      commit: db1fefec31e79e59459c2c14fe4d42e303ef8ba3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

