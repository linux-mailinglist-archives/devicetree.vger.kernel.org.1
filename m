Return-Path: <devicetree+bounces-244535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 218EACA61FF
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 05:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C87DA3112727
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 04:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E8EC2DEA89;
	Fri,  5 Dec 2025 04:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MWI5vkfo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958E82D3731
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 04:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764910637; cv=none; b=UpW3/sR1K+s6EAcRqpqixUSqa24zxbBmGXEdLh0qwzlLknrMOcTMTSAClAVlYzUYKQqFqIpB44uses60SiJbelyHPfJWhUmshOS0gbNZMsk8bXf+JDbQ4jA5Yj7WHiMkrW2r0zezs0E4OraomTWZEhGPi5M50TwE4fT8boI2CxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764910637; c=relaxed/simple;
	bh=XflZZ0eJN5i6JYv1ASmATJAojj+Hmfy7X8dXENTM+Lw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aW/It3I2gnJ0d072tcgdy6lmbMtC5lSxy9KLQlO6iZiG14NBB6HxxPbKski5ApGaFhphF71xZQ/JHvUxo/ZFgNJ5vvEjRHcgGwomJsSf7bv+ZQ2j1qAoyMV/cx4SB4h/dEyMwyRZ6zt6tK2emV6wwxqlGLf2BqMEBy1Ynt9o+mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MWI5vkfo; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7b8eff36e3bso2716823b3a.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 20:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764910635; x=1765515435; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7Va3kjwW6M8pt1qwY5BOxl1vfmDqcPmuW5nN7OD/6aY=;
        b=MWI5vkfolTBeHdU38m3rmR/jxOV56sJusSAlwT7jSYbsTn91bsjIBlneIsct4eGRAR
         WsdMx31/YBGrEVe+cAiIlmCeS3x844cDp1T3GttXzwF7Xc0pqBXXMnrBj/zIPH6M5snX
         ew6JFD4si0zyS3TnAGgdav/+23SuypyhEPdP/kcmg7vRZ5Y2Q65wgYAIs5+sPXM4k095
         ECKf8Kk3dvqKHxAZ9bMZY0KAQOBtYf3WE9v7aV0ZdNLfRPL5GhTtoBC609xov1AYC52r
         5z5iDft9Vp7zlonFKKPLtuWEeIyWJeFfLl4c6hL8zItZaKnXSDlp3hkCsHhDAGBsv71m
         jTAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764910635; x=1765515435;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Va3kjwW6M8pt1qwY5BOxl1vfmDqcPmuW5nN7OD/6aY=;
        b=CS3LspMmss/s2QFIMQ+gg4eZfHjXVPEl7b7zZKc9lzbH/Qud0M6G8bd1oZ1TgjPbvl
         zSUUthA+YjUOZXUDkVh2QbAbOKAO2JNFoz0ubWbNNKt7hd26Y5sZ+J2KW091fwN6esze
         57ZSRBVe3dUFITUvKGOWwfB+YLmmmVGb7Fhv/ZZn6MgIx48tZMB6zSIYIfWpI2wrlNbd
         +y1oO+6UuBDoP+5BVCKs0EuOOWFTOCr0cswySgNxKznyvKPcEhm2K6p/+QsP6ESAIZ/s
         eac+Q6RdOGj1YeTTOy/8BuBOyPxrp5SHgNAuy80QATtW9XPxmnoTnJ9qNUD1HIMvIK7N
         8Jng==
X-Forwarded-Encrypted: i=1; AJvYcCXX5z/ughhND1D3iGE3dHTRMU+Hk9HRTWJapWzC7ISHAWmAm+7BsN9GDUACZJiuIB0BS5ueczrbvcBt@vger.kernel.org
X-Gm-Message-State: AOJu0YzqoqPq2a250htg5doPuDQmWdxmCyc4UPyWn9fJ7qVNGjS6E7Zb
	GZIpLLN/vteR3bCjDNTMqdMM/BiFg2zpj56BeeX7ClU/gXiAK4Uss1GgP+xppQ==
X-Gm-Gg: ASbGncvoUHT0dWqaxzsHxwRaKyggRwG/gsqFWUBFScd7oHVB1gqCVBgwn2lLY1j/mvA
	cIywshDlAIbYd+pMp/iXYgB5ylDSK13kJ2QCX4OW/bNadaZQjTU9CU5Q8D4jiaMM4ES4b01FrX1
	j2Y0y8kBB1Ypa9QKnlNlD12XWzsHCZA8W2nf2LEWopM/jUfheNqJGEBU3fatvZQNZOI71tHw2jf
	nHX3wsooRwDHGXoAnvut9W++m+z7vMVK2sJ4sc61x/gZMmDwZcEMPZOCK2ibUvGR3oSw82i4uzK
	2pT+kYQaRfS3KFXZiJPKhuRnHrZ4Cm87BE1dTumCtlou8liyQKN1Y8NR88833bIBoiBpxT9BCTu
	KgkDdsdtZn0AoAmfd/KAbX/6rZcJklrNdP7EZzrBi+gAxLj0/DMZuyn1XAPEp9Erq8K1l/cNT/0
	q9RCaLKrFv1vNiI4cc4+gXnTACNsp90nTczUfpigHVgw==
