Return-Path: <devicetree+bounces-142197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B934A247E3
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 10:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C34C01885746
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 09:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3CB149C57;
	Sat,  1 Feb 2025 09:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dxs6qfoK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D558DBA34
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 09:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738401507; cv=none; b=IScpHo4jtCTc4IGGNttBLt2m24dJ5D+ufaPu6lOIg3AwTz0qRPx1K7kNn2SL4mJPTaY6XuI/NAY/LzXqZUAMwv3IJhd/XYB4P8K81pkbtEOWuGOGg/Cm1rFjU2530g3e5OUnfHe1YW+ayP3FxZI5zr59sZvwuZ1p3Ck9M2SiYh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738401507; c=relaxed/simple;
	bh=4qP1R4QL7a2XCzsO9D2B+ppmsFIePsnOmtMp2m3zHrg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TG1ag6zXBEumYRAv5eAU55TiwJU4uYm1TZhLT6ZxmOWk/wWGeaOC/cul2MlmDpPFLOqbL1+pCNDtzwRzqWP2Qp0l83eXSTVpH6DUFUBbfUAD7FfZ80iOTEgCOKaUOR8rx2MGpg0Uqxbc99M7PIXLtcdZHMUpR4ZGEFKGVWyaW20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dxs6qfoK; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-540218726d5so2610421e87.2
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 01:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738401502; x=1739006302; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dzmrjdR0yHCLpHq8/GHmK7t2cRCAh1HvefbrwzlazCI=;
        b=Dxs6qfoKd4IaVC7JQ/y49jS9UraL0NV/paZo3N0ZKmFHbJYOhjy9Zxr5CuJa/nZrJt
         YcxHUOM+3+a+DPnD2/cMVF1vf7yTf426L86aQdumNpCiPHYQAaW6yaEOLe70D8qB0qs5
         8QKV2b6zagea3Z2oqzVyZsNo4Gj37FQYiT+zjUQKf51fXgpykr7ncmMoxEn7yBhH6HbO
         Q23HCk28ICfyE8SXVr4/vDZYPkbO/dmzBjGU9K0YqB5Y5G+wbYJN/C7wIUGmg9xZLXrr
         FSpZA26O+jgyqwv5IKcbpn0v+YiV0k4rKHF1DTvn0xOJjTXcNYTdgVDHy6odkBScMUAu
         YXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738401502; x=1739006302;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dzmrjdR0yHCLpHq8/GHmK7t2cRCAh1HvefbrwzlazCI=;
        b=Ra5pfawyF8XhvaO4vZl70NRV/UgGlNSRlpb5lQbysDVH1+BwsnBtN9J1Q8MdbEgGZ9
         0g/yB3Y3tSzM3hAXA3owXk1nQG0+F9Ax0A6mLJMQey+/2/cxcZE8S4agPsM3YM7MuUXu
         uR6QQYVD8qgjadL1Q69j3ETSPGAVXIFyq9OJhOAx4tQWVnHD9s+ZgGEgDsdYSsRyq2GS
         v1awMeHxv2SQvzgcHFN1SrM2aB4dN2SKvLjnhF+T0LalFbTFwr3b5f5xHc35Kn9lSzaq
         tOhHlJSnhUrQRro3skwj1v1KCci0MlK7QH+UuQqlpc6dYlx7ISKDU4NQ7hXC3QicJu3/
         GZ5g==
X-Forwarded-Encrypted: i=1; AJvYcCUUGXSZ+LS1N+DXXzpoywSaE9VBY362gebuuCyrAX82BZo5NrECbAP4kJSI3hbfU1wLBVbwVOR4kBdf@vger.kernel.org
X-Gm-Message-State: AOJu0YwmK/fYHE2L1jAItt72JqfB6DswAJhGz8d5z+Vzn2lKENyuZGba
	9SyNIHk+8KLdXZACKph/7+d97pEvHZu0mOGDmhaUZqQKcqKmLNZQxjo02E04rYM=
