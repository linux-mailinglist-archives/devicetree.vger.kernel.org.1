Return-Path: <devicetree+bounces-69314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 447EC8CF8CC
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 07:38:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01008281AF8
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 05:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7BAD518;
	Mon, 27 May 2024 05:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NRu0XEoC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C0D1A2C28
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716788326; cv=none; b=Egppk7CV/QnFL42aa/fYJFrT0FMMNHCeMYwdWRiHZlyh+2yBCHIcyxiqkaEaTfxukkbZm2Xr+NkSwU+lumt14GhNa6Vm6sL3PeXgoGbgLEt9kOso9meAJo9FfkRU7ND0h8CauAXYyOmOd35bV/nbklXc4iiF8c/I17M3LiDUyNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716788326; c=relaxed/simple;
	bh=5sg5fBwG3vrMNfKaPklVtBjDGFjvu3Nj2ornLEhhTIE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SuKV9uKBZX+UUniSJ/Y56k6za9DI7sd4NXBzLkXy7B/+ZHjXjb9kiwUQR+5xy6tTh3l/ZqRLVYjrE9S9BYhcyRszN2KPq1gb6hzaeVKsuFm4CGq/oCvRPrFK3GbTVxcS/t1Ko8Pu7AXI6Cj3qSRREmQdz/RRkk024jUqOqHOHJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NRu0XEoC; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7010a7df499so541700b3a.0
        for <devicetree@vger.kernel.org>; Sun, 26 May 2024 22:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716788324; x=1717393124; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NKMGRGQD4IsOADQqi/JUkrlmutDXh4ub1soGxeAwulc=;
        b=NRu0XEoChnPQdFwQ2ITQkm1eRr3vx71/Qxyy8iF0lswMMPzNckGLCh9hXKepLvs1sQ
         Z44728iLvKuKlxlLztnF3qicTSPrFgcviyuC5trWUxedi64YeZZPUw1QZCahlwv1HZf/
         9l1lBDwdVY+KfRtkczSpLt4q3klMsRnp7n78fhjmS7QV7T01E/G2qVdOp2ILOHkc4NxR
         rg3YXtef9mPAldQH7xgO1FHtEjbQrc+Y1hvD69bPdKW78qjVdAiH5zrTu9iBsHxL10dE
         vt3WO6eFC8JMNou3G6ZaWue0ZTH5Jj8L0mLyzdzuYfVflmmUaBwUd1VUFQqcC0NgnfBz
         1Meg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716788324; x=1717393124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NKMGRGQD4IsOADQqi/JUkrlmutDXh4ub1soGxeAwulc=;
        b=SCuw9aPkZy25yKcx66HHN9rPvzjc/BbwuigDU33pt347tUPHi1vKfM9dM0DL05roRl
         +4xZugoRymkiF6FrvrAjtCjaK54nqiSoZ/nl4p8rnXX9pgjXw6RNL03i0bGUEucaCcAw
         cMY9yPmww7h7sNjVxmsNjLfg8BiWFw6DvLkXN/1WurUnrBVQgkVE9NASyTt+AuVLxpZu
         W/hY8D9luI0rwwmhPDY6WwcKxONwDTtuKtvju+b6Nypaix0PHUnO1gnbqH95DL/8IgiR
         1jmbnW3oUDJ1g2qmD8MiX/7j3z9S2Ak65Q3pUaQB3QErefPlVJrpFS17vz7JfOvpGJCN
         W3bg==
X-Forwarded-Encrypted: i=1; AJvYcCXL5teYRjtRvquK0SQl2ABnldsq4klSIiQPHTKAAADKaGN/eaC34dQMGjcVngnzKhTxcuZWEH+8aiXDHRjNvr/W0680UDOefJVBVw==
X-Gm-Message-State: AOJu0Ywkvj1E6qThfBNJvY6B8h1vz/lPeZ9On1dDFyuREqFITDGPOfy1
	87RRw5U4dVAJ1zv4axOW92B2uCsOfy88yiE5ClUaYUvzOywuqkgZML5vxngOoxc=
X-Google-Smtp-Source: AGHT+IF3zV3yRfCSi0aSgdVrHSQCZGHUpTbemfonAMcARdMq7SQntkUJSeSPc77K34YqCaOQLMkPwQ==
X-Received: by 2002:a05:6a20:3c92:b0:1af:d647:3108 with SMTP id adf61e73a8af0-1b212ced2famr9606539637.2.1716788324134;
        Sun, 26 May 2024 22:38:44 -0700 (PDT)
Received: from sumit-X1.. ([223.178.210.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f44c9684ecsm51903745ad.177.2024.05.26.22.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 22:38:43 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
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
Subject: [PATCH RESEND2 v5 0/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC board DTS
Date: Mon, 27 May 2024 11:08:23 +0530
Message-Id: <20240527053826.294526-1-sumit.garg@linaro.org>
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
- Resend again as the v6.10-rc1 is out.
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


