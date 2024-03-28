Return-Path: <devicetree+bounces-52785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB86D8881D9
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 00:30:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCE771C2205C
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 23:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2DD129E9F;
	Sun, 24 Mar 2024 22:39:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE1E416F8E4;
	Sun, 24 Mar 2024 22:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711319953; cv=none; b=W/c0V9xfJ4IGPiCwSn3lCy3vdoF1wgffgcC61A0lxuVSGlGeJ+JwmMe+fGsUHJ4hGbpjnMUQGsNQ9y14epGl6ab0JFQi9lQrDln8NGXGDWDagLaIOLNQcwtCS07oqln7M3hyE4+5KDype4LsYwUs5puzC108PVdMUmxIKmlB4e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711319953; c=relaxed/simple;
	bh=YBBrOOVm0QiVbvlKLxwCTvyT1oPnkka44VZl1bf1EYk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pYBOnBheWBqi681QESUIxXy6cC2CXjBnpkTxbKXt8fX7L7exzbjDgHaIuN8kMgyMPS2icnyrZPfcSmn/M97UOC6RxOfZRLiDC9VLZKP7C6iehZpQV/h3E0KCO8Ff83XXTvdJuptIZjuTGlJE6k5CLQ9rjRm09xMiH8BqGWCXb8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUX-0007sn-4U; Sun, 24 Mar 2024 23:39:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-arm-kernel@lists.infradead.org,
	Klaus Goger <klaus.goger@theobroma-systems.com>
Subject: Re: [PATCH v2 0/3] rockchip: small DTS fixes for RK3399 Puma
Date: Sun, 24 Mar 2024 23:38:55 +0100
Message-Id: <171131986744.918919.9548916004778456551.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240308-puma-diode-pu-v2-0-309f83da110a@theobroma-systems.com>
References: <20240308-puma-diode-pu-v2-0-309f83da110a@theobroma-systems.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 08 Mar 2024 16:46:06 +0100, Quentin Schulz wrote:
> There's a pull-up missing on a pin that is used as GPIO input for PCIe
> which will make the diode/level-shifter not let voltage pass and thus
> not allowing the state of the pin to change.
> 
> Also add the missing regulators for the PCIe PHY+connector though this
> is purely cosmetic.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: enable internal pull-up on Q7_USB_ID for RK3399 Puma
      commit: e6b1168f37e3f86d9966276c5a3fff9eb0df3e5f
[2/3] arm64: dts: rockchip: enable internal pull-up on PCIE_WAKE# for RK3399 Puma
      commit: 945a7c8570916650a415757d15d83e0fa856a686
[3/3] arm64: dts: rockchip: add regulators for PCIe on RK3399 Puma Haikou
      commit: d7ed698abc28b2886c9fc71d17ca6b023fcf47f3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

