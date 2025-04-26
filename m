Return-Path: <devicetree+bounces-171223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C185A9DD5E
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 23:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1F78465141
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 21:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08811FF5EA;
	Sat, 26 Apr 2025 21:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="GY3VK8rB"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DEF139E
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 21:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745704248; cv=none; b=LHUkeipRFzp577PbX26qMHVMAEjjYKL4mzZ36yK9ybUmkXe2EOM0Ar6p9/+yTwpqEVoM1ZQnuXWXHYntaP9T5i8Lhala7Wot9JpGjfjjBXYEqDcUNsA7b4F5PLGREi1EeOwe7/UvwH+XlGP3dWznsOACiDRm1PJwK+I0iEzSq2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745704248; c=relaxed/simple;
	bh=bn4GP2/sHWAunme42wwZm8R3a5CLQ6HXXL8ZMY6gPmU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b08YwiSTV3ECbI8h3ZVxeOThc4O2Ss1AT5pDT2MgO5unPnTNxmj8yLr0nyPt1w7Yy+4+txec9jhM4s9lQfQy3RtmSxWCRrQ/HuqRxz+vHiWspGu/Jqax0R6nKXWwcmyTB0f3h22ffNWTB9R7HKRYMNJGVdOxf3Bnh1a7xIj9awI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=GY3VK8rB; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=XA/wGLhhTW1BEfPqzujVBmnmfC2XvWGsoDDNqEoe3yE=; b=GY3VK8rBwdPybz6McDLui63KJd
	bVMULZMvV09jFS8waMEDGWBCd8y+fWVfdTBTiBmCxDFbn356fh3+P4FGuLq46OGiLelXeXRYF3qhS
	Dycl5cuTssVH0VqEXjeu3q2H5lk4TQfn+z37SWM7MkaCyF83qyj1GooRSxlDaj3qL6cO8J0gFPo1c
	DRpAMKTHP2YM3AN/y1H2RWdEIZqX0MRyfKSRT8D3ZekDnx5nIQnPvzSWod92MTrYbcEHr9mVFQAwD
	TK+jvZ/irw1jayWXAuVahWLUbdUtqWoINtwh9IsX7xpLufY1HTa1usK7t0yA544tqsjlXsgHb62ZU
	OoRCXzAw==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLw-0001OR-69; Sat, 26 Apr 2025 23:46:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add pcie1 slot for rk3576 evb1 board
Date: Sat, 26 Apr 2025 23:46:18 +0200
Message-ID: <174570370116.31943.13804229850326974495.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1745371359-30443-1-git-send-email-shawn.lin@rock-chips.com>
References: <1745371359-30443-1-git-send-email-shawn.lin@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 23 Apr 2025 09:22:39 +0800, Shawn Lin wrote:
> PCIe1 and usb_drd1_dwc3 is sharing the same PHY on RK3576 platform.
> For pcie1 slot and USB interface, there is a swich IC labelled as
> Dial_Switch_1 on evb1 board. If we need to make pcie1 slot work for this
> board, we should first disable usb_drd1_dwc3 and then set Dial_Switch_1
> to low state.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add pcie1 slot for rk3576 evb1 board
      commit: be4ff56f7cd637dd5276444c42aebf295739ae27

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

