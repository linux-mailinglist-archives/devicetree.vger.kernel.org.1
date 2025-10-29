Return-Path: <devicetree+bounces-232870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6ECC1C7A7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 18:37:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 04FE534BE12
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 17:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB4E534FF66;
	Wed, 29 Oct 2025 17:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OysXwVbn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9E4302779
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 17:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761759447; cv=none; b=K7OU7qDslKGum6Q9ljsj0t4dMlnBRmR2luDQXcIdCSjHQWPRHWsDcwFl4stTqMi0YtIKTTpGnt3Je/7Ky5AFioeXjLkwG7WbWTGpTMWIfAO3k47ItPqID+YmmT27+agePia6QLbxfLY0UElEU6kJi5FwrlTDp0UlD6RDKQSSpIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761759447; c=relaxed/simple;
	bh=cGvTq3xIEATfXe5Nsr5t6ve9Lmk/XTOwW4VUJibV+fw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=dnQrOYDoISsAOfeb3GokmuDJ+zlS7k8cNk5fLvLP2WvrO5quw8Sy7RzqRT9+Q6eRvzwNlvnteGHZTDTHUJME/QGToWWQYCMmc+9aJl76ZbhTHfw3CoYS3xwPz6pzKc6eJhNvtIFC+AEpEs9EXUBdC93eLsOllnsyr8uk2TC6DNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OysXwVbn; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3ecde0be34eso887526f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761759444; x=1762364244; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=UG6tFvFgO0KjwvNvWtuBqBJX6bB6g7mbwTb4gfTyHGc=;
        b=OysXwVbncI0ByXVDyjRqs1fOQadHylkYBDaI3KJ44XxzgnOdjOp1a63ScMjz75Mjjv
         ZUwW97pyr7Lf4x+zSBq0Eqw3Hm4kAj5v+RV/Th+Gl5OkHqfeuo2bfNY0mww5LwpXadvW
         Icv6xdzDfKeFdTBCHXJ+8znWtcQxqKFpKg1IJ5kGSqFfizQzJELindPc/HDa4R0R30f5
         oiQ2L+2xy5u2tz+eDwa071ykzkkxe5zevsp8Gx9qcoE/1DDpdIqzKRBL1RBfFYIAuz6k
         fV01wmh4r5Cg6vXIGgqelujXPrdyieSBK8k90hJjRtYWD1K86Fz1iydjlGgaorMNSx6h
         roAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761759444; x=1762364244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UG6tFvFgO0KjwvNvWtuBqBJX6bB6g7mbwTb4gfTyHGc=;
        b=YH/GdkJdbHJT1vNjyDuKQ9iTP/ShCu538KaMNB1cr4t3efSm1UWS5S73VqgzUUOi1d
         uaDUDVWnaIO5WGcl4QzP7LAG3ehZOxQ8ToBU47NoJY0Xjikeww4SiBNajKNtjX504hpp
         wn6AyZGy8/RNc4FTMqc2JYsmYT32PjkBNWP0r7CFms1jkYShHwE1uwHzFOY3u+MbCL6z
         yoiuFFAe52fpXfk1n+z2Gm9EctO+aSxL3rkwHwWx+xAeypAY535g+c2V8gSdDaRYkJ+L
         2xW+nIZ8j1+KtgBUxVVMPOPy7xG2tUkbPOktbTykow5x54fsY0ZLJFuBACDg3xRxZNYs
         vSSQ==
X-Forwarded-Encrypted: i=1; AJvYcCX84IDCPIzp/6ZWbuxOthxGx8gQZvfYYK1h/+q1k8YHZ/oT2TSoT+pdgVKTr7Qa8ZH7idFir9u4/pz/@vger.kernel.org
X-Gm-Message-State: AOJu0YzR5k+PKxrv4rziusrpiq7NSHVMmej3eCxIG44u85ZDygrzw87m
	R4i6V9PJRxYhGgYsLVxNk21L8wCsgVhM0MUqfyj0dZ1LuNtNLH0J4JFx
