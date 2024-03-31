Return-Path: <devicetree+bounces-54870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9CE892E6D
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 05:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99C0C1F21778
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 03:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8743223A6;
	Sun, 31 Mar 2024 03:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jbomr4GU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D0415BB
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 03:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711856938; cv=none; b=NnuY/lQql2tAWXRWX8Sv2jqwavT5L6K7AWSJ483omKTtu41FKsa2kbtde4ojgW3MRDdVzmymfW1xmiHbRfzTQ6zrUI8xftX39//dkhRKMdnKgj3KkUfnTILuO4DYt9phlvt115ZOmQxis7xruSJEJyYJhbRUEIwYLdkkhK716Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711856938; c=relaxed/simple;
	bh=zITN5QCuHU4iazyacuTNUaT5peRKBGD8ThRsb06PYa4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aqUCO+gKGKjnPqZIKamI6xMfEJjYvmo8OBc1M5nOrn5uQWYK8uJVt7ri55S3lBsT3xTpdTposn9KoACUil4fF0JKctcu3UN8/UG1r98dKhlNceu9LELDGxY0K1uPun03QKQAC13042dxIF9SHmrV64p0QhISkQYpdo/JoekAAwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jbomr4GU; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-516a8c4c7e5so22336e87.2
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 20:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711856935; x=1712461735; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zcIjjhGkDyyDCmij+4AjyM4XF0koXXrr0CGroKIQa6Q=;
        b=Jbomr4GU689Pw9KtPY9ePVtn9nsYFKoje/0oya1x6YLuciGMqqG58XfwfpHgFeJuQm
         fItwTfKnywb3bWr7Q+jdTkHDfFqui5YsfOu/P7K7AaW/JevBVylesXK7DpwqDzF9dK7r
         KUcJcA//xk5fVUtlS5m4CmdQsnp2Byfc3mgWQS8Tf8ZWvd5YJ/16tZN1NpoSZ01a4/yV
         OLppm9td5wby3OIE/HtcLQv94mCV697T2YL5PxugOEOVgznpj82+9pPb7/P6mCqeUpNc
         9Avx2gt/fokAYwMO6jI6R0rH1sv51a4saBQOHTPVcEm6+PQw9HzasbwRXAO28nYdblwk
         3zFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711856935; x=1712461735;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zcIjjhGkDyyDCmij+4AjyM4XF0koXXrr0CGroKIQa6Q=;
        b=g6HFDEC4HHDZ5MGL6f0ME5bpVxk3kmiGkuziGbVc9xEYXXaetYJojlvDYSXQRlfNce
         qHc4CoBJlCXxmADMp5R985IgC0GwZxanQdd/1Utw/BbGYnVulaOIv2L9JQUZQccM/x7H
         4bSuzZbyHJl4CItVZepTnLSB+9hn9Yxjl9PGKEUcR5n5GX4QLaPEIcpPnMxNac48xAK2
         RJg+GipiladxF43XggLvQtQMUtqPNcgiiKEmqyFK0Dhk+sq54+PBEqRoWcaHRp/Bf/yk
         NM6AYztFDbQhRp+gc/A2yf5iuffzRWW9Oz6ZgIxzFPqrxu4EMPtJoh73dYWWo1p2vtFz
         vNNw==
X-Forwarded-Encrypted: i=1; AJvYcCU7iammvcq2CLavuOTAM8aKjz2AIIxRLzxf1oEqiVChoPs10H+KOzYNKW3GoiTILDunrAZ45A6k0WyTjRxvLWcynvk6lOKASaDctA==
X-Gm-Message-State: AOJu0YzCWNInR3ZNpxPl8vg8PSDt8X9wpkHHezjqUH6smfGAwufr/4xz
	kg2BXhV8LcMMA6qAxnmiMcsJHtolR/kCmfaZNqojNkFegJz6ZpH0Ek0UIswufd4=
