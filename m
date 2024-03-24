Return-Path: <devicetree+bounces-52781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B328881CD
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 00:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05A4F1C21F7B
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 23:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0BEF16F8E6;
	Sun, 24 Mar 2024 22:39:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EAF16F26E
	for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 22:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711319951; cv=none; b=oHGZycliKl/Lp3UVO/corE9iy+V2NeCT9K2/iDnd+SJZbCOgIUAe0gzhVlvuKmVo92+KCdlpUGeN+fCTW/mslayh+GXy9uTBlTyjg9jOzRAv1QMdaXZt5M0exd/iuCOYK4FuDaG2xS9Ys5QI4ECckqpWTKllQd7OCBe1hpcwl0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711319951; c=relaxed/simple;
	bh=vjoJ+b5SvNtOnocXEIfbzK1QAQbTEfKxQVNPFKLsJ7c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BS9KSNxdx68+VPGezxlBwMkG/b7VHi/eL6lvq3/YDH6ae8lK2a/ICWEev/CMqE1LFyN5WREvsLO1XG+64tBCcJUm39zBfUPuTpkgbSUYx6Pl26crGrxEkDo23jOv0ejU0T5lNLG1idiNos+1vYu+i33a+Fz/ALwYpDQiI8cNW3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUW-0007sn-JL; Sun, 24 Mar 2024 23:39:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Anand Moon <linux.amoon@gmail.com>,
	krzysztof.kozlowski+dt@linaro.org,
	Diederik de Haas <didi.debian@cknow.org>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x
Date: Sun, 24 Mar 2024 23:38:54 +0100
Message-Id: <171131986742.918919.14022674824297453334.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <2dee6dad8460b0c5f3b5da53cf55f735840efef1.1709957777.git.dsimic@manjaro.org>
References: <2dee6dad8460b0c5f3b5da53cf55f735840efef1.1709957777.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 9 Mar 2024 05:25:06 +0100, Dragan Simic wrote:
> Add missing cache information to the Rockchip RK356x SoC dtsi, to allow
> the userspace, which includes lscpu(1) that uses the virtual files provided
> by the kernel under the /sys/devices/system/cpu directory, to display the
> proper RK3566 and RK3568 cache information.
> 
> Adding the cache information to the RK356x SoC dtsi also makes the following
> warning message in the kernel log go away:
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x
      commit: 8612169a05c5e979af033868b7a9b177e0f9fcdf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

