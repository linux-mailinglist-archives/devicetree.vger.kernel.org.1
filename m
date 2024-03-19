Return-Path: <devicetree+bounces-51577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D3287FBF7
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 11:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB6D41F22D7B
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 10:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D0EF5B1EA;
	Tue, 19 Mar 2024 10:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fFTduLpS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3A855C3C
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710845084; cv=none; b=QcwoqgYzQkeEHEAD8aiY4YDlLPuogiOqHnBvVa0hlJoiOvybD7HIfGYP45Xo6HSS06+YRTmPQbIns9Al1g3jbEZzGD4tDh7UJI4CkpaRgUKOWKWnpopyPDDHRufvqaJwrUJ/MbckskP5mofTDbrFNPAaG+3Y5VRDOE0j+Pbnxdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710845084; c=relaxed/simple;
	bh=a/bwYUWIjwUmxTcm9I0DfFrljEfMli7VVrDpFj8e/Ug=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lU3js8o5WOsv2hQkskaHvKjqTWaDHwYl/KE7yP5gtJe23xowUUdejb2gBQcyP2REUV4hSGKx1Xpp8zTIxzgBSD1NVf0Vj44DUUXh+RLBVM2vl0ewrAafE3X3lclOlAsdKq5bOl747uMtrgcwaveG/WjJhpVzcmtb8XWcws4YrF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fFTduLpS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-413f76fcf41so40137865e9.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845080; x=1711449880; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=642Lccs0wQRja43ANYD30tSnrLqpIkdAJmJ0WSY6RU8=;
        b=fFTduLpSYmP1lsD+mDYLqw3q4Tusf3WvFG2Hw1scYQ2x7hLHqgVRckHLaeI6m7WnWX
         EVyo+a/UCSlJHtPyfuVJ41+R3SL9GzRFYwFVYYdUXOsqxDv9ZfkVFFuggt91XuJrrhdt
         G7CUYufMyhmRzR5rqxdwvELnQKExl9JRw/rnxIeWKHFUgChPRVGe1C0TXOY6n3hRu3zq
         N3RjNn0SFVgqisWnnm6kYu4wlISOX7KjbuPRmBFN44b/8zqnwBh9fjihkaIg9PGu7Ivp
         Zo6cjyScrXLRAtDBBo1J3Ah4OopNbFORJSE3PWoGzVLheE9akJMfzom3U9594YLigI9Q
         4EbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845080; x=1711449880;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=642Lccs0wQRja43ANYD30tSnrLqpIkdAJmJ0WSY6RU8=;
        b=Mre0MvmtGV10l6aNJk0xYte+6CPGHWkzpCAaFj1pDNsMhwR+QaWnhobKlrcVCssbvS
         kzuW/bgb+odKM86kZaMwpYcijjGjg/nSUkSBjKQ8wIQqqoYhNKfWD3Mbnoskl1S/Lpa3
         ULmJ1oYwYRmCkbcTF61u5rdBVppRluFT7OF1BZ+9lpU5J0AtGRDi+4eDOuaWScyOg74V
         mxsONSozqqHRqtJA26f7CDNmrsQDZy26fyOOvpXQk56azddS24CxWJ3YhRDUWBly2QMY
         nF3sl0ZU+TvnIr7FFgeJSzi3hLiOVrOGYZC77h6zvmNgxNI6PJQW6Ld81tqhMGlACZJb
         d4eg==
X-Forwarded-Encrypted: i=1; AJvYcCVvZuj8YnTQxfZiTfEZQtK4rzBMsKA47QY8c7aRu4hOzhEL1Z7RDg627ZecvGJJBaVzrlO41/s1WeosnfzRjuAjUuqDLQn5BtTKZw==
X-Gm-Message-State: AOJu0YxBf3vI8FE/r4cxLh89swhqHv1Qg4fiW2aqPooEYKHRAvaPWtkM
	b4b+2U490WaJ63XWtYhs4pudZLp3k7OfauKF83GbAXdhzAgCViMejr13WXqQBLWpt/CwBc6dtXg
	faQc=
