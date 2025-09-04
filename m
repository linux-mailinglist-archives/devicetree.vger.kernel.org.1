Return-Path: <devicetree+bounces-212557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C69B43338
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5D801BC6BEE
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 07:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C4F2877EE;
	Thu,  4 Sep 2025 06:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZatjNClD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40301286412
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 06:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756968984; cv=none; b=WnQGemNm0JeRffXs0U8/4tMlB8npqN2/z3sGIalvl35sgHRZ1X27E2tCfdEppTYpwHx+DJXOaLMn7W6MwrzkuHT9HL0Fgvv2RX8d7bGjExHIUJtwhafQeyYXPwFPkmGwb6TnoOeujHjDt3bbu5/LZL6z4fEmmOQ/b4ZKyWpeZTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756968984; c=relaxed/simple;
	bh=+jM2IX9YMvgKOzlDNA7D7HKUcXHwlAxrld3bjm7TAGs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=J0igSSCZQLaKgeO9eDp644nTxbrz4iwW/9+XLiUbeorh7L3zBc0rsXuofDinjVNJ9w7ylSwJXEikMxZWxrCJgAZjEsTtuqn/gGyAYtxVJDMAHzvyWpcE+jYY9PMgXlgez7+l8ihU626in4l+IgedTUHjQbymKCjDBiSBP3zB5gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZatjNClD; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3d1bf79d7acso411856f8f.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 23:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968980; x=1757573780; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A7W+MHt4m6RVZcMRRD040CxW9PQRGlDxO7dLPVoTn8U=;
        b=ZatjNClD4NdSb6p/YXRVkD8WTsvJjLUfQ6hDBkDZsYaYzj3QYO2HLU/cgghT61lMoS
         JJvb4ISr/bKYnyS6iQQT0tBWiyc8vkoIlJ8i6+aTts6rEvLv8jbH8Oh/9oWOC+6Z9jrP
         +JUXrXBh0OcDJ/fiyOAxLbnQS8QrT1dV0KuRM7lytGuyt8DZRonCK7Ogx8xO4z6DDMbx
         AniWYv+yIE44dNjIitlrehLb4ytiKSZglEay8G1kEWA1O9vSmXpkhpywLf8zORn6//uW
         fE0W+IkgdvCmgCFbLeoGljXvFoXaIsLVT4d/NEXQVJAzniEFQyy8vRxLOL6K/T/Lphmw
         XjoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968980; x=1757573780;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A7W+MHt4m6RVZcMRRD040CxW9PQRGlDxO7dLPVoTn8U=;
        b=FsLzYxsibFkQc1UwbxxiXGtxeKSZadbH1ysoTpJnWACw9LME5Gnfn9Oz8ykdRQwfnn
         +NQB3IVfQ3BjF4WODThnPzb6zm9bVoYe1OnJ8Cr7giYd9x9sQyL5pmtjgOd0uauTJvn3
         h9x1BK1CIng+98/K3RLYo1u2YOoqrPdovnUM0QJLrAehweetSw3lZbMNllquPIvFMvl+
         +ZHGMhnq5J/HnwOD9881ZGUYEsGuUS1fixASs4SZd7yVVIdyJ8C0E5oCdVIqaKJ5SM2o
         M21masWio1IL8jYlt2yd7cJgXIei6v6AR/rHbKttGp6XFMc0UvuoYXisLjr7/jSU4FL6
         jHfw==
X-Forwarded-Encrypted: i=1; AJvYcCW7iaNk83+KxW+ssHLmiXXG7N3W5imXRjuDEg54uj/EboIvW8eL/sKHTLR7kFMLsEDz55xrWatI9tn0@vger.kernel.org
X-Gm-Message-State: AOJu0YwEN3ITNfJ6n+j9ox/X1AJx6fy8rmnRRFcb6FMTIpPLNaTNNL+Z
	86xEyrQxAIF8nUEiNw0anzOrHR7jRlvzb5pSgGlUteUP6Vkk8EbhE+UylLFRQXzR9N8=
