Return-Path: <devicetree+bounces-21586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4AD80464C
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 04:26:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90ED41C20C98
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 03:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA164437;
	Tue,  5 Dec 2023 03:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sH+EBadC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3787D3
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 19:26:03 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c9f42ccb55so32227121fa.1
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 19:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701746761; x=1702351561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ggwZrtNXyxyKyBcj4l9hV0APAvFRDHSWdqdlKVYcv/U=;
        b=sH+EBadCrOQmHqSjoqCbvLGZDa4+wfdBbPWUEGvlKtLgiADU2CKQ8/hq0TlwhqRioJ
         ZxsAHgRvtmqI6wc7UXhMG6NRnk9RU4GQOHCJbeMYqZRXdXe9nWw/LhCSNzv66xdaXBJ2
         ziLSJsnikkF6OXx4xES1Hc2mKomJGYZzuAD2nieYVLf/2DE0NRJbgPXbJmi49XkI84o/
         Nq//uCv6HkUmprQPL3ud807qICW98lGuDz3QgWqHm9MmQuTHmQa6Oqj9n2pn6BCylsCf
         pfg6oWwR9rZMeXHeI2KP3/YHMLxg77ry48R+9HAEKV2C9nqdJYchOaLtdUPe5REYY9cj
         /2Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701746761; x=1702351561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ggwZrtNXyxyKyBcj4l9hV0APAvFRDHSWdqdlKVYcv/U=;
        b=ap3Cnl0Fu5Cnyry7/L2gba3c5niIxYs7jRdpGrr0D+EYomP/ulmLxiTdlRM7+5thHR
         24uIbU8+4JKdh1DfkuN7fIz3aX2dvSYPT7NCjFsLS3LbFgVmuuprOFskw9z2VZ9p2CaN
         eudKf3SeHJnkMFL8pvyhyPHCcJiUiRxnLVLuSEST1utt9kLQR0dagxC2SEHNusCCoSnx
         aAFjFT4UYLevAQ16DLHlOMU8c8e1FJWblNp9rLDqxFKf8gCiso4lGVaCuStnZo0AED1j
         cZTs7k14wk82QnJ6MWRRm2IdtlEefMSCtYmE/lr4ax8zTRKCWrY29EFn2hf9VI7gcO2K
         kPkw==
X-Gm-Message-State: AOJu0YwbVOdIwO9vtcDxEMERRagCuEVOocoqIef6v76uO49zdL5+t4A2
	ELcHbKVZ7h7UQBt+TurDVX+lkA==
X-Google-Smtp-Source: AGHT+IGWXQ04EbcvAm5PLneTSKyf3t6CXMqurNj+NWq2ooO3GFAx235cCgESp9LuZjbaTBfj9NLxSw==
X-Received: by 2002:a05:651c:1025:b0:2c9:ecec:5914 with SMTP id w5-20020a05651c102500b002c9ecec5914mr2138455ljm.36.1701746761550;
        Mon, 04 Dec 2023 19:26:01 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id e16-20020a05651c04d000b002ca12be2b63sm127277lji.18.2023.12.04.19.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 19:26:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 8/9] arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
Date: Tue,  5 Dec 2023 06:25:51 +0300
Message-Id: <20231205032552.1583336-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205032552.1583336-1-dmitry.baryshkov@linaro.org>
References: <20231205032552.1583336-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 4978f691e3c5..6424a3ebdf5b 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -677,9 +677,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <&ufs_mem_phy_lanes 0>,
-				 <&ufs_mem_phy_lanes 1>,
-				 <&ufs_mem_phy_lanes 2>,
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
 				 <0>;
 		};
@@ -1679,7 +1679,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -1723,10 +1723,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8350-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -1734,17 +1732,11 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x188>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x188>,
-				      <0 0x01d87a00 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2


