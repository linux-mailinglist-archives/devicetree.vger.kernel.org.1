Return-Path: <devicetree+bounces-245001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C2CAB0D3
	for <lists+devicetree@lfdr.de>; Sun, 07 Dec 2025 04:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C75AB306A073
	for <lists+devicetree@lfdr.de>; Sun,  7 Dec 2025 03:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03B5A25A2C6;
	Sun,  7 Dec 2025 03:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nEP3QApl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C6423EAA3
	for <devicetree@vger.kernel.org>; Sun,  7 Dec 2025 03:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765078164; cv=none; b=Pnbgwd0+ioMijnLDIbJnLQromOEFflmI3ku7dGOqpNsF23lrsHI01+sgC9pB3bPQ0ecxep8x00gDLKhoJ8w4FZSzwWVGbvNyzc0CiXaVJj3f0zPlyet1KQLODdny5XLyAKucGHnEIpamT88lRyadMLFMQjj98MJWoq8342/scQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765078164; c=relaxed/simple;
	bh=2m8JY89557sMMEVqOYKh58k1S9obQaPwBC0s4o56nDM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KWoVmINNPSbdG6R0M1IaVFEB+suMOKXnKZtBuvVBxFG/PhD6DZazJE1n/0wLc7Jhi6+hpzMuLi9SQ5rb3smcWMQeofBwhFyGBMKx8kPvR6XEk7RMtHLJHPm8QcfUNcWeUYcwe0iZUoJH/ylomRWk9PlrQwb0PvYMkMaexbYg7tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nEP3QApl; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7baf61be569so3889671b3a.3
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 19:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765078162; x=1765682962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lhYsWVlpI/3+mlNI3YGmU2xB9uwVHbcNM9pKSkS4yvs=;
        b=nEP3QApl4zIR9dQTLEhFpYwDb9FdwJ9YKc5XYWZKMarGNUN/Oyn6MqNybiA4MUInzG
         bUkdFY6XFcwB/baG0pQsHX7W7js1mSqr377oTvf+spWuGdSOt2LCzdYc1bk9IZYXZ1wn
         lhPt8f7EIJeLbWpvFDfMnHEw8/dhKbgEJcBr40sbs44KKdj88EjP/r8s/DJraBDxkKnQ
         Py9WzOuEb1dNzpG03BW7xeypvNb/BVmtIFu5QgpksCVZv0f//wJ9yPHw3QhZTbUlRjJY
         4IWh4x0Xf2Bmac89iSD+A/gqfum6vA/av/GHEyQFLclvV9WGzwQRv1GAUeMGsoJ0816w
         bDQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765078162; x=1765682962;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lhYsWVlpI/3+mlNI3YGmU2xB9uwVHbcNM9pKSkS4yvs=;
        b=CFctdXiA+tMRfmXz0+UrpbcFv/Qe2VUvwSDoM0h6JBqhor5slqxqBtpJtfzWEyuny1
         GrA/gRYFgVAr/PB4R5hbvYJwofVHDAqTbGdmPQpq22rlnFLm4uALyPnYJKn7M7rY4ufM
         puRde4P9mFYcGm/5HFRVyiQDFcB9dj/1NZvduU8t++iEQq52ka/DRL4ML2VeIdDVoINP
         5IylAD3LAZ5U+Ui2IuwypluXzxkoGfVBW70/6us1u/r1PbM2Vj9EC2J0A1Ik3quV3g6b
         eYokCzn+5Bd7myTR+QIWnf1YJGLU0R6Udq5dnsNw5BBP2F5eW3SGUtLig7gJ4Es+qc1z
         rc6A==
X-Forwarded-Encrypted: i=1; AJvYcCWY41wpXZrLtel6Tvsw7rqIbeRg9sCcHALGIliUT0Ot0qVMgVeCWJukx5olAENSN1DStJmkGQ0al7rR@vger.kernel.org
X-Gm-Message-State: AOJu0YxY9qvNKXJhkMQ3hiHfCQezkqYUqB4KPhrDcLvccsi+rFSZTngT
	XRylc6gfTvGHhS3+ypQtrNFJjF2SG49G01Et8ly8f+yt9vsgKRY8Z1Xp
X-Gm-Gg: ASbGncvfqQnLzIm2CXI3WlPlojVmkQPYshde3NP1aAb/VMQl31x2o0NHVZZ1I77aqNY
	MBOA2MhONrEyl8V+hc5iqLT1CW2Edl2FhVZ4YD3aHr44da4K+yjR54acKUoHZKIX9eJVgFRQJhv
	SohDfrapEt5zO0P0OcpccaibTDRmCdsUxrcPMXO2+jcEswvf5TEc2S+LFXJfu8U6JQijqk0HIq4
	Rf6ahXW5swojz3sdb3M5GJCtPTHmGr5SL0gMa/q9AtX4G/Ncufwkyht4Ds187pTSnUP/69Zwbro
	e75FagKRdT0iGVnyDB0JqzoZNYGTR8hwS0x1CkFH9ksy3NWPpJ0345Ta8cbIjjJSPsP77OxA9cA
	mdQHACSnnMfJvuzmcQ6JqYlgFl37WvUoEpus5Q4JY0oi7QujiXJ+XsvoUWYfXe/n18JeXVRNytQ
	+IMbev4ZlHkpDfhxTniZ98FHLtfXuNH08=
X-Google-Smtp-Source: AGHT+IFoQGO9PDCm4ECz2dmGbfHtByr97lhJ001rQjp1vKmp/yQYSvJiggjoTMUmi51CYZSu7pHtkQ==
X-Received: by 2002:a05:6a00:bd02:b0:7e8:4471:ae56 with SMTP id d2e1a72fcca58-7e8c5043fe6mr2831153b3a.34.1765078161921;
        Sat, 06 Dec 2025 19:29:21 -0800 (PST)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([122.35.77.229])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2adc5c355sm9036217b3a.33.2025.12.06.19.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 19:29:21 -0800 (PST)
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
Subject: [PATCH v8 0/2] Add support for MAX77675 device
Date: Sun,  7 Dec 2025 12:29:05 +0900
Message-Id: <20251207032907.4850-1-joan.na@analog.com>
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
Changes in v8:
- Remove NULL assignment when using __free()

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


