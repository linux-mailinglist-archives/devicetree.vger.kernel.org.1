Return-Path: <devicetree+bounces-20507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 094647FF8DF
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 18:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5BEFB20D87
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C028B584E5;
	Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWL/8XCQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3ECD58103
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39605C433C9;
	Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701366969;
	bh=gNNI6Vpn1UZq1RAioCl0smWD/0FRBB3YSPywtR360Dc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pWL/8XCQPjjyv2Z+YaeYOEMIAPX++Jzi3PJt2x27hS13WKN4IDrL66P2BFg2eNWjt
	 L7VrK6rKGGfQ2JTN84Hum0YUGEVSEVj5Nx1kxjp4QdezxfrQAEQTvluJxCooI/7wf6
	 Wq0eWusxG5BjV3rj4/3TmkrcMIah8RsPFZ4XS7fUyE2YAz7JxJoI03aXbK3WFjEKjQ
	 CRhqBY9T450UtHMMkJa+MBl5umX6VPOGV0BRZEtS75G4UGY+dzAeIvkbPaO/PQxe7u
	 dpC4jDuDl8e2oPXHn4fA4oX3z/hJ8626tlnl8l/BFDYxTlz2U+JYHDQiruREFxYxbP
	 Wc9OFPs/03W2g==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1r8lHG-0003iC-34;
	Thu, 30 Nov 2023 18:56:42 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Wei Xu <xuwei5@hisilicon.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 2/2] arm64: dts: hisilicon: hikey970-pmic: clean up SPMI node
Date: Thu, 30 Nov 2023 18:56:35 +0100
Message-ID: <20231130175635.14251-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231130175635.14251-1-johan+linaro@kernel.org>
References: <20231130175635.14251-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Clean up the SPMI node by dropping the redundant status property and
moving the 'reg' property after 'compatible' for consistency.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi b/arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
index c06e011a6c3f..299c4ab630e8 100644
--- a/arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
@@ -10,10 +10,9 @@
 / {
 	spmi: spmi@fff24000 {
 		compatible = "hisilicon,kirin970-spmi-controller";
+		reg = <0x0 0xfff24000 0x0 0x1000>;
 		#address-cells = <2>;
 		#size-cells = <0>;
-		status = "okay";
-		reg = <0x0 0xfff24000 0x0 0x1000>;
 		hisilicon,spmi-channel = <2>;
 
 		pmic: pmic@0 {
-- 
2.41.0


