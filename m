Return-Path: <devicetree+bounces-228500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5249EBEE5D2
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 15:05:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 806D94E21FC
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 13:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B7DF2E88B0;
	Sun, 19 Oct 2025 13:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ndGk4N3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AC029D29B
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 13:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760879132; cv=none; b=sKRFjcqnmnhNmyQ93qM9SooDbYppL773gHDxku499TrW0acMGg4FUyPI/lZglPSoT7FmrH1ln/26IuFSnthJgiVEYX5+B6/gvAIHFTyFGVqPA9g9hroKRJwFNDHboOnw0HzSEz3N5MJ0SWM8UZ0MXvksfcxlzDgoq3/xSyqAWaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760879132; c=relaxed/simple;
	bh=XeiX41298GHe1VGBLl245vB0i8bT1WGg++sJ7ssT2f0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Jhr7tM1TlfV5hZnIBbk9NWjiy1UbGSO2qrK6rhEYAD91wkQdmD4jcxrdWQYu9FzD/0+YJw7cxKeCqYozQheQddgG9vsahd3yFA/wUmrVJKjC7TPd4nLPRyLK0+DB21KiUpx6vhN1Z9a71/W+DJfdb1bd6KbG91VqRmtEv3AHo7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ndGk4N3M; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-27eec33b737so53080045ad.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 06:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760879130; x=1761483930; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3eco81BCPWW5IMb7bDbdtrmACgQPc8H8S6TsCnyrvFo=;
        b=ndGk4N3MxpSwvVrzeDuw7GXOZcPH22K7lG4UWaTGsJgSv/A49SVXqUmKQv5Nu1NqOJ
         gIe5IUhPgFsRP3KFQF3V+LmHbrpyt465ckeEqtxT61E2Kxb/EUiyhxlhXN8u2G/XP4SQ
         fqiqppfFpJfmgTThb66vxMu5PuvHDJMfV2whRxfZDRKNN4Rl89k724JfxAx3a03+TeDK
         thij7AzUOat+j+WHJhOACnZIXOtJpLXyYeKGzvd1hgu2ANsgNzKP2Rtfo2kb8wRPXmTv
         cK3BJhTW9AWkuOLNAwqTA/GV84quIhF8mOi5TxIyRVpx7iSjFQPKXN2H2HkLMPhBNLID
         8E/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760879130; x=1761483930;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3eco81BCPWW5IMb7bDbdtrmACgQPc8H8S6TsCnyrvFo=;
        b=PrjM2GqhLt6nKI8u1LXWi+jkE6bWjoYFy5sZOpfpi1L5Wruy5o5BmeomqRgHAa7Lic
         oiwcWiNqfsxIzxMhUwl4f9KQVCyRctQ00RiEv/QzzEAH+pZkBjeJpc8HwhKSxHFGGQKi
         hs0D12z3hIQ9UPAPfScoZzglkmTn7o+cjklJKpP4ZZ4IEgfcNz3muOS1swarC1cvPTKe
         jWtigCR8NZICduoCvnWFtyAc2q4qwLkCxf1ABjT5IOzWTumoXJJdW0Jl1/G/LKHZ1Y5e
         sSHwRCzb8HbDI2hOV3w4ZQpKdkfnTZwCk2VIp9HDMdjzg0y45c9X0uiumKLrIQoXK89M
         uLRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUww7cH2QiIQDlLq1Enjs4jD8BTGIY5tCk+ysK8khcP2BE6+UNLwFcvL5T1NIuj6bjUO9MJ2RRdsQlM@vger.kernel.org
X-Gm-Message-State: AOJu0YyYpbOymcjUdCeZwChM7RihDo1PGqj4yNbkPpoKc289ND2kxxe5
	uWkXziE8IaP5NZbon5+p1esHYIf7BplY3SYy1w7YSixmXfeI0jBCM7I2
X-Gm-Gg: ASbGncuyB1apxeMBkLd0sZqX3eUk/krqJIp/joGWVd/jX4Y6AG7emKHP+xhJzQ8fZQR
	j2ugaWrXYnhb6T9N+apiVjbGUYVrxggO+kF4UZjshf9Q3kVEB0gBw068UI4FhROWwHS+JcJCjJg
	aVkDNoqCrRpBoWC6XBuWjHKL4JNsuqnIOCLbp0meXtM3mL9dik4FYdhTQg325zhUFJlu7qBFQCq
	pDLZPW0MocoEauUNM4t2Jp4xMB3YXZKN4Wh/EpXte5/fIit76DIj+fi1QiyoUyWzN9MEA5Y3F7s
	S1ODUWOq0jHkqDYzrfDo2Hnpu2Bkq8JzCM20B6v8kbgoUqIpbxnNLBpr+2G2YAREexW2vte+x6q
	MvaNkRJii9TYuuxUQEX7U3sD9CULrEHW+o6vrEUqUqF31/OPhgFoI8edIsdBAGGzBXH6e+CqsNJ
	/ZytJGgxZeJSoZT8lk4UZNI18SH2VkfIhZ9p2E5bukTkQ+4A==
