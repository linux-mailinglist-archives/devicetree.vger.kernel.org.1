Return-Path: <devicetree+bounces-79415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6232F91535E
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 128EE2820DA
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0484619E814;
	Mon, 24 Jun 2024 16:20:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8434719E808
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246034; cv=none; b=AE4pei0jNLgbatXjWz2VjlNYdRJu1rOF8+UlKcgVsrzUcvhbScL403JMzioO+2lne/4ac8Ofi/HnGER1FXLfZnO14PcVu0fHRJzgQ6VK1roszbtWBW8o8SvyKM/jGLFJnjls1NTVlklLOlb+sN2nD0IiIG0xf2CyZA0VRtnbp7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246034; c=relaxed/simple;
	bh=WEuLJiFUIbbP6OtmqnF5NsbR8fAAX77/f3D71khxTY0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MzYG6/xsf3KMNLoD7MQIbLOqKFh+06xQDgU9b/l/+d7PzgPayqXHS+XwJ5RSFHLrI4+0FRDnz5pqah7M5nA+sp3+KdX++PR4FVxIwSAzDbpofEuR6dkPPlRrMMXm2ItYn61GAWaxdlsa9qOOHt0Oxt1NGhEAVvCXE99rkdEKHJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQb-0001wn-FW; Mon, 24 Jun 2024 18:20:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	jonas@kwiboo.se,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
Date: Mon, 24 Jun 2024 18:20:18 +0200
Message-Id: <171924573797.612064.8311697388124103809.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240620224435.2752-1-naoki@radxa.com>
References: <20240620224435.2752-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 21 Jun 2024 07:44:35 +0900, FUKAUMI Naoki wrote:
> align with other Radxa products.
> 
> - mmc0 is eMMC
> - mmc1 is microSD
> 
> for ZERO 3E, there is no eMMC, but aliases should start at 0, so mmc0
> is microSD as exception.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
      commit: 060c1950037e4c54ca4d8186a8f46269e35db901

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

