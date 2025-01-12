Return-Path: <devicetree+bounces-137731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ECDA0A7CD
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:50:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36AC13A85B4
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 08:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2509B17F4F6;
	Sun, 12 Jan 2025 08:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="CkisH2as"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55701BA3F;
	Sun, 12 Jan 2025 08:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736671827; cv=none; b=KwPxsT/9x4SgIWbtGXJnb4473M4ISBOoEhq68Hs3EdLqUmmYaxBNTkK2NU+k7d5/cWy2EADc5lEzK5HFU3SX+PrMpu/jGKvpLtiiTDDu1tK3gjj/3DXznbND92jL8utjYgh+c0Qk/HXj2sOsSG8DUZWhezl/kWrfILLWfiSOyHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736671827; c=relaxed/simple;
	bh=ZcRZSKKwnYnxztyc5ODcptuA5nB+w29g6uM9hf1SJzc=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=NZVbSVUR21I0bmCqURasTcfb7aLnDDTkLiUS4Ax0cbUwkvI3argQRl1Rl8EDDLlDy/7SKU+UjPNoKjPiMge6cPxVEEKmdSMElxQhrQG9E8gjSu7NpIMoA4+0rUbeW8tTDO8txWIOyjbafKD1vebnm9YkSJK/vwSBlqStLo0qdaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=CkisH2as; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736671823;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/dhTXKaqK6t8LBWqwmZRt3DR4x2EToM+pcutkF8mX6s=;
	b=CkisH2asLJuwPUw3e5b07/MikVDKpoCq0TXc2SSTUp2lZcboDvXltAiYHf5MLAH/HhdJSW
	oXFRk9gyXRNYIE7vBYd94TUoh9cLxIzpz4zILZcg7bM7GoN400xgNYe9zG5WLubqrRhPKu
	tH8U389BqgLhyvROA9YzmwBLIt8/wpRNaz8bBIxTQq2RHMSlyZVK9ad8uCzssWrapZqRf+
	5d4NDTberFHMoSH6G2eYwPvKl40mAtjMt5qqduXR9Z2qOmyEQpHf/zTXiff2knlQX7nyKp
	l5aC+FQ9h9o3nuh9PE3gq6DaEu5IZOR2pgC6ey2rcdVcU0uz33fkMs5ME6bv+A==
Date: Sun, 12 Jan 2025 09:50:23 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/3] Add support for Ariaboard Photonicat RK3568
In-Reply-To: <20250112073344.1976411-1-bigfoot@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
Message-ID: <c520a0d829bbe26b9802f57f94f3957c@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Junhao,

On 2025-01-12 08:33, Junhao Xie wrote:
> Add dts for Ariaboard Photonicat RK3568.
> 
> This series bring support for:
> * Debug UART
> * SDIO QCA9377 WiFi and Bluetooth
> * M.2 E-Key PCIe WiFi and Bluetooth
> * M.2 B-Key USB Modem WWAN
> * Ethernet WAN Port
> * MicroSD Card slot
> * eMMC
> * HDMI Output
> * Mali GPU
> * USB Type-A
> 
> Changed from v1:
> - move some general nodes (firmware, ramoops, reboot-mode) to 
> rk356x.dtsi

This entry from the changelog caught my attention, so I tried
to find out what exactly happened back then.  Though, after going
through the mailing list archive, I still don't see where the
as-described change took place, so perhaps this changelog entry
needs adjusting.

> - gmac1 change to phy-mode rgmii-id
> - corrected some regulator to be closer to schematics
> - rename rk3568-ariaboard-photonicat.dts to rk3568-photonicat.dts
> https://lore.kernel.org/lkml/20240904111456.87089-1-bigfoot@classfun.cn/
> 
> Changed from v2:
> - remove unused headers
> - corrected some regulator to be closer to schematics
> - remove usb_host1_ohci, usb_host1_ehci, usb2phy1_host that have no 
> connection
> https://lore.kernel.org/lkml/20240906045706.1004813-1-bigfoot@classfun.cn/
> 
> Changed from v3:
> - corrected some regulator to be closer to schematics
> - changed to using clk32k_out1 in xin32k
> https://lore.kernel.org/lkml/20240911122809.1789778-2-bigfoot@classfun.cn/
> 
> Changed from v4:
> - corrected some regulator to be closer to schematics
> - corrected some label to match node name
> - use resets props in phy node instead deprecated snps,reset-gpio
> https://lore.kernel.org/lkml/20240914145549.879936-1-bigfoot@classfun.cn/
> 
> Changed from v5:
> - resort regulator nodes
> - remove dr_mode from usb_host1_xhci
> https://lore.kernel.org/lkml/20241108031847.700606-1-bigfoot@classfun.cn/
> 
> Junhao Xie (3):
>   dt-bindings: vendor-prefixes: Add prefix for Ariaboard
>   dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
>   arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-photonicat.dts   | 599 ++++++++++++++++++
>  4 files changed, 607 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts

