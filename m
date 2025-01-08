Return-Path: <devicetree+bounces-136554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BF5A05919
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:04:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B61077A1556
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414FD1F1906;
	Wed,  8 Jan 2025 11:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Ylbh2QTa"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4DB1A9B23;
	Wed,  8 Jan 2025 11:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736334246; cv=none; b=KBpp4ufG5EfGQTihxImcHJJSTiDZwg0hcpbPesqPZlu+7kOHP6DE6+agpY8Ezt+ckavQLM4BJ5X1jaOwzpiTF5fKCBdIqlWoWyjs5EINJbkLejozTcdEEgeJ8zJAnGzb8FIPS3MZYnAnBlRCG+7EcVJBvvAGjaPCHPRJf1myMhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736334246; c=relaxed/simple;
	bh=uVSwqrK2sFKF4BW4zvF3Z0pyZ2mwkr+8G8UkNFgcY2s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dp7agrVM+K1EXxYuaxXJtqG7LaPL/ctNYB1muRc6W3UpykXZItt1dPk+UTQ3AAVPTw3aRiFu66EEu/yM37RmkSoW/xM0tvm0bAGe6Oyt1/eEkB25Jrl0YfjJ4NARUJL1nRk0e9+rJ6LyQZ8h91JzD4xR5F4nlz3KjDgHj3W1h8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Ylbh2QTa; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yzL9Apxx9PBwEi1gxO5jcG1dhq3hPMCgrw+SZsgCon4=; b=Ylbh2QTaU8quP4cFdlfsmw0sSi
	HvsL9hrKYUTXoghA79EvxZq5M4bIcYOoujtYJAhTol4h3881Z3+/73XykMiH1e7qlRDoan2nYLQcC
	Up01P+t18nySj04MnsBY5BhqPKsF5//EI7/Hy4WAzjcmbgAIYkMolJbuQbnIL+WvM/6Ni472pNY5E
	nfnv0DDyBBNyOvb4To18LXuE1EzyNIXPEyC4TpXVrCx1Ic3Ccg2YteRLzb5grnV7GXEYdHEPdxBE6
	vKVDSJ8BVX/nXqwrQK/8psG5n3EVFFlphCF8qaL8izjgUrsyl/Zwn+9OFcrneuxvbyhRQA3b9GS59
	b4rye7pQ==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVTqu-000507-Aa; Wed, 08 Jan 2025 12:03:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
Subject: Re: [PATCH v2] arm64: dts: rockchip: orangepi-5-plus: Enable USB 3.0 ports
Date: Wed,  8 Jan 2025 12:03:46 +0100
Message-ID: <173633412683.2758244.11920236524646659506.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241220161240.109253-1-wens@kernel.org>
References: <20241220161240.109253-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 21 Dec 2024 00:12:40 +0800, Chen-Yu Tsai wrote:
> The Orange Pi 5 Plus has its first USB 3.0 interface on the SoC wired
> directly to the USB type C port next to the MASKROM button, and the
> second interface wired to a USB 3.0 hub which in turn is connected to
> the USB 3.0 host ports on the board, as well as the USB 2.0 connection
> on the M.2 E-key slot.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: orangepi-5-plus: Enable USB 3.0 ports
      commit: a15d12f36eb78692d5c3ebd8a5db7fddf3ea160c

Renamed the regulator node according to convention (regulator-foo)
and moved it to its correct alphabetical position.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

