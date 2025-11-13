Return-Path: <devicetree+bounces-238366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ED4C5A7AF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:10:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 94C434EF6EE
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABA052F290E;
	Thu, 13 Nov 2025 23:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="wONSgeB7"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB082E0B5A
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075100; cv=none; b=egLRqOuVhvzdnmkRbUvo5tPSgkbdbPegBn8AccobD8jykZuL+dBb7e0aQfo91hajhv3fuDpG1DoMfJHnNdYoQTDmb4JUg3ASwSaC4t35Nm9yAyhw2qPo36VPWEPGeZNYphpQuCGqwsKfvUAOTccTyggLGUTiD9GagxYXJq8Vp5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075100; c=relaxed/simple;
	bh=uKp0xwQj5PMtFGCiCnalQr7VWkarwbSoJin7rVWCivw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U0kDRSL1NZfhOts8gtbQZtXsh4tLNwU912/pvTl7CXWeRkHlL2cczp6wnq8YzNRGAB024iLKIH8DB82fpGZVeGtr9mGutiGIYNC7pCvpv5YHILo8e93k2c3gJYXo9kthJvYd8ELPD6pDcFe9m0EJNgL5Q13+QEXpw0yzflBXOfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=wONSgeB7; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ZJCp3P0F4Jj0K3+/vv6V9OliuL+KNxuUlmKGEYBzIeY=; b=wONSgeB7byNxYEkgaoMudJUvqR
	uEsyYNyzlJrfKhPlK8vtLsIGEQnYc0oKqpnbtpTuKSiWfA82LiAA4BDTf1iiLsUblARDcanBBMobI
	1GmPo+nhfmKDHJZl7cDj7ynpGteqJEZc3JNuWm5ZoGwxJCZYEg2VZpwy32hy9ZgaFnmG2a7PZKLni
	zD5zBxvO4PcpB0kTTsQYBk+s3FhD/TCiX0cPEqFOf+QVQzNZHlw295QO8YbBtXlecZdR0nfHsfT/i
	poQ+ynihZvDaMM8tlUaKdXB/YhQj1ldo2iEjuP4MpU8u4E3ChuDf+QtbTw9OzLSnlkTQHsBQb0Nm6
	6nmZgA6A==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMn-0005bo-1O; Fri, 14 Nov 2025 00:04:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	liujianfeng1994@gmail.com,
	dmitry.baryshkov@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	andy.yan@rock-chips.com,
	nicolas.frattaroli@collabora.com,
	dmitry.osipenko@collabora.com,
	detlev.casanova@collabora.com,
	didi.debian@cknow.org,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	kylepzak@projectinitiative.io,
	dsimic@manjaro.org,
	alchark@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Fixes and improvements to sdmmc descriptions for Radxa ROCK 5 ITX/5B/5B+/5T/5A/5C
Date: Fri, 14 Nov 2025 00:04:28 +0100
Message-ID: <176307502893.495066.1213119327156938500.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251111071730.126238-1-naoki@radxa.com>
References: <20251111071730.126238-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 11 Nov 2025 07:17:27 +0000, FUKAUMI Naoki wrote:
> This patch series fixes microSD card detection for ROCK 5 ITX/5C and
> improves sdmmc properties for ROCK 5 ITX/5B/5B+/5T/5A/5C.
> 
> FUKAUMI Naoki (3):
>   arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5 ITX/5C
>   arm64: dts: rockchip: Add sdmmc pinctrl for Radxa ROCK 5
>     ITX/5B/5B+/5T/5C
>   arm64: dts: rockchip: Remove sdmmc max-frequency for Radxa ROCK 5
>     ITX/5B/5B+/5T
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5 ITX/5C
      commit: c7a9549ce46e7422e96e2b677ab578b32b3eef25
[2/3] arm64: dts: rockchip: Add sdmmc pinctrl for Radxa ROCK 5 ITX/5B/5B+/5T/5C
      --> merged into patch1 ... property and pinctrl should be in the same patch

[3/3] arm64: dts: rockchip: Remove sdmmc max-frequency for Radxa ROCK 5 ITX/5B/5B+/5T
      commit: 57bd160290f39ee90bc51b4daa224b481d726480

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

