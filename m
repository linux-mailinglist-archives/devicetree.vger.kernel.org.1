Return-Path: <devicetree+bounces-215538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 660D2B51D14
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 18:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 938EF568026
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883203314B5;
	Wed, 10 Sep 2025 16:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lo94Pf0i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B4F32ED32
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 16:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757520446; cv=none; b=DPit+0nf3PjcyeOnalksdYPSw1C5Tp+4P3fTFTu3POA1L13WzI3Xhu3ew1l3dJIHeGpcJxWlIWjyJD+a4Z5IF2IXNHUrFiP9tf6G9jDcVCS0g1V2QbnfCSkDTV9N/bj4Cvlm77vVNKMvucyl7sE0xo15X1wSl6ZCXKWlSdhP4QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757520446; c=relaxed/simple;
	bh=9JM8zXnpGCXjAshCsShUwOSUA0HzjprAbIs3oGMpa2s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=GNCdiRECp/eoZohyOOV6Jo/6/ZSTww3AO+UdrX/hTzJrZIg4aSdWcziNCRDxaYmrbhtdFwGugTfid2UWIqA6OxxA5OhKDQXCBWPjZc1XS45cj6dOHBH3A4mhan2rLymynlduD5GheJUmBw1bTo+1NfCOKe+XL/yEV7lDiDb1Wzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lo94Pf0i; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b0415e03e25so932012866b.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757520441; x=1758125241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mIxXSxIMQ3326DXwyl7d19buZ73lRdljmi6FSs0+JJ0=;
        b=lo94Pf0ivpehjcbLmUd/EHc8VdIoX/egmiqUSTPqyn2St82q2ydV44OvJQ0KYDxMWx
         7H196cT8i8v+aL8Mrpz7F3yImVeKZ45rOH5WMTV+7F0yeZ4Lax0MCEVVTtCTd7mmQv75
         LP3xYedFas+tozpkVVuZ3YQOPm5g2vjT9b9Dh8dMohFrBXiV1MQPmAKAKpNe7Vc9S8j8
         rfwk31mnF1lkW+RXPGw23kk9NXe1Gyrm9G3AwAikwhEZizkitTBlnw3Qy/Wcq7sO9oev
         xEXDAr+3bAHJnGalsN10Yta9/UED/eBSk5Pw2EuwGje93eO9Oj0S3FPjz3TnudUhB7lF
         JT+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757520441; x=1758125241;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mIxXSxIMQ3326DXwyl7d19buZ73lRdljmi6FSs0+JJ0=;
        b=cvK7Hu6B5gBdfdMtYaKhVBXdtudl4vkpNmNGVtRqW6NVbTsqjvLNrNV4wjA6TILHiP
         04XUYJG4MjS3Z9c33oZZ99j/4tD+d0rIafTlnO2uS9EeJpUEI7AMZzbP3TEi7MR0JPIO
         vL8pEKRMHrGtLYj6Rx4adz9xWsD2tpq5jKomOdtTSgtVetzoGujIw+bKmpz8oGh4w7Up
         eJMao4g5uiX3rKPv/8mmu/GN2tWoTjF6+rNMbiYJyhK1Sg06atBZ38jyKy8jHIlRIyZd
         Jv5v/UAShYPsAVphsPfBvdZc9i66qG1pOFcq7B/dxMXoaklu3P6Gp/na2mkJ8jbWi10T
         w3vA==
X-Forwarded-Encrypted: i=1; AJvYcCUnya8h+Rg0RJJBOK6NSiG9cPbjB9alpnQb5TKym/3ILOhlyeXWG07zmVyfI32YpcRRn6RfL9sTTDCd@vger.kernel.org
X-Gm-Message-State: AOJu0YwV+/fAhzMo1jFprB+0S4++Sh2cjgPq6PZ3LLBqMSPrUIw1bi+K
	J/06DnvkAzNqZTZVOVQiO2ssgOK4QMwwj9eIRTgWaPbYpNlhoZNTm2c=
X-Gm-Gg: ASbGncs/0R6KyqTThTW8v9YllYesZlw18DdJhwy+/WZOTzP8bycOWKmTa5ng/5vhRDp
	WD1tv07WJ9kOxxSdoWyI0Q1id+QnmcFFk4R+P56vWlbCe3W/Cjx6+uZKDwS0JFw8OEmevLXyfjx
	oWGMXzPyrYS7k7oLEvB42ld2YMiR4x57WZDpB8PeIL8eJyI1bBTWSXr42ZLD/sToWj1znKJWuVV
	v0S/uyCjCso1mkqlkmunT3G7C6CNoPpu5mI11Khu8GWQw6ws0qYG2bgVuqkAHnyZgbe5B5eScKl
	4ozRVaPR0wxH0R6THSAQvUzQQuaRp/VCs6hS48uA1rWEnOaFS+8aj5cGY2nj3CEtWq0CwdbMfOY
	8hUYNZSr1ko2WMatb1Smo+evTayaSmGkhssixxESyEZ4rEN3eKx8ZRelvu308W45Lq+Y=
