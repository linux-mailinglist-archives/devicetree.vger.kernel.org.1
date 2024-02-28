Return-Path: <devicetree+bounces-46737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CB986AB05
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 10:16:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF9F51C211F6
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 09:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E274D2E635;
	Wed, 28 Feb 2024 09:16:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E7F2DF87
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 09:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709111799; cv=none; b=Ly6APBFipNGKcifAtoxeMLYSf2Y6k0YQRauNIRG1NhwAdV3j+1tt7+hJT8B/BI4p33pz6zarAhVlI72IpU9xvNtAqqEEhBVxpJlcUNtBsFWff5lfaLIExAkR/340bHbGCr9mNFf046jJVup4F5cec5Za/zbSpWTs2horDv6O4hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709111799; c=relaxed/simple;
	bh=3dFc71jP/+GszjHx7lO9XvMBVG1YBQDDdEItdDO1BQo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=X8p1AbEEWf3jygHuF6/5PUhtBa3XBYWIX6ZpuNEw9sRlPK1lryYpHO17jE9hC0gf2O/sSE+DEDUsev5Gx6akuPADkEyqPGG8p4v8Y/8ZCRlmrxrdXIOrwik75LKMLyZ7J9vLqofCgZkxVI5z+wwg052W7PaOIbD/St4qqrjC0ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfG3H-00084W-Fc; Wed, 28 Feb 2024 10:16:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add clock to vo1-grf syscon on rk3588
Date: Wed, 28 Feb 2024 10:16:33 +0100
Message-Id: <170911177587.875264.1381742140394546968.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240227210521.724754-1-heiko@sntech.de>
References: <20240227210521.724754-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 27 Feb 2024 22:05:21 +0100, Heiko Stuebner wrote:
> The VO*-general-register-files need a clock, so add the correct one.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add clock to vo1-grf syscon on rk3588
      commit: 2047366b9eff8fada2a118588b0478de6e92d02c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

