Return-Path: <devicetree+bounces-137728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEC1A0A7B3
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:20:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFCEE3A89C3
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 08:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 509032A8C1;
	Sun, 12 Jan 2025 08:20:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F56A26AD0;
	Sun, 12 Jan 2025 08:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736670054; cv=none; b=oNs5ryHfdUg3WWdWUrwqG+2dnJ5XJE3MAigiRxMWS4O5gtKja9SNSDhwP1oPfgvs/G4zUZlKFvx5CIFBrB400GZX+JX4DMjKhngxdZm4REn9SOoG89o8lR92jbv2GIxftCmne9PMWaKxIGhoVUfiEe51SXgp+MbRv4q8W6pxNcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736670054; c=relaxed/simple;
	bh=aioDDPHzsb/3u24vRiuq4upPmF4jNZkIgHwtjhKtF7E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lYCsqf5lh7gnY37rgNb4dx9rmAgkotEUMqpm7cRCB8lDnQn+q7aebfbwk1ayHzuwJUADfAd8bIb6SaJauNxs2zEXZKthq784oN+fMv+CerTIIFs+3yx7zh8LD5aCX4F0hXctlaGrhdGWAFfnpwUcJpWzbCPhtzhEEwAyx2c81Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:1f0::1])
	by smtp.qiye.163.com (Hmail) with ESMTP id 86f867dc;
	Sun, 12 Jan 2025 16:20:39 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Sun, 12 Jan 2025 16:20:36 +0800
Message-Id: <20250112082036.19922-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250112073344.1976411-4-bigfoot@classfun.cn>
References: <20250112073344.1976411-4-bigfoot@classfun.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZQ05CVh1IQkIeHhpOGh5DGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUodS0FBSllXWRYaDxIVHRRZQVlPS0hVSktJSEJLQ1
	VKS0tVSkJZBg++
X-HM-Tid: 0a945999cd0703a2kunm86f867dc
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pj46Qjo*CzIVHwMoUR9PCBw1
	GQJPFBpVSlVKTEhNTUxLS0hCQ0JLVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSh1LQUFKWVdZCAFZQUNNSjcG

Hi,
> +	/* pi6c pcie clock generator */
> +	vcc3v3_pi6c: regulator-vcc3v3-pi6c {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;

Although both gpio and gpios can be used here, I tend 
to use gpio to keep it consistent with other parts.
(vcc3v3_sd, vcc3v4_rf, vcc5v0_usb30_otg0 ...)

> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@0 {

Only one rgmii phy I think '1' is not needed?
Or `phy@address: ethernet-phy@address {`

> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x0>;

The phy address should be 3. Can you try it?

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&eth1_phy_rst>;

Is pinctrl necessary here?

> +&sdmmc1 {
> +   ...
> +	wifi: wifi@1 {
> +   ...
> +&uart1 {
> +   ...
> +	bluetooth: bluetooth {

No aliases needed.

-- 
2.25.1


