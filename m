Return-Path: <devicetree+bounces-42712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78684858389
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 18:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 189CEB265EB
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 17:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9596137C48;
	Fri, 16 Feb 2024 17:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cQf/OelZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E810A135A6E
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 17:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708103130; cv=none; b=tnGb0+2BUKs2OOcpIAuCybQ7LvX9unlA99mIPq1lMQWGWEN6qyJKaQOA9+bde/sGXww56TQj5vEEyoHjjyIAM3N4g+XPQSVJrbRpfw7v82U1S5QN/qq53bYdRxrmUkk8zXh+9csFntAsK8VeZIbdHxxzn3/iAXa7WVot/4CuLmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708103130; c=relaxed/simple;
	bh=YEe1iIkMkTl6mXT05twz1lybD8lNCICMNljhIyX2vlU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=X2QIOlM2v1zuBNBxRsXrVHVE562Ezs56ZG9kfbV17pc1JdiTRdstWfQk0Wb/n6xBo+1C5rKe5S32iHbSWsE8JfrUha8GgcKTp0vbLJmNNlsMyJllHglY9U25MWu3Iw/+YhsZSaW3TyRJ+sE4wjTWJNrDKGUq4OV6T00uRcG9GWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cQf/OelZ; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1d7354ba334so20514055ad.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 09:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708103128; x=1708707928; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xzo0goznw/Ntco681h4qJZM6h9c/lx0QHhOStfpeEEE=;
        b=cQf/OelZQD1t6FaPQ0oMy0KKqc5oNg2hYs56A1NyX34m6vmtCCXaiLg8nvAtjtE+TH
         OGrnmZGVMmvUL2rfSPWh8X+waHrlYBtl53Pn5p5rs/kc21CCDBkU14kSRJqoK4oWZm6a
         AuHhpv1seLydHEu2ewb/vn9mTjTE7o652JuTxA8hOlT0F3fTYl1wz5bzHff71xYz9Don
         MJzI/2bRl7JzN5LrMlCJd2oa4I3h2LE3OU9F9nXe3k5oclaT6+/dEy3TPEzrbZ4XXKCe
         SB4NOINgXSXuQ54AdM4Wq3eQ5kysD9QcoEOs3pykgaJQhrqyBZiPtikrdAvPLjRda8b4
         Nf9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708103128; x=1708707928;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xzo0goznw/Ntco681h4qJZM6h9c/lx0QHhOStfpeEEE=;
        b=FcDabhgmNSonYjc6kcTMvaqH2dyuaFd6GlaA8UMDsrLU1yqoLlWMYEKm8wCceV0jMH
         o1/gO1laetGMv9olkssySXxBMjEZSThPJcOAEfYo40tiDraGYdVScobY6WaRuwkNKxYA
         OFhHAykWZYXTVygnZCGa97+41ubSl1wtd2tjCfZRr2O4vh3LkPqBs765uAcrNs3oawoT
         z0JDMTTsH7JNC3xv+QhX7luQyL/E0GvWa5JoQzAleVE/rk9Vp2zM35Bukwavz5cH/A5R
         LXLT7fKOQJcvf/kWg+A/V65mG3i8NwTIceNWBMeljO7aZYuOYXpunQopCWXtNQSyeVbI
         GWVA==
X-Forwarded-Encrypted: i=1; AJvYcCX8cPd4WSHDlUa+fs9xagR8PCiHZC3t4j3B6RRq2jtMGjHSHCWTK65RnvxnflaL3hVDNNHgCjSErNgYaPmmvtWZyesGFx81GhlC3w==
X-Gm-Message-State: AOJu0Yy8FwoxKYWCadTFKSy3LfpqJdlU+cHYeckRJtlJeTp6wFWw+erP
	CU5DSvQ4cwjU3RKocs5FZ6C06vGKW16sh+6Nx7uW0IbRpcII04tIczi5j3sSPg==
