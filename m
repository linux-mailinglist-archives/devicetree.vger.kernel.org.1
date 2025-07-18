Return-Path: <devicetree+bounces-197586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB79B09E3D
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:44:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E47DA16F13E
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 08:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C90AB295513;
	Fri, 18 Jul 2025 08:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="WmeL5ltz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDE62951C8
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752828270; cv=none; b=Ymfc7gsKXQVRAxe2xomJ+eN/U7inZiWq+1cYUGV0Bh8BUhXI3ZVgdI5H+opZu5VEq5AB05KQaY/zsoE37GdUIOEL3UsC/bkx4oQj1Ud+2fXVDJ4V2XN3kZjwO0AcNloy3+yLJfifXlfeVcP+/JjRIw2s6J/Gnt0Z4j6ZLaqYR/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752828270; c=relaxed/simple;
	bh=KAk0DmLd1Szc+8RqLN4Q1eSR/knVV6oNPm+weoQTnSI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GNKo4lxzsNQtJrJ/ifLTlVXPlcg8iqiqDaDXxj2Ylo3fmFs9VqMM3Nuz/IqoNlnn5wU0YkdxvUxYBofb/cwok0arEHyigbB/VxeAuIMNEl8/PiLy25qk739kihtXs4g5UNcx9OUPy0OhcbBGiDn52JRb/JqIsdKmRKjgNU4eZ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=WmeL5ltz; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a52874d593so1461507f8f.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 01:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1752828266; x=1753433066; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EQUcoTZuNnVFMQcqVlD/dsEaFXowm3+QSDfAXy+mm2Y=;
        b=WmeL5ltzdinHjQf2EXI9JODM46w8e3K/9omwK4aP1W+7U9Kteu16IDKy5RbLhRuzSZ
         hu6/4929MCrKHpVQm63+DRCUM8wZvl7sRAsRiyVbf6TT1N/rBnVPFXwXRHQmWV4W8bK2
         0RZmhIWMURlQff0pycSmyOb6UWPmxvxnPWHieeDNRRn6dfqDxFrblrB9Tvz6+gflP/Vw
         ej5qnbSef5NtFUkkEr0TtYa3gzdEh7Goei2kQX4gFxRyyhWXhKai9skgK/pHE/RAEjlh
         XVOk7Y++f1+DcFKrGAFsnCGN10g1NOXmXoz0nX1+UfTR59t3u2VbQ9FTZc/xeSi3mcam
         xulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752828266; x=1753433066;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EQUcoTZuNnVFMQcqVlD/dsEaFXowm3+QSDfAXy+mm2Y=;
        b=jtRtFyFSW5o3f7YeYWGnagC/8Y9tz4OC2IgYFZdVgOdHwIKZXIiDQSBahAjYRH/wm6
         iJKAAcmvGCCSITFnqj3M6ACaoCtsoR4oXmtaZEx8gi08Fb7PeJyPwcmB4vn4fnPIlMjD
         rm+sUDQvH3nxMQ8lcUpxO+k+XPYXj6GOrhWtBYkovh83m2ptaCbuLkrDOrCSJ01Kvyaf
         r0hfRl755kygpEfbcL/bLiLMEV7XNWHmjlBwoUEvjbvmbnuMac9CEFDx6C8uWIKbtbZT
         ZTCWuNzQqK4Le8SoN1ZSTyQpUhBac0FPcWr6SHeYTy/S3JAsPrVJPNMg/wL4tTHIFzjL
         bUTA==
X-Forwarded-Encrypted: i=1; AJvYcCXorpI0ec2Nti4YCJCIZigkApmFtF5QDLS0Fr5T1jzJZc76Ak+okbOdUJ2L5tP5aFA5B6krYCfA2c8U@vger.kernel.org
X-Gm-Message-State: AOJu0YzGvJ6CNPe58Ov5R6HaUZkt1cCeT2G+2/7U6gQXOKHqJijsrszM
	KG0HPJxURusMFHyOBLe+dY+WHQuETrqiL+gL0EW9VFjxwm6CU7wccw907ZyKysAtg0M=
X-Gm-Gg: ASbGncssfZ2gCZD2CpyCzOjLBsG0dqE8wiImMraodTTps16y9CgWj4q8oCa6yGRv58x
	0YT7lIKjmharHCAMB6CeNQ3Cmop050VGzZt+2HcwAhKAhGbrw+XLLfgF5CBQDINpEAsleORNXPG
	gyZRooCcNjJvmRAtF9ekem2LFr7rjlZioSdgJsWPVkwKVIj+bCglp3KapG4bTtEfGaRn7v4zU5v
	RRZadds8IYsP7E9eSe1C7HRt6Ivx+JDPAoyftr3S/4YhG+MiJfibWVnPoEQbc1ZOE1eitReicVu
	HQ/1fQDRJFod2iZg5EaazQCxz+gCQhEWg/cCehd+6zgewAhe8Cihho6gDdV7ODLkYue9vtfO4Vh
	qLtenuvEjRvrIHHvtEL2vN2oYwcRf0g4JhriVetDScmYWQo6q
X-Google-Smtp-Source: AGHT+IF1DTxp68FxooAN2QX2xUqfuF3c4Mb9kU6Zx0w2YlTbaB6gQlG+uHFwhWQB3m0w5QaqnggY7g==
X-Received: by 2002:a5d:584c:0:b0:3a4:ef33:e60 with SMTP id ffacd0b85a97d-3b60e51844bmr7888727f8f.40.1752828266224;
        Fri, 18 Jul 2025 01:44:26 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:9aa9:dd5c:bad6:e31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45627962384sm58208115e9.2.2025.07.18.01.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 01:44:25 -0700 (PDT)
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
Subject: [PATCH v2 0/2] riscv: dts: spacemit: Add initial support for OrangePi RV2
Date: Fri, 18 Jul 2025 10:43:37 +0200
Message-ID: <20250718084339.471449-1-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset adds initial device tree support for the OrangePi RV2 board.

The OrangePi RV2 [1] is marketed as using the Ky X1 SoC.
However, after research and testing, it is in fact identical to the 
SpacemiT K1 [2]. This is supported by the following:

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

Changes in v2:
Patch 1: no changes.
Patch 2:
- Added aliases section to the device tree.
- Removed the memory section, as it is populated by the bootloader.
- Updated copyright header.

Here is version 1 of this series:
  https://lore.kernel.org/spacemit/20250711183245.256683-1-hendrik.hamerlinck@hammernet.be/
This series is intended for the v6.18 merge window.
I'll follow up after the v6.17-rc1 is released as suggested.

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