X-Google-Smtp-Source: AGHT+IE/NeeSqi4ivYvwA/AtfAx8j3c+jGg0ZuqE8hIvxZZL3v91DQ4eRBI2Fd2i+xXD/lVzrMfA0g==
X-Received: by 2002:a17:903:1a4c:b0:27e:f201:ec90 with SMTP id d9443c01a7336-290c9ce63b3mr115807545ad.25.1760879129895;
        Sun, 19 Oct 2025 06:05:29 -0700 (PDT)
Received: from Black-Pearl.localdomain ([223.181.116.113])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-292471d5c33sm52842425ad.73.2025.10.19.06.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 06:05:29 -0700 (PDT)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Subject: [PATCH v4 0/2] dt-bindings: mmc: ti,omap2430-sdhci: Add json
 schema for the text binding
Date: Sun, 19 Oct 2025 13:04:36 +0000
Message-Id: <20251019-ti-sdhci-omap-v4-0-fdc63aaeb083@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOTh9GgC/13M0QqCMBTG8VeJXXdiOzq3ddV7RBcyz/RApjiRQ
 nz3pkSFl98Hv/8sIg1MUZwPsxho4sjdI438eBC+KR81AVdpC5SopVYORoZYNZ6ha8senDTB5iY
 YnUmRTD9Q4OfWu97SbjiO3fDa8pNa308Js11pUqCgcNoXRKU3xl7qtuT7yXetWEsT/rSTdq8RJ
 Bh0aKyTucWw19lXK6nUXmdJu9waCliR1u5fL8vyBu9zwqYmAQAA
X-Change-ID: 20250519-ti-sdhci-omap-907f847f7530
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>, 
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.2

Create a YAML binding for ti,omap2430-sdhci and fix vmmc-supply
property typo for a DTS file.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
Note: The property "ti,needs-special-reset" was not removed from DTS cause it will
      disrupt the compilation for other compatibles as the node &mmc is used for all
      compatibles for some DTS files.

Changes in v4:
- Removed type for the property pinctrl-names.
- Link to v3: https://lore.kernel.org/r/20251011-ti-sdhci-omap-v3-0-9487ef2de559@gmail.com

Changes in v3:
- Reverted the changes on removing ti,needs-special-reset, ti,needs-special-hs-handling
  cap-mmc-dual-data-rate from the DTS.
- Fixed a typo to resolve the errors identified by dtb_check.
- Changed commit message to justify the modified changes.
- Defined if-then statements for compatibles to add required properties.
- Removed "ti-hwmods" property from the YAML.
- Link to v2: https://lore.kernel.org/r/20250908-ti-sdhci-omap-v2-0-72927890482f@gmail.com

Changes in v2:
- Changed MAINTAINERS to "Kishon Vijay Abraham".
- Renamed the YAML file name to "ti,omap2430-sdhci.yaml" from
  "sdhci-omap.yaml".
- Dropped unnecessary or unused properties from DTS and made these
  changes as a seperate commit as there is no user of it.
- Removed previously defined properties like ti,needs-special-reset,
  ti,needs-special-hs-handling and cap-mmc-dual-data-rate from the YAML.
- Changed the commit message to elaborate the reasons for modifications.
- Removed the pattern property for pinctrl and redefined it in a regular format.
- Modified the description of the property "clock-frequency".
- Changed the subject line for the binding patch.
- Link to v1: https://lore.kernel.org/r/20250523-ti-sdhci-omap-v1-1-695c6eeac778@gmail.com

---
Charan Pedumuru (2):
      arm: dts: ti: omap: am335x-pepper: Fix vmmc-supply property typo
      dt-bindings: mmc: ti,omap2430-sdhci: convert to DT schema

 .../devicetree/bindings/mmc/sdhci-omap.txt         |  43 -----
 .../devicetree/bindings/mmc/ti,omap2430-sdhci.yaml | 201 +++++++++++++++++++++
 arch/arm/boot/dts/ti/omap/am335x-pepper.dts        |   2 +-
 3 files changed, 202 insertions(+), 44 deletions(-)
---
base-commit: ed61cb3d78d585209ec775933078e268544fe9a4
change-id: 20250519-ti-sdhci-omap-907f847f7530

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


