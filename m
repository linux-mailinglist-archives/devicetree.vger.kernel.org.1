Return-Path: <devicetree+bounces-238365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4ACC5A74F
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:05:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BDE1A354E7B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 794CA325714;
	Thu, 13 Nov 2025 23:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="YP2vYy3g"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20F0329E51
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075088; cv=none; b=Fbmr2/lJdFu+dmiZliHVoMWtu3lJyTRw5JHaNNuGUE9DS9z2O7IyBECDqYHrkElrdDLqaTl+LGMJkn7jCd6RPLwiIx4tAzjZ7IWB3ppkuvjZzKyedWHQAxANgcOwI1Bvic+gaVQl66gSTFS9FsMLgI4q53qXz1G5+jqTxfdxT5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075088; c=relaxed/simple;
	bh=Pl56R4esjwAFBZEtMmols3+PtuUX1xUjj2f0umoUZ08=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hTIhZny9/3vXNkfDODdJ3Pd+aHFYs4EGkRVrJY6z+7/js660VFugziHmozwv/EMdH7lCdbSboYyoRfLQDUYTAoCfWNfazPENduuUfyBss1pdP2hC1GaGQeR/3DvD3v9fQ1tkT1WVlXviYXRio+27nGSXGqjggB9pHzF192VR6Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=YP2vYy3g; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=TGjiCjLsY9tI5cL4nDSBFe3+2NEuF0FspNqqQdwrCdI=; b=YP2vYy3gs2H7kWn+vbqXWQhwAn
	bzCLRtRBQOOuBGVN/N9SeNGeU+k7nmpRr5LG8jYY4CaYAcnQwRHskQiELzScZCjIaK1HBOL2Pw7AO
	9xBEUulSV0KjuVwEonSSNxkn8xfOwLaItTx3m7uUOUfBkV114Nvb9QrGMovn7I6UEH+2wBH4ZYOS+
	hid8szMq+6FYNdBbcDOIanNFsy11DUjcSn6YMszVKjGQ0g3pIs0vhBvPD7kD4594B6CSrlfCmyUiK
	P3qegZY+0BXnkB2bYSR2wnOFVNpEnHs9ediZ63FvFycSJyM/Qm/0Cqr8zXNEaD4Vj+DHCj+kvLdVb
	QCY7aKiA==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMn-0005bo-In; Fri, 14 Nov 2025 00:04:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pbrobinson@gmail.com,
	kylepzak@projectinitiative.io,
	damon.ding@rock-chips.com,
	sebastian.reichel@collabora.com,
	dsimic@manjaro.org,
	alchark@gmail.com,
	amadeus@jmu.edu.cn,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/4] Fix and improve EEPROM chip descriptions for Radxa ROCK 3C, 5A and 5C
Date: Fri, 14 Nov 2025 00:04:29 +0100
Message-ID: <176307502897.495066.5667820718032411897.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251112035133.28753-1-naoki@radxa.com>
References: <20251112035133.28753-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 12 Nov 2025 03:51:28 +0000, FUKAUMI Naoki wrote:
> This patch series fixes incorrect or missing entries related to the
> eeprom on the Radxa ROCK 3C, 5A, and 5C.
> 
> FUKAUMI Naoki (4):
>   arm64: dts: rockchip: Move the EEPROM to correct I2C bus on Radxa ROCK
>     5A
>   arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
>   arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
>   arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Move the EEPROM to correct I2C bus on Radxa ROCK 5A
      commit: 92e6e0b0e595afdda6296c760551ad3ffe9d5231
[2/4] arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
      commit: 3069ff1930aa71e125874c780ffaa6caeda5800a
[3/4] arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
      commit: 260316d35cf8f8606c5ed7a349cc92e1e71d8150

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

