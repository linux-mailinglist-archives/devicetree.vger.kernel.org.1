Return-Path: <devicetree+bounces-81663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C17D91CFFA
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 05:32:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 875B0282281
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 03:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F217F22071;
	Sun, 30 Jun 2024 03:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="WD390ACG"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074962F2F
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 03:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719718325; cv=none; b=LQeuYiv41P0RkwU+HjvAkL+ZNOddeXREkAKCBR+zxQ1s881F2Xqd1ZVKsPYjgHDAV+eUuZavA0QD9l3Et3jHiZ8K8PpX1AJhO48cqIVOoJGCq61zFp0HFfPxR79HpEpnG2w7eiMQbTkvR7Kgz2MJfUcVR65YVkMcw7jh32ejP3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719718325; c=relaxed/simple;
	bh=9PE1VnkLJiIYhask0bticQYdRnOudaaMZ8wenO/itjY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ltQVLEpH8YQnXsu6/bL/YoOpH9SCkIirGk71vj90loqii1PxpjyP+reibvSsCs4Je78VNchQagxMhx42dC2iDNxV/9PTdRVCw6oriWLKg/5WvuMvXf5tIgf6rxoN7SaEeS1z43w6xxqYsPMqRI3rCm8YOw/WYrCa0tYji6PjPi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=WD390ACG; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 12BB287C7E;
	Sun, 30 Jun 2024 05:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719718321;
	bh=oqmDix33sDya+rZsxmCugECpX0hjrZYeCSrv9gvcrBU=;
	h=From:To:Cc:Subject:Date:From;
	b=WD390ACGlzzwBQ2UbVqhMbdCq8dUk801juJGrH4tndJqz7U2XrV1MNIFv/Oqi6uf8
	 aKIiThh2LvAThIJD+lNHgAfBkNz3ITY7kRvZLf+PAURhcGy9/FA0Slvlp/sR4ZNO/Q
	 /k1R5euReZgpbmpUPJ325KRveYIHwbJ/uL6CLwiAJoQ1y2pjhI8o19As12DBy7jScc
	 ZgYjg7yNlxeboYdjeI6Fk/lcRx5PysnW+shCkMoDTbuv/us50F5lroEEbiAeNuYr5h
	 tJKUaGZMxWFgVKA0RB0zLCYepOV4tWurK1u1t8GfJjDqOCIwBck9HimK0XRmt7jQxw
	 B7UEiLsrw2RLQ==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: andrew@lunn.ch,
	kernel@dh-electronics.com,
	Marek Vasut <marex@denx.de>,
	kernel test robot <lkp@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: apm: storm: Rename menetphy@3 to ethernet-phy@3
Date: Sun, 30 Jun 2024 05:31:10 +0200
Message-ID: <20240630033143.170301-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Make the PHY node name adhere to DT binding document.
Fix the following DT check error:

"
arch/arm64/boot/dts/apm/apm-mustang.dtb: menetphy@3: $nodename:0: 'menetphy@3' does not match '^ethernet-phy(@[a-f0-9]+)?$'
        from schema $id: http://devicetree.org/schemas/net/realtek,rtl82xx.yaml#
arch/arm64/boot/dts/apm/apm-mustang.dtb: menetphy@3: Unevaluated properties are not allowed ('reg' was unexpected)
        from schema $id: http://devicetree.org/schemas/net/realtek,rtl82xx.yaml#
"

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406290316.YvZdvLxu-lkp@intel.com/
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Khuong Dinh <khuong@os.amperecomputing.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
---
Note: this closes only part of the report
---
 arch/arm64/boot/dts/apm/apm-storm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/apm/apm-storm.dtsi b/arch/arm64/boot/dts/apm/apm-storm.dtsi
index 532401bc9c660..6ad4703925dc5 100644
--- a/arch/arm64/boot/dts/apm/apm-storm.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-storm.dtsi
@@ -997,7 +997,7 @@ mdio {
 				compatible = "apm,xgene-mdio";
 				#address-cells = <1>;
 				#size-cells = <0>;
-				menetphy: menetphy@3 {
+				menetphy: ethernet-phy@3 {
 					compatible = "ethernet-phy-id001c.c915";
 					reg = <0x3>;
 				};
-- 
2.43.0


