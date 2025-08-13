Return-Path: <devicetree+bounces-204177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 71088B24550
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 11:24:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A48AA7BA196
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 09:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CF5B2F0C77;
	Wed, 13 Aug 2025 09:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="zs7x1EGC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049F02F0C5F
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 09:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755077018; cv=none; b=PlTvcGz8h2kzwiiDvyQBXdogxcoZ7+8oXm4tYj5um7OL/bJOLuLwVnTwbJqIVpoEPg9cpAWhtiiqgJ4dHbqr5+QDgiA0aaJ8YzCN3HXC3YseNBD9qxb/GNuOLH43GHWx5MQideQHTNnvCiR7v2H4tHZppy7Wyxgoc9d7uLTIc28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755077018; c=relaxed/simple;
	bh=nSnlQzS3Oijb3uuQVtZaTkeoC2ip6X+Cu8XPFNiTPn8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rlKxnsbOd3xlLkndQVRGuFo9NHXhxGMZPc58rF1oop+4RKMrz9lO74skhUletuL6t2fd8rh3vSAN6UBpxYcOy8aJzD9XbcXFhSD5i9v15MZb4zkbDAM+B9JKDNsirdbmzMowN7S7l1AXq/m2+AYCl1vOlbMjE4EM+vJTEsVQBQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=zs7x1EGC; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3b7825e2775so5805014f8f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 02:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1755077014; x=1755681814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TEyolKpesJRN4enzfkBag9GEI6SkLDls4Ifg+2q31hc=;
        b=zs7x1EGCn8ffj7DYVYo7TFkqrPsYCNvbrfpJ5V1DrCEQFMxcBgf8kmR76xD2SkiPWU
         QshGB3Bl1Tx5ndWclqiWQZ4H0El3y4n7yRFEN/PrcGv9vIlJDuWD+PEwMnf926NHEROe
         6vZltUaViF7q3jroc0kvY/6BdF2yrQYExgSYQy0WEZ8sLiS2iBoYShuE6+KbaFFsjdy7
         p+llBRJHjCk9WUKmaVzfVphyB3kmOh9gZaEU2kxwvXHLi0N3G8D2M1unSxI/2YnCPTIP
         oJH9aNc7y8fvLoKp3TPkqCjqfvJz+sHWVgh61v8SE4UQ46HGw8gtct7W748Vf8NSAAyW
         HwUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755077014; x=1755681814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TEyolKpesJRN4enzfkBag9GEI6SkLDls4Ifg+2q31hc=;
        b=alZP5oVVsagVx9A1ucQWA0qhFngTw67JWU6S0khjjW/pb/KB+qYfe6Ig0Qf58+zhCV
         x1U2H/DsNxdauAbCZnom/OICG9ntnXsSZjflfuqj6r3Tj/L5rEy4T49uYNvWLmNURbFZ
         w+ilJaqTtTHbVDIYBdh1uqQAPfhBfokYI76/wnEKVLR4aVqj7xv6XJAqx+JUJbq4//W1
         vFK3J82W9c9TqPCeuU/zRXnPDXBUnL/NKcgSxtE3UTQOTslgrp7K/lVCCT3fUWZ4Dot6
         6duNl0fcCVMn7pHSC/hZ3lKf3ithn0vEOGGxmM2FlNWRRG8JalkRDJIJ7GjJBzuiA9M9
         skgw==
X-Forwarded-Encrypted: i=1; AJvYcCW/FY2tASnjpsIgC7bP8qAO8wfuy6tvJCcqPYHmU7+kEoGf/N90cKKag8PFErCw+nsVhW9iHfWch+RH@vger.kernel.org
X-Gm-Message-State: AOJu0YxGje5cIXfls9+/zdmTlHpGynUWvw+KRYaGb+cRw+gyykfFFfn7
	Sz8L+Mo6kIuryhS0pHR5KoFS20CRZpWYjvjYjSxJLCVs/MYclDaxVHUekNg3X+Onexc=
