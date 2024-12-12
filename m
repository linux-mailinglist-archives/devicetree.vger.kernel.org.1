Return-Path: <devicetree+bounces-130329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE539EF00F
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:24:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07E8318991FA
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D78B622968D;
	Thu, 12 Dec 2024 16:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="heclECXw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDA0217679
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734019252; cv=none; b=rLvhLIqyPY2a1RF6FbP0ovC5lw+oYP8y8XdBT1NS/fkfocJ1I5OpDAlhnVD2mUv5tgo0K9+HuQ66+/mMkbI9hWB3nC3Np8K3IkKbzDyst8PaG7cPkj51uzHE+4DgQYNPA4rWbZnyNp1leFBfVQLV03EmBtFeqdG49wy57yhX1uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734019252; c=relaxed/simple;
	bh=gPZKjY/Cv6dqyLwE285RezILuvSeCSXXgwbDcAwcRGE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=i6Ivd2jceuYavexVw4vLkUJkqbS/ZC1GinCQfiRd9RmQRWTL5zxeCEWQmtvxU0gEml+jORw71kgrHEsg7yezjqdAPK8eFwGGXNZ794WbAlSkL7ZZBkEY+TFQg1SmXSrof+ttyUqf4t/jgwm0yDscgmjvtdttynhvTD8GU040Gcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=heclECXw; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-434e3953b65so5698535e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734019248; x=1734624048; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OqueOt3m+Hz5NDiZkEdxcD3dFeoon3Sxm9uk7ivrbRM=;
        b=heclECXw4zytSEM3yQPd3fha5UPdBK0BXFPDbKsEJhZdJtOBX+ON6rMEZoNCiX6FjL
         4kzTL2xBR1Ej7OorfiMulmjulSf1ogqLCOLBFduA3SFMH6+Grc6cYeuKazi0lL132QM5
         xgAyqM4x0GdcZgfb0rnJ1ZdK4CiNo1TAPapO9Ud2qf4S8OCkckjx0BP+MpO+WtuL3LtW
         RwV3SkvVFD4U8Obeq+dQ70USrJLFYzzVvzN+G1H+rzoEBk9G01NdSWV2Kkq7AcLaNf1d
         bR2ANtAQ+pneZnuqpuSsT+3ArQq4f5nABLKQSk2MghEo9A89mmZpLTVLKTJeOMLh8E38
         JNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734019248; x=1734624048;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OqueOt3m+Hz5NDiZkEdxcD3dFeoon3Sxm9uk7ivrbRM=;
        b=wbWgpB69eLcdK2v1eRP1zIo4xK3pD78vHtNAdASarIu7WzWHEiLaaNTti+NkP7nx+H
         wmyAzTKbw3XW7PFZDaHGZI4J6ZEJUcI/tDqyvuu4BQ7YrpLYZxMtaksSIb+BHrCb1s6N
         AQkwU1YjmKR4pg0ZlTKx9h9RvLHodXLuwSKUzKczwkH50ihLa01UueoNKFlLpAy2yWmi
         3car/oxwxgRlSy5GfI6tiiKJpTSmLV6pFbSlTKp6vt3lQH8DBmJlPJPQdJ1+3yOTwr2k
         Xha0N4doMuE17G9Ev0T4DiSuel7HIWXV45V0YzB3e8kh5rlQJLKHL/Mr+d3GdWE5+fE3
         HEyw==
X-Forwarded-Encrypted: i=1; AJvYcCUVM2wCeLU83CFwz6+pp6WpW9H7oV19TgPvHG4pri2hWdfRpfvqBoGzqpCfEW56cg9I2tkuQBb+G4nz@vger.kernel.org
X-Gm-Message-State: AOJu0YzgYcHFfSKggQg7mTq6a0qIRqOrXTO9drS5vDSmo1MMZoUSCJt2
	b+bANpp8Is8/tSHBSDwrtp0NqncT81I3KGZK4I8VAEdoUFt81mtw84ddCDHnVos=
