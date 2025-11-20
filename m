Return-Path: <devicetree+bounces-240855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF59C767AA
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 9819F315F8
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 22:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC6935E53D;
	Thu, 20 Nov 2025 22:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="OBm2keIB"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37327368E1B;
	Thu, 20 Nov 2025 22:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763677407; cv=none; b=fUccU89M+dnjk1AKjLPW7y19yu3/FEb2EFwV+vhcKxbJz1SK5OYkcuqrAfJQ+QXTtc/TkAb04ARXTahy5jjj3AfFlNa1+Nc+JUQreyJXNHeVMddowOQYTyfP07ZGSE7PUojQ67xbr9EaFKR03rUqgXeDGCJe56ecBg9eTnuxMmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763677407; c=relaxed/simple;
	bh=ejVnv1bnyklqjkCZheN/H2llkAfJPhj3VzGyqXP+0qY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JiwlyVxByi0cW4QXxZM0CwVWBCkExoH+AsD48LiDr2nTEUcTG9PocMIJgu4Cpw/rB3ZSCHtiaA0UPEJcMi7a24ZXWJNkOTjgYchXvMFb5KjLJr1ghI5wo/eyr/Hgu/sQqmwV1lyqujgyH5Rby96YGJcsMTXYuGRUgkbW6OCDPVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=OBm2keIB; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OyW98MyVGluZyeY1kwgWwup1uQtdsCROzoZ+Bj7trA4=; b=OBm2keIBPeVxXl+78MDMqh3qqc
	wNc1Ueesv/PDgbLlCqouIVleCKjusPwyFQ8/yj77Ku6fK02e6xZQOm06yBeCD+W2+X/1rHnEygAhl
	/rt0b79HeoXK7/8K7BZG9TiP25tYxrnaGdH7ry8RdQyiOiGAjHMcYKfros3O1PBg72arfQgxeVYPZ
	VPp7xjEhbA3l1rxKsL7wc3bwZ4jw6rvUJea8DbwrnT9df4I0SCCqkdpmAhih3d5a4yMT/dmXuDaQX
	P0B0UmvEg8cdac1QlC7/7UqcdVRYRP51d8bTTc3TREsCshxJkJOfYH2aiWdKJr4oAtBAaQSFHb24l
	BLkzUNew==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3X-0007Je-V9; Thu, 20 Nov 2025 23:23:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com
Subject: Re: (subset) [PATCH v2 0/9] General RK3368 HDMI support and 2 outputs for RK3368-Lion
Date: Thu, 20 Nov 2025 23:23:00 +0100
Message-ID: <176367711171.9778.9000322898026906278.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021074254.87065-1-heiko@sntech.de>
References: <20251021074254.87065-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 21 Oct 2025 09:42:45 +0200, Heiko Stuebner wrote:
> This series adds the necessary bits for HDMI output on RK3368 and enables
> this on RK3368-Lion. At the same time, use the recently added DSI support
> to enable the generic Video-Demo-adapter as an overlay on Lion as well.
> 
> 
> The reason I'm shaving this Yak is that the recently added DSI support
> created DTC warnings about a single endpoint with an address.
> 
> [...]

Applied, thanks!

[4/9] arm64: dts: rockchip: Add power-domain to RK3368 DSI controller
      commit: 8319be65e860a2881e5213ed95e03992037bf5c1
[5/9] arm64: dts: rockchip: Add power-domain to RK3368 VOP controller
      commit: f54b09d46f72e4548e14476ba771231b0ec2b0af

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

