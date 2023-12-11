Return-Path: <devicetree+bounces-23993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A058580D3A8
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFFD11C21536
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97CC44E1A8;
	Mon, 11 Dec 2023 17:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X/HElSps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C86B4C3
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 09:24:22 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6cec976b197so2435870b3a.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 09:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702315462; x=1702920262; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OIO4WNjR5xVb+yTIblaWghN44VQDB2yiwlWnOskO7lQ=;
        b=X/HElSpsabf/JSNO5yuoYy7tmRFjNqnSfKB8lq23BvtLoaEbQ/DnSu50VHbA6BR06L
         zs4lopBJYqqozWHk4ZG7iIlZrboP4B/mbUauspaHlcXlE+edktmPncm1OwbnRIIeoAsB
         diaiK3kW3ZaDM8K5hpS1RA3CGqLVhPN4IIkSUQIGc0OrEmvHqe5trqyaCcRu7L1f+/5l
         IngXVePIRNX/D6PflAUXWB/KYxx0aHl4MH3j0D0LvyQQOF547Bdv24qJ+xepqhgQJTQy
         t7uk1+1HopMXTp5RN36HOFsjz/cPsOVtUsh1YpjagZsaDtsvuqVbuClbln1kfwPDVgLC
         FVKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702315462; x=1702920262;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OIO4WNjR5xVb+yTIblaWghN44VQDB2yiwlWnOskO7lQ=;
        b=DjnufTS4dbcEdClW/uv0aJXq+Oni8jkbZ1GVfIjXWYSd5vAJZn7HtFQhVUgCnDZwSr
         YxA5MYOrdoPmDbKhJesHS3WcfxUibl/7uatqmcBJzvnWxU1pByqcd06pMlObQHJJj3Yg
         oXfeXhYsGWSsMljGc9BXxlXOQ8K5n9EdfbobF+CjNPB6n19YFFMtjO4O5EbiZtwGF97q
         wcnunR5yzdbQjlLqIjzovyrK62efowU7d9KCJut5GaL4K9cuJ8IdPIaGy3BAAdPoFPhy
         owOhfQLuMbyiq3nMqRC/sOUo7DVJQvt9WwqIeF9Vb9R30odbDeGm2D+guTZ/F3ZRNrK4
         JTwg==
X-Gm-Message-State: AOJu0Yw1lX0U33m9Xglak8Ro1Wycf4RqUkl4clM3rS+pRtsXbF7CiZ+2
	x1p1z+lTM2TlCWZGt++U4TeS
X-Google-Smtp-Source: AGHT+IF/o7tMygudcvDEgvWVGduVd5AMvlcE/EGogBR8ckxyLh/FBo/ByXUkDPmqNZldCt3kozHQaA==
X-Received: by 2002:a05:6a00:1b57:b0:6ce:f78d:b376 with SMTP id o23-20020a056a001b5700b006cef78db376mr1612136pfv.7.1702315462108;
        Mon, 11 Dec 2023 09:24:22 -0800 (PST)
Received: from localhost.localdomain ([2409:40f4:103d:670f:7d18:86fe:2cd9:84f3])
        by smtp.gmail.com with ESMTPSA id r21-20020aa78b95000000b006cef5c09ca3sm4495255pfd.147.2023.12.11.09.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 09:24:21 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH] ARM: dts: qcom-sdx55: Fix the base address of PCIe PHY
Date: Mon, 11 Dec 2023 22:54:11 +0530
Message-Id: <20231211172411.141289-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

While convering the binding to new format, serdes address specified in the
old binding was used as the base address. This causes a boot hang as the
driver tries to access memory region outside of the specified address. Fix
it!

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: stable@vger.kernel.org # 6.6
Fixes: bb56cff4ac03 ("ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
index 2aa5089a8513..a88f186fcf03 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
@@ -436,9 +436,9 @@ pcie_ep: pcie-ep@1c00000 {
 			status = "disabled";
 		};
 
-		pcie_phy: phy@1c07000 {
+		pcie_phy: phy@1c06000 {
 			compatible = "qcom,sdx55-qmp-pcie-phy";
-			reg = <0x01c07000 0x2000>;
+			reg = <0x01c06000 0x2000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
-- 
2.25.1


