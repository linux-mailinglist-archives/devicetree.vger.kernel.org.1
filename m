Return-Path: <devicetree+bounces-52160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F1C885846
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:25:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2F741F22DDC
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACB1858129;
	Thu, 21 Mar 2024 11:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RDe5OsIf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB855FBA9
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711020302; cv=none; b=KUdGA20W+juq+mTVusFbcW0XZUGH0CRt9qs1ryT4WCabxHKCHPYQcEiqugsEomEaqKyK7hOmG/kiNi1+zibmwH4br9NN1FWkb+nwfxOBHDXXN8Jv+vQlPlaHy3J0HwEMvvDKra6aYfiYJ5URRDftN1v/J75Ba6PHiTQjW/X6N30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711020302; c=relaxed/simple;
	bh=JSxYNSwZyUXf+sG/uNBnaGpYsgIXqQ6uEzUtMXC11Fc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BcZQXpgS6dX46hV2QIRfUnQWdnWaalMbPfGVZFAWYaZlhpzGRSl5EW7qK4TRdOq/BJjmQqsHNTIRKYp7dsRDZIUSlKnT4jA7kRQZYtfXSpoxwf1BvqJha8lOV98WcTjaJGDdnsW36NUglrQhUAq1a56mOCAJSL5EOhW8UAB5I5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RDe5OsIf; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-42f52226f9bso3709101cf.3
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711020300; x=1711625100; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/DFL0n6uM1RWjK/gTquIUFnPYTmGA9Q/FVUWQCJfJOM=;
        b=RDe5OsIfvDMvWy4XQT2+OzGrPqVLpD+ypL8pCDFQoHvjnyRFwk9CTiMoMjDA/p9XJI
         qVIug0uPmNEygvLQZZ+5hSaPlURdCDWcQP/YASG3TzktoFqN3HU7kGMGMyx26oC6Os3Z
         o5Hl2/KwOcMUiekIAFoxdg+eKDXGNfmwlZ+xErleRMgXp0OmqQpOCNaKFtTR4QTlqEsl
         /BXrL7voihnb30lfeyURPfJxhGlX/KOKBe4rswVnEjiCy//7NkltvIjPhwQ8tLQIoiuy
         ZzMT8Ercy5IQI0b8mpePIAbwAVrTv0cD5f3zSrLuBgD/L8q+CetAxQxkmzYLLKzZCsSX
         YwsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711020300; x=1711625100;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/DFL0n6uM1RWjK/gTquIUFnPYTmGA9Q/FVUWQCJfJOM=;
        b=pc4FHykcl05yFzZ872K5kI5hKGqmCgNb6MJ8Bso4bukHTt9bOVbDV5YL+fivIXiLax
         tnf2NVkK/jqQc1pK95Fs6ecNDU+5Cgt4xZ/FE48YDKLf89JOrGCxC2bMG4GszHnlkwSH
         NrwOtHP5njOkj50iKSjAu7zKjTLge3GKe7TuE8p8+RjfQTElaalsI+EMez67JRWvRfh4
         yjURvFqJAD150Hxt91fNUNuGIYI591CK/I75OzfKaxvbXcbFN4hd4DYuVVVJvo/AbEZ/
         Z3CdNGnHRnLOzQROMCFpwQPVwOwsy0SiJeTm1S5DaDXMcsPGgi7IJNn5ibnKaeB6enmV
         Snxw==
X-Forwarded-Encrypted: i=1; AJvYcCVNlUKXhonKb2t/miBV/CyhBtSvSrZbUWbC9S+Ohfm2qTwaVVKFvBMcGAQGtO7nz4wqHXLxcQrq3Bt3c2TRdLIipuv81ql2rTQKYA==
X-Gm-Message-State: AOJu0YzPr0xdD9fIAzyvn7xiATBdHrRIvpe3F5NnDc82/0886fUel1eO
	zC7Nra1OpkoXWl/l3x8azXhgG/XwHGnfNJ8+B1fH8UkLxJ39Xq8khwzWdKfYPqbBZt/kfruq9DA
	=
X-Google-Smtp-Source: AGHT+IFnnfnUYQZH5pd7/YUgsJ4wox7bRd256T69ILjci7PbIhxOrPZftFdDT+qvcZ8eiYXZxjtzTA==
X-Received: by 2002:a05:6a21:195:b0:1a3:6b62:397f with SMTP id le21-20020a056a21019500b001a36b62397fmr2076350pzb.15.1711019805043;
        Thu, 21 Mar 2024 04:16:45 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:16:44 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:22 +0530
Subject: [PATCH v2 02/21] arm64: dts: qcom: sdm845: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-2-1eb790c53e43@linaro.org>
References: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
In-Reply-To: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1223;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=JSxYNSwZyUXf+sG/uNBnaGpYsgIXqQ6uEzUtMXC11Fc=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcJALvhllgPxWyYG2RbYV7RcHMfPdLNxktb1
 PwME9FSf9SJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXCQAKCRBVnxHm/pHO
 9Vc3CACfh0cbDFSipSCFGPlbj1SXAbaBC9s/ON4t358aRPbZ/l2XqcKBJ7mW6TyzlOfsWfev+GS
 ijBvvd98iL3tr5hQAw5HWyRMR3iNZCF0VtnJl1aXwZyLoJygs+5T0zttLZ1BFP3hpr3wik5bsGE
 f3PgB2fWPArDoVnCOxD1oPOV1XCDLWUMvFr5EhyRjg/nQwz3M6+7wotJ7Y3Z2iduVFGUk9FF3ye
 7kpqVLQZxZ5mvBe5iBu5XO9lXv6S7eZX8dpRTYNtFvnSw6E4D2x2hSzK/ZHCc5EVStQPnBKlu7T
 3eVdwj5xjwok+wcwtNvpbYSim4884p711N6X555225OA3+Df
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 2f20be99ee7e..10de2bd46ffc 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2375,6 +2375,16 @@ pcie0: pcie@1c00000 {
 			phy-names = "pciephy";
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie0_phy: phy@1c06000 {
@@ -2479,6 +2489,16 @@ pcie1: pcie@1c08000 {
 			phy-names = "pciephy";
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie1_phy: phy@1c0a000 {

-- 
2.25.1


