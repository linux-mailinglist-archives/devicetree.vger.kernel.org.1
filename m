Return-Path: <devicetree+bounces-20506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 890607FF8DD
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 18:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4521C2816DA
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 17:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0808584E7;
	Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtGx61is"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E8654663
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E440C433C8;
	Thu, 30 Nov 2023 17:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701366969;
	bh=rHWxyCU/rEPniKYflGKE/m/9/UZG1t+e14CDIdDJGhk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CtGx61is334RHsWYTPz410E7OL1s8oUJOBR4f1G26k+r6nYu33gx3w5ZVTeBM5VoV
	 UNTQ6k9d5DLtXzkdj8sb0NQ+z8hw7+fFcyRF46yJRa83rJ8Jmjui6CigxLjGMhvW8U
	 bcELBZRXulzy2odExLvusFAjNbrd92msLvTMYPKAEYx2g7l3RWT2IFz5SXyxy92GJs
	 6jC+05kc8Gf/99TogwxJAJNfadUR5nUvC5dkT20VCKJSpImPaSUBpXfoka0/hBHwHB
	 maIeAE2I77b/QgWUMEZSwFG8bM/MPaC9fzj6zpYMnwz+XU3wOSMo7actWKPu+Y+9Do
	 6eup/uWKX+glA==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1r8lHG-0003iA-2m;
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
Subject: [PATCH 1/2] arm64: dts: hisilicon: hikey970-pmic: fix regulator cells properties
Date: Thu, 30 Nov 2023 18:56:34 +0100
Message-ID: <20231130175635.14251-2-johan+linaro@kernel.org>
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

The Hi6421 PMIC regulator child nodes do not have unit addresses so drop
the incorrect '#address-cells' and '#size-cells' properties.

Fixes: 6219b20e1ecd ("arm64: dts: hisilicon: Add support for Hikey 970 PMIC")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi b/arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
index 970047f2dabd..c06e011a6c3f 100644
--- a/arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
@@ -25,9 +25,6 @@ pmic: pmic@0 {
 			gpios = <&gpio28 0 0>;
 
 			regulators {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
 				ldo3: ldo3 { /* HDMI */
 					regulator-name = "ldo3";
 					regulator-min-microvolt = <1500000>;
-- 
2.41.0


