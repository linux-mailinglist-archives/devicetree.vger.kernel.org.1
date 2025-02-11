Return-Path: <devicetree+bounces-145076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6184FA3048A
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C87C7188277F
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 07:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34F4D1E9B17;
	Tue, 11 Feb 2025 07:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="SeQu8Xkb"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C85526BD8B
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 07:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739259240; cv=none; b=cjTXuiRMu4PFDCEZoYKRvDbu9aaIadFx/pNAh+FBIz32noy14rH3mlwA3h5mpN6x8AINKDqAFlLVpboXCNV8sluyI6A1b3lrmETbO6Duyd958Lu8dZU2psfLq0TfS1ewurXXDokO+f1KCp7KYL5AscoDYxEt0OW5eklLyDY7fjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739259240; c=relaxed/simple;
	bh=zGs5wFf+AjFlJveXMflv3hSB8/wJpUBJdF4/tIhPpwQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OLgKPTqaXg0QLXlIBGCo4Pwago1M5NFADvjYF00Y716v7qp4n6pSgQg1nY8LSFHMZDfnN3w8pnkB+kQEjJYQ0/tH+ZmLq8YKTXGVZM1DOLfQBuzmzX7HOjckdQUzRcpZnFPch5z8ZZ+h7C/AJpZFoK4INrZmOuT/nsu3o25Jdug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=SeQu8Xkb; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gDOCVF4pPLix8MnV2zo3quoXhkMl5ME+afDBieKTmN4=; b=SeQu8Xkbyz7ak0aKEgFCzXBF3h
	Pon/yuFNDNLiPrbJy2hLzEC+iJRWWqDojD1e2xM7OPvWW3UDVcOLvHr3sqx5l1Qm7KgZp5ok0NV6X
	6E3bVnXS7fiiC9E4t5Oqv8F+BkqNmQJ5FNiZYZ3t/JfmCCl0HTTeNiXeImQ44UUIWFjEnKtRXTLCy
	rH+k1HMfLlQeHUJn8+tg55rF5DmHWuxEBIlmfUPoOkJVwDvYykQlt0HvPWFPxmkCNkqkj/BZ+FrKI
	jKDxIcsUhyzTFi4kfJCLLuewgABahgLYiajWO5Sz98vWP5M2kZ4si2QnMo4D39FvLjNnlWaMokgRG
	WJ7T4WkA==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thkmH-0004ml-L0; Tue, 11 Feb 2025 08:33:53 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: patrick@blueri.se, Jimmy Hon <honyuenkwun@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 kever.yang@rock-chips.com, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: add MNT Reform 2
Date: Tue, 11 Feb 2025 08:33:52 +0100
Message-ID: <3840752.CbtlEUcBR6@diego>
In-Reply-To: <20250211040300.1905-1-honyuenkwun@gmail.com>
References:
 <Z6p68brg5itgYdO1@windev.fritz.box>
 <20250211040300.1905-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Hi Jimmy,

Am Dienstag, 11. Februar 2025, 05:03:00 MEZ schrieb Jimmy Hon:
> The RCORE looks like a carrier board for the Firefly iCore RK3588Q SoM [1].
> So it would be better to restructure the DTS as a dtsi for the SoM and
> a board DTS which includes the SoM dtsi.

thanks a lot for finding that bit of information.

And I do agree that if there is a Firefly module in the middle, that things
should be modelled accordingly.

> That's similar to the structure of the Firefly ITX-RK3558J board which 
> uses the rk3588-firefly-core-3588j.dtsi. [2]
> 
> [1] https://source.mnt.re/reform/mnt-reform-rk3588-som
> [2] https://lore.kernel.org/linux-rockchip/20241216214152.58387-1-shimrrashai@gmail.com/#t


Heiko



