Return-Path: <devicetree+bounces-144110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E979BA2CE39
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:41:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A53E17A558F
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57EE41A8407;
	Fri,  7 Feb 2025 20:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="crUAExUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4804F1A5B94
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738960885; cv=none; b=GOI7BAjuXRiFB7Y09Mu7l/iAAA32wEx5wwXJAa2oG5Or28Fyw7VMbHRYQxtEYeYa7u8jD1sdZfrMt6moW1Ztcy3suTr8oNYLtqoVzVYuuGCMaiarj3DHjveEzJVEx7J07oSxxBZRbE9sSX3CjvjhhYeoMKd221XmXcHMqPcQ988=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738960885; c=relaxed/simple;
	bh=qiQogY4nWHYMJ5BN+x5c7UGCpSpgl8ehDDro3OyQnYE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=M1PXwGwyNPx9Hy9+bIt0h7jaMtb2gUnPJOI/2uzXE/ZUECb+WGaLgb73g5tB6SuQoKUHdmVWN/AyIV7XhwWduxBhEmLKCfY4pPK+Bn/lI9d/oErbrSRrdSFee4rJyn1LOI9s6N8NZ8S8Yzrb2XXBcidp2XbLfZTgjZwuzcNAl1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=crUAExUj; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-307e00d6b09so17807771fa.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738960881; x=1739565681; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AxTbsKhJE4yee5eNW0RBl8yAXgK28pIKigb6T5Yer0o=;
        b=crUAExUjEsoYfPXVt7lBlim9CkNitrIHAVnT5p/deBwfhReuOog4iAspBlhHaKbt0T
         1ezO479E8oG1lIiOTho9+hvmCXZ05NUmBPCIkK8lTOExhAVTv69i6xEVzRZvh4j/StHG
         dXdMtieRUekahPMsOD5IhfAC+fUvTvZp72G1vjeTKdyHbcXFrUiX+KkyCgHbu/AyVUv1
         IJlj2arHnpZ/fKNrrmWWWmTl8ll80qBY1LL/FG3/WUh9eIhyhTk/1AUkoVmlEixOo1pi
         mRLYgKJuDleW1YWaHBF6C84gn1A5DGI4FtOX6h+cD5wmqBHh55nmMYn9N+g7aJrRXsLX
         ha1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738960881; x=1739565681;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AxTbsKhJE4yee5eNW0RBl8yAXgK28pIKigb6T5Yer0o=;
        b=knUYzsbj2xlD4xGZkvNgG/JI5NJMsIFPnBDPmXz8OXjLOJRltZvFQ9mgEXjX8e7aQ+
         rp2ZlrG5eQrkFAqXtcfecJsc92BlG1TKxgsu8TuKUsT3JkYJUSbaFHzKim2xT16r+Ozf
         oaW3He/sijQ0OfEAzgALq5GcyBLAl4AlJkvJgHFBdEXsHIhZVMyY1kuVlEDMOdW5sRDx
         1sZkGBdmycn+1fRJn2z75UbUVoSd46U9VqG55X4nW37F8GkUBFZBXpb8yLiTThM1wMZE
         IkAQcztPkAIaRkA/5cGoU/GX7e/GNJKiVdhDLvp45UBP+xLWhSei4awTcLw30wMTVul3
         E8Cw==
X-Forwarded-Encrypted: i=1; AJvYcCXOdKBAErv6PRcENrH5N2qtOIz536I27kzbAc/vnkGbiG/Vc+kA9Bj/fa5db/6AdF4YWLu8UKSJ8mTl@vger.kernel.org
X-Gm-Message-State: AOJu0YzwHL7i/AXzJbljnGdk1Vus/H5BYBu3TaH7p0JKa7QRQWb0+Fwa
	BCAu4yZLYQe1KidKxulzy4EoZsULcVrq+nY5p4bl8Xs6VujjjzJPMLBIAewABk0=
X-Gm-Gg: ASbGncsoxyGTjmRnF71Ht/M4MKO6Zyf6Et6ZBXsK7Q8rN5Mcj4lv8YBsI+4i3njdyGl
	/byOxTGZQ+f3Yl7llLaUPl48Map+mTXinGkpzf/fr6aSq/Kcavti9siTlaC20kyCIzKfXG3OGrE
	Prk6TqjkOW7Kr2S1/VpXzKmd6uVyAKKqd+QR3RcyHVsbUpnrY2/Z3G7r8oMbSVYfQreqAJMsQm3
	McBQYdGZBH8Ra5mUlsbQ1PmbkGQMKIppVCF8IbgTyXYFM9Z9hnQ1gNBot4W/BpXO4iinocX5WKE
	WH2i6q06KuOjoHCSe4taTb0=
