Return-Path: <devicetree+bounces-135660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 468BDA01A3F
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 17:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 257011620CC
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 16:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8A291369AE;
	Sun,  5 Jan 2025 16:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="gjpX5IrU"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C24514B946;
	Sun,  5 Jan 2025 16:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736093232; cv=none; b=gGxGOni6inkaK3UPtYQBUwZCgmtlAMMB3Rad8I0iiyF9s8PgBEHUbuvvXA/k/zM/1uAlzprykSw42IWBMpHVAHmWcdUkZaORLJj2LiKmGVv1/gWF8kXuE4SvX7JPJIfNisBq4yRRSV6SzIr2O2vEDXLmxoVQnoZwFep6R0VA+8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736093232; c=relaxed/simple;
	bh=nwIhi2ctuw1hxj5muea7JzFNnUeOzdgPVtvy7Y+V5wc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gO2VeBS3OTw/+anHhohSjALErK7gA1wUUMKPP34E5lkaFV8bmznESr2KgAXbpRPd/NPF8KTIT4tyM8Kdtk1ntjvrp1QqnxQsDROCcxKToVprE5IgC/3rpdJDvHSjUzdksTyigAuA5YiU+R3HkaIBmVgiP9dxPIkxbevAXgrpa+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=gjpX5IrU; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=X+OeFSCd7YH38tPZ53li4XDnnHkIKso75p2alieFcW0=; b=gjpX5IrUdI3qTyw3bc1uw8tTQX
	35xwcckj7conxnuHM+jSiR4TyEjidGD8vQTaj0961SN7gCpPeTsfh8XxapbjsBR1y0rGVv/epKXeH
	Jf7JVWe8FyMyPEY1LPM4ztxMTtwIvF30P7Fd2AplVQXUu5bwI04RV+nCalblCn48IxFqxmUoCSgKF
	rusenmfHALE3wkl7jqliw+/zOxarMoi1Tm6rWUb4y3Ta4p+fLH2pZngm9xIqgok9e097SYKuTYQ76
	TLrMNBS5eUPBzNh4kjRUiRfPaYVp9CLPnC0WQV9RYwQ0Xhd90vAgDuHR8rJf4b4FT6QHs8bk7fF1K
	vNkAYlAQ==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUT9X-0006uS-DQ; Sun, 05 Jan 2025 17:06:59 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: (subset) [PATCH v8 0/9] VOP Support for rk3576
Date: Sun,  5 Jan 2025 17:06:48 +0100
Message-ID: <173609319909.2437943.5709822695475196700.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241231090802.251787-1-andyshrk@163.com>
References: <20241231090802.251787-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 31 Dec 2024 17:07:43 +0800, Andy Yan wrote:
> Here is the V8
> 
> Patches that have already been merged in V6 are dropped.
> 
> PATCH 1~7 are preparations for rk3576 support
> PATCH 8~9 are real support for rk376
> 
> [...]

Applied, thanks!

[1/9] drm/rockchip: vop2: Support 32x8 superblock afbc
      commit: 938fbb16aba8f7b88e0fdcf56f315a5bbad41aad

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

