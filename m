Return-Path: <devicetree+bounces-229163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD7DBF49DD
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 07:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7DB2B4E215E
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 05:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57AF1D516C;
	Tue, 21 Oct 2025 05:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UgZg37ko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3B363CB
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 05:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761023328; cv=none; b=DX/nFllbcji5LSMPo0HB2Nie9vK6OLs0O/C83jPrWGqYpMKsFk+EQJr2IQiiab1zrbD6FINQUs0CIQsWHmf/Q8ZCBTeMGezSDaOs3qVbBFw0fYLVp7dP1jLLBpXe5Slt3I/Iu/wH/XZhXaWg4BzGunSGyBz6bD5XXhtQPmccYzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761023328; c=relaxed/simple;
	bh=YtraqUyKlqWdKFxQzkA2rw65q0ZN+exZ2MJfWd2tuxo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cOFOLXuya91kqKuqcYMlBLTOBJh4vrGc1UyKzWJJRTyt4jOtiQqyn8e3cm5Z0UjQZ28zDp3Gyl3CdnXfuQmwKm7i6AtN97pRo4XFvtJMmIcoHyHVTspLTnDQhjbjyrdQf+hu2kdvYtLggvUbnu/um8Jn1IrBYFffwffjk+3sOOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UgZg37ko; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-79af647cef2so4360342b3a.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 22:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761023327; x=1761628127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zlep3ICY1uWogkdShazVCi4lH3q4stL2OEVuva3DcVw=;
        b=UgZg37koRo5n2vH/Jl1nxLU5p7Yk8j1mGZtrLz9zrz/HksqiESLMTarEWKjr7F8e46
         wRn3QLZxzcSYP2WkzWKluQsaw5KxZChu8tk4YyrfASFkK6tI5AqCV3tmHBFAknDHrlfC
         IigUL73rKRtbiDVa2XyZJseHwHf5/eDnptZtZ5zjjbJpIjbJm/So5lLlroTtsCeZcXbA
         +8jjREKDOzZ/5dlwRsDKJwyYUc95y5lS34/kq0NPpHH3+TLaTZ3nZilCLO3FLduqeANo
         3NJtGSGBAzidjK7I6pq3M4MlJuUbZ7K3I/uovDhikM4nf8H1QBWSit62qSs2uTL59bLa
         sYnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761023327; x=1761628127;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zlep3ICY1uWogkdShazVCi4lH3q4stL2OEVuva3DcVw=;
        b=q/MX5k8hWrWBgRyCPrZyOquuY+VTHHB49aM9+8pdO8Iu7RKTXITAuVRKR/197J8twz
         YwlveC3QGvHn6LdXm0HaJ+HoN7l+d2Vb0hw//eCAzbBRaRMGFLUqHjIoJEPTk/YXnhH1
         qSvAW1FoXRCOWJQmxALnEddji2Ji3bhfmrLFNJetWOofWWiArmBNAa4F2AgjLwriUijl
         8DXfLEexXPx/xVijGBiFPbqrCplNtkka0JXXWUXl5q9sO7VLoUWDDSF8x4d51MF2DnKq
         rGT1A9zZ234+aOtLJoFDOeEaJvTn14uSn8kNKKnT51YWeoAQEYWgBzXBPuuBaXw9FPS3
         +xlA==
X-Forwarded-Encrypted: i=1; AJvYcCUG8+jY30yePx9Zp/SnPmcVYIgH5NTCxOd++OWR8gMfUj2dqhW4tyrXcnUMvpAvfi6DJfW1oPXK10Uu@vger.kernel.org
X-Gm-Message-State: AOJu0YyFh7BAFaeApU/Y+F5L3QGvcnWiJ6wggOGB5KJAc0Cz8aL+S7oq
	kLwa/5Hof/qAZ6WnWlEB/QmJjsKKdRmWM3aCvxZg9QksOjKr51/u9ERS
X-Gm-Gg: ASbGncut681CtkEC7tUGSELXsOo8VBLgd2u+a78JdP/z7KP9xdoQ28Wmp+pBIewF4JQ
	2b/u5br6AAGlqWAXAe7+1Pgd78znYZiFUngcxFYMDApj47z68cwc7BZKdRc7BoTb0RcGYD0e4jO
	TM1akFvHkS1DzUyYI/ivebPuhyEviM9TJ3FDU0pcSIrc78QOSaUVPWXXwWdTHWRpJ7fxUQF5kYw
	0GY9bpu9Jz98JA5gx2UZ6Z+9k88Eog9qVVoTKf87pO4ehClEexLjozAWomYWtNXnZZtKoS3QDt8
	W7gtZ5YVDWjfvX9Snp+4Me3BN6TF1TDQ9eHxY227rxKevRQjFr1eiU58TEBp465kpLe2N1R0+S9
	psMPXpoJvJwnRSw3ODg7xQs6E8h2jUKQm14eenT/UkWo5qbNiLaaN8AXjKn2VuXswQmTfGK35P1
	0BPtOD/qT/QHlNN8amI2wfTQUzDOUmbjVV897g4U0v
X-Google-Smtp-Source: AGHT+IEKO2ycxvrPxfdPNfX4NNUznEApUZ78dkI5U1+dK8wAC/cmFlKejy9rKQIyikF6t2boUA1h+A==
X-Received: by 2002:aa7:888e:0:b0:780:f6db:b1bd with SMTP id d2e1a72fcca58-7a220a43782mr19916796b3a.4.1761023326679;
        Mon, 20 Oct 2025 22:08:46 -0700 (PDT)
Received: from HYB-iPCgmhaB8Cy.ad.analog.com ([59.9.235.253])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a2300f254esm10113015b3a.45.2025.10.20.22.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 22:08:46 -0700 (PDT)
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
Subject: [PATCH v4 0/2]  Add support for MAX77675 device
Date: Tue, 21 Oct 2025 14:08:28 +0900
Message-Id: <20251021050830.185626-1-joan.na@analog.com>
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

Joan Na (2):
  dt-bindings: regulator: Add MAX77675 regulator binding
  regulator: max77675: Add MAX77675 regulator driver

 .../bindings/regulator/maxim,max77675.yaml    | 195 ++++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/max77675-regulator.c        | 863 ++++++++++++++++++
 drivers/regulator/max77675-regulator.h        | 260 ++++++
 5 files changed, 1328 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77675.yaml
 create mode 100644 drivers/regulator/max77675-regulator.c
 create mode 100644 drivers/regulator/max77675-regulator.h


base-commit: 6548d364a3e850326831799d7e3ea2d7bb97ba08
--
2.34.1