X-Gm-Gg: ASbGncvb5aup7STMUjNLpYBL44U3AeVRM783ZHLEW3yfIxb3QPAIokqFJ8giHfiOzNB
	mHIJYu3C+wwjDs4qEGqpBRN0xcbXOkfSUuOtQS63MrguErtjGXw0EtpcWU13W1sxVxUi35l/MXU
	jH5/wzwUeh8JgsL+BWEpVVD7YB+KWvrOFDLrM2ln9B9TF0FvQp4tYdIGIMoWhKMQMqzT/Dew3Bl
	6peLSw/baKdFQ2Gc5Sg/dyhe6Dk79ap41BZ6M44d7V5T+FREQwZhwxnLwD/EdgpZgMNxBOZyLJL
	587SO0oud+DXcnEWyEGkp1pBx5ZoDgB84g==
X-Google-Smtp-Source: AGHT+IEO8F14DLA6a9uq51Fn4E/i11A1F4D4K6m8q0VdStEpDipMvlbI8LBPnMinLyLtzeI1CSuDpg==
X-Received: by 2002:a05:600c:4f11:b0:434:fbda:1f44 with SMTP id 5b1f17b1804b1-4361c3976ffmr61803215e9.19.1734019248210;
        Thu, 12 Dec 2024 08:00:48 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38782514d35sm4462941f8f.74.2024.12.12.08.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:00:47 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 0/4] arm64: exynos: gs101: add ACPM related nodes
Date: Thu, 12 Dec 2024 16:00:37 +0000
Message-Id: <20241212-b4-acpm-v4-upstream-dts-v2-0-91b7a6f6d0b0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKUIW2cC/x3MMQ6DMAxA0asgz7UU3KhDr4IYnMRQD9Aopggpy
 t0bMb7h/womRcXgPVQocqrpd++gxwDxw/sqqKkbyJEfaSQMHjnmDU+Pv2xHEd4wHYa0RBde/Aw
 hMfQ6F1n0us/T3NofDngjvWkAAAA=
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734019247; l=1387;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=gPZKjY/Cv6dqyLwE285RezILuvSeCSXXgwbDcAwcRGE=;
 b=hZ8flcnYPQV3TsFaQwLja8Fw09eEAZUxRLkGCgisxH6sMxSgluJopwrXKflaZZNoFnCvdGKQi
 Kz9nhpbJs61DlRKVpDVEdcXwIY5mz7OEpQOlEU6cijK4KqS3rNlA0dw
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Define SRAM, mailbox and ACPM protocol in device tree.
Enable the mailbox and ACPM protocol in defconfig.

Use a constant for the channel type until the bindings header file gets
queued. Bindings and driver changes at:
Link: https://lore.kernel.org/all/20241212-acpm-v4-upstream-mbox-v4-0-02f8de92cfaf@linaro.org/
Link: https://lore.kernel.org/all/20241212-b4-acpm-v4-upstream-firmware-v4-0-3f18ca64f1b9@linaro.org/

Changes in v2:
- update nodes based on the bindings updates
- update mailbox and power-management (mailbox client) nodes to specify
  channel type (doorbell or data) and channel ID.

v1:
Link: https://lore.kernel.org/linux-arm-kernel/20241205180200.203146-1-tudor.ambarus@linaro.org/

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Tudor Ambarus (4):
      arm64: dts: exynos: gs101: add SRAM node
      arm64: dts: exynos: gs101: add AP to APM mailbox node
      arm64: dts: exynos: gs101: add ACPM protocol node
      arm64: defconfig: enable ACPM protocol and Exynos mailbox

 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 39 ++++++++++++++++++++++++++++
 arch/arm64/configs/defconfig                 |  2 ++
 2 files changed, 41 insertions(+)
---
base-commit: fac04efc5c793dccbd07e2d59af9f90b7fc0dca4
change-id: 20241212-b4-acpm-v4-upstream-dts-2fc0b6a3bbda

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