X-Google-Smtp-Source: AGHT+IFW7Wi+qx6pPTX7V3zT7yPLzOOq54XAmuBFxAdNvG6EcqWrudwijkyuNYxTfyXx/zQlqlOKCg==
X-Received: by 2002:a05:651c:12c3:b0:304:9de0:7d9 with SMTP id 38308e7fff4ca-307e57fd306mr16769571fa.21.1738960881315;
        Fri, 07 Feb 2025 12:41:21 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de178628sm5343811fa.10.2025.02.07.12.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:41:20 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v4 0/6] Bluetooth: qca: add Qualcomm WCN3950 BT/WiFi chip
 support
Date: Fri, 07 Feb 2025 22:41:14 +0200
Message-Id: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOpvpmcC/23MTQrCMBCG4auUrI1kkrFpXHkPcZG/tgFpJClFK
 b27aRei1OU3zPPOJPsUfCbnaibJTyGHOJSBh4rYXg+dp8GVTTjjJ8YZ0GSAmpFab6UWgEqBI+X
 5kXwbnlvoeiu7D3mM6bV1J1ivu8QElFHtG1VbVFy45nIPg07xGFNH1sbE/zteXOsQGYBEZczOi
 W/HP04UV0slNWItrXc/blmWN0yvH38NAQAA
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
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1944;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=qiQogY4nWHYMJ5BN+x5c7UGCpSpgl8ehDDro3OyQnYE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnpm/tYXWlo4SnQJGUzZQ8nYM1MuZaf9S1YOcAj
 csbfBBW7GWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6Zv7QAKCRCLPIo+Aiko
 1ahpB/40yzVZal2uwoGmtjui0KAWyW6I89DEeVMcNHyOrirx8Ff0ghNIjjw1VeABQLQpeS7XvVN
 xlIHUaRBg+cMxj7Jkc6lyLOzqBrVpcckcp1ir46nGXucNrQH3vGQmb5eXDejSCGmh/L9Vr5YmlM
 FVxquuEHz98oL68adwZaGjiKRn9WOA5vt3x7R9mk5PW+zCveBOvp3aMG5omVUZ5iUMtAnP6vjXA
 3bfCWa7aEkibpngAMIEo6MLte9BoC/7nByW68KNrwUt6hG6aCLWRMiUq2p2J4Gq4ohJujhukHBg
 DB9Poye+ldSNB7YusTxFCrVPxE6Syl1nDvVLbXPCBCSUApmu
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Qualcomm Robotics RB1 platform uses a new member of the WCN39xx family
of BT/WiFi chips. Add support for this member of the family and enable
it to be used on the RB1 board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v4:
- Added empty line before status property (Konrad)
- Reword Bluetooth commit message to follow linux-firmware changes
  (cmnv13t.bin and cmnv13s.bin were merged).
- Link to v3: https://lore.kernel.org/r/20250202-rb1-bt-v3-0-6797a4467ced@linaro.org

Changes in v3:
- Mention new firmware files.
- Link to v2: https://lore.kernel.org/r/20250201-rb1-bt-v2-0-fd44011749bb@linaro.org

Changes in v2:
- Corrected QUP interconnects (Konrad)
- Added /delete-property/ interrupts and an empty line before status
  (Konrad)
- Enabled downloading of different NVMs as required for v1.3 of the chip.
- Link to v1: https://lore.kernel.org/r/20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org

---
Dmitry Baryshkov (6):
      dt-bindings: net: bluetooth: qualcomm: document WCN3950
      Bluetooth: qca: simplify WCN399x NVM loading
      Bluetooth: qca: add WCN3950 support
      arm64: dts: qcom: qcm2290: fix (some) of QUP interconnects
      arm64: dts: qcom: qcm2290: add UART3 device
      arm64: dts: qcom: qrb2210-rb1: add Bluetooth support

 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml |  2 +
 arch/arm64/boot/dts/qcom/qcm2290.dtsi              | 31 +++++---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts           | 83 ++++++++++++++++++++++
 drivers/bluetooth/btqca.c                          | 27 +++++--
 drivers/bluetooth/btqca.h                          |  4 ++
 drivers/bluetooth/hci_qca.c                        | 25 +++++++
 6 files changed, 157 insertions(+), 15 deletions(-)
---
base-commit: a1d1e1f2fae5fcb5f2e43b81afa9596c606e683d
change-id: 20250201-rb1-bt-cec7a314991d

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


