Return-Path: <devicetree+bounces-134720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA689FE5E5
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69DD83A2082
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:44:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709D51A7AFD;
	Mon, 30 Dec 2024 12:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m/03fgQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFD82594B9
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562692; cv=none; b=fEwIehb9RP3K2rGgdE2Rj6eGr6N7uFO5qnH8jjWQAR272IbOW+DFlBBUlu4VCDzGCLhGv2bY4EGaD2s5F2BbBLOt/bVgHiEMIBxTYiq12LzA7b8xARkHFlb1hD98UQ7Q1NIe4F28lx1UtN2ZVTGjK0tVSCfuizepidMQUEH5fJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562692; c=relaxed/simple;
	bh=RhltodtPcW7r7B0uL8LVrIcBwCnnz8PK8N2Rw/nrhf8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NIhuIS3nsO2eijK3xbJ4m6P6FqmrZ3vnt4M5EFV1ledOE1eiZk7hyifp3jMqFtZLANSx3GXk3ki4gB3CEsVCrkWs01BFMwM0M6vxRF4F/vSsZmIGJBwIGCjuE21QIfqFAVO9k063j9erWPBYWg/PJIOaV/YU2hHs5nw0YOGOY80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m/03fgQR; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-436202dd7f6so103861805e9.0
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562689; x=1736167489; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lZY1f36tFwzV1C7KK9+ZeFDphTcuqe6R5XRX6RVDYuM=;
        b=m/03fgQRuLZAQ/Ua9CBYXat3Ke8zEVpctSEE7Dy+lGYKcJzECrQHQ0QMn1bIHofScP
         qUUi2U9eLthQ4lKtRSFbAbH3hKc6UOVWLqo2k42b44/5iFHp5aV3u9pf4g8LWbguTRcC
         K7pbm6xWB5aR43qkAiur/LPtxEP4jJ6yNmiOO8gghwL4MdH04RScg7jR62qVJDqJD8tU
         ap/GF8hqedPa5NEDdvxyurABuwEeQ0X8ZYVOfPKFI4SxPrAtr7/HcsPeL1qeRsT87vKB
         wxN2qrr99YewC1nctTrAovr7khJYDzt69bO2QSFtCXK2miwrTn6vuXxW10L7nDlkQeg/
         EfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562689; x=1736167489;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lZY1f36tFwzV1C7KK9+ZeFDphTcuqe6R5XRX6RVDYuM=;
        b=G/iwSpwnraj24HRnMpSmVe2wbZM1lCE/L0nXZMmjACwXj5/jXcx5kL+4RvMqCRxouT
         YuzoNf17nIPTiqQ5kdyasNb6jkN017zH//iketMrs1IyHVgAzG00ojNv6uZwTZT9rAJf
         xPcqUwcxFdGTPN9N4nM7NGswV5nTVzZNAnwQ7l1FQHSFhuuVKTJ5SQOSbrJ6r8VW8e09
         JLLeP7iNkStlsaW7MKCBGGo8uQ0GuZ0uoHYJMBMl1Wa9jfP+/FXNuupyRCYvPZQ4kQrW
         ikbEzwV3eNTaJIIL24eifUpo1xIe/Q1CeyVx8hDjIE+3buwCyHJH19F215pZENFEePaG
         fO4w==
X-Forwarded-Encrypted: i=1; AJvYcCWS3Cn9LBuTo9nvf3ECX/pAhj3HvKZGKyShyd3diei5ecbH0eaZfix+TlVV7ih2lajt722Ti70OzUD3@vger.kernel.org
X-Gm-Message-State: AOJu0YzpcqsIZymXlAPuo8hF3VfVnuU8h9DroS54AN0PjWMvhSAKR9PG
	0wGgf0f33dQ8YivJc9xu7iUUaxQyM/Cn6B1D5eHj3vlUtzjb3fQ2/7J9U72FbvY=
X-Gm-Gg: ASbGncvatMwInHHvKvKC93ANW6TvyeX7UPsng71INbhxKAf1s0pskwKqYpVqm4nQ6n2
	nw5/Pwpy7YpW2f5DIUZ8i8Z+1vX73BcxOraB3lwCLan702eyndB4dDsI9F5ojeooMb5YEWcL1oC
	o1rQ2cENQQjA0AecL9TLFlXXq5mg81frxI/XiFA+CJp4TS1413Ads7f4qLAPB3kRpmGVb1dNLVe
	MYF5QnzRKnXfAmrNf0qWqvB1i8holotA5wGQgVxtRMTsErMaBGbDkjZaoeljkR5ajS+4tshhu+F
	vg==
X-Google-Smtp-Source: AGHT+IExlOHTSYHWAf/WjJxv2pN1rtMK21nDKrWIRJbHx+V4XpAD2lt4NFsi3LESEVT9EdzALBF8iQ==
X-Received: by 2002:a05:600c:3596:b0:434:f9c4:a850 with SMTP id 5b1f17b1804b1-4366864408emr374287665e9.10.1735562688773;
        Mon, 30 Dec 2024 04:44:48 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366121955fsm359913215e9.21.2024.12.30.04.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:44:48 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 0/6] arm64: dts: qcom: misc DT bindings check fixes
