Return-Path: <devicetree+bounces-116861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA389B433F
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 08:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C685D1F2337E
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 07:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB7A202F77;
	Tue, 29 Oct 2024 07:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="X677PZ5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320AF202643
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 07:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730187544; cv=none; b=VPxDwdaYoVD56KCN4ulh26i/IRL/TTMxH+UVeF3NjY1iLPfl0WObzzvcaGkiiP/hSz454ZZadmTmxoshiVb7nYL688dfLV4YXILBPz6QInS+5ZPxyhpPTnpdx+YsU3Xddp9R/cu9oALOqwmia9xU+AZf4SzWVJQWtEImXQcqX6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730187544; c=relaxed/simple;
	bh=upa5PmzLtBu0Y3nfdOooxdpKI690k6f3BnZSYtMoQ0U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fAbs03ziMwQbOQf3NU+mFHUubbrRX+sAsrsbvg2Z7Br9VxuHLb7MZmXyUjchDU9rQuJlPQoIb3ynuKwe6O3F7H3+px0HJ1pxcHzxB4lk2klS9e8BU/38+D8bQOGrYkGQd6zRrLO71TolifFrkRvcwT9eTCS+Xy95rxUJpsE3CZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=X677PZ5s; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4315eac969aso35736695e9.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 00:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730187539; x=1730792339; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1Hq1VDxB7LVSJUoA1SaWPK+8W2w7PC8ifAzEZRqYKQc=;
        b=X677PZ5sKdYfYTjFBbbpJkcZUzmAyWNuet6Yya/SED2M7NSFTe2i/Cue9yQxhkyyAe
         qGoOFZatSYALd6toa6meCl80SVJ5VJiVYkT1QyYp/ZmZLk3MMA5C/Xwd811/WktL6fQi
         Ay08CtTZhmc3T/OtMvmb68kbuyfu9aJXK23WX8xzShv8Y330WXquiO6tykStAO0mqPKS
         olGTSKFbe2QH0UilCZqDErCSXcB7JzeswapIcwrP9YwOILPi/+PeYqyJU5Vrq9TlBN9w
         xjLbkcDVubtJuY2GN4GjAXiT0L/5J+tzoDhf8ZlsezHRA8V4REDLKH59KirbqGgJNker
         zONQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730187539; x=1730792339;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Hq1VDxB7LVSJUoA1SaWPK+8W2w7PC8ifAzEZRqYKQc=;
        b=rIvbtSTkQMaPqy7rp+xAIUSwvTg5MvsyC9PZ4TO9DTeyQUR2KFKndaVrFtuw32/gp6
         nAoQTFDQAX9rv9CNZZHzHmUnktRymlncym5aegwZNqVKxT7rCkZ9xqPuk7fTTwLFND4m
         wahTLwKtqaA68I6XSjj2CQl0hOyJmAsNgfOCW1662BnFwklIoxgiBA2j+LymBYU4sPLw
         Hb8NtjPfRPNGSnPuQ/8pY8j9GfLUakefAuYC1TcqUZluK6NWemduSZPrwCBit5LBx8Di
         55cVMjKlGWQp/n/nMAZwEVvMSXtUMoR8QcltCelFjaD1BjuR6qfSyPUxdNZ2wnVkiR2w
         ovTQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7dWbxQ2JM0SSDoQd+bgWJUX8k6BlKNu9MIxZ9om7PNavjeT4hHyU1+VuB1H3u6cHY5kUQcfwH5Cq+@vger.kernel.org
X-Gm-Message-State: AOJu0YzIAdHd/jkPNzVLqCUH66VvjOg5jwpPuoCBmvceCZCuV8ryuHWs
	BkDkTdY1LUUuB+25qSZOVheEtt3pL0ZrEXfl449xiKXpudbIgiPevVCgUJnsIEO9XFOFDUxwBZp
	PFtE=
X-Google-Smtp-Source: AGHT+IEtOAQvtDnbjkZ4I95gauRiniPeISWYzewJLSNFQFAIdFxHpv6/j97ipl7h/ugJ38Pri5a+Ig==
X-Received: by 2002:a05:600c:a0b:b0:431:4e33:98b6 with SMTP id 5b1f17b1804b1-431b5717175mr7901755e9.5.1730187539623;
        Tue, 29 Oct 2024 00:38:59 -0700 (PDT)
Received: from axelh-ThinkPad-T450s.home (lfbn-nic-1-251-169.w2-15.abo.wanadoo.fr. [2.15.94.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b714fesm11692939f8f.71.2024.10.29.00.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 00:38:59 -0700 (PDT)
From: ahaslam@baylibre.com
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Axel Haslam <ahaslam@baylibre.com>
Subject: [PATCH 0/6] Improvements and Enhancements for AD5791 DAC Driver
Date: Tue, 29 Oct 2024 08:38:51 +0100
Message-Id: <20241029073857.753782-1-ahaslam@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Axel Haslam <ahaslam@baylibre.com>

These patches aim to improve on the ad5791 driver:
 - make use of chip_info / match tables, and drop device enum id.
 - Add reset, clr and ldac gpios that have to be set to the correct level in case they
   are not hardwired on the setup/PCB.
 - simplify probe by using the devm_* functions to automatically free resources.
---
Changes in v2:
- Fix probe error print using uninitialized ret.
- Add documentation for new struct parameters
- Add review-by tags to device tree bindings
- Link to V1: https://lore.kernel.org/all/CAKXjFTPwN2TYW6sq1kj3miZ0f5OqKX0aTk8eGf1sj9TBk1_e=A@mail.gmail.com/T/

Axel Haslam (6):
  dt-bindings: iio: dac: ad5791: Add optional reset, clr and ldac gpios
  dt-bindings: iio: dac: ad5791: Add required voltage supplies
  iio: dac: ad5791: Include chip_info in device match tables
  iio: dac: ad5791: Add reset, clr and ldac gpios
  iio: dac: ad5791: Use devm_regulator_get_enable_read_voltage
  iio: dac: ad5791: Use devm_iio_device_register

 .../bindings/iio/dac/adi,ad5791.yaml          |  39 ++++
 drivers/iio/dac/ad5791.c                      | 203 ++++++++----------
 2 files changed, 131 insertions(+), 111 deletions(-)

-- 
2.34.1


