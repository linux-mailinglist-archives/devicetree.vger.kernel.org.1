Return-Path: <devicetree+bounces-137222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D1EA082ED
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 23:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8EC50167FA2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 22:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F9E20126C;
	Thu,  9 Jan 2025 22:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="X0BI3bse"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4ED4A1A
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 22:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736462777; cv=none; b=kQdGUVBql2aiFdHL0B0SoH8dMsknslxMvvQmwgl/z3LF7S/MLx9Kt5UYrhMlu8hgCxxkh2ETG1/LQ5b1MIF3wX3f2IbXbIGWoSFm411K0YlU76C7iG1RrCtNoeWGOnhCOhhBukOFYxg3jvAg2elSqRx/cbrQhvAh2jl9dbLt6uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736462777; c=relaxed/simple;
	bh=sI3TWmBj7Zzyf+PnL68I6otgsnAKew/Q14zJKja+DHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QKJMbXAaHwdSj+CmtZKsQzcEJOc8DfDwVgpYSKna3F9eUkj8Rr9vkfdmqYRzdOwSX+SKL5ldpWVntxgPO9QDOtO10Ec0KTmq8vA5wkmOReScwk1CLcuVJdzBEkMG9mcd66BfIjYRKW0lOsFMn4Rx6gZLd1H1F9qXtbGsXnhrZe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=X0BI3bse; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NWcauDOjKnYU4RcQC5PZBZLk9Ag4Oc862avoOH5RmR8=; b=X0BI3bseCuXzMdWwiok/8TEWjn
	akAG6GzKjYk4LPTUFpJKrr3V+6LSnWTK9rSiUHwLgQo+QlnQ6Exvjq6gJSEWgYpOOp/kFM+ltqVSj
	LmkAC8nxr2/OwFP2AhAnue18sS5+F1eUo5I7p/t073PJS+ed8BV13kORxJ42PGPXOjMuzeq1gC3gI
	o00pJBBJtN/1lzKrY1yyaIE1aFwYu0bnNgaadY70moQUSR5dFBcCT1eg+XuOBaqGXhDw8xWRpeiE7
	9TDh8db7qb1eaQrwNzpyzE5tniEk0NqnYTYGeyz6ggO9Tdv8FdkGU5B6ppurmtt/FPaCsEHLqC0Q3
	0PJOPS4Q==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tW1I3-0005ho-TG; Thu, 09 Jan 2025 23:46:11 +0100
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
Date: Thu,  9 Jan 2025 23:46:01 +0100
Message-ID: <173646269067.2939804.12592916938678988873.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
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

[1/4] arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
      commit: ea63f4666e483b48a49d9774d8c680f81165ff06
[2/4] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
      commit: 6327f2d83dce514d43134dedb766df000420b779
[3/4] arm64: dts: rockchip: Add Orange Pi 5 Max board
      commit: c600d252dc52ffc29982ee6873b6eee064193752

The whole hdmi1 thing still needs to wait for the phy maintainer to
pick up phy driver patches, so I've only taken the first patches
for now.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

