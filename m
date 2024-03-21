Return-Path: <devicetree+bounces-52148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 446C68857FD
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00378282CEC
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E09158ABC;
	Thu, 21 Mar 2024 11:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="we458PSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1353D5FB98
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711019835; cv=none; b=Cw913mw18w64d+RZlv7PXKEneICrbc4rMG1rtPF6FvjBUzgaC3eBfmGXykIBP8Epl7Y8kOMRf5FLn5hdJRd2vHQbtoGNWRk4r4SjZB2S79LOHvIAm6f3v4gq1lXEt9X4mxUiHWAaetmmqVrkDqysGerkpcbpCdxvjK2Fj+h8PnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711019835; c=relaxed/simple;
	bh=5meRU2YVUU23seGXMANnZfJqw+Ixz7s1OvoZwdTDBBo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PpnoLPQt7xO6xYXKRcPtHXE67mLsml0f54GO7PfKxZam0bKncQttDo47VJOP1UAUwtY/TrLmOt0MnGGzGKJSVI5Vy8Nj/HuzTs163iKIoR/FSrb1KqcNMuayOsCkdn4O6pgJ3jgo3w1BaM1Bxq6zOUvH5jEiPkO49KzSld5CXWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=we458PSz; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6e74aa08d15so604566b3a.1
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711019832; x=1711624632; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NvoaaCNe2L2vMyDF22zsVVzl/iZzIirF3aywOiTV8nw=;
        b=we458PSz39f6wmdVuY6bwvKEwrJZUcuSb9QFd5J9NOe71JupGc2R02Q/fqE8En5Y7S
         TmoxYuJzCv+LGU3vtnNCfX4jC5y/dvjc2RMosvOfvYuH7HJdDk/0UnmCTeptYStIYTyS
         dnGL+WrVbmlxUC7qHOi+zcs8b60edUjinMcTlyiV4WdFzyj7RQtQ6JIzEx04GYvo0wDC
         RjjcugJluQWY1/cvPtT2HkbRXcPCEYWxAbsAWfXJoBmXAnqc6J52M2wNOZLfmO8PKQGd
         gHtPhqTiLp8MujtgE0cbZq3GrXSy54JVTp5M1byXsib+HczfTOuuOxcrrJlVGZGX2c58
         uYcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711019832; x=1711624632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NvoaaCNe2L2vMyDF22zsVVzl/iZzIirF3aywOiTV8nw=;
        b=F6u6iN1SvOH6/7si1KyBsJYsgdLQzyoWdFjo2a2nVa7fJF0vL39bgbeU0PkIaqg/6t
         gJE03F+VyzTd9Ao/2Epkh5TcX2aBo0rwsHeFUDVacT1WQGhNTBhkqy/6xTmFDuHihiQ+
         Mcvr2N00jhGsAVY9uDfTMzvG2uLYIQAkvWZVodzkgYQEN1vT85bxmsWVK4PBxkHdOWlY
         4xx9wieO6pa/I3WvW1PsFAu1iQV7dLwleV/+OPoo8aZhdSZ/ddlI+u9dFp4V7+sSOt82
         EBVGo1NYrnq9qfEX5AoEJSm7YX40TPpdB4V5b8AsCv5sd5KpJV9OEZ2sqDx0Bq1/l3Ub
         AXPA==
X-Forwarded-Encrypted: i=1; AJvYcCVkq9qNkyd/bE+pgmk7HlONxvtV7ydmYDBSqi4Cr92xSO5wXdAresGKKO4TQjW2+j8Nflzwv58LhpG2wZTK67MrCX2pkJ0N+Tnlxg==
X-Gm-Message-State: AOJu0Yyl3AzMos60uYPeiYgHJDt9tNWtAUhDSXwHXQJicc6lxD+6SHWE
	YO5hf9zN8DgOcXsB4yCVeWrzZ1siNeRhOUCG37D943qrQ90n7UZCDc27Zzkn6g==
X-Google-Smtp-Source: AGHT+IE0zWy2fXf7G3AFMCUrVT2DX7h7qU7j8TeDFsCitd2Q/jLKdGnj9QC/ZNMiA0f+O/qYkxQMdg==
X-Received: by 2002:a05:6a00:2d12:b0:6e3:fe0b:527 with SMTP id fa18-20020a056a002d1200b006e3fe0b0527mr10677517pfb.30.1711019832175;
        Thu, 21 Mar 2024 04:17:12 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:17:11 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:28 +0530
Subject: [PATCH v2 08/21] arm64: dts: qcom: sa8775p: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-8-1eb790c53e43@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1204;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=5meRU2YVUU23seGXMANnZfJqw+Ixz7s1OvoZwdTDBBo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcKONAMnvopzvVDqwrjlcSLycTaFPBuNEMgK
 YurITVj2SeJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXCgAKCRBVnxHm/pHO
 9TEhCACg7twwJyGGfQKoNzi1x9qiHNI1EvP5fPdn9xN7HQUHiBIPc5K7w+NdkCMXU//B/RxhEv0
 /uRaxGrIJb6Fr5fpIsm9g58zsCJlsiknrKcKChtC76JOEFDqETi/qSFJ5TUA7pIZRU02Yt9TLLB
 g30JnSEopDmb8o1MxBjo+cymA+PzlMd38++AusgxBZdiGgk6Egx/Z2/98qzPRaaCyaXbBKXwGNw
 /UCFS9rWm/L6J8qKYH5OI57OwEJcnDl4QzuLmodlLL6DNFxzptzv5eJZdfQmTRnzphJZCS7PsEJ
 W6mE8FTLI/IqKzDqcsaZNoPWnDcZ5vMamwr1d5Ru+DsrTMbY
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 231cea1f0fa8..31de73594839 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -3677,6 +3677,16 @@ pcie0: pcie@1c00000 {
 		phy-names = "pciephy";
 
 		status = "disabled";
+
+		pcie@0 {
+			device_type = "pci";
+			reg = <0x0 0x0 0x0 0x0 0x0>;
+			bus-range = <0x01 0xff>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges;
+		};
 	};
 
 	pcie0_phy: phy@1c04000 {
@@ -3777,6 +3787,16 @@ pcie1: pcie@1c10000 {
 		phy-names = "pciephy";
 
 		status = "disabled";
+
+		pcie@0 {
+			device_type = "pci";
+			reg = <0x0 0x0 0x0 0x0 0x0>;
+			bus-range = <0x01 0xff>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges;
+		};
 	};
 
 	pcie1_phy: phy@1c14000 {

-- 
2.25.1