X-Gm-Gg: ASbGnctbCRQDZAQLdwrmgYnilLkb5/2S7JDPFWpw7XRNMJ7yflCaBCprz7Qsrh4UX2i
	I3bZYjGY+ckfTYRWJld5QhYIYxFzFVikCIpQQ8W5N1LDRRa78liS5LnvAvDvDOElm0k62UN+GPe
	/tYC1lqDRMoc9yGyH5io6IIhgBpYufeP6KDO379Zul1iLfma4P83Ls2ZDxwtX569214xv+Xgt4+
	sEH1u31Ysq8WSs0zPE9b4EVTrLN70HqWgqrWDcX3nDCD+jEyHBYKL4gzEkZZTStXkPcDS+0evyE
	VN39MJxAkNxEe05LhukOYUe3D/dRm2ah6AxFLlDL7qy67/A4na3bVJZC3OHQoHqBNHoy0ooRxfZ
	6P5QTLCgmNm+oDbWyy5EGgdc=
X-Google-Smtp-Source: AGHT+IHrlWEGIp2jfPvPNYCuVdAm78L04cC7Ows1hq2QFUYr3F3uBfqzroHI+RRBQ1DT0GzNgdWAmw==
X-Received: by 2002:a05:6000:2410:b0:3d8:e1de:7e4f with SMTP id ffacd0b85a97d-3d8e1edc849mr7713856f8f.21.1756968980518;
        Wed, 03 Sep 2025 23:56:20 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm15256075f8f.58.2025.09.03.23.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:56:19 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/3] phy: qcom: edp: Add support for Glymur platform
Date: Thu, 04 Sep 2025 09:55:50 +0300
Message-Id: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPY3uWgC/x3NwQ6CMAyA4VchPdtkmyEyX8V4mLRCE2G1EwMhv
 LuLx+/y/zsUNuEC12YH468UyXOFPzXQj2keGIWqIbjQuujOqOOG7z5PyKSYiHB4bdNiWBbVbB8
 MqfP+QjE8ugi1osZPWf+H2/04fqXvaLtxAAAA
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1007; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=+jM2IX9YMvgKOzlDNA7D7HKUcXHwlAxrld3bjm7TAGs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouTgDQFMOO1/9mhrp0khsNUjrwKGAFRw3CHW07
 Hih9CyAHpmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLk4AwAKCRAbX0TJAJUV
 VmTXD/4zu1EOD49T4qwPcqvkip86WFCaFmszidMLCD93/3N4woAbLZB8JdxI9eARWU6Zem3C3lt
 yfdiv9Q7HGdjWWfV/ODOm0t/jDeQGAAZeq8hr3Vd4g1gTu/bCN6Y5xceXFN03tQpWd3amXWoLOi
 3zd9kAZRHVbhWK9TKfuwZOT3YL7cru7WgYbiF/zgNU60V25aDradkYLqHr7mcWmn+w5opiawp8C
 PcRNxTXFCUA6qhzChaxD681voDzUsJXUks4Eg78ii9z26niuCy1NCNYo2cukISD6x3Pv21I1Wg0
 IpOhTWYt35FtvX/OsS9nwYlhw4cZsh5ALi+4xj4aC3/+sVZSlMCS9t5DjXG/dARqQ+S1cleu//P
 JGWiZOeYNJ8/vqv0FkiVzucsQ1nF81BIX8tXw+fD9kykg7aA5ZvXhL/wUjb/9emetL/Tkuaibct
 MPi+if842R8FDDfcW0yX5/mW3i3fWnQFq7T1Y5tMO3CtzheLdFcHiBLk0FtxtfhMs+gFL2IZ0Vu
 z3ND2HzuA5Ud2B0dqBcME4QSCr/+1npIXHFIJDwklM9NALKGsxRT8xo3NE2qQDLMhFZwbxhSdgI
 PL1FfUbrmF2GSGKUrg2YVFFzAN3q1LnyF7GviTDdpAbnLUUAMTHLb0S1l6+AbqUzgmG31GYnXAW
 cjsoAyH2v97Y7sA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (3):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 239 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  12 ++
 3 files changed, 246 insertions(+), 7 deletions(-)
---
base-commit: ab918b506f0121423beef123577d5071eebf9218
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


