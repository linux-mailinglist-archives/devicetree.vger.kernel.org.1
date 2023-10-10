Return-Path: <devicetree+bounces-7410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C87897C4240
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 23:19:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BE38281ACB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA55225D5;
	Tue, 10 Oct 2023 21:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGTf4XPP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F7728EC
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 21:19:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A4C8C433C8;
	Tue, 10 Oct 2023 21:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696972786;
	bh=tv+SdkjqpYQgC1sYY9ll+xrYyN/dRUYD6fdO3FdTVo8=;
	h=From:To:Cc:Subject:Date:From;
	b=HGTf4XPP2tqFuTMmW4HxGXswGbpGvdXEKcAUwkZpuHCIhwN8/LH+5+e0zcjwINXt5
	 VgF0YGWLc+SEuQpXvx4aLd4MLUCmv0YW95sdKnw0tUuO1KS2SBMylyYjAA5ke8BYpA
	 +zxwwxnr9BnNShiRfGG4Kq2A7RkHTxMYGxhOdqWambM6stDzVgTZDNsRVUpz9Q0H0t
	 BVj7TFScb/x+N9rH7Mu7chvsGtmReTk2E5VTXabeoFlI08O7DgRw5RhQYAuPVxwR9g
	 Zr0iBd/P6D+DhV7CJGA31FL/090XM3bE9r4pchPWfksE3lrpBH0nGt8JPHWZvVkCws
	 oDApV+vhY3eXg==
Received: (nullmailer pid 1630047 invoked by uid 1000);
	Tue, 10 Oct 2023 21:19:45 -0000
From: Rob Herring <robh@kernel.org>
To: Andrew Davis <afd@ti.com>, =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm: dts: omap: Apply am57xx-idk overlays to base dtbs
Date: Tue, 10 Oct 2023 16:19:25 -0500
Message-ID: <20231010211925.1629653-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DT overlays in tree need to be applied to a base DTB to validate they
apply, to run schema checks on them, and to catch any errors at compile
time.

Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
 - Only test applying overlays when building all DTBs
---
 arch/arm/boot/dts/ti/omap/Makefile | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/ti/omap/Makefile b/arch/arm/boot/dts/ti/omap/Makefile
index d2b590004fed..d6ee4a247100 100644
--- a/arch/arm/boot/dts/ti/omap/Makefile
+++ b/arch/arm/boot/dts/ti/omap/Makefile
@@ -129,6 +129,16 @@ dtb-$(CONFIG_SOC_AM43XX) += \
 am57xx-evm-dtbs := am57xx-beagle-x15.dtb am57xx-evm.dtbo
 am57xx-evm-reva3-dtbs := am57xx-beagle-x15-revc.dtb am57xx-evm.dtbo
 
+am571x-idk-overlays-dtbs := am571x-idk.dtb \
+	am571x-idk-touchscreen.dtbo am57xx-idk-lcd-osd101t2587.dtbo
+am572x-idk-overlays-dtbs := am572x-idk.dtb \
+	am572x-idk-touchscreen.dtbo am57xx-idk-lcd-osd101t2045.dtbo
+
+# Build time test only, enabled by CONFIG_OF_ALL_DTBS
+dtb- += \
+	am571x-idk-overlays.dtb \
+	am572x-idk-overlays.dtb
+
 dtb-$(CONFIG_SOC_DRA7XX) += \
 	am57xx-beagle-x15.dtb \
 	am57xx-beagle-x15-revb1.dtb \
-- 
2.42.0


