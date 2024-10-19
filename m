Return-Path: <devicetree+bounces-113240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5FD9A4F55
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 17:45:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00F1D1C21E3C
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 15:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF6F18A6C6;
	Sat, 19 Oct 2024 15:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZbPQ8v+S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C782178CC5
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 15:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729352701; cv=none; b=sb7IJhG4LKrdrops+9lWoiXPdr5KJuz6h7QQR3drjU/1UK3awtHTpx60yi3zfH8yDh+uI+vcwyYB/593eQTBEtL4svtMxXsFdb3Ixzdir8kUXLTLEbc/smI/EMD4AAfMOSpzP38WWFiD8maYeEUOBNaSXAclIj6ucsVqZPR2hIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729352701; c=relaxed/simple;
	bh=Vwq8dyZKEj2ygSd1yqgy0fl5gmIjHUGwyRng0MKb4hQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oHSxRk7lHjxmRtGw8Gj0p9nYXelM//e0rxfCtRwFuVRe2dc+OcIHmnGkewnPAKOiu+iXblA/qccmttfZBRAgrMzSl7vQCNg1xFVkl/qa462gu+JeRlelZ22SmeDIyfbc+NlCpLPORRcZiPqm8nBmAm4inMcFmpwLAU+gDG++7K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZbPQ8v+S; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-539f2b95775so3799244e87.1
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 08:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729352696; x=1729957496; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2vR7kUbPUlHuQXy/cfDXaepxmyC5kLsf2VWQ+zQ+f7k=;
        b=ZbPQ8v+S/HctUYzlTO19pakw2Cc5cDZYv6pWd/edbFjV5Mkzw0opHkOKCn9srvfZX2
         xpdqBI1MrpsRqZCXeLPesbjwivWM4XIN2ebBDBchf3DLI2Wrl1RbYof5A06+irGQZC6h
         CPfmReh/g0K6ZBb7GfjPApDpJ1lGQ8dV1eDbqL1xxiOX5Rx3PKrxd7jjKY83K2uRAPvy
         Fws19c97VUEWWa+PhwxfRWC7jb+V3qCNn4vvmNKy9dgd1OpBNb2PrnKc1s7Ss11z8yJO
         N8/RSBP6MfdlopFaI0fgFu22JsFXSrywH4glcYnG1rWbROSmmQkrpAWFyIZzcQptPjhv
         irtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729352696; x=1729957496;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2vR7kUbPUlHuQXy/cfDXaepxmyC5kLsf2VWQ+zQ+f7k=;
        b=SzdHN/nD1KC4eBbFra/7Feg8ccmdVmJgzMrZl9yZ2baXrQHcsb9VAo1rx4IIo7Zia7
         cuCbKrx4dCi/SwzZ417te6/NgzmtSTAceYS3pkdgtNz54pBKHnTd3uIuEUuRZOyYYyX2
         zbkd1epis1o4piuJedN3peG0UH/W/X/42GOu9jlrVgwd5GkOdoA716DneeAfHKHIi7Je
         vqbg5r4/xLgkrhvChdGlzBuuJYFmKeUDHugwJ+1mXoga/estq27/A2+a/rY1neHSVtu9
         Y8nHJkhBGkcvWEVgU9swalNTXoZI8FTPWs0fvR8fBBY+fIMnjzU3fl6fUSTvqjXYt/SJ
         b/pw==
X-Forwarded-Encrypted: i=1; AJvYcCX4f98AgJyAagxzN78BPG5Th2p/FQDY4RaN4bsC/Mzm7CizG4i+eDj2/7N9lSTYBKCjng/ZfKLy9W56@vger.kernel.org
X-Gm-Message-State: AOJu0YxhFv7MWYEmU5gYeL/b4OCyXcyI1C1jZIaS3RRxYgOiBBVsbHFH
	VdpXMA6m0Qh4o5QXANE7ZgpzBkdBGof7EsTLLPMCR+AHYS9MVQT0wBEnZz7bj6g=
