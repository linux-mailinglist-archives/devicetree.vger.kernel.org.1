Return-Path: <devicetree+bounces-24192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFC280E55F
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:01:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3AE5BB20B61
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BBCF1802F;
	Tue, 12 Dec 2023 08:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="hQvLYRY9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E879A7
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 00:01:43 -0800 (PST)
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702368101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Uw1YrEybevd9HF4xwjYGawuiyd2PZL5+wBt8RL8bJb8=;
	b=hQvLYRY97Wr1DmQ8FvsixZ7qeSf6hDhGtwl2+lokKwqRKMeUKcy5iHV3qg1me+XWGkr/s8
	6If/Cjhu0m3ZDZBRNAa/c4mkKvtJpUh2yR/HaHJEbt6nBfekovyouOjRZiKHb2a83RVX4I
	kJS7bxWdh37d45HNz88inW09KJ86682aXXmElQBvcbO1NSJ/1cD8SITqP2icApPl/X56Pn
	LEPwuuYAF7bo33D6oZVLNR+smIY0uUzqui5yV+ZgR+uaZhJqgGU7E4f0Sf+FVUwGTG8cDu
	/ZX3eLTXHsBzihFatKdbMtpYEf6V0rzFORKwLK2Z+RyVDTMiDOzGyGrb7M4x5A==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: Add ethernet0 aliases to the dts files for RK3566 and RK3588(S) boards
Date: Tue, 12 Dec 2023 09:01:38 +0100
Message-Id: <cover.1702368023.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

To complete the process started with the migration of the ethernet0 aliases
from the SoC dtsi files to the board/device dts(i) files, started in [1],
let's add ethernet0 aliases to the board dts files that had it missing.
See also [2] for a related discussion.

At the same time, let's remove the ethernet0 alias from one SoM dtsi file,
which doesn't enable the GMAC, and add the same alias back to the dependent
board dts files, which actually enable the GMAC.

All these patches result in a rather clean situation when it comes to the
Rockchip arm64 device-tree aliases.

[1] https://lore.kernel.org/linux-rockchip/cover.1702366958.git.dsimic@manjaro.org/T/#u
[2] https://lore.kernel.org/linux-rockchip/5119280.687JKscXgg@diego/T/#u

Dragan Simic (2):
  arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3566 boards
  arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3588(S)
    boards

 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts   | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts     | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts         | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts         | 1 +
 10 files changed, 18 insertions(+), 1 deletion(-)


