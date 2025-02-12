Return-Path: <devicetree+bounces-145714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6956A32204
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 10:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9009316361B
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 09:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57CF12063F2;
	Wed, 12 Feb 2025 09:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="j8Ppe/Ux"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20BE205E21
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 09:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739352220; cv=none; b=mxKEHChfqs2NiO+KFt0xsRq09k1iMW/2SwkTixuGg1enf7IqryAdYtdfyZ3SauIu5shQq+QHE2PFpc7eoxC4SK3YCA9RLdzLs+hPWu0w8R3bLA2XracIYEsvZKPmsNhHvV8TTrS1SLB3Kq9TnnQNBxK3YgvqLvOCm+vKVi8y57E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739352220; c=relaxed/simple;
	bh=YY0ZdiWZfBisbWptx3+iI/9IszSNf7DQNvx6Mh74HkA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=l0WYW3bOMGKhZGDj4qdiVgyAmT4uYFP+E5MbUYNB6Lb1UpnowvYIf2F9TsXhzK0c947RfBHAca3Wd90ER5HeNpwR11p2huJjWLFuRMZ0xDhSt1PRWPh1IVwOPiGViCxHilNvGx/qLExrvg0mm+rF+hQDufUbe9Lm439HyLLxY54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=j8Ppe/Ux; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CGkw64b7wyEF8sHf2WWwJUD+Cc1oomA0aUrhv9+r+yc=; b=j8Ppe/UxcrxSwOtCPCWyt2qHUi
	Cgn/Ie0uAt3kMo8l1PfAAptBtdf6OMa9IffCXoqnxnTn6Qv79hPIsnnjnYm+F0MuAwv0FsWYbJlPZ
	5ylRKkaYmbtsEh7eQ8fKETXiGqH8tucUWB4YDpXDbQKtwGleWVHXb9gZ5O4//vSCSyuRh7LMCOiJ5
	rpCYpPgYTWD0siiQNoR9bILx63mX5GKl5GuIsNJ5ZEoJm/UVaM4tLTpeHkP4ku6lRczvEQqdxpBVg
	Iu5paLLPC/m6Mar7ZAX31UH1EuJbvlwqQ9PWHvaOWRFNEZQZ9hrsME4kd6q7dHZ+UGWQe3op0tgeA
	MaxVu3PQ==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ti8x4-0002Ai-GR; Wed, 12 Feb 2025 10:22:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v8 0/4] Orange Pi 5 Max
Date: Wed, 12 Feb 2025 10:22:28 +0100
Message-ID: <173935214367.1388667.11082246445597459804.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250109051619.1825-1-honyuenkwun@gmail.com>
References: <20250109051619.1825-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 08 Jan 2025 23:16:14 -0600, Jimmy Hon wrote:
> Add device-tree for Orange Pi 5 Max
> 
> Orange Pi now has 3 SBCs using the RK3588 SOC. Refactor the common parts
> of the 5 Plus DTS so it can be shared with the 5 Max and the 5 Ultra.
> The 5 Max and 5 Ultra have a similar credit-card sized board layout and
> will also share a DTSI between them.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max
      commit: fa15cc73121279f93757ec76312b0d0b73f7462a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

