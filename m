Return-Path: <devicetree+bounces-55742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B643896383
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 06:34:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C30C1C227A4
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 04:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FBD3347A2;
	Wed,  3 Apr 2024 04:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GgmCnxnV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9EB71373
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 04:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712118870; cv=none; b=hKkt18Y4Udb2EvM5eGvcmiNUAeKqiJhELgPqVQZC/uU0a1er1KI56DuHbA2YSfzuIxB4iB5JALQHY/v3ciU3Ro2iVtFQQAP0tbrS4gESt0S3Mf7js3IKm52srLnvfU1bCPxODQdjnOjzaRWQovdno1/PskbmhlbgekPkEa+mG2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712118870; c=relaxed/simple;
	bh=QQOwsJIqbn/sH6QWOe5NAW476GND/Y4m9LnS8t8IvAg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FzoJmNlwKwuRY3LZfaJgBwKGhcnhu6Go3+oEkVJLqaPQKeUGYF+X1qIQ3/FEp2VMbjYBzhGJcWT4gttGppjN/z34MEo8DwB2MLHaRiEEgqGNzYAKxeSFFvx7mo5/HuYRSGF778hSKfaWGmVsnt3y5Tbb670R+U6yV4igStNf5LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GgmCnxnV; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e28be94d32so4975525ad.0
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 21:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712118868; x=1712723668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v8PahdsTaxrvJsdtCNtln2KbqBTimvNp7eghq2QDJGQ=;
        b=GgmCnxnVoxb7hLrs2lO6JMnCUHvkSfnAB2ia0eoJRLLcv1baiWIk/UbHJLctXDthpa
         eeJBLGAp+o4zLBdEaIXrAGxjgdcosV7WDUwrl5spQApCvJVSrjol2mB/IPjFnlIjHW9a
         oNrvfJ3G6O8HdlQcztPYhH8/KpGGOplhNEL3VAK4y77OnbU/4rrf9MubOXQjXDAPmuyc
         zMN8HNqZWNRrGYxCPuh5xj5a+KhKPAYolQnw8aM/1z/Ps3l4fMGzQfY3flWc8gN1AiIv
         9JNv67al/zJbqlGtKLgsodKrpH6bQKVdy56kLP6KE9lEVy1w8FltCbGGUBoDUPUmlaI9
         FYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712118868; x=1712723668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v8PahdsTaxrvJsdtCNtln2KbqBTimvNp7eghq2QDJGQ=;
        b=kjBuSoLFCLlU4XvnIh24qtAf7Y/gPuRInmpUQpCdxTVBnZP8beKKqNYUMP65uP30KS
         kqNsEcCxHUVJsCRl3WmOwik/5f/Y8LFrkkasn+ngTseWr7NCG6kQnMYYfLSSXIZE+WdL
         QZEcUqwDPhWARsiZQtn/yDPL10G3tztpTXFmmNcLCm2VNjpMnH8ZMlrBHrNIJIaz/Iau
         +2qR5CYnudfYq5RxtvlyGv7OjYb6RxraZWCRdyiNz/vmMjUsOefUaDHz7GaoJKi6EdWl
         mSMdamdJGfovyS0vYVWNswQ/ssnCRrmCITfq0bEmGoeX2KyN6AygEXv5QDTbQGVrH63t
         yICg==
X-Forwarded-Encrypted: i=1; AJvYcCVvhRLPgDdlmm9NUqZQY3V3n/0Ldf5AS9CJTjuPUefS6De+Nic5D1BqTLSaspo0U/Vw5icWQYScATlg/42KdTlPeMjMOp3MyvwoqQ==
X-Gm-Message-State: AOJu0YxdoTQtc/WSonxDwlxHxqSVF/W6HlLxgodHkBl01+J39ZkN0RXX
	5B3s/o3/LhZRkoRWDbRjDpXXBvPYRg9926JGLjWBntX6rLfdY02Y73YrT3Q0o0w=
X-Google-Smtp-Source: AGHT+IE57hrKWhru0eMdU7jCJ9P/I0eCL8aw23kcrnxVUEU40D8ove2/9CFeHxy1kPDYTiXVaUWLXA==
X-Received: by 2002:a17:902:d4d0:b0:1e0:d579:91fd with SMTP id o16-20020a170902d4d000b001e0d57991fdmr19430037plg.7.1712118867872;
        Tue, 02 Apr 2024 21:34:27 -0700 (PDT)
Received: from sumit-X1.. ([223.178.212.199])
        by smtp.gmail.com with ESMTPSA id cp12-20020a170902e78c00b001e2059a6386sm12074634plb.12.2024.04.02.21.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 21:34:27 -0700 (PDT)
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
	dmitry.baryshkov@linaro.org,
	laetitia.mariottini@se.com,
	pascal.eberhard@se.com,
	abdou.saker@se.com,
	jimmy.lalande@se.com,
	benjamin.missey@non.se.com,
	daniel.thompson@linaro.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@linaro.org>
Subject: [PATCH v5 0/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC board DTS
Date: Wed,  3 Apr 2024 10:04:13 +0530
Message-Id: <20240403043416.3800259-1-sumit.garg@linaro.org>
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

Changes in v5:
- Addressed another nitpick from Stephen.
- Collected Stephen's review tag.
- Warnings reported by Rob's DT check bot aren't related to HMIBSC
  board DTS but rather they are due to msm8916.dtsi or extcon-usb-gpio.txt
  still not converted to YAML format.

Changes in v4:
- Dropped IRQ_TYPE_EDGE_FALLING for pm8916_resin given the expectations
  of Linux kernel driver. Instead depend on systemd workaround suggested
  by Caleb to get expected HMIBSC reset behaviour.
- Incorporated further DT coding style comments from Stephen.
- Warnings reported by Rob's DT check bot aren't related to HMIBSC
  board DTS but rather they are due to msm8916.dtsi or extcon-usb-gpio.txt
  still not converted to YAML format.

Changes in v3:
- Picked up tags.
- Fixed further DT schema warnings.
- Configure resin/power button interrupt as falling edge.
- Incorporate DTS coding style comments from Krzysztof and Konrad.

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
 .../dts/qcom/apq8016-schneider-hmibsc.dts     | 491 ++++++++++++++++++
 4 files changed, 495 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/apq8016-schneider-hmibsc.dts

-- 
2.34.1


