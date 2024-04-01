Return-Path: <devicetree+bounces-55192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E83E8946CC
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 23:55:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FDE31C21568
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 21:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E3255C26;
	Mon,  1 Apr 2024 21:55:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA08535B7
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 21:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712008546; cv=none; b=W9dRCnsOLUoc09XSxBUZYvWu/iWS4xZSlAPBS6huSdXhs2rFr86URYTKihL+LpNU4zMtknvkmPyMA7Ai6hj8gQdX2ZBFmCKwzufvHjgoSUxMeF0kD1MjDk0v96oyXY3ZuBrmHLAGBEDJD57O5FnY5UKapNx4pam6+ERWam4h8rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712008546; c=relaxed/simple;
	bh=A7w1M7z5AqLD03eIXwWfjHXNONaVGWsY2LUbOmkOHK4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=etvwhaCEsFXfwIVpfaK+0jDCPXV7xKq+7VZtZtuM4C3UdGE8Ptcv2/Ffr7P5dTrGFJi2wXXeBLvchhDAHPP3eoaU9vCbtni9Gbdm+A1qRtj20FsiWPd6Q2JxLy+jXUcBPy6XnOqw4+nhN1cU94DLJKviveBcIj2D4fE8bCHKfKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rrPct-0008FL-J2; Mon, 01 Apr 2024 23:55:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Remove unsupported node from the Pinebook Pro dts
Date: Mon,  1 Apr 2024 23:55:31 +0200
Message-Id: <171200852040.1394042.4883299945962544319.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <0f82c3f97cb798d012270d13b34d8d15305ef293.1711923520.git.dsimic@manjaro.org>
References: <0f82c3f97cb798d012270d13b34d8d15305ef293.1711923520.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 1 Apr 2024 00:20:56 +0200, Dragan Simic wrote:
> Remove a redundant node from the Pine64 Pinebook Pro dts, which is intended
> to provide a value for the delay in PCI Express enumeration, but that isn't
> supported without additional out-of-tree kernel patches.
> 
> There were already efforts to upstream those kernel patches, because they
> reportedly make some PCI Express cards (such as LSI SAS HBAs) usable in
> Pine64 RockPro64 (which is also based on the RK3399);  otherwise, those PCI
> Express cards fail to enumerate.  However, providing the required background
> and explanations proved to be a tough nut to crack, which is the reason why
> those patches remain outside of the kernel mainline for now.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Remove unsupported node from the Pinebook Pro dts
      commit: 43853e843aa6c3d47ff2b0cce898318839483d05

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

