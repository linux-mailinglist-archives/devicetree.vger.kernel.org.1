Return-Path: <devicetree+bounces-132349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAE39F6B68
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 17:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED29D188C358
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B27451F6673;
	Wed, 18 Dec 2024 16:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="b9NzLt6a"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4FE1F63FA;
	Wed, 18 Dec 2024 16:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734540172; cv=none; b=FgoXuSqV+ok2evrGMPnRd8sG531NU9JhKSWJc/7pVQ5dsWp7J4zbiIFFsfCHwfGA8pi0et9qGCHR2CZlYbOd3ISqHWV3HxgNu1XpwKcDdcZClqhvOjJlWHPSxFZwBTM3lqS6NJ8DQ8b7HYtk+UddQ5Db7ltOYGMyGHjY2JaVIOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734540172; c=relaxed/simple;
	bh=5libz7nBP67PC7/DRlj5FnLKhUJGV72osWNoXFh7rVY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TFqPJlQkg/BV2KRmCqJoc+D8aR4j9GXD1pvLo9cBVYZpjOFkayfnRM5AT8ScLfD4BuMRDfxtbwDxClsEffzafZ4qQgtuqy+jMLcgBxFI9fY0AEdfbAnIFUCZpQKbWspXAGakqJvvJq0NXrZkMWnsLIujfB6fNgg80Kw1c8p2YMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=b9NzLt6a; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=obxeOv5xS3pelA9rBXGzBgBDhhTmHuY1TLuS9kkDxuM=; b=b9NzLt6aR6WEi8aZiCa9QDGKFj
	b5YEFDWiz6NiZ/qWC1v+BzaqszvXu8Kb5OgZXrYqdP0anWHF4JBVyLg9NinBO32bGdfqkt3gwJwDR
	fRNc4miuzUebN8mYkOL65cCvvEFLUj6dqdSPA/KR1aON1oqT1f9iB2ll85DvYVuPYu5MQCSjvkAgv
	1N4ffaWNDWZo0e0llTBpcoBDmUQEbNbsV4hjDvKgtQCu/AFDRnQk/ml3nEcoHrFvRfgBzNpgF7Jma
	YtBaW72DPcF240N1J5K/8fi3nUvaF6nHqYGNCRbAsfGDN/ff/tt0r2iwcz/D/sG3qRq2XU4B0OCEY
	ChVAMQRg==;
Received: from i53875bfb.versanet.de ([83.135.91.251] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tNx8C-0002kl-87; Wed, 18 Dec 2024 17:42:40 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	hjc@rock-chips.com,
	krzk+dt@kernel.org,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: (subset) [PATCH v6 00/16] VOP Support for rk3576
Date: Wed, 18 Dec 2024 17:42:29 +0100
Message-ID: <173454013836.591676.16677827979094919661.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241214081719.3330518-1-andyshrk@163.com>
References: <20241214081719.3330518-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sat, 14 Dec 2024 16:16:59 +0800, Andy Yan wrote:
> Thanks for the basic work from Collabora, I can bringup a HDMI
> display out on rk3576.
> 
> PATCH 1 is a carryover from the working when add support for
>     rk3588[0], is very usefull when some people want me
>     help debug some issue online, so I really hope it can
>     be merged at this round.
> PATCH 2~8 are bugfix of rk3588 alpha blending which report and
>     test by Derek
> PATCH 9~13 are preparations for rk3576 support
> PATCH 17~18 are real support for rk376
> 
> [...]

Applied, thanks!

[03/16] drm/rockchip: vop2: Set AXI id for rk3588
        commit: 7b256880fdb2d7f23393b87bb557090f049e686a
[04/16] drm/rockchip: vop2: Setup delay cycle for Esmart2/3
        commit: c766998ba6df126ab6934d32ff2ff080316ec630
[05/16] drm/rockchip: vop2: Check linear format for Cluster windows on rk3566/8
        commit: df063c0b8ffbdca486ab2f802e716973985d8f86
[06/16] drm/rockchip: vop2: Add check for 32 bpp format for rk3588
        commit: 7e8a56c703c67bfa8d3f71a0c1c297bb1252b897
[07/16] drm/rockchip: vop2: include rockchip_drm_drv.h
        commit: 77b1ccb2a27c7b3b118a03bf1730def92070d31b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

