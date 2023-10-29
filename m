Return-Path: <devicetree+bounces-12643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A36517DAB2E
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 07:20:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DD0B281742
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 06:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D6C5390;
	Sun, 29 Oct 2023 06:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailoo.org header.i=@mailoo.org header.b="UPBLWjm0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F042833D1
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 06:20:34 +0000 (UTC)
Received: from mailo.com (msg-1.mailo.com [213.182.54.11])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04587D3;
	Sat, 28 Oct 2023 23:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailoo.org; s=mailo;
	t=1698560417; bh=37Y1s8lOgp7BfOpW5RNDm5P6kGc37j2oLnElaeTQcQ4=;
	h=X-EA-Auth:From:To:Cc:Subject:Date:Message-ID:X-Mailer:
	 MIME-Version:Content-Transfer-Encoding;
	b=UPBLWjm05o6GLNivdWIB7kTg7lqA0udjjG46xUvl8axET24MmP5Ttmlw8i8qiD6UY
	 pfPAB1ZCgG5TRZKW1TjqxQ4H7gfwoX74poiYDFxZgiOIoDxIbsO5ZB2eOXffKEEkVw
	 iN1ugrbnageit7suGVFiCE1Zzr8cCtozwx6xYXZs=
Received: by b221-4.in.mailobj.net [192.168.90.24] with ESMTP
	via ip-22.mailoo.org [213.182.54.22]
	Sun, 29 Oct 2023 07:20:17 +0100 (CET)
X-EA-Auth: ilAzNe3xxBlE7UdNOUkNEwLBi0hCH6Pw4KM8ysivRuPK1pcxww1VsQ3/z76sIM7TbMpp92rON9AdLxCA8b1mVyokeylgrljR56X03DLU1gk=
From: Vincent Knecht <vincent.knecht@mailoo.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephan Gerhold <stephan@gerhold.net>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Vincent Knecht <vincent.knecht@mailoo.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: clock: qcom,gcc-msm8939: Add CSI2 related clocks
Date: Sun, 29 Oct 2023 07:19:47 +0100
Message-ID: <20231029061948.505883-1-vincent.knecht@mailoo.org>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When adding in the indexes for this clock-controller we missed
GCC_CAMSS_CSI2_AHB_CLK, GCC_CAMSS_CSI2_CLK, GCC_CAMSS_CSI2PHY_CLK,
GCC_CAMSS_CSI2PIX_CLK and GCC_CAMSS_CSI2RDI_CLK.

Add them in now.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
---
v2: split bindings change to a distinct patch (Krzysztof)
v1: https://lore.kernel.org/linux-arm-msm/e44c751a-f0f5-42d8-aa99-743b349fdf9b@linaro.org/T/
---
 include/dt-bindings/clock/qcom,gcc-msm8939.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-msm8939.h b/include/dt-bindings/clock/qcom,gcc-msm8939.h
index 2d545ed0d35a..9a9bc55b49af 100644
--- a/include/dt-bindings/clock/qcom,gcc-msm8939.h
+++ b/include/dt-bindings/clock/qcom,gcc-msm8939.h
@@ -193,6 +193,12 @@
 #define GCC_VENUS0_CORE1_VCODEC0_CLK		184
 #define GCC_OXILI_TIMER_CLK			185
 #define SYSTEM_MM_NOC_BFDCD_CLK_SRC		186
+#define CSI2_CLK_SRC				187
+#define GCC_CAMSS_CSI2_AHB_CLK			188
+#define GCC_CAMSS_CSI2_CLK			189
+#define GCC_CAMSS_CSI2PHY_CLK			190
+#define GCC_CAMSS_CSI2PIX_CLK			191
+#define GCC_CAMSS_CSI2RDI_CLK			192
 
 /* Indexes for GDSCs */
 #define BIMC_GDSC				0
-- 
2.41.0




