Return-Path: <devicetree+bounces-252150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B1262CFBAEC
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A2C23102C5E
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B56D264A74;
	Wed,  7 Jan 2026 02:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggueNVGU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AB52641E3;
	Wed,  7 Jan 2026 02:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751814; cv=none; b=CjnyOk53c5uQmv3ATc/LZ5j/a+N27IDhptgT4X81EMeZw/qEapWHSpyUG7ErdOoiB0QGyK4gjqKPgABiYf8TJRKf08qqQOCumPxSyjwZxAdmZ0XG48IA8Xk5B6hxaO5tncxGtXKsDq+545hoJeHOSTLsjGDre9M3zBfx2zk8hbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751814; c=relaxed/simple;
	bh=Xsi2g7wNLM/uiPYx6ZLn31xLrO1oLlCANznqRmeCMQg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cPezUn7cIYXaA1nfJwG0QUMYg3WYLvrKoO+gE7peEpyhZ/VkpaMI32u5Uwo06PgGiAh/HuakdSjQDP+PCBWH8g5oPsfRWU9tnDHO/jLKuaYebc/oMOrk3D/o/ZSH1mBQaMDF5Gq/BQjM+LaTUTikOmdQPqIeY/XgzQ6anm5s8Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggueNVGU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCA15C2BCB1;
	Wed,  7 Jan 2026 02:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751813;
	bh=Xsi2g7wNLM/uiPYx6ZLn31xLrO1oLlCANznqRmeCMQg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ggueNVGUEpnT6zMcO3RsSbKkbZ/gg/pSTERTBXIHAE2H80qvsPF7wH2v+IAXQSM8X
	 U+NjPMD7tI4MKeGSfLdsqKrWfTzPJNXnVPOjc8TkKSxZ/jfDUIdXVSirXUsUxjAwCw
	 Ir1TCpg1urfkuyUx/xGroQz++qrAGPagpHR4KuRroHQkLgeT2MQfmDt6M8RljHorJ2
	 TdoiaZt/QVclm0xcBlYy7HD4ovTZI2b4PP6drBfwzCxeMKBDVueQM7YK0GhZP+HsTf
	 idENZRAjmxJLy0v06Wxgxdojv0G/Z2h9jIffe0IZx8XWyTLvRpgcsNSDVTUcdknygY
	 3tAlOT56TYTQA==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:46 -0600
Subject: [PATCH 07/13] arm64: dts: broadcom: stingray: Move raid nodes out
 of bus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-7-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

The 'raid' nodes are not MMIO devices and are not part of a bus, so move
them to the root level. Drop the unit-addresses as they don't have any
address.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../boot/dts/broadcom/stingray/stingray-fs4.dtsi   | 112 ++++++++++-----------
 1 file changed, 56 insertions(+), 56 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi
index cf3cb9199ce4..d704c4ab2147 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray-fs4.dtsi
@@ -51,68 +51,68 @@ raid_mbox: raid_mbox@400000 {
 			msi-parent = <&gic_its 0x4300>;
 			#mbox-cells = <3>;
 		};
+	};
 
-		raid0: raid@0 {
-			compatible = "brcm,iproc-sba-v2";
-			mboxes = <&raid_mbox 0 0x1 0xff00>,
-				 <&raid_mbox 1 0x1 0xff00>,
-				 <&raid_mbox 2 0x1 0xff00>,
-				 <&raid_mbox 3 0x1 0xff00>;
-		};
+	raid0: raid-0 {
+		compatible = "brcm,iproc-sba-v2";
+		mboxes = <&raid_mbox 0 0x1 0xff00>,
+			 <&raid_mbox 1 0x1 0xff00>,
+			 <&raid_mbox 2 0x1 0xff00>,
+			 <&raid_mbox 3 0x1 0xff00>;
+	};
 
-		raid1: raid@1 {
-			compatible = "brcm,iproc-sba-v2";
-			mboxes = <&raid_mbox 4 0x1 0xff00>,
-				 <&raid_mbox 5 0x1 0xff00>,
-				 <&raid_mbox 6 0x1 0xff00>,
-				 <&raid_mbox 7 0x1 0xff00>;
-		};
+	raid1: raid-1 {
+		compatible = "brcm,iproc-sba-v2";
+		mboxes = <&raid_mbox 4 0x1 0xff00>,
+			 <&raid_mbox 5 0x1 0xff00>,
+			 <&raid_mbox 6 0x1 0xff00>,
+			 <&raid_mbox 7 0x1 0xff00>;
+	};
 