X-Gm-Gg: ASbGncsj7d7cP9CP8uCTfnqc8ITiwPux/XIND3rujzBzmm6HCR7kO+dlfg8lyPMEL4w
	mBXqik79gVbG1ROiLDIJhvhJSqwxXylvY3x7xXboo1hzFwIR4uVLnUMRPdZxJMsEAUesizFDUC8
	Qn/PQ9sAfugFkd7S+YnY8DYgMHCjveyOKm21v5/N/S260cLbr7lGUG97FPspeHhFsSSCBa8qgm9
	pfzl+dkilGasrT9AHWtZ5JIEdv2ZWRbokyRiqjDyNWwluhbIHpbZFR3gAIaMJe5PHqpn1S8xjhI
	hSak7pvCs74T8JsYrs3MvpBvVCT11QkUv6ti8/dbihxNwX7THLn6v5QQ0v4Dv9rA9UxNqIyQtke
	4htWL3MSlQBKG5h/DUdDMH9/ygUM11pe0y7x6p0zS3pIcSspVGQ==
X-Google-Smtp-Source: AGHT+IFxawn2hn81XiBMFzlp9R7LXDt7IQlnw4bYwjrbGUdm+VKiMtSVAcwLlkK3/1f3t/cZPUZtdA==
X-Received: by 2002:a05:6000:40cb:b0:3b7:9b58:5b53 with SMTP id ffacd0b85a97d-3b917ec345cmr1916488f8f.45.1755077013860;
        Wed, 13 Aug 2025 02:23:33 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:d33c:e682:2af6:3c3d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3ac158sm47966077f8f.4.2025.08.13.02.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 02:23:33 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	palmer@dabbelt.com
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH v3 0/2] riscv: dts: spacemit: Add initial support for OrangePi RV2
Date: Wed, 13 Aug 2025 11:22:38 +0200
Message-ID: <20250813092240.180333-1-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset adds initial device tree support for the OrangePi RV2 board.

The OrangePi RV2 [1] is described as using the Ky X1 SoC. Based on research
and testing, it appears to be identical or very closely related to the
SpacemiT K1 SoC [2], as suggested by the following:

- Similar integration in the Banana Pi kernel tree [3], which uses the 
  OrangePi RV2 and identifies it as the SpacemiT K1.
- Comparison of the device tree code showing a match to the OrangePi RV2 
  Linux tree [4].
- Locally tested the OrangePi RV2 with the SpacemiT K1 device tree, 
  confirming it boots and operates correctly.

Patch #1 documents the compatible string for the OrangePi RV2, and 
patch #2 adds its minimal device tree. This enables booting to a serial
console with UART output and blinking a LED, similar to other K1-based 
boards such as the Banana Pi BPI-F3 or the Milk-V Jupiter.

Link: http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/details/Orange-Pi-RV2.html [1]
Link: https://www.spacemit.com/en/key-stone-k1 [2]
Link: https://github.com/BPI-SINOVOIP/pi-linux/blob/linux-6.6.63-k1/arch/riscv/boot/dts/spacemit/k1-x_orangepi-rv2.dts [3]
Link: https://github.com/orangepi-xunlong/linux-orangepi/tree/orange-pi-6.6-ky [4]

Changes in v3:
Improved changelog: Reworded relation to SpacemiT K1 as presumed identical,
based on downstream sources and testing.
Applied Yixun Lan's Reviewed-by tag.

Changes in v2:
Patch 1: no changes.
Patch 2:
- Added aliases section to the device tree.
- Removed the memory section, as it is populated by the bootloader.
- Updated copyright header.
Link: https://lore.kernel.org/spacemit/20250718084339.471449-3-hendrik.hamerlinck@hammernet.be/

Here is version 1 of this series:
  https://lore.kernel.org/spacemit/20250711183245.256683-1-hendrik.hamerlinck@hammernet.be/

This is the follow-up mentioned in the previous version, sent now that
v6.17-rc1 was released yesterday.

Hendrik Hamerlinck (2):
  dt-bindings: riscv: spacemit: Add OrangePi RV2 board
  riscv: dts: spacemit: Add OrangePi RV2 board device tree

 .../devicetree/bindings/riscv/spacemit.yaml   |  1 +
 arch/riscv/boot/dts/spacemit/Makefile         |  1 +
 .../boot/dts/spacemit/k1-orangepi-rv2.dts     | 40 +++++++++++++++++++
 3 files changed, 42 insertions(+)
 create mode 100644 arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts

-- 
2.43.0


