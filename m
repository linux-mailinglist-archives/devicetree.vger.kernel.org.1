Return-Path: <devicetree+bounces-246533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4B8CBD95F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BD24F300722E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF7FC3358B2;
	Mon, 15 Dec 2025 11:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="F/p1CudF"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2563358AE;
	Mon, 15 Dec 2025 11:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765799261; cv=none; b=YewQ+IGXupynRrpKdRMVo58rAo1uSzF7kAJH62lSOzfJrJQFEhT0H52SBbYemvRBzwE4wBERTO2b+GHWjAfgpYS1Pgy2l2fJ7zyHysUCIoU9TP0F9XyYJMCul2i3aWwuiNH8h3B3KrHG4FcDgKzh0N4aoExi7eeRVXXhnYiLWSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765799261; c=relaxed/simple;
	bh=yw2VuJJS51jqUsO1HHm5k6jskexaHPcw9TFgjrwhmB8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=krrxHws7g4YbX1pevtH9C28z2lVxS5GTJml+SF/adFne83lXTKun8rkcjKXnefx/apUvg3EVSldCR6hdxxJKnUOpsrRLk0qi9qsTK4jXiGpLMoPjp1gyYuTGHJqHEMv07FALHHj5PrZr7TbOkvCCBN2onHN4YZqLu45yopPWpK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=F/p1CudF; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8VsYkPqVn11djoNpxIXUqfR5nF0llqUA37rnKhEinx4=; b=F/p1CudFDrVHOofWOv20shOQyS
	f0fpEFf5Fa6wJ4KVenEC6dVqcRKJ3rav/K9qlM5OGR02NhAqcPHKZSqkeZ1tw3PKYAbgP0clLvzKk
	wlgCUYQ4wh59jNqetJMkzXa/T7IiRHGrrMaczWlkcG6Cici4HRw8LtN0mOMSJEDc+1aH8mo4LnHit
	2FBKXUc7WsrnhvxpErJ8m3rhJyhehz8yuc6DVnsE30myirz8/CUQkZnJiEqbSPNltUuAAOnpHQyB9
	oNOOl9Y2qTe/wH4fzWXUDNcdMHsG5aFMaRnjhnBmgtyA50aCuOHN3hFigkk0sIsUZUmtDWuGSysEs
	+UbZ1pCQ==;
Received: from [192.76.154.237] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV739-0000On-NN; Mon, 15 Dec 2025 12:47:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add overlay for the PCIe slot on RK3576 EVB1
Date: Mon, 15 Dec 2025 12:47:30 +0100
Message-ID: <176579924021.1404176.5086927047208846310.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251202-evb1-pcie1-v2-1-810693b1b72f@gmail.com>
References: <20251202-evb1-pcie1-v2-1-810693b1b72f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 02 Dec 2025 13:54:31 +0400, Alexey Charkov wrote:
> Rockchip RK3576 EVB1 has an onboard PCIe slot (PCIe 2.1, x4 mechanically,
> x1 electrically), but it shares pins and PHY with the only USB3 Type-A
> port.
> 
> There is a physical switch next to the slot to transfer respective pins
> connection from the USB3 port to the PCIe slot, but apart from flipping
> the switch one must also disable the USB3 host controller to prevent it
> from claiming the PHY before the PCIe slot can become usable.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add overlay for the PCIe slot on RK3576 EVB1
      commit: 47b5d3697f6b9f53a0db30a99656a2f8f919e246

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