X-Google-Smtp-Source: AGHT+IFDCzyH9aJybTu6AycRvO1SYkFXYvfxU6Es1A/vZvue0R0CuBR+Bwn5hZW7hpoZN5rF/ZEwJA==
X-Received: by 2002:a17:902:d2c5:b0:1db:701b:33e0 with SMTP id n5-20020a170902d2c500b001db701b33e0mr6357753plc.14.1708103128010;
        Fri, 16 Feb 2024 09:05:28 -0800 (PST)
Received: from [127.0.1.1] ([120.138.12.48])
        by smtp.gmail.com with ESMTPSA id b15-20020a170902d50f00b001d9aa663282sm95508plg.266.2024.02.16.09.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 09:05:26 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Fri, 16 Feb 2024 22:35:21 +0530
Subject: [PATCH] arm64: dts: sm8650: Add msi-map-mask for PCIe nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-sm8550-msi-map-fix-v1-1-b66d83ce48b7@linaro.org>
X-B4-Tracking: v=1; b=H4sIANCVz2UC/x2MQQqAIBAAvyJ7bkFFQ/pKdLBaaw9WuBBB+Pek4
 wzMvCBUmAQG9UKhm4XPo4HpFCx7PDZCXhuD1dZpa3qUHLzXmIUxxwsTPxjnkMiTdWsy0MKrUNP
 /dJxq/QCbmuN3ZAAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1655;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=YEe1iIkMkTl6mXT05twz1lybD8lNCICMNljhIyX2vlU=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlz5XTZlP1P9oCFUUIiXdV0t5k+20GxBAJixguy
 WJaznFAxzuJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZc+V0wAKCRBVnxHm/pHO
 9U4aB/wIVpxyFUp+gK/gJRJ91smrvGmTk8YfnaRAHiwLEN0phPdcRslim8zkXKDBR07EQVwjdMN
 o+bO7kSkjl5fK9wj79VVyhl+JB28ej5M8lhXogmrlIN7MKVKhEkO4/u3rbt43RhpS7M38Ojhz7m
 zROIaziDGj21hQBpHO3GAfTD6bBUlEAY8CdSv7mRev53j94zslS6FComze1ZVB87U1r2e2unWBO
 cWJUEd1N9TBzTSiMUp43RM8+8IS+1K3RYjGxv3BhyHcWNOuUPD4UBPI4VhHRhvM9RWre8mH2vQB
 CIob/rGzp3nO4GtjpzaspPlxXobnpPhcKwmiUbI5Lf2sbhRn
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

"msi-map-mask" is a required property for all Qcom PCIe controllers as it
would allow all PCIe devices under a bus to share the same MSI identifier.

Without this property, each device has to use a separate MSI identifier
which is not possible due to platform limitations.

Currently, this is not an issue since only one device is connected to the
bus on boards making use of this SoC.

Fixes: a33a532b3b1e ("arm64: dts: qcom: sm8650: Use GIC-ITS for PCIe0 and PCIe1")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index d488b3b3265e..12ba839f215e 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2277,6 +2277,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			/* Entries are reversed due to the unusual ITS DeviceID encoding */
 			msi-map = <0x0 &gic_its 0x1401 0x1>,
 				  <0x100 &gic_its 0x1400 0x1>;
+			msi-map-mask = <0xff00>;
 
 			linux,pci-domain = <0>;
 			num-lanes = <2>;
@@ -2404,6 +2405,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			/* Entries are reversed due to the unusual ITS DeviceID encoding */
 			msi-map = <0x0 &gic_its 0x1481 0x1>,
 				  <0x100 &gic_its 0x1480 0x1>;
+			msi-map-mask = <0xff00>;
 
 			linux,pci-domain = <1>;
 			num-lanes = <2>;

---
base-commit: d37e1e4c52bc60578969f391fb81f947c3e83118
change-id: 20240216-sm8550-msi-map-fix-ab8fe5e24df1

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