X-Google-Smtp-Source: AGHT+IHjk5nGn7N0C4MLENt1cn/5oIuuRjcIGBL/HM2cUva877hwBY+UBY8U73oWesoqDCmCHm36xQ==
X-Received: by 2002:a05:6512:21ca:b0:516:a04f:d528 with SMTP id d10-20020a05651221ca00b00516a04fd528mr1345352lft.1.1711856934399;
        Sat, 30 Mar 2024 20:48:54 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k9-20020ac257c9000000b00515ce9f4a2bsm762980lfo.35.2024.03.30.20.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 20:48:53 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/7] arm64: dts: qcom: fix description of the Type-C
 signals
Date: Sun, 31 Mar 2024 06:48:50 +0300
Message-Id: <20240331-typec-fix-sm8250-v2-0-857acb6bd88e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACLdCGYC/32NSw7CMAxEr1J5jVFit/xW3AN1EYJpLUFSJVVFV
 fXuhB6A5ZvRvFkgS1LJcKkWSDJp1hgK0K4C37vQCeqjMJCh2jARjvMgHp/6wfw+UWOQ2ddHZ9i
 Z5gBlNiQp7aa8tYV7zWNM8/Yw2V/6RzZZNGidJ7ozs7jz9aXBpbiPqYN2XdcvEr1LubEAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1896;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=zITN5QCuHU4iazyacuTNUaT5peRKBGD8ThRsb06PYa4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCN0ku8vvVs1wO4dZSIogpuWosaNLyJX3YVTVH
 uJ5mU3zEVSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgjdJAAKCRCLPIo+Aiko
 1eilB/sFjKCQyiT7xLUKnK8PDHMxOqrcGMsV2D7RDiK2ChQQ5VexgJOiFKxg6Qo/yLQHZMlcdbd
 k7QoBK+o7su0Mnzl8o/w1gOUgePNqOUqL8GZ/cybxPRMLKPV5hoZks8HoIt4+FvbC4vItSeCUqu
 FNTo3gSJl6f/Flxykmzt8bJvL3ZJzMcT2yK7mt+dahiwkqzj1/gIdf0+Q0cwl88TeX9tHVIqKpP
 T0c4ic6ejGpZ18HDftZdjmF4VodByWhhdjkmNgOWFppc7tS1I7Boej3M8O/2fTLwnUd7sNb17k6
 OIR+9qIKCL7Mm7DNVjlKBjzknS8kb0WsyHF4Fb01IWBF1/Gi
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Rename the HS link between usb-c-connector and the DWC3 USB controller.
Add missing graph connection between the QMP PHY and DWC3 USB
controller.

Reported-by: Luca Weiss <luca.weiss@fairphone.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Fixed other platforms in addition to sm8250 (Bryan)
- Link to v1: https://lore.kernel.org/r/20240322-typec-fix-sm8250-v1-0-1ac22b333ea9@linaro.org

---
Dmitry Baryshkov (7):
      arm64: dts: qcom: sm8250: describe HS signals properly
      arm64: dts: qcom: sm8250: add a link between DWC3 and QMP PHY
      arm64: dts: qcom: sc8180x: switch USB+DP QMP PHYs to new bindings
      arm64: dts: qcom: sc8180x: describe USB signals properly
      arm64: dts: qcom: sc8280xp: describe USB signals properly
      arm64: dts: qcom: x1e80100: describe USB signals properly
      arm64: dts: qcom: sm8150-hdk: rename Type-C HS endpoints

 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts           |   8 +-
 .../arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts |  16 +-
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts        |  20 +--
 arch/arm64/boot/dts/qcom/sc8180x.dtsi              | 164 ++++++++++-----------
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts          |  20 +--
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |  20 +--
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             |  54 ++++++-
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts            |   4 +-
 .../boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi  |   8 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi               |  24 ++-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 149 ++++++++++++++++++-
 11 files changed, 340 insertions(+), 147 deletions(-)
---
base-commit: 13ee4a7161b6fd938aef6688ff43b163f6d83e37
change-id: 20240322-typec-fix-sm8250-33c47a03a056

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