Date: Mon, 30 Dec 2024 13:44:43 +0100
Message-Id: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALuVcmcC/33NTQ6CMBAF4KuYrq3plFLElfcwLvoHTKKUtKTRE
 O5uYYWRuHxv8r6ZSHQBXSSXw0SCSxjR9zmI44GYTvWto2hzJpxxAZwJOvoBDX1iNNSOtMGXi1Q
 KebaqrpQwmuTlENx6yMPbPecO4+jDe32SYGn/ewkoo9IWnGkpSuHk9YG9Cv7kQ0sWMPEtIvcRn
 pFGS10bZY2omh+k2CAA+0iREQZMGWAlrzV8IfM8fwAaOsjNQQEAAA==
X-Change-ID: 20241204-topic-misc-dt-fixes-6468da97a4cb
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Felipe Balbi <felipe.balbi@microsoft.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Douglas Anderson <dianders@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1855;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RhltodtPcW7r7B0uL8LVrIcBwCnnz8PK8N2Rw/nrhf8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBncpW8Flr9lJ10RVMDph7v6EnF15nVQvNsvCHJW3td
 xu6o9pOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ3KVvAAKCRB33NvayMhJ0dKTD/
 4/RT2jfImRz+4My3SaxMWayF70TTGfBBvhYsyMTJ2zm36gEsW5FU6PWtxEEUjMn9lkXr3EazpdDC71
 dAjrvd6Dm5888iT5QxQrAF+MXCeiawImlCPrnT9ZtATvqtris+UdJDpvHBocPwMwg+VsVS4FbV/aYW
 uN/nT4sB2RxWXsKg4BAMY//huqzJkopFz12e49DN5DQNLEsY2fKHgeA0vwYkX6DbCgkynuXFZYrYrZ
 vlwpK7fVRqOUpDgfJTiBMMEeJ7xfnc1DlAvv96l6Yp2/IN0xrU55icN1B61EH/MnjowQwtIWWnFE8W
 e2JCPJVAw56K32GLLmavdVwOgpr4uuHBUUS9bSbc7wYjLYOKxd2cb4b+vDM4eLwmgEGFkIPsl+ysxu
 mAU/bNzLDp3WYCItW+y+YaqY1UjwiLgnr8kqMluhoM4f7MPctPa0RAYNrl8MTqwNLffPYBEzdD9iET
 6Ee+h55AVBcVvZ0RNUBD78kec3nOb/E9ZYc/tRc9RfOW0hBFcJpX1bhbNE38J+QyTwF6+f92nRUnjD
 L+H63/GUZX7UG12ZqiZLtLcQRm3T/HhIKSGAQPm1bEA5FYxXX5qm3rzwUbh5Y6WSoxJK05fohGI976
 14U8MHiaUApiqk/3+ZEoOQtrHbYkd4+QVAGFzBAAouPzfIZp3HiQDUMl5lBg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Here's a set of DT bindings check fixes

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v4:
- rebase on next-20241220
- add review tag
- Link to v3: https://lore.kernel.org/r/20241211-topic-misc-dt-fixes-v3-0-010ac10529b1@linaro.org

Changes in v3:
- Added review tag and missing fixes tag on last patch
- Link to v2: https://lore.kernel.org/r/20241206-topic-misc-dt-fixes-v2-0-fb6b9cadc47f@linaro.org

Changes in v2:
- Collected reviews from Dmitry & Doug
- Dropped camera support entirely in sdm845-db845c-navigation-mezzanine
- Added fixes for sm8150-microsoft-surface-duo
- Link to v1: https://lore.kernel.org/r/20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org

---
Neil Armstrong (6):
      arm64: dts: qcom: qcm6490-shift-otter: remove invalid orientation-switch
      arm64: dts: qcom: sdm845-db845c-navigation-mezzanine: remove disabled ov7251 camera
      arm64: dts: qcom: sc7180-trogdor-quackingstick: add missing avee-supply
      arm64: dts: qcom: sc7180-trogdor-pompom: rename 5v-choke thermal zone
      arm64: dts: qcom: sc7180: fix psci power domain node names
      arm64: dts: qcom: sm8150-microsoft-surface-duo: fix typos in da7280 properties

 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts   |  2 --
 .../arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi |  4 +--
 .../dts/qcom/sc7180-trogdor-quackingstick.dtsi     |  1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi               | 18 +++++-----
 .../qcom/sdm845-db845c-navigation-mezzanine.dtso   | 42 ----------------------
 .../boot/dts/qcom/sm8150-microsoft-surface-duo.dts |  4 +--
 6 files changed, 14 insertions(+), 57 deletions(-)
---
base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
change-id: 20241204-topic-misc-dt-fixes-6468da97a4cb

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


