Return-Path: <devicetree+bounces-66529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C661D8C370F
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 17:28:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80CA828129D
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 15:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C73C13E479;
	Sun, 12 May 2024 15:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVlAsSFO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2144381DA
	for <devicetree@vger.kernel.org>; Sun, 12 May 2024 15:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715527700; cv=none; b=VK7xnZ1rm9EA9GCk24F95bp3r83RNbiKMtEWBjGBzDM+8UKRFB93hBSAebhH/yLN3CgwabVRaW7t4gvKL427iJcXd0/MIy9cgpSjxmmRwIbZ83MoAqEGT6/HR7iyDw4Yzl2HN0gbwAjpwdVYuf8BpXF9/JMvtE3x4JNufHR1Sbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715527700; c=relaxed/simple;
	bh=CadrEAvZxardWr9wcRjy/vD6QYBk2rFxYysHEJ7/E6M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nyjx7vtqMlPA4s+PvrX0Ge/QVIjIO/jjN3PC5b5j1jQf1mNwLQQjzpJDTmUH3Cnjj4HvH2rIFOvzFgnuADFyeyynchWU6mtNLmQY9NI4K1mlM0vgOVA44kqemnqNg3pbY2D96kc/KZbkFrAdakgpoasRTZgIbJ5wGU2vJNJJyvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVlAsSFO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4DA6C32782;
	Sun, 12 May 2024 15:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715527700;
	bh=CadrEAvZxardWr9wcRjy/vD6QYBk2rFxYysHEJ7/E6M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DVlAsSFOSn+usXOuHTgz5g6TDoSo3W1u67afeQDBSibrat+PcddKMexl70xJ3NMTT
	 FgNaG7H+8CGvG8Ox1E9NlTdRH6RBYpfYHpLTGKMh/x0z2RQSfLUDZAHXi9bXvidwKI
	 GFLK60kyjel+ul/mDi9VYxvo3XzB/Vg6fkUgyN3V2U/zWK+rwIFoBIvWbfaDX2EqQi
	 tt2A/4orAIQLnudzMd5YrRIsJsjIkf6EicnctOYRqtHDohOfOX7od1i3JmEz4+Qv+V
	 IGz0C+andAD5tEm1iqloAmJd+ZqxsCo6Vskr5zH8ohj0LJ8Hn/YTdtel4atq6BmfML
	 cOmpykbvGFqZA==
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
Subject: [PATCH 2/3] arm64: dts: airoha: Add EN7581 pcie-phy node
Date: Sun, 12 May 2024 17:27:39 +0200
Message-ID: <333ce5d4877facd7a7f262bdd8e53f2b772effff.1715527166.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715527166.git.lorenzo@kernel.org>
References: <cover.1715527166.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce the Airoha EN7581 PCIe-phy node in Airoha EN7581 dtsi

Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 98c2a86086e1..77fd37222a6a 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -178,5 +178,14 @@ spi_nand: nand@0 {
 				spi-rx-bus-width = <2>;
 			};
 		};
+
+		pciephy: phy@1fa5a000 {
+			compatible = "airoha,en7581-pcie-phy";
+			reg = <0x0 0x1fa5a000 0x0 0xfff>,
+			      <0x0 0x1fa5b000 0x0 0xfff>,
+			      <0x0 0x1fa5c000 0x0 0xfff>;
+			reg-names = "csr_2l", "pma0", "pma1";
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.45.0