X-Gm-Gg: ASbGncvKWfJLenTRn9fYfzD5aTu6beFKtxHiP5ofQCTxGUzFgVTWEx5jWwojkXen/B5
	15J7b1w043+HHbGulnsegNaoFFmkBCiaJOUeL61q/dxF/LhDx7bsJP92+io2KA+S8Isg7Cm1y4i
	3cm3WIw8K17O1mHYa47ogEBtgvOeD0JknWn1ru3x8se50A0/t51j5QQT7uooEWiBQ5F33dQTmo6
	PPdyCNVrWYKD0oTj6S/SmItMFLyXhfVNhYEcVG2f4JxKO2v6DYEy9eArGHaTB3JJISiucZerPB7
	qGl96lp+6VrLb7ZB3FNN5Nwzjqa5e+aV4NyewXUQnxAZjt3tibOXg0ABG62OmASRDFYHJLQ5SpF
	JmGJYUuKwz2tlN76oGs5Y1LWA5T8VS6Gm/+th4LkvbamYC31JNO71x1eEXoRC0kO7X3gkpd7U7F
	cjmvGqk7VkrxTTxW6+MU9KMaWF6PFEAg==
X-Google-Smtp-Source: AGHT+IGR0/h7xWw5u+tbePy3AOUxoydllJajHgi8S/oFMc9yrZfdEmTBxQl8jliT/49OYCJAl4LvOg==
X-Received: by 2002:a05:6000:40e0:b0:429:8b4a:c3b4 with SMTP id ffacd0b85a97d-429b4c0f438mr437419f8f.5.1761759444051;
        Wed, 29 Oct 2025 10:37:24 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm27493844f8f.28.2025.10.29.10.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 10:37:23 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] airoha: an7581: USB support
Date: Wed, 29 Oct 2025 18:37:08 +0100
Message-ID: <20251029173713.7670-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is a major rework of the old v2 series.

The SoC always support USB 2.0 but for USB 3.0 it needs additional
configuration for the Serdes port. Such port can be either configured
for USB usage or for PCIe lines or HSGMII and these are configured
in the SCU space.

The previous implementation of a dedicated SSR driver was too
complex and fragile for the simple task of configuring a register
hence it was dropped and the handling is entirely in the PHY driver.

Everything was reducted to the dt-bindings to describe the Serdes line.

Also the property for the PHY are renamed to a more suitable name and
everything is now mandatory to simplify the implementation.
(the PHY are always present and active on the SoC)

Also other unrelated patch are dropped from this series.

Changes v3:
- Drop clk changes
- Drop SSR driver
- Rename property in Documentation
- Simplify PHY handling
- Move SSR handling inside the PHY driver
Changes v2:
- Drop changes for simple-mfd
- Rework PHY node structure to single node
- Drop port-id property in favor of serdes-port and
  usb2-monitor-clock-sel
- Make the SSR driver probe from the clock driver

Christian Marangi (4):
  dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
  dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
  phy: move Airoha PCIe PHY driver to dedicated directory
  phy: airoha: Add support for Airoha AN7581 USB PHY

 .../bindings/phy/airoha,an7581-usb-phy.yaml   |   76 +
 MAINTAINERS                                   |   12 +-
 drivers/phy/Kconfig                           |   11 +-
 drivers/phy/Makefile                          |    5 +-
 drivers/phy/airoha/Kconfig                    |   23 +
 drivers/phy/airoha/Makefile                   |    4 +
 drivers/phy/airoha/phy-airoha-pcie-regs.h     |  494 +++++++
 drivers/phy/airoha/phy-airoha-pcie.c          | 1290 +++++++++++++++++
 drivers/phy/airoha/phy-airoha-usb.c           |  615 ++++++++
 .../dt-bindings/phy/airoha,an7581-usb-phy.h   |   11 +
 include/dt-bindings/soc/airoha,scu-ssr.h      |   11 +
 scripts/tracepoint-update                     |  Bin 0 -> 22952 bytes
 12 files changed, 2538 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
 create mode 100644 drivers/phy/airoha/Kconfig
 create mode 100644 drivers/phy/airoha/Makefile
 create mode 100644 drivers/phy/airoha/phy-airoha-pcie-regs.h
 create mode 100644 drivers/phy/airoha/phy-airoha-pcie.c
 create mode 100644 drivers/phy/airoha/phy-airoha-usb.c
 create mode 100644 include/dt-bindings/phy/airoha,an7581-usb-phy.h
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h
 create mode 100755 scripts/tracepoint-update

-- 
2.51.0


