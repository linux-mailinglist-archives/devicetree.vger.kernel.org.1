Return-Path: <devicetree+bounces-120503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7A69C2F1A
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 19:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5F291F2206D
	for <lists+devicetree@lfdr.de>; Sat,  9 Nov 2024 18:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DD01A3BC3;
	Sat,  9 Nov 2024 18:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="w7rLpJLz"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC3F1A0BFE
	for <devicetree@vger.kernel.org>; Sat,  9 Nov 2024 18:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731176859; cv=none; b=sX/R9eI2r5zvXG5xjjcOfM0LjM54nZgS7NF3BCJSTRZf5LkRVuKwBaPKbWFL6fkWBAATq8wOY2H5scB53UX93JafJS17S2I/qoLK/3be92bJPzMZt/ztA1WjymMPKuvOBvj7Y0PN2V2kaSugS9PZkc/uZjuQUuHgL3Bcix41jqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731176859; c=relaxed/simple;
	bh=gq0vA3VQBp7YoZksmqWYcuylxgsa+/EUSloaVXwuvXM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=swOelflOruWD/+XAVDKAD3cNZRMrU52uqxpduifCXb/OY5e0vUNbH9MpgUb90OTncgnrXCbKr6e9Ytunm1WLYHwTE9sd2zC5yOpHbHJ0kmOH8QqxJZrh7hMD/6F5x7QmMg1UFQZaNWqPJSxovVrO53wubTvZAQzGF6U61mIuoEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=w7rLpJLz; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JDGs9A1WezTegs9NR6XUrH27k79I2r3hym5QiPs0B40=; b=w7rLpJLzci1KJ2Mzn3+w3dAznG
	ZeOKs49lkOr9oITAdsI9/G0MBNIFm3IvFiRFQ0Yxsto/6G5pO3NWicdIdf4r9+KrQ2468j4aJ+iPE
	af41MdG5WF0ZDPLOR0RQcz0WlEWOeCt2vbZQ92MOA6xO7YblI/+6wGhG1jX0l3SU5EogkAWHnVa/e
	ir7jLgqlFl2LBW2CYoYXx5jGCtfQw/NH/yBy7YMCU8FPo2b6gChe3/cobp3VNAeqA08gHoQTOpa1I
	TKTYioa+c8DELGjBci/Kl2pkHitSWAAyCWyAGd9otw/sfMALHuNA0vVgUShv0+hMaJaN+fe5Pu2ns
	vJBGrlzA==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBJ-0007Km-Ql; Sat, 09 Nov 2024 19:27:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH V3 0/3] Indiedroid Nova Audio/HDMI Updates
Date: Sat,  9 Nov 2024 19:27:17 +0100
Message-ID: <173117675957.1131306.16704328576582239641.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241031150505.967909-1-macroalpha82@gmail.com>
References: <20241031150505.967909-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 31 Oct 2024 10:05:02 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This series is for a handful of fixes and updates for the Indiedroid
> Nova. This series corrects the device name of the audio card to stop
> a kernel log error, and adds support for both the HDMI and GPU (now
> that HDMI support has been queued for linux-next).
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
      commit: 42d85557527266804579bc5d20c101d93f6be3c6
[2/3] arm64: dts: rockchip: Enable GPU on Indiedroid Nova
      commit: 3143ef4f01757b7069d3d7d7b02e4dcb5790d285
[3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
      commit: 2f4a0c2b29c9d82f9c322a641a59fddc41af1289

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