-		raid2: raid@2 {
-			compatible = "brcm,iproc-sba-v2";
-			mboxes = <&raid_mbox 8 0x1 0xff00>,
-				 <&raid_mbox 9 0x1 0xff00>,
-				 <&raid_mbox 10 0x1 0xff00>,
-				 <&raid_mbox 11 0x1 0xff00>;
-		};
+	raid2: raid-2 {
+		compatible = "brcm,iproc-sba-v2";
+		mboxes = <&raid_mbox 8 0x1 0xff00>,
+			 <&raid_mbox 9 0x1 0xff00>,
+			 <&raid_mbox 10 0x1 0xff00>,
+			 <&raid_mbox 11 0x1 0xff00>;
+	};
 
-		raid3: raid@3 {
-			compatible = "brcm,iproc-sba-v2";
-			mboxes = <&raid_mbox 12 0x1 0xff00>,
-				 <&raid_mbox 13 0x1 0xff00>,
-				 <&raid_mbox 14 0x1 0xff00>,
-				 <&raid_mbox 15 0x1 0xff00>;
-		};
+	raid3: raid-3 {
+		compatible = "brcm,iproc-sba-v2";
+		mboxes = <&raid_mbox 12 0x1 0xff00>,
+			 <&raid_mbox 13 0x1 0xff00>,
+			 <&raid_mbox 14 0x1 0xff00>,
+			 <&raid_mbox 15 0x1 0xff00>;
+	};
 
-		raid4: raid@4 {
-			compatible = "brcm,iproc-sba-v2";
-			mboxes = <&raid_mbox 16 0x1 0xff00>,
-				 <&raid_mbox 17 0x1 0xff00>,
-				 <&raid_mbox 18 0x1 0xff00>,
-				 <&raid_mbox 19 0x1 0xff00>;
-		};
+	raid4: raid-4 {
+		compatible = "brcm,iproc-sba-v2";
+		mboxes = <&raid_mbox 16 0x1 0xff00>,
+			 <&raid_mbox 17 0x1 0xff00>,
+			 <&raid_mbox 18 0x1 0xff00>,
+			 <&raid_mbox 19 0x1 0xff00>;
+	};
 
-		raid5: raid@5 {
-			compatible = "brcm,iproc-sba-v2";
-			mboxes = <&raid_mbox 20 0x1 0xff00>,
-				 <&raid_mbox 21 0x1 0xff00>,
-				 <&raid_mbox 22 0x1 0xff00>,
-				 <&raid_mbox 23 0x1 0xff00>;
-		};
+	raid5: raid-5 {
+		compatible = "brcm,iproc-sba-v2";
+		mboxes = <&raid_mbox 20 0x1 0xff00>,
+			 <&raid_mbox 21 0x1 0xff00>,
+			 <&raid_mbox 22 0x1 0xff00>,
+			 <&raid_mbox 23 0x1 0xff00>;
+	};
 
-		raid6: raid@6 {
-			compatible = "brcm,iproc-sba-v2";
-			mboxes = <&raid_mbox 24 0x1 0xff00>,
-				 <&raid_mbox 25 0x1 0xff00>,
-				 <&raid_mbox 26 0x1 0xff00>,
-				 <&raid_mbox 27 0x1 0xff00>;
-		};
+	raid6: raid-6 {
+		compatible = "brcm,iproc-sba-v2";
+		mboxes = <&raid_mbox 24 0x1 0xff00>,
+			 <&raid_mbox 25 0x1 0xff00>,
+			 <&raid_mbox 26 0x1 0xff00>,
+			 <&raid_mbox 27 0x1 0xff00>;
+	};
 
-		raid7: raid@7 {
-			compatible = "brcm,iproc-sba-v2";
-			mboxes = <&raid_mbox 28 0x1 0xff00>,
-				 <&raid_mbox 29 0x1 0xff00>,
-				 <&raid_mbox 30 0x1 0xff00>,
-				 <&raid_mbox 31 0x1 0xff00>;
-		};
+	raid7: raid-7 {
+		compatible = "brcm,iproc-sba-v2";
+		mboxes = <&raid_mbox 28 0x1 0xff00>,
+			 <&raid_mbox 29 0x1 0xff00>,
+			 <&raid_mbox 30 0x1 0xff00>,
+			 <&raid_mbox 31 0x1 0xff00>;
 	};

-- 
2.51.0