X-Google-Smtp-Source: AGHT+IEAFmY0PICxcFoEOQoMQveetc+y4f6Ig0b7mZ8ZuucJLRYEcJgLiLSCMbsPEiftqgQZkC6U6A==
X-Received: by 2002:a05:6a21:386:b0:364:1425:8099 with SMTP id adf61e73a8af0-364142580b5mr1643368637.24.1764910634843;
        Thu, 04 Dec 2025 20:57:14 -0800 (PST)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([122.35.77.229])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a32deff0sm3315936a12.34.2025.12.04.20.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 20:57:14 -0800 (PST)
From: Joan-Na-adi <joan.na.devcode@gmail.com>
X-Google-Original-From: Joan-Na-adi <joan.na@analog.com>
To: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Joan Na <joan.na@analog.com>
Subject: [PATCH v7 0/2] Add support for MAX77675 device
Date: Fri,  5 Dec 2025 13:56:46 +0900
Message-Id: <20251205045648.3725-1-joan.na@analog.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Joan Na <joan.na@analog.com>

MAX77675 regulator driver and device tree bindings

---
Changes in v7:
- Remove 'default' which is not needed for boolean properties

Changes in v6:
- Updated DT property names to use "adi," prefix
- Reference reset-time-sec from input.yaml and apply schema constraints
- Reference bias-disable and input-debounce from pincfg-node.yaml and apply schema constraints
- Improved descriptions in YAML bindings and wrapped lines to 80 chars
- Introduced bitfield macros
- Added parsing functions for EN mode, latency, slew rate, and drive strength
- Separated configuration apply logic from DT parsing function for better maintainability
- Refactored apply logic to use direct regmap updates
- Enhanced FPS slot handling with string-based mapping
- Improved probe function with resource cleanup and error handling
- Removed unnecessary header files

Changes in v5:
- Fix subject prefix order to match subsystem ('regulator: dt-bindings: ...')
- Drop unnecessary '|' from description fields
- Drop repeated constraint descriptions from YAML
- Rename 'maxim,en-debounce-time-us' to 'maxim,debounce-delay-us' for clearer naming
- Used common 'reset-time-sec' property from input.yaml
- Remove duplicate description for 'maxim,fps-slot' and wrap lines to 80 chars
- Drop the node reference immediately after registering the regulator

Changes in v4:
- Remove the 'maxim,max77675-regulator.h' file as it is no longer used for bindings
- Eliminate unnecessary '|' characters where they are not needed
- Add and modify code to drop references that are no longer used
- Remove dead code
- Add detailed descriptions for each mode of 'maxim,en-mode'
- Rename 'maxim,latency-mode' to 'maxim,voltage-change-latency-us' for clearer meaning
- Update max77675_parse_latency_mode function to max77675_parse_voltage_change_latency accordingly
- Fix errors detected by running make dt_binding_check
- Fix incorrect indentation in the YAML file

Changes in v3:
- Removed unused variable 'value'
- Removed duplicate .list_voltage initializer
- Wrapped of_match_table with of_match_ptr() to fix build failure when CONFIG_OF is not set
- Updated driver code to match new DT binding schema
- Changed regmap_config from REGCACHE_NONE to REGCACHE_MAPLE for improved performance
- Added volatile_reg() to mark status registers as non-cacheable
- Missing explanation of `maxim,fps-slot` default value
- Updated DT binding enums to use string values (e.g., "low", "high") instead of integers
- Converted several binary properties to boolean typei
- Renamed time-based properties to use standard unit suffixes (e.g., "-sec", "-us")
- Added default values for properties
- Removed unused macros
- Renamed macros for clarity

Changes in v2:
- Fixed build error due to missing 'max77675_of_match' declaration
- Removed duplicate '.list_voltage' initialization
- Corrected value usage in regmap_update_bits call
- Added CONFIG_OF guards and used of_match_ptr()
---

Joan-Na-adi (2):
  regulator: dt-bindings: Add MAX77675 regulator
  regulator: max77675: Add MAX77675 regulator driver

 .../bindings/regulator/adi,max77675.yaml      |  184 +++
 drivers/regulator/Kconfig                     |    9 +
 drivers/regulator/Makefile                    |    1 +
 drivers/regulator/max77675-regulator.c        | 1056 +++++++++++++++++
 4 files changed, 1250 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77675.yaml
 create mode 100644 drivers/regulator/max77675-regulator.c


base-commit: 6548d364a3e850326831799d7e3ea2d7bb97ba08
--
2.34.1