X-Google-Smtp-Source: AGHT+IH8AFk38xnx11zVMuNDhcJQkJyvHrqNFF1D6rb1QmK8TDJTwNLhG0QSoTp1nPAbDgMMlKMb1A==
X-Received: by 2002:a05:6512:3ca8:b0:536:a4f1:d214 with SMTP id 2adb3069b0e04-53a1544519emr4841543e87.19.1729352696015;
        Sat, 19 Oct 2024 08:44:56 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211401sm562854e87.249.2024.10.19.08.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 08:44:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/6] phy: qualcomm: add support for USB+DP and PCIe PHYs on
 SAR2130P
Date: Sat, 19 Oct 2024 18:44:49 +0300
Message-Id: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPHTE2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0Nz3eLEIiNDY4MC3YKMymJdEyMzc2PjJAsDQzNLJaCegqLUtMwKsHn
 RsbW1AKS8XxlfAAAA
X-Change-ID: 20241017-sar2130p-phys-426733b80169
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1542;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Vwq8dyZKEj2ygSd1yqgy0fl5gmIjHUGwyRng0MKb4hQ=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnE9PzYZWOONvC1WZ8PZ1mKMr6Opf7JrXjbI6m2
 MuG5OluqPmJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxPT8wAKCRAU23LtvoBl
 uEHcD/4gLcV0Lbco6iiFQ+CfYZbWxZNV6Qx8VSQuh15OTmj1Z+XkqjCJlAuMR8vbj4LTrn8t8Sr
 Nq0ApJUOP2m0dhsoDhP6L7rRJxHmNMRgu5xjSKWuU/YwNG+NaRuNFaLWE/2WzDbmbBYmMnf0IC/
 bNVMvzDPY6NDB6X6CYCzoOdJYn4waPRly+0l86I2LKXPVSFQ4L/iz5LRxGmz7nZenesikXu/88i
 SbUwoXl3u0zAYgkdOeaE4kn8QtWOLuhowmb+CMzEGHtr1jNxQdNDQ+ShUAd7FZ4ttGvSxZ1QRHw
 aOpqfl24Xw7vTVHakbP0v7KB2A2E/U1slpY9KuGy6N3uvaAjfmf4tQny7vO2j1uEMSCxhD03VDz
 bw41W8hfn0izP9IKN8yqkzhIqudR6dOLjsGe6VanZvUWbZnvgL/LPZtUokWrQvMZU+vkhoQL/BQ
 L9Pdgd9RqgICCHSbAAfkHIdbVRZkc/taz0fG3VyI1JtAIi15Al5a+Hi/rnqXcArq+oDnSpjsLSJ
 /EJxJ9HqPRWhuALrdDBtkhMP44Ur2e1W5fKjRpf4maRJ9Sky0vNr67lHnjb46hiqX1a7ul1tUYG
 U7m7tqbyobhOKpD9wLp2cDhxwgc++NASzbXvnNJYaFiRCFjXqE+Blr1fjmxrTU+DRsN03Ha23yU
 ALi0q+NAgB43eBQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add support for the USB+DP Combo PHY and PCIe PHY on the Qualcomm
SAR2130P platform.

The DP part of the combo PHY wasn't yet tested, but it is not possible
to support just the USB part of the PHY. DP part might require
additional fixes later.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (6):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb32dp: Add SAR2130P compatible
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add SAR2130P compatible
      phy: qualcomm: qmp-combo: add support for SAR2130P
      phy: qualcomm: qmp-pcie: split PCS_LANE1 region
      phy: qualcomm: qmp-pcie: define several new registers
      phy: qualcomm: qmp-pcie: add support for SAR2130P

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   2 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 100 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 173 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h |   5 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |   5 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h    |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h         |   2 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h    |   1 +
 9 files changed, 284 insertions(+), 9 deletions(-)
---
base-commit: f2493655d2d3d5c6958ed996b043c821c23ae8d3
change-id: 20241017-sar2130p-phys-426733b80169

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


