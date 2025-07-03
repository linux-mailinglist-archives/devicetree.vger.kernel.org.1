Return-Path: <devicetree+bounces-192845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0439AF82DF
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 23:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54426546222
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 21:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4F72239E67;
	Thu,  3 Jul 2025 21:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Y+7Ti1aK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2A01FFC46
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 21:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751579601; cv=none; b=FrXYWPJrU2m6L5+faPX/vr/LWX6Pp4Ana4i2zM/bmjg/x7udHZUQh82DwZETGPterp0OWGYMHeU9vRJ5WeFXU7IbtfD3Dd//XVkpS+YZTuUwHKiZkCznEI+cxWBpjUjwyvxQdfJe9m0hjDZWQNSTsgqhxsmhETQtTQBKy3zQmUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751579601; c=relaxed/simple;
	bh=bz9k4I8wu4ITHd/c7cF+YBbeAeEaMUkwROjqtGrJrXU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=T0GSQd2nnnY08DIh36voUh2IFj7s/JPzkvw3pdST9XnYJ2g5lZDdKyZr/nTt7TzHFSWxuZUtxVLLrZhfH+wj0BJD9Y0vF18eETbAYWfvdGvXCtIAzJoabF64Zi3m99ixSuiHT1JsKSsX32eJrUt4XCqS540SrYCpeP0U3F8i/WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Y+7Ti1aK; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-236377f00a1so4203295ad.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 14:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1751579600; x=1752184400; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6QHOFRNJhHhOjARobq8OyaLuqSsqExhlwJCJ5EBtPr8=;
        b=Y+7Ti1aKOQ0HgYidESseYDvDgrl1w8h5uL5M+hyHHXV5h22sb0KFWeOMpVptF2jN0g
         DY9Biy2GnNc7FgZ93NVLXZeolnUzc0ESRf9xtxQjc4dMJS5LyaOnoJo2nk1C/CuKQ0SF
         vS3n4VYKno93Z46ce4LCBzoleexV3Lrdc0ekI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751579600; x=1752184400;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6QHOFRNJhHhOjARobq8OyaLuqSsqExhlwJCJ5EBtPr8=;
        b=cDNZ3GqS4Risnl4k9UdTmxhA9EksBsjt4KGaBtkzi+a55VphZcbRCSEf8AUlnjjA2e
         Aj0UCZkf4aybZTYZ8ZiZ0zgV1P+SNDSuwXXtk//aQ+1vZEFmiHPUjE5UM9r16dl3Gkm3
         E1ZZbb0c5m4WcsSo6Zme+RX6P+7yqF4FYWM8u/wVmUU1wB1GVJBXpwwkXWbYa1IRlqJ8
         bfIq2JGHdb4xGVVqqry2/PDlG5wwgUjvWYgaBfkCID3GTy+YbJKALwP8kaUGC+PdcvfD
         SWwmXeKslPin3aDZPYxuJActFIRsBszaZ5k42jAF4iL70KzBOKl4QtwPxDUaQH+bbW1f
         2D4w==
X-Gm-Message-State: AOJu0YxWh2cKniJk4PgIHCUFedY5nKdG1zf6GeGIaRjYPPYINMiQLkv8
	oFP71THjLJ37BBU1ZNtDCetnFtmhAtZC0hqfbhiso58CelKakPFYMQGIXm6bpBqn9w==
X-Gm-Gg: ASbGncv0f7QIliG9ZM5xUHlIEl0y5WXhOkAxpmpOJI61QZ8VX/DOgcc6OS44lHBP40d
	xVTLeoHFc2OuP2wzM8Ch0RUDJmBi9vUvNi1Kzu3t2ylIhNeXaKqjpdTsJocecgvfIeV1waG1LAd
	Dt0W4fwbpZ1GDRdaIORFl63bE36UNTo0WPjTJqvRHxsu7sckQGO4b67YL+f+chc012gO/bpCBj/
	9eDrUqtSWAZfYv1SAR/7ERJURB2/Yg2UrjEABwMJKwU/BZoR/EV8Jxe+ry/5MgRPCkl4n9b5xj6
	yq1a6EI3NXx4T2X7mdMSTBHaYmPuz118Pxi/LpuxIvJ9GEqPzWseqXM8fYTZpYGyc/nSc8vBuDz
	yYgK72FMjMX2VwH4/aDjupVs8xc6u0DDwrNRDnesYDg==
X-Google-Smtp-Source: AGHT+IH1w/Scs51jqqCK2u43ZpgzBf5ux9DORxds0o5CL5IqTPJAJcSzUBzUBTLiAES9RgG+Ppy0jQ==
X-Received: by 2002:a17:902:f641:b0:235:779:ede5 with SMTP id d9443c01a7336-23c86132b70mr3755145ad.40.1751579599657;
        Thu, 03 Jul 2025 14:53:19 -0700 (PDT)
Received: from stband-bld-1.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c8459b3a0sm4249645ad.219.2025.07.03.14.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 14:53:19 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/3] PCI: brcmstb: Add 74110a0 SoC configuration
Date: Thu,  3 Jul 2025 17:53:10 -0400
Message-Id: <20250703215314.3971473-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series enables a new SoC to run with the existing Brcm STB PCIe
driver.  Previous chips all required that an inbound window have a size
that is a power of two; this chip, and next generations chips like it, can
have windows of any reasonable size.

Note: This series must follow the commits of two previous and pending
      series [1,2].

[1] https://lore.kernel.org/linux-pci/20250613220843.698227-1-james.quinlan@broadcom.com/
[2] https://lore.kernel.org/linux-pci/20250609221710.10315-1-james.quinlan@broadcom.com/

Jim Quinlan (3):
  dt-bindings: PCI: brcm,stb-pcie: Add 74110 SoC
  PCI: brcmstb: Acommodate newer SOCs with next-gen PCIe inbound mapping
  PCI: brcmstb: Add 74110a0 SoC configuration details

 .../bindings/pci/brcm,stb-pcie.yaml           |  1 +
 drivers/pci/controller/pcie-brcmstb.c         | 80 ++++++++++++++++++-
 2 files changed, 80 insertions(+), 1 deletion(-)


base-commit: 17bbde2e1716e2ee4b997d476b48ae85c5a47671
prerequisite-patch-id: 82aa80f7ebaa1ee1d48b59bd7f1eb6b21db3c41d
prerequisite-patch-id: e7b6b6e618ee225c9f4892a6078e7b3c4f8b1c73
prerequisite-patch-id: 66cabe0efb02132ce7cf8a849b5bb7f19ab407a2
prerequisite-patch-id: 118fda1b363bc18ef0736f917d1dd5497699156e
prerequisite-patch-id: a48573e6eca090a032c0932ff89f26eae4162db8
-- 
2.34.1


