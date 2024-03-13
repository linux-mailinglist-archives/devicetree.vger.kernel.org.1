Return-Path: <devicetree+bounces-50248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE3787A798
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 13:30:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D204CB21B94
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ACF2633;
	Wed, 13 Mar 2024 12:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZyAALFgm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B2C92572
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 12:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710333038; cv=none; b=QLtndemfXJ+m15qv2cTr1PaqCZYZ/WuWaieaSq40SSBQMM+CnmVrFmn5ItgqANjrY9EWBDqIfMjOcGq2h+H0DYDS5dClEiY5daEZBAjgWLys7cv7mOpS4muNSw/ESDCADX0Ttbu//l1Fb0xoESx2lsIZKzlqODfJFY5SBgx9d/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710333038; c=relaxed/simple;
	bh=sT0L9BckKHqkmWiQ1TJy+0lLYaGXwKSKGzRkk37Dgrw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Nufmgf3s66mOhDFb5/f8Pg/Obj9iVKA7+vaKGoPPNBxfUnq4J8e203P4VIJm/TvUq2NWeW2yg/+isRbCVUSrgUSjvRnLsSpRZa0tl12vbQxljqbZN6rkTJmyE8zakDcwBDE2Nr72fF/8GSPDnaO3wudyzNICyfpKEtE513nifV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZyAALFgm; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6e62c65865cso5480207b3a.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 05:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710333036; x=1710937836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1NRtRnaHcWjxg3gWXRI9Vo8KmpG1UcPzmI7IQB6C9Io=;
        b=ZyAALFgmMzvr+GWTbmiQsFmoXl5bIk3SvWH4O04wWfEtQau9zcOsMMb5EABGMmb+hV
         MJN+a16aoKu0TO9S11SXs6Y+JCW6OCQw8JmNgD/S++5NPSdDOHiGCh8lO+On/FrhSV4h
         C8gQSzDpxubwIHJ1Cjowhi0HShRgemicyLDWr57Gmtqo9m6uU2/GQYcT16/7CbIYt8GE
         GS/mXGluPD4Z+51hnjER6Cc516sVp6KvhAYy7BPvbVRnNOYR0jRORL542RzCXXmyzi37
         1eeBMZFX5pWAKtD1s7QBXK8Bo/fDRQfI5lPS1/ytnvscq7LWiDUPI0zpfq0Hhmmviq7E
         GfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710333036; x=1710937836;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1NRtRnaHcWjxg3gWXRI9Vo8KmpG1UcPzmI7IQB6C9Io=;
        b=Zph2EdwnCA6xfOyRL9lTmGF3Cq+FRfel4g9LQfeDMD7vGm2whpYflkV55e2wHp4h5a
         Or5ggdBVZh4RY0xNQDr6vS7N0scdPfd86N3HeBa4xsdepc7tQCryGt1C/bi5LJaKlW2J
         FjF8OZpxb8KbytU4j/6gEaFu3yzynK633IHijmE5LoHBKQVqr13n8HPzXq86VzaPnD4l
         susvHYrh+Wnpo8hDJxMbccXOXBxT5wozPf0RD4a8OT/vCKtn8kvj2KgAIZAk3eepfRXY
         KA1a9qthQmPfBJhKLQ8/5e8XK7FnT4nMQtK/Kh7bLnvh0bsM6MpYi772PNDYC2PJVzHB
         4L0Q==
X-Forwarded-Encrypted: i=1; AJvYcCX2J7sPTy23ISX/qhd6t/bqjAOUGHISgWYfB1oxginkGMB/kBRSYvJAVKiB95l270ePlMqq3ue/EdhY372mmafQdLhGTwwOBVx6xg==
X-Gm-Message-State: AOJu0YyMXLMk6tyZ6vlFqbRr8VqzKAGGqOlKpLVd4Tl88DnSorWPhMFg
	h9Kye3WK2vQIBuwVZwo4QEBvX5IrcfUe587sMXscHTrB2V4e1z02KyR8FuDQEo8=
X-Google-Smtp-Source: AGHT+IFohoQfuxnsD/a6RyD2P2W/gjzack35QOqiIe14CT93AeglweEgHyADZlK6T2bJc7gBeKL4kQ==
X-Received: by 2002:a05:6a20:3552:b0:1a0:56c9:608e with SMTP id f18-20020a056a20355200b001a056c9608emr9963160pze.61.1710333035927;
        Wed, 13 Mar 2024 05:30:35 -0700 (PDT)
Received: from sumit-X1.. ([223.178.211.36])
        by smtp.gmail.com with ESMTPSA id z17-20020aa79911000000b006e6150a5392sm7797307pff.155.2024.03.13.05.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 05:30:35 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	stephan@gerhold.net,
	caleb.connolly@linaro.org,
	neil.armstrong@linaro.org,
	laetitia.mariottini@se.com,
	pascal.eberhard@se.com,
	abdou.saker@se.com,
	jimmy.lalande@se.com,
	benjamin.missey@non.se.com,
	daniel.thompson@linaro.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@linaro.org>
Subject: [PATCH v2 0/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC board DTS
Date: Wed, 13 Mar 2024 18:00:14 +0530
Message-Id: <20240313123017.362570-1-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Schneider Electric HMIBSC board DTS. The HMIBSC board is an IIoT Edge
Box Core board based on the Qualcomm APQ8016E SoC. For more information
refer to the product page [1].

One of the major difference from db410c is serial port where HMIBSC board
uses UART1 as the debug console with a default RS232 mode (UART1 mode mux
configured via gpio99 and gpio100).

Support for Schneider Electric HMIBSC. Features:
- Qualcomm Snapdragon 410C SoC - APQ8016 (4xCortex A53, Adreno 306)
- 1GiB RAM
- 8GiB eMMC, SD slot
- WiFi and Bluetooth
- 2x Host, 1x Device USB port
- HDMI
- Discrete TPM2 chip over SPI
- USB ethernet adaptors (soldered)

This series is a v2 since v1 of this DTS file has been reviewed on the
U-Boot mailing list [2].

Changes in v2:
- Fix DT schema warnings.
- Incorporate suggestions from Stephan.
- Document UART1 mode GPIOs based mux.

[1] https://www.se.com/us/en/product/HMIBSCEA53D1L0T/iiot-edge-box-core-harmony-ipc-emmc-dc-linux-tpm/
[2] https://patchwork.ozlabs.org/project/uboot/patch/20240311111027.44577-6-sumit.garg@linaro.org/

Sumit Garg (3):
  dt-bindings: vendor-prefixes: Add Schneider Electric
  dt-bindings: arm: qcom: Add Schneider Electric HMIBSC board
  arm64: dts: qcom: apq8016: Add Schneider HMIBSC board DTS

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../dts/qcom/apq8016-schneider-hmibsc.dts     | 519 ++++++++++++++++++
 4 files changed, 523 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dts

-- 
2.34.1


