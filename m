Return-Path: <devicetree+bounces-135873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 859EAA02AF6
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 959AD1651F1
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3900156886;
	Mon,  6 Jan 2025 15:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="AdRV+Zs1"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6294C157A72;
	Mon,  6 Jan 2025 15:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736177917; cv=none; b=ovnYmYMQ/MX7uJNwOMFb4mDreC7xyWYlLZ7E/mbq5rANhPTuPXUYmpBRoyni+Zyg1J1MFEwTNrBFkZhkvAvKhoxOgPvVtdS40nWBwOgmo5LmZw1yRgX//9NSemF1wNkWN4YEp1TBE2YbjK+znnk/cYQR8e6a35obCnUzUKDaQEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736177917; c=relaxed/simple;
	bh=WDsG+XziiEJ+w/qz6L4f3MD8FC0uC/G0Ghc3VrhAcTI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XeNDMTj+39k9hfPsw9irQDWCTW3y1Tn9SVAxeDpXVozo0rI+BLEXzZrUP1DenHd1qsKeD5nSaT7xmaRizaaUOWVdQP/2UusLl6p6cLHk8QAkH72ZZZ82a5FsIiUc2xRzEF3xp0hNoApd9WYZ6Y2j5EPCg2911+tfiuz1FHH6E3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=AdRV+Zs1; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xIHJ3N6FbqQwLKdBookcSrozPRMb1anppfm1oqShOzQ=; b=AdRV+Zs1KfV5w9RyuCicb7IK1Z
	+PMU7vNfSRy8IV6SFLlggCMXeDf6Pmh2ruBGN8/XD9X/5CVAX2Uu6h269MkPrGjrbYMrOz5Uv0YEl
	UKa4HhfRoTnXZDDMfHmkOhWbEAXP2rktYfQJlWoi+IO1sf+aBB4F5Wki1f92TDZ0YvKoUsaew85Ky
	TOcws2XXplYBLYjrIYD8IwJ7zafd4j3xjZLxKhtCpx/uX8nNqmw5TqWcNO8QmNGBUzHIjKYTd7HC1
	avLKuunwyzsToQwCMMPkiCi6JQz4Xx5WuzM2bM3Pnc/Jft4bqB6TAhpxD+06DIpBnflsSSjW0rdIl
	h/csPflw==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUpBQ-0006Va-4T; Mon, 06 Jan 2025 16:38:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	mripard@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 0/3] Add HDMI support for rk3576
Date: Mon,  6 Jan 2025 16:38:11 +0100
Message-ID: <173617782282.2587484.17610708009808824460.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241231094425.253398-1-andyshrk@163.com>
References: <20241231094425.253398-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 31 Dec 2024 17:44:16 +0800, Andy Yan wrote:
> RK3576 HDMI TX Controller is very similar to that of RK3588, but with
> some control bits for IO and interrupts status scattered across different
> GRF.
> 
> PATCH 1/3 is add platform ctrl callback for IO setting and interrupts
> status handing.
> PATCH 2/3 ~ 3/3 are add support for rk3576
> 
> [...]

Applied, thanks!

[1/3] drm/rockchip: dw_hdmi_qp: Add platform ctrl callback
      commit: 3f60dbd40d3f7aca312d1aa1131e204eb97a68b3
[2/3] dt-bindings: display: rockchip: Add rk3576 hdmi controller
      commit: 3a5981b65f77bfb8abcc6f29c13f1b89ce9df3a3
[3/3] drm/rockchip: Add basic RK3576 HDMI output support
      commit: 36439120efbdc62e2f47053e7ddfcc4e34364640

I've fixed some minor stuff
patch1: my review nits (empty line + hardird)
patch3: drop Detlev's Signed-off
patches1+3: fixed some more checkpatch warnings


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

