Return-Path: <devicetree+bounces-81635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E8391CE6D
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 19:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC56CB21362
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 17:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A239412FF83;
	Sat, 29 Jun 2024 17:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTs49XYf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F44321364
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 17:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719683537; cv=none; b=ueOX6uGIMq7bNtXbpNuFsz0IAc1bw6pS5AG77oowtSCjhd+MIWibnkeI1lJSfkrRNDqAd7VihMaCKywH0vkYs7U/52h7aNZfy5jY+GbmrVgJpsuO8dgZUOpuAR8w+ZEXlLmVc6HjfDC2XABTSfUIdCb/M6Src4feOIhYXKhTjzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719683537; c=relaxed/simple;
	bh=gVIxk8cHCVHUdA3fTQzmUY1+r/VjucLVQod4LejfzhI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IFeF5CBNE/SbKEVd99DohTotH0Wo4wq3UiMVHK7mlE9bTNAGxCSMJjQSfsPT0QbhfqOrbteDW8js7Mmc3ErNluiyp28xHWPTkVdqQcDx0rYb+4UuMiutjSJIGKxvviPm2EuOkZoFWBJUE/ScREQhaYLkuaoSUKlMCMSpRMNlioA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTs49XYf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C273AC2BBFC;
	Sat, 29 Jun 2024 17:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719683537;
	bh=gVIxk8cHCVHUdA3fTQzmUY1+r/VjucLVQod4LejfzhI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TTs49XYfP3ql5lIR6MW6ictTaIjmRBmIZoBsUXFdretopDobLw2UkMRTJ0BFLJ+3o
	 9dBCeW6gnK5+gjDVs7V2t52KeL/3Yn6xIfrzt0oK7ACLQwZ/iX5xHSf+PkjQaNkmNu
	 lHrFVM1icb731iQ1EdvvMDIWOQVdsrTPF82JEV/Wn561vvtpZTAJJ732mseq544Vr7
	 TU2Tmn0WEoKh7x2V11PPo4Mvw2i3yu+8YU2bVO7tuzWk81BPh6g36s6QdZHMJm+N7y
	 GLpr9BLHSpmOWLdK8ac0iqpn8AaGqgiT5mgV4osMjftqSptjXM0GhOupfvGmNNtJYj
	 tQ2lczTcCjtEA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 1/2] dt-bindings: phy: airoha: Add dtime and Rx AEQ IO registers
Date: Sat, 29 Jun 2024 19:51:48 +0200
Message-ID: <a018329ff9678f3360bc6381294f95c62d34f3e3.1719682943.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1719682943.git.lorenzo@kernel.org>
References: <cover.1719682943.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Tx-Rx detection time and Rx AEQ mappings in Airoha EN7581
PCIe-PHY binding. This change is not introducing any backward compatibility
issue since the EN7581 dts is not upstream yet.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bindings/phy/airoha,en7581-pcie-phy.yaml      | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
index e26c30d17ff0..98fcb1b364de 100644
--- a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
@@ -21,12 +21,18 @@ properties:
       - description: PCIE analog base address
       - description: PCIE lane0 base address
       - description: PCIE lane1 base address
+      - description: PCIE lane0 detection time base address
+      - description: PCIE lane1 detection time base address
+      - description: PCIE Rx AEQ base address
 
   reg-names:
     items:
       - const: csr-2l
       - const: pma0
       - const: pma1
+      - const: p0-xr-dtime
+      - const: p1-xr-dtime
+      - const: rx-aeq
 
   "#phy-cells":
     const: 0
@@ -52,7 +58,12 @@ examples:
             #phy-cells = <0>;
             reg = <0x0 0x1fa5a000 0x0 0xfff>,
                   <0x0 0x1fa5b000 0x0 0xfff>,
-                  <0x0 0x1fa5c000 0x0 0xfff>;
-            reg-names = "csr-2l", "pma0", "pma1";
+                  <0x0 0x1fa5c000 0x0 0xfff>,
+                  <0x0 0x1fc10044 0x0 0x4>,
+                  <0x0 0x1fc30044 0x0 0x4>,
+                  <0x0 0x1fc15030 0x0 0x104>;
+            reg-names = "csr-2l", "pma0", "pma1",
+                        "p0-xr-dtime", "p1-xr-dtime",
+                        "rx-aeq";
         };
     };
-- 
2.45.2


