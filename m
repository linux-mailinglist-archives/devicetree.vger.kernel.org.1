Return-Path: <devicetree+bounces-245946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A83E1CB7054
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 20:40:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADFE630321D7
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 19:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA1E92C3257;
	Thu, 11 Dec 2025 19:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp+S2Wsz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 910561D618A;
	Thu, 11 Dec 2025 19:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765481943; cv=none; b=CzyljhGNm5unLtRiUY6fwl7h9DJoa6E2SlxqRwAMNiPFspPRzJUisTywfJJ8SeejPzH1J3vlHLNTr2TZSFeOVirb5BhJ4f+b551dbStA/5jCVJmPD+X7eYGy2RBwixBlQnZNcFNk19MjQwaORli6OBc8HpwTI4gsimbk5E5Myv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765481943; c=relaxed/simple;
	bh=Xl69JDXYKkAoSKOBQC90OSMp2s2zRXEzwzcWdfo54LA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hDvCjsxE1Al+AqGmDGrzAToqHI+vl9eGnQ5pmO4aAQ2ozws0XWdOV5hJvZBRgU4/2V+z6dvGSvRd365I8w2hkiISHd85CI38jOn0fWpDa3bGtHh5oA2bT+UGVvN+B1SL6QIZY0IafX4Cxyj/5SEj3125Mt0YGAnnUffmyYkTw5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp+S2Wsz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A37ACC4CEF7;
	Thu, 11 Dec 2025 19:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765481942;
	bh=Xl69JDXYKkAoSKOBQC90OSMp2s2zRXEzwzcWdfo54LA=;
	h=From:To:Cc:Subject:Date:From;
	b=Mp+S2WszdjG6CT8Ev3tfBpEdcGkU3dIakM4u7BxVLc1bFl+3UuGyLHjfPxCEV/5xA
	 9SEuGxInGg8baIvD3S7MBr2Xh+DMRvEAzE41g2y6LUY4sca+0igZYkp4llbn6+fg7X
	 P8Sf/+n6K7nwrdvZYEnyr6CZ9tpV0VKpRJigkGzEoyl4Ix7UQ42fgL8NBeIiRes5Wz
	 n4QvbR+KDIwd0wcTTqh2mFSVHtGuo5uBQtB4QWSg6r57PgeZ7UhS3SitVKOob0Yfiw
	 qHJ5e3OwGnOHPfnOfkxlCTmngBO5Lbjs0Y6y90LnK/6tXD5FBYFgqAeF4sIHf0oe2I
	 HH+3mGPypf/GQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: broadcom: bcm2712: Drop rp1 overlay
Date: Thu, 11 Dec 2025 13:38:53 -0600
Message-ID: <20251211193854.1778221-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It's a requirement that DT overlays be applied at build time in order to
validate them as overlays are not validated on their own, but the
rp1.dtbo is not applied to anything. The rp1.dtso overlay doesn't work
on its own as there are additional settings needed as seen in
bcm2712-rpi-5-b.dts. In addition, the 'rp1_nexus' node is applied to the
wrong place in the DT as it should be under a PCIe root port rather than
the host bridge. There's also a duplicate overlay in drivers/misc/rp1/.

For these reasons, just drop the overlay to fix the warning until all
these issues can be fixed.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
The missing applying of rp1.dtbo is now a warning in v6.19-rc1. This
should be sent to Linus ASAP.

v2:
 - Drop the overlay instead of trying to rework. The addition of
   ethernet0 alias complicates that.
---
 arch/arm64/boot/dts/broadcom/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index 83d45afc6588..031875a277d7 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -14,8 +14,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2837-rpi-3-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
 			      bcm2837-rpi-cm3-io3.dtb \
-			      bcm2837-rpi-zero-2-w.dtb \
-			      rp1.dtbo
+			      bcm2837-rpi-zero-2-w.dtb
 
 subdir-y	+= bcmbca
 subdir-y	+= northstar2
-- 
2.51.0