X-Google-Smtp-Source: AGHT+IHz8qpXANHsae3i8Q5A+D6UOl4PLXlDcWGKlIA/MDSlr9/MG2Ra1tOuRseK9QfQDB2/EAwOaw==
X-Received: by 2002:adf:e68e:0:b0:341:8d8f:75c0 with SMTP id r14-20020adfe68e000000b003418d8f75c0mr677365wrm.49.1710845080477;
        Tue, 19 Mar 2024 03:44:40 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:40 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/7] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
Date: Tue, 19 Mar 2024 11:44:26 +0100
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIps+WUC/x3NTQ6CMBBA4auQWTtJy694FeKitoNMFJh0wNQQ7
 m7j8tu8d4BSZFK4FQdE+rDyumTYSwF+csuTkEM2lKasTWV73FZhjzpfU2NwF90iuRnFM6FFmb7
 o9oT+/cL6UTW27TvThQA5J5FGTv/VcD/PH5284G16AAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2238;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=a/bwYUWIjwUmxTcm9I0DfFrljEfMli7VVrDpFj8e/Ug=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyU+sT/DvItGJ+V7IXg4GhyLVyW35+3Ua+0z8XQ
 LBk3mXuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslAAKCRB33NvayMhJ0VGQD/
 wLV5QxEEuIyNN/JuyNE6NPWj9u9NEDef0G9Sjun98THGwaEHf5bm9VzYKTdo1Yz7+7ubyZq1xEtSXG
 bkY942FH2PYJQxRq7wQXPGrVwDcHdPr8cou3gR4/kW4Sqo8lmyTiteK0YctBkEwqmncBtC2vEuLun+
 mdItkdNWbdqM+QGpVpfTvD5/SlMBgRjEGH6uSTGaxiU5liulUwyW9cRgemJJggypmIsgd0g21v/wQs
 w0lsnxVKN6CV65fTuPY/h218xN034t4PKBr3JqS2kSIrVJxkaZN9tRMvsyvUyzvJrAyRpjPtItZSTr
 NMQCEpAxmtIsi40q7a72QS5faJ1KVfX80dYHcI5pemarB6YL3ZFUv+TfChUWSpHEJFFCB/1pZNZ7O9
 kyhTxAE8fDTfYoweTUXm+1q6e9UYMcaHbT2WoggVM80DQpFhSQ99l2xxTm5HQWiKLQccbNkMZUfvn5
 3TKMzQt4WQVezdWifyG1ydUphu7M7zb55bUpxnflJ+fL9x63Mpc4lFuNJuzkl/5kmAbP0XjBsrA0P4
 DyfQtGlAZccDUDWqGvVXM43l0yyuRBHlrBfVjMuhS9Vh5MgT6EDlIati2deDERlaExCq9SUO52OYrw
 iPdD+3uL+aTpZ9X7E9MzkpLnz2zijfZNjbJ9zIx0D1UQju00Qq71gN3WaDvg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

The PHY driver needs a light refactoring to support a second clock,
and finally the DT is changed to connect the PHY second clock to the
corresponding GCC input then drop the dummy fixed rate clock.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (7):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs
      phy: qcom: qmp-pcie: refactor clock register code
      phy: qcom: qmp-pcie: register second optional PHY AUX clock
      phy: qcom: qmp-pcie: register PHY AUX clock for SM8[456]50 4x2 PCIe PHY
      arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  27 +++++-
 arch/arm64/boot/dts/qcom/sm8450.dtsi               |   8 +-
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |   4 -
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts            |   4 -
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |   8 --
 arch/arm64/boot/dts/qcom/sm8550.dtsi               |  13 +--
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts            |   4 -
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   4 -
 arch/arm64/boot/dts/qcom/sm8650.dtsi               |  13 +--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 104 ++++++++++++++++++---
 include/dt-bindings/phy/phy-qcom-qmp.h             |   4 +
 11 files changed, 129 insertions(+), 64 deletions(-)
---
base-commit: 2e93f143ca010a5013528e1cfdc895f024fe8c21
change-id: 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-4b35169707dd

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


