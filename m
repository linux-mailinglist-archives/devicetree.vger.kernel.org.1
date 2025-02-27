Return-Path: <devicetree+bounces-152092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F626A47F76
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 14:41:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED738168FC4
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 13:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A1622DF8E;
	Thu, 27 Feb 2025 13:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="pnFGQKk2"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D906322D7A4
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 13:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740663497; cv=none; b=Mm6C5fuwrd/hiqIyZQ9ZaZh+tI5xgI39vWyJ8axdX+yOlN+OlBVKYcS1cnt6ddc5B1yTRw5zLxh7GLLSHL+BZLKiMFSDXdiAx7VnHql8RNS/A4yYCxSPAEt5C5TiBnVVCau+xFA3NvB2OSGCvydcpQxxtaA48ftx12AIq3MxxQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740663497; c=relaxed/simple;
	bh=JhoUIJU1X9Sky4PfsB9D/edrBbQ31n2N6XrkQXkZQHE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=shL6dErLx4MaalUQ2730xbR4zhjJzuJCcrid3b7J0ihKy6gcfSWmR4AxVzdVEsSobGFjVenjy5Ax384PXFjZT+xehpL9tkKjtxSG6CQYqcc7TvFlNugorsyETyG247EpX0ofi1nmxX8htt1PIHFtGBm8JnmSZosKySC8+Mt7xHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=pnFGQKk2; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Uk/F1vtykuq4Bl9zw53S75Gjw8bpLOUYGi0g3Od08og=; b=pnFGQKk2+B4Ycke55ARLdZJ2hJ
	FNyTfoLEjM7uGfkaFUEDnRIS92nNZAd4LI264p2JVnqwvj65QTdgoZcNrACLmunIFnS5qtfNDc+6A
	5Qyiz5jXgzjO4UbVGkpeA/5esex1eqdaqRVFmrJCKzL+L5vsbhiLKspfV6sso0lUZB9ps8rGy1fyk
	ljites5nTNfAlOerHhEnvqBGdmxy/S4jYSpEUTklsgsE1F37+I6t/QEvIpgJSyD2Qgiqmf+M3kTdE
	5KoqiAGLBlrfSC3zkZhHFn+R8dGTN+LPy2gWnqMPEEvu5rilWbMvXqiHAL6IrCMR2oMtOG1ca1JXp
	JTOQ/lkA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tne5Z-00018T-QS; Thu, 27 Feb 2025 14:38:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johannes Erdfelt <johannes@erdfelt.com>,
	Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 0/5] Orange Pi 5 Ultra
Date: Thu, 27 Feb 2025 14:37:54 +0100
Message-ID: <174066344878.4164500.125457221365187194.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250222193332.1761-1-honyuenkwun@gmail.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 22 Feb 2025 13:33:27 -0600, Jimmy Hon wrote:
> Add device-tree for Orange Pi 5 Ultra
> 
> Thanks to Johannes for testing
> 
> The schematic has been published for the Orange 5 Ultra. [1]
> 
> It's a sibling of the Orange Pi 5 Max [2] with the HDMI0 switched out
> for the HDMI RX. As a side affect the pin for USB_OTG_PWREN [3][4] has
> changed.
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Differences in Orange Pi 5 Max
      commit: 6864a176140a03cfc108a27b869814140a022053
[2/5] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
      commit: f36f2ae1fede87ca6223b5bda33835bd931324ce
[3/5] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
      commit: 3df28b6fda8f245dc725af78780f75d5f1bc079c
[4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
      commit: efdc4018f3c98967e0145f790329a8934f936a7e
[5/5] arm64: dts: rockchip: Enable HDMI1 audio output for Orange Pi 5 Ultra
      commit: 254324dbe364fb058279486767fa82cd2456595d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