X-Google-Smtp-Source: AGHT+IHUnlYKS+LJGenEhgjXAoecAwaDL0J5OwJwpWMxJCRcFIpXNlW/vy+X963BIZzpFhsZr8LRZg==
X-Received: by 2002:a17:907:2d8e:b0:b04:563f:e120 with SMTP id a640c23a62f3a-b04b16d641emr1475440566b.53.1757520441048;
        Wed, 10 Sep 2025 09:07:21 -0700 (PDT)
Received: from localhost.localdomain ([2a0d:e487:229f:d114:32a:5671:8dbf:7357])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0783047b9bsm189424766b.13.2025.09.10.09.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 09:07:20 -0700 (PDT)
From: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
To: andreas@kemnade.info
Cc: lee@kernel.org,
	krzk+dt@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	ukleinek@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-omap@vger.kernel.org,
	jihed.chaibi.dev@gmail.com
Subject: [PATCH v7 0/3] dt-bindings: mfd: twl: Consolidate and fix TI TWL family bindings
Date: Wed, 10 Sep 2025 18:07:01 +0200
Message-Id: <20250910160704.115565-1-jihed.chaibi.dev@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This version addresses a final piece of feedback from Andreas to make
the twl4030/twl6030-specific child nodes (audio, usb, keypad etc.)
conditional by moving them out of the common block, which now only
contains common properties (rtc, charger, pwm, pwmled..) ensuring
the schema is fully accurate.

The complete dtbs_check for this binding is clean except for two
warnings originating from pre-existing bugs in the OMAP DTS files,
for which fixes have already been submitted separately [1][2].

Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Uwe Kleine-König <ukleinek@kernel.org>

---
Changes in v7:
  - (1/3): Moved twl4030/twl6030-specific child node definitions (audio,
    usb etc.) into the conditional 'if/then' block to improve schema
    accuracy.
  - (2/3 & 3/3): No changes.

Changes in v6:
  - Refactored the ti,twl4030-power compatible schema to be much stricter,
    removing obsolete board-specific compatibles (-n900, -beagleboard-xm),
    that were added in v5. The schema now only permits specific, valid
    fallback combinations.
  - This series presents two new patches (2/3) & (3/3), which update the
    affected DTS files by removing obsolete entries.
  - Enforced the presence of the compatible property on all relevant
    sub-nodes by adding 'required: - compatible', closing a key validation
    loophole.
  - Applied various formatting cleanups for readability and correctness.

Changes in v5:
  - Restructured the entire binding to define properties at the top
    level instead of if/then blocks, per maintainer feedback.
  - Added specific compatible enums for new child nodes instead of a
    generic 'compatible: true'.
  - Set 'unevaluatedProperties: false' for 'pwm' and 'pwmled' nodes to
    enforce strict validation.
  - Expanded 'power' node compatible enum to include all board-specific
    compatible strings (used in existing device trees, e.g. OMAP3-based
    boards) for more complete coverage.
  - Corrected the schema for the 'power' node compatible to properly
    handle single and fallback entries.

Changes in v4:
  - Reworked binding to be independent and bisectable per maintainer
    feedback by using 'additionalProperties: true' for child nodes.
  - Added board-specific compatibles to the 'power' node enum.
  - Added definitions for 'clocks' and 'clock-names' properties.
  - Renamed 'twl6030-usb' child node to 'usb-comparator' to match
    existing Device Tree usage (twl6030.dtsi).
  - Fixed some spelling/grammar erros in the description.

Changes in v3:
  - New patch to consolidate simple bindings (power, pwm) and add
    definitions for all child nodes to fix dtbs_check validation
    errors found in v2.

Changes in v2:
  - This patch is split from larger series [3] per maintainer feedback.
  - Added missing sub-node definitions, resolving dtbs_check errors.

[1] https://lore.kernel.org/all/20250822222530.113520-1-jihed.chaibi.dev@gmail.com/
[2] https://lore.kernel.org/all/20250822225052.136919-1-jihed.chaibi.dev@gmail.com/
[3] https://lore.kernel.org/all/20250816021523.167049-1-jihed.chaibi.dev@gmail.com/

Jihed Chaibi (3):
  dt-bindings: mfd: twl: Add missing sub-nodes for TWL4030 & TWL603x
  ARM: dts: omap3: beagle-xm: Correct obsolete TWL4030 power compatible
  ARM: dts: omap3: n900: Correct obsolete TWL4030 power compatible

 .../devicetree/bindings/mfd/ti,twl.yaml       | 232 +++++++++++++++++-
 .../devicetree/bindings/mfd/twl4030-power.txt |  48 ----
 .../devicetree/bindings/pwm/ti,twl-pwm.txt    |  17 --
 .../devicetree/bindings/pwm/ti,twl-pwmled.txt |  17 --
 arch/arm/boot/dts/ti/omap/omap3-beagle-xm.dts |   2 +-
 arch/arm/boot/dts/ti/omap/omap3-n900.dts      |   2 +-
 6 files changed, 223 insertions(+), 95 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/twl4030-power.txt
 delete mode 100644 Documentation/devicetree/bindings/pwm/ti,twl-pwm.txt
 delete mode 100644 Documentation/devicetree/bindings/pwm/ti,twl-pwmled.txt

-- 
2.39.5


