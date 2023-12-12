Return-Path: <devicetree+bounces-24340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A365580EC73
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3A611C20AF9
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83F2860EC0;
	Tue, 12 Dec 2023 12:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="vGRocFg6"
X-Original-To: devicetree@vger.kernel.org
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DDE794;
	Tue, 12 Dec 2023 04:49:24 -0800 (PST)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id D0AC94055E;
	Tue, 12 Dec 2023 17:49:19 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1702385360; bh=xFPFmz9fsOLXhhrMLkO4fvtQbfof7wfzBF6Z1Vazxa4=;
	h=From:Subject:Date:To:Cc:From;
	b=vGRocFg63MUT6d05xfPiF5NwJF6E0XmREHY5ilqf2t0mFSdJpVPxJh8I8irBMWKIf
	 dcDtNOQCAVhyKh+eTaW9aLAdIQFRiM/12Fdi28QRcFqoGLrzBlIR8wEEASxz8DWtRE
	 73eWgqqvEK7C6UNhXJ5wIb0G2M5E8OVxLgeVx62IOnEsGTtLPH7NQgaxCzo8d1c/5G
	 Od8CIlHjeZW/eFvxf3mx+Z2eYUdZS/LDxdsHqJxzGJiAMmNrNDVflMf1EdaFVeq6XB
	 KepJqulfMPv+Xa66s1HXsNfPn7oqAfRzroaoHYNiXVy6LYZGZEZwodmNPqXt1D+ssu
	 7qFz50guLW5ZA==
From: Nikita Travkin <nikita@trvn.ru>
Subject: [PATCH v2 0/3] power: supply: Acer Aspire 1 embedded controller
Date: Tue, 12 Dec 2023 17:49:08 +0500
Message-Id: <20231212-aspire1-ec-v2-0-ca495ea0a7ac@trvn.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMRWeGUC/03MQQrCMBCF4auUWRvJTKFBV95DukjT0c4mLZM2K
 CV3NxYEl/+D9+2QWIUTXJsdlLMkmWMNOjUQJh+fbGSsDWSpRbKd8WkRZTQcTDe0IwUf0DuCeli
 UH/I6sHtfe5K0zvo+7Izf9ce4fyajsWbwF8ZA5Kx1t1VzPOsGfSnlA+8AoN+iAAAA
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Nikita Travkin <nikita@trvn.ru>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1984; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=xFPFmz9fsOLXhhrMLkO4fvtQbfof7wfzBF6Z1Vazxa4=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBleFbLLp9TgfCu2NMSxQbxwWH59fQ7saOPgfap6
 BKmiM87cYmJAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZXhWywAKCRBDHOzuKBm/
 dYssD/99sUsXEvLbcayqGJCcrcNfTp4gYzWCpuAd3tzlIJjc+rHa7WDuq1ZwFObpq+E/2pTFUds
 egv63KvAIm25HmkzPpC/EpzgThQquh7KFG/zqdWjrFKe8uacM+8MxEKgvvA4IXB3k39z6bu2o92
 6GIxy8dqybthxldv6+5TdGCWnoMC6PtknRYcujiOsQtjR0XfHGzZPs3/LUjTUBZZreLEkEmeHMA
 fHa9lCO60KNryCAAzOp1P0eOdGvl4sihF9T1pqBTdX/o73YwWijLXYtX7Y7998BKeSpgu09AUtx
 S3gQIIkZp4wfDgKQwxBBdVQifLl2q9uiSVE+YH0K2HfQi2whLLxSDjmXfs6E3sYo7TvpBucU/hf
 xTLqllDW0ZYQxKuM+6j043G8KnZqO9LU4AF7NbqfaYIFjJYImlki3wxHZDraVmKC6jOEMFnejVD
 aYm6SHN6rXzq1aa/WxiF79DFRzmOpct9v4T42bgst82LEKwi+rBzddfVb2Lxn0dE5bmI13i1oMz
 m/oMElTSE0WiV7K0qW9uM6Ps0wdhsuN9aiJMEKp6QcWv8IpaY+A03012dNCLCPBnhRjeCwxjVg/
 dL2wHceBS0ir2mdgqlzb/g4Dp3IEi6y9wAyUxlyEnuBvlCjMDTn42jEuhpY2V9lZI4S65rpAJds
 VJGFW1LkvP+0zkA==
X-Developer-Key: i=nikita@trvn.ru; a=openpgp;
 fpr=C084AF54523FAA837E2EC547431CECEE2819BF75

The laptop contains an embedded controller that provides a set of
features:

- Battery and charger monitoring
- USB Type-C DP alt mode HPD monitoring
- Lid status detection
- Small amount of keyboard configuration*

[*] The keyboard is handled by the same EC but it has a dedicated i2c
bus and is already enabled. This port only provides fn key behavior
configuration.

Unfortunately, while all this functionality is implemented in ACPI, it's
currently not possible to use ACPI to boot Linux on such Qualcomm
devices. Thus this series implements and enables a new driver that
provides support for the EC features.

The EC would be one of the last pieces to get almost full support for the
Acer Aspire 1 laptop in the upstream Linux kernel.

This series is similar to the EC driver for Lenovo Yoga C630, proposed
in [1] but seemingly never followed up...

[1] https://lore.kernel.org/all/20230205152809.2233436-1-dmitry.baryshkov@linaro.org/

Signed-off-by: Nikita Travkin <nikita@trvn.ru>
---
Changes in v2:
- Drop incorrectly allowed reg in the ec connector binding (Krzysztof)
- Minor style changes (Konrad)
- Link to v1: https://lore.kernel.org/r/20231207-aspire1-ec-v1-0-ba9e1c227007@trvn.ru

---
Nikita Travkin (3):
      dt-bindings: power: supply: Add Acer Aspire 1 EC
      power: supply: Add Acer Aspire 1 embedded controller driver
      arm64: dts: qcom: acer-aspire1: Add embedded controller

 .../bindings/power/supply/acer,aspire1-ec.yaml     |  67 ++++
 arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts   |  40 +-
 drivers/power/supply/Kconfig                       |  14 +
 drivers/power/supply/Makefile                      |   1 +
 drivers/power/supply/acer-aspire1-ec.c             | 433 +++++++++++++++++++++
 5 files changed, 554 insertions(+), 1 deletion(-)
---
base-commit: abb240f7a2bd14567ab53e602db562bb683391e6
change-id: 20231206-aspire1-ec-6b3d2cac1a72

Best regards,
-- 
Nikita Travkin <nikita@trvn.ru>


