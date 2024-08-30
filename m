Return-Path: <devicetree+bounces-98612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F1430966BBC
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 23:57:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 972761F23B86
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 21:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 814B41BF7FD;
	Fri, 30 Aug 2024 21:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="a6EeY9Di"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A895317556C
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 21:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725055052; cv=none; b=bAfEMURPfBxVri0LnSHLbyApcDDFSFVH6lbqj1LTZIfjI3B3CggJjMpz/SRVQOx7PpNNk9kBvDtl2uRbjhJZ+ZsoTrtTRYrkXPAT/MzZSP9oalv9yf+B4PzbW78+YY3dSC7Ba6dAsJm3zxferLLG8eWhMmHtCGLA60CqT5pwC1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725055052; c=relaxed/simple;
	bh=C7bZjFZQAcFrV0nT5o+UGDUot3tfKv21s3HdWhHteAs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qK9MrCtO+y2hCMKc8OaoUSlCRwfKhzafdzX47ZBOI1lbAhEed3GCG8q/WNaymshtT++y4RCLLnsZQbUHmCjVfAuk8/CIV411tpAbpmaDvkw9+Z98rm+IwS/DSCF/UE6MriYZl9UPxJk8baQDnTiEtTjYMHwhPRi+ijfAl9iuSxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=a6EeY9Di; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 2274288D35;
	Fri, 30 Aug 2024 23:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1725055048;
	bh=Kp4sunbJ6BV6TWvUBCuwZKT9yhDWSvDKaTWgWn0Po9U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a6EeY9Di7Hg+2HVm5dE4DXoYmd4FXPfT+fPvltLyqRcmotulod4xqN74LwJ1IXoP3
	 YvA5L8z3zODzRdIASOof6qzXYGbTxPyCd+GWINqhZ2WCxTGZl8tXGfmPdcWKyFEVfZ
	 5FBHz6UB8qLWiOV3SMCLzXZiRf6anc5+NO4uM2g5zLy2Ej5Q7LBy0g/UUNdkEuXpAz
	 GkZ67h1IkKoV4LsYwH424iAjtZiJqSwRCZsg4a0nCfonKYF1o30glqrRH9mLoiwAi3
	 YTneh54Us/Z9bPuPdev7pdEdLJDO+UEPCk7W4oNVydlwkgQFbNrHyuj3utKw3+tNIQ
	 XI5+8LbGHu4Tw==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 3/3] ARM: dts: stm32: Use SAI to generate bit and frame clock on STM32MP15xx DHCOM PDK2
Date: Fri, 30 Aug 2024 23:56:38 +0200
Message-ID: <20240830215701.103262-3-marex@denx.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830215701.103262-1-marex@denx.de>
References: <20240830215701.103262-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

By default the SGTL5000 derives bit and frame clock from MCLK, which
does not produce particularly accurate results. The SGTL5000 PLL does
improve the accuracy, but also increases power consumption. Using the
SoC SAI interface as bit and frame clock source results in the best
accuracy without the power consumption increase downside. Switch the
bit and frame clock direction from SAI to SGTL5000, reduce mclk-fs to
match.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
index ea933da64903c..171d7c7658fa8 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
@@ -191,15 +191,11 @@ sgtl5000_port: port {
 
 			sgtl5000_tx_endpoint: endpoint@0 {
 				reg = <0>;
-				bitclock-master;
-				frame-master;
 				remote-endpoint = <&sai2a_endpoint>;
 			};
 
 			sgtl5000_rx_endpoint: endpoint@1 {
 				reg = <1>;
-				bitclock-master;
-				frame-master;
 				remote-endpoint = <&sai2b_endpoint>;
 			};
 		};
@@ -245,10 +241,12 @@ sai2a: audio-controller@4400b004 {
 		sai2a_port: port {
 			sai2a_endpoint: endpoint {
 				remote-endpoint = <&sgtl5000_tx_endpoint>;
+				bitclock-master;
 				dai-format = "i2s";
 				dai-tdm-slot-num = <2>;
 				dai-tdm-slot-width = <16>;
-				mclk-fs = <512>;
+				frame-master;
+				mclk-fs = <256>;
 			};
 		};
 	};
@@ -263,10 +261,12 @@ sai2b: audio-controller@4400b024 {
 		sai2b_port: port {
 			sai2b_endpoint: endpoint {
 				remote-endpoint = <&sgtl5000_rx_endpoint>;
+				bitclock-master;
 				dai-format = "i2s";
 				dai-tdm-slot-num = <2>;
 				dai-tdm-slot-width = <16>;
-				mclk-fs = <512>;
+				frame-master;
+				mclk-fs = <256>;
 			};
 		};
 	};
-- 
2.45.2


