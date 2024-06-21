Return-Path: <devicetree+bounces-78319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38769911E41
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 10:14:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3E5D2827DB
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5337716D4C8;
	Fri, 21 Jun 2024 08:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqyFqPmo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0DC16C865
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 08:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718957248; cv=none; b=jv1Z6AFKPcFPSlGGKiesTul8hGb6XAYGILcYik1ZeN+9wUGZpcZyBfSkgSeG1ccdxKIceFljcbTTndCGPL77fCSTUX4q5u2/sJ5d47AfyCqQ5VJT7ywHtJOpdK+bHlbt+QSw6nSi4+1QKHTs3GNwnij6l+IUlasE9YfTnrb8xvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718957248; c=relaxed/simple;
	bh=1QkgOztAYGhK2udxTzVzSKcc4uUQRYcY30IrA8sSEpY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=gMr74kWUk1HzrN5dxrWL1p9MVbNe9nOEDaJADuAefgcYsemEM7jkAwZDS3oJFy0QLCqdatAejWAvlLQGBVt3FWQVXDU8zIt0U7HmBrZOfreodbofDeaGftPoEOeXc7CvoTVuD+U+SbbJgzZxUDx3ATP1ZQJ/UZwO3wZ4/S7S3JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqyFqPmo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CA9DC2BBFC;
	Fri, 21 Jun 2024 08:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718957247;
	bh=1QkgOztAYGhK2udxTzVzSKcc4uUQRYcY30IrA8sSEpY=;
	h=From:List-Id:To:Cc:Subject:Date:From;
	b=ZqyFqPmoOZfY9GYJI2n33VZVtSp/Rm2lWYkThA9Q/jh8cT3mG2Ew2gvFmgzEcnWg5
	 VRPmtQ9TmaOIRqxBVdDguYRfgNgWdzrTSeaUnsl004X4aoRhrwiAa/fnbpAIDHPzS6
	 9tzsXI6zjgMeD7+aoAdjUSKXlD1eSB9Sr3eo4w9ya9S9/PVIaztCllMMUnESDtXvo0
	 lqBI1ONIPPRHjdTjPaVJ8GtDNkIIph+iDU/wv8P7gviHnkhRo4TEYIIV2sYiNJv6Z+
	 vwqdaPqen4TzLt5/9DdgJwgiTKFfPxWGSOc0jR9PjlqITxhNiREKqXhi2TPHwCgOfM
	 iRREFmeogj6BQ==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	soc@kernel.org
Cc: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH 1/2] ARM: dts: armada-{370-xp,375,38x,39x}: Drop #size-cells from mpic node
Date: Fri, 21 Jun 2024 10:07:19 +0200
Message-ID: <20240621080719.20380-1-kabel@kernel.org>
X-Mailer: git-send-email 2.44.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The marvell,mpic interrupt controller has no children nodes. Drop the

Signed-off-by: Marek Behún <kabel@kernel.org>
---
 arch/arm/boot/dts/marvell/armada-370-xp.dtsi | 1 -
 arch/arm/boot/dts/marvell/armada-375.dtsi    | 1 -
 arch/arm/boot/dts/marvell/armada-38x.dtsi    | 1 -
 arch/arm/boot/dts/marvell/armada-39x.dtsi    | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/marvell/armada-370-xp.dtsi b/arch/arm/boot/dts/marvell/armada-370-xp.dtsi
index 0b8c2a64b36f..954c891e5aee 100644
--- a/arch/arm/boot/dts/marvell/armada-370-xp.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-370-xp.dtsi
@@ -168,7 +168,6 @@ mbusc: mbus-controller@20000 {
 			mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				#interrupt-cells = <1>;
-				#size-cells = <1>;
 				interrupt-controller;
 				msi-controller;
 			};
diff --git a/arch/arm/boot/dts/marvell/armada-375.dtsi b/arch/arm/boot/dts/marvell/armada-375.dtsi
index ddc49547d786..99778b4b7e7b 100644
--- a/arch/arm/boot/dts/marvell/armada-375.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-375.dtsi
@@ -376,7 +376,6 @@ mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
 				#interrupt-cells = <1>;
-				#size-cells = <1>;
 				interrupt-controller;
 				msi-controller;
 				interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/marvell/armada-38x.dtsi b/arch/arm/boot/dts/marvell/armada-38x.dtsi
index 01d2288bbdae..1c84cc317560 100644
--- a/arch/arm/boot/dts/marvell/armada-38x.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-38x.dtsi
@@ -408,7 +408,6 @@ mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
 				#interrupt-cells = <1>;
-				#size-cells = <1>;
 				interrupt-controller;
 				msi-controller;
 				interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/marvell/armada-39x.dtsi b/arch/arm/boot/dts/marvell/armada-39x.dtsi
index 9d1cac49c022..6d05835efb42 100644
--- a/arch/arm/boot/dts/marvell/armada-39x.dtsi
+++ b/arch/arm/boot/dts/marvell/armada-39x.dtsi
@@ -268,7 +268,6 @@ mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
 				#interrupt-cells = <1>;
-				#size-cells = <1>;
 				interrupt-controller;
 				msi-controller;
 				interrupts = <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.44.2


