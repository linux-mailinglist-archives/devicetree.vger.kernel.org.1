Return-Path: <devicetree+bounces-8696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE077C9B72
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27462280E3D
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 20:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07617125A3;
	Sun, 15 Oct 2023 20:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="avpSesLl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5534111B5
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:26:10 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EAFBE3;
	Sun, 15 Oct 2023 13:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697401566; bh=pdQHKOu9t+/50xiGW2M4xBTmedySUgBgfg2nCpLmelI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=avpSesLluDv8IXS1K2V6/xdqPoVb73E/fHD2zkbf3pu60duvsd7G7I0mdSEdsHIkM
	 edBBrV8bB9OuqQB7nDBJxSRggwPa4Svf5pQRWFUOmVBV/9mV4ESoTMpPiMtIyqqUAz
	 /J3CB37CKPlyHw7wxgiJZu9nUgZ9nmO7m7fGkR4U=
From: Luca Weiss <luca@z3ntu.xyz>
Date: Sun, 15 Oct 2023 22:26:01 +0200
Subject: [PATCH 1/2] arm64: dts: qcom: msm8953: Set initial address for
 memory
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231015-msm8953-misc-fixes-v1-1-b800deca9e46@z3ntu.xyz>
References: <20231015-msm8953-misc-fixes-v1-0-b800deca9e46@z3ntu.xyz>
In-Reply-To: <20231015-msm8953-misc-fixes-v1-0-b800deca9e46@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=791; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=pdQHKOu9t+/50xiGW2M4xBTmedySUgBgfg2nCpLmelI=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlLErbT6cFv2lgpENb1CvpAMNGXkA0xOmpL3PwX
 AhKvnHbHheJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZSxK2wAKCRBy2EO4nU3X
 VkDIEACtyr7+cPw/ykT67wSsZ20DIKwyfwXBPisvzvp/cA3NsGRgqpsgTwegVeqgBp/tQ3RqLtl
 2hpjWhtiF4XAIRtl8Zfwc7d0z4QIGg168w147C0KlJbCBaV+T1BQ9tFukp47z8D66AvVkzAHyLu
 lY+xasEAJ6s5Bi63JDAUgDKK3vbEk/89hOYQXp9oXHPmkTOodIKGFjOKeY4XQ6cE6PvITWfEKTV
 9VGSFf8q3QFF4WRJreqF5L3MSPkP1J6HokhAuir6Qt4b/HloqVs2baCqXdX0LgaJ+rVkb5EBblA
 oVmJy+xwgQYXzIOOcU4tC+RaetQtDzalgu1klocs6v4uQBZaVmcbjKXnHIKQuILgGMNspaYMYVO
 MFIZElkRWxC8FKI4KqFzOFxkdd6/8yTcup7dKS1010r6VgkzUqma5ESCyHt9VTLREZxkwjtCRHu
 7XfLj/n1hnFmaCEnTd11xFqp/9W5S8z4KqX3pgIcF8AEUZv7DA5I/5xmJRV4yOSVckpuLhXRVpb
 5iHqoE8er2XClxPHrIUHNmJey8OuUMAkSdyNoOiUfF8baGwjJrdA3sUN3Bcw0mIhT8O4eSvsmkM
 uG0o7DihtZ71Qg3gadbTfSmrYGY8L8CX9CRHW/xGTKXQelKyV03fZ6SCkmWZ32fL7d51bCJGsKm
 OuqqHlsifg0wt6g==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The dtbs_check really doesn't like having memory without reg set.
Address this by setting it to 0x10000000 which seems to be the value
filled in by the bootloader.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index e7de7632669a..a3ba24ca599b 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -174,10 +174,10 @@ scm: scm {
 		};
 	};
 
-	memory {
+	memory@10000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the reg */
-		reg = <0 0 0 0>;
+		reg = <0 0x10000000 0 0>;
 	};
 
 	pmu {

-- 
2.42.0


