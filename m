Return-Path: <devicetree+bounces-240035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0C0C6C7B8
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DDC794EDF6A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24C42EC55C;
	Wed, 19 Nov 2025 02:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1mWRpRZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95802EC080;
	Wed, 19 Nov 2025 02:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763520747; cv=none; b=GsbGqe6QFSFsoXEuBcelT12ffURIYIOumyM+CGVUWO9rC55RL60T6yx7unFa2wkvTZhJveUBHuuC95O8lSF/rzNTbZEiWg5509BVnXt9WANxVe/ymGuTlpJWY8cZJuR2mwpP6A1D3jzB519d3PuynP4hO4xFpSWa1Q/Zkv52+KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763520747; c=relaxed/simple;
	bh=cyiYUkhzt9a5Vr9zW13uqsn+eoSw1lee7spBvhydj7w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B+0EHQuA58nzL7I+Rml6cYUqV/lcAzc70bUJi/kklHgR1mZCp5oooLMeDFDomAGTO8rw94m+dccOTpLRsRrMs43eVe1uO5pCTV99sWd0+vhzY1TN1YQfti2ixyL1s/MXVkIeMfb72lRNmWSCrU82wJvqHHtZsQuh6jU2co9IY8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1mWRpRZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843F5C4AF11;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763520746;
	bh=cyiYUkhzt9a5Vr9zW13uqsn+eoSw1lee7spBvhydj7w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=u1mWRpRZIX5m+PByt1j7rXj/Kaa//gXc/OmMugRm04D4NZ5Xbpe9jA2gr33rq+8pN
	 t0CIWyLDthHx4IHnCFHj6pSasBxfyRzkboJt7uvbV3BBGnJ+r63G0k8uB97TwyZzTp
	 niwRZoskaR9owaeJVP3Fh2AAXAE9CmtHNFRlSudL5bdXcGVVi5btg0G+UT+Zy08lbe
	 fBDP28WCpbDnwg1ZX0Ag1yG4kIyTT/mPWDZf3+MAEyYpYyYxwxt3jtA4KIieNdoSG9
	 +cPdypENc5u5EtbQuLxHHXosZR7bMqircpp4PilnSOtGR4DNWAf7YCR0n8Tkp+3Okq
	 nSNtuJ410h15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0414CF2572;
	Wed, 19 Nov 2025 02:52:25 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Wed, 19 Nov 2025 10:52:26 +0800
Subject: [PATCH v3 5/5] arm64: dts: amlogic: s7d: add ao secure node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-soc-info-s6-s7-s7d-v3-5-1764c1995c04@amlogic.com>
References: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
In-Reply-To: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763520743; l=919;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=cpqB1LNnz4EVCh8gXZ8/VFLD9SRXCAMe5RV0gVnWqBM=;
 b=hJZ3a93/SCaYe8VPfwgqMDgNXVu5AY/ly8Nz72esgHLP15RQ+KDYXDQEYvrJGWoO/LXFCFwg7
 Q9tmcdDABHXBd/yOS+UR0L+NZIDVb1wiSqFme0TtmF13w7uqqTDbvx0
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add node for board info registers, which allows getting SoC family and
board revision.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
index f1c2e91ec6c5..e60167af0390 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
@@ -194,6 +194,14 @@ gpiocc: gpio@300 {
 					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
 				};
 			};
+
+			ao-secure@10220 {
+				compatible = "amlogic,s7d-ao-secure",
+					     "amlogic,meson-gx-ao-secure",
+					     "syscon";
+				reg = <0x0 0x10220 0x0 0x140>;
+				amlogic,has-chip-id;
+			};
 		};
 	};
 };

-- 
2.37.1