X-Gm-Gg: ASbGnctO7DRKInuguQimsy9f1IgiSwKFNZm6/dSuYO5HueBCBoTpRqioLWQMgn/HSmF
	xfpTqCb6ve6lUtIBpqo7M9xIzv9X1YbjzdRywt5y3J1Yz8M9M+rAWp3Mm/NyA+/8V5JRMyAl0CD
	fJRvkqi6Yg7aXVY65c8Q+rtRh8Oytcl6ABF0HgTqyQe0H0CVTBTDubC2v2tffBbOGNcUBivB+Hr
	gt5FjpwWNlmd3Ioq8r+hW3suxDc0JmbqeHd53qVkfh6Zkc0+AKyGTVaQQ4B2CrjDhPG2BdIjizB
	OPQO8HMB7LgNeqWDKNAUnsc=
X-Google-Smtp-Source: AGHT+IGVbi1/vJeJZWONWsavIaow1nP64zjVv/L4qoDCyPBTEHnkS/T9hx2T8QVksVHMBre6z5V30g==
X-Received: by 2002:a05:6512:3b26:b0:540:1c6e:f040 with SMTP id 2adb3069b0e04-543e4c3c355mr4857407e87.45.1738401501922;
        Sat, 01 Feb 2025 01:18:21 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebe0ff47sm711234e87.93.2025.02.01.01.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 01:18:20 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/4] Bluetooth: qca: add Qualcomm WCN3950 BT/WiFi chip
 support
Date: Sat, 01 Feb 2025 11:18:11 +0200
Message-Id: <20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANPmnWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIwND3aIkQ92kEt3k1GTzRGNDE0tLwxQloOKCotS0zAqwQdGxtbUAUgv
 G81gAAAA=
X-Change-ID: 20250201-rb1-bt-cec7a314991d
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1089;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=4qP1R4QL7a2XCzsO9D2B+ppmsFIePsnOmtMp2m3zHrg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnnebbtNjOJgirn/5PLm6n0j45AEUUDo2C+tic5
 6NH8XK5JgiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ53m2wAKCRCLPIo+Aiko
 1ayfB/0QH2dT03oTJ6DN4/zrzi+DPNgB3ZgIfqZ5dB8phqZQPBtPlaaE2H06julMFthnRdGyDED
 5HJleC2c7WhaW5CsgUikyj00hB0fHbSKZsObxKcdi2epEIWaWW6lxb1yv4zfP5SCOkhkjBHEcW/
 D1Mxu8Zq3ixhVg0H89H7DRD3J0S0L4O0X1/ZnVYehCixInevwXk3qsBFWAJh2Ryw1whxofZM/Vl
 iw1Xnqnib4v+bKGOIFDAelHkUXNzFrnzPtJjAupV6vg04OnAgFYJKryOqqbWod5wjy89GUiaUBK
 kyDaKQXag0RkZrjgobJ13pIqMGycu5/VmtP8eSyl1Z0aYoVa
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Qualcomm Robotics RB1 platform uses a new member of the WCN39xx family
of BT/WiFi chips. Add support for this member of the family and enable
it to be used on the RB1 board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (4):
      dt-bindings: net: bluetooth: qualcomm: document WCN3950
      Bluetooth: qca: add WCN3950 support
      arm64: dts: qcom: qcm2290: add UART3 device
      arm64: dts: qcom: qrb2210-rb1: add Bluetooth support

 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml |  2 +
 arch/arm64/boot/dts/qcom/qcm2290.dtsi              | 15 ++++
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts           | 81 ++++++++++++++++++++++
 drivers/bluetooth/btqca.c                          |  9 +++
 drivers/bluetooth/btqca.h                          |  1 +
 drivers/bluetooth/hci_qca.c                        | 25 +++++++
 6 files changed, 133 insertions(+)
---
base-commit: 88b6bfc04cc5f60ce79c25cd27fe83f7fb4468bf
change-id: 20250201-rb1-bt-cec7a314991d

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


