Return-Path: <devicetree+bounces-67619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EFF8C909F
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 13:32:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A24051C20C86
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 11:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F7742556F;
	Sat, 18 May 2024 11:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQfMa/Ln"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEF423746
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 11:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716031953; cv=none; b=foSuneCnAkgKYth7mEOSftNrbdPHdAcW10ntUjyuimJ+7SWdevR1IzLik42s5EApkKhml2LE4vJIcRI3YYkSzCYCclkcKCJdbN2ZMntGdrtIZ+KSu9t5Waw95fSsO8s90KqAoDmmVfIitACRW6Hq6NlY1v89OpHDEmJI9tMurWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716031953; c=relaxed/simple;
	bh=J9f4RY388jqTJWOa9Bom2Vfei5JBhJ4HicYIDuZ3sRo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qGJXATaJ1Xdu+Zs5x9qIFHuv66/qKitj1baSvN1TjivsGAHoxuSwCFYkq1tEXyIlhkS+n1aDUtmgSl/5yzFIFpR8/y8URPR9mSO51ezeTlp4Pd3j/p7BVaLUI1xm+aWXmyNpIJrz+8sVE7wS5/HZ3I0EdJhLtfIIXME+Jm9WSCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQfMa/Ln; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A5E8C113CC;
	Sat, 18 May 2024 11:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716031952;
	bh=J9f4RY388jqTJWOa9Bom2Vfei5JBhJ4HicYIDuZ3sRo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IQfMa/LnZXuPMc1K3ckCgt0CIpm2h/VHbCU90QSbv++zrpwtaPm0nKsHd+LZeg3Nn
	 h2GJ5fl8S0oIE5f1lmJoGsVmdaURqMzY/sy3FRIxZ3pIGWl37tyH1N5zdxZU1uTs4a
	 cfacZkMT25KRaP44hkiTfkgzXCGa7zmTyGf4gOmnbvvdX5gMn0uEC7LCNJYyiHyEN/
	 GI7WMGDhh+abpX8A1i8piya5qIy/830ZlAZC4152O8r4hB9Zp2hTTVtiyVTqJKa+N5
	 FJ/AWsiRsNA+A2QwTa8rlruTGuN2ygBIPx/4GaPUef2UFm+UN9J7GphGSpxxbe9FWb
	 1TQ+TqP13U8qQ==
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
	angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: [PATCH v3 2/4] arm64: dts: airoha: Add EN7581 pcie-phy node
Date: Sat, 18 May 2024 13:31:42 +0200
Message-ID: <6c0d16b086135243d856e26e61cc1813d9fc6f7a.1716031610.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
References: <cover.1716031610.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce the Airoha EN7581 PCIe-phy node in Airoha EN7581 dtsi

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 98c2a86086e1..95a9ec534cdf 100644
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
+			reg-names = "csr-2l", "pma0", "pma1";
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.45.1


