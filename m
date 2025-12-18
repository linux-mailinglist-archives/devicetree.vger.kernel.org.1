Return-Path: <devicetree+bounces-247985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 320B9CCD541
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15E403019E19
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C6ED33985A;
	Thu, 18 Dec 2025 19:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Es+3h0yc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C80314D2C
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084809; cv=none; b=VA97RConVS0PJLvxk9m85BcjPst8ENy0N1fBhPykMRVT4pdeMjF32nIDqglIbLTS+4XzrISSPSkgzFt/C1Vy9SQwo7ZcV9bQ5Ywj8bBRAufq8KenWmw1sP3QSZ39/Kf07rtWfv/BgKNsKq/sp0Fjgkt2vD/rPhSZDeV/rluaV+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084809; c=relaxed/simple;
	bh=OVNeVNuy7RUrfIyqiyITRx55FEud23YjKrYSlgShm7s=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q+L6eQ1BaVB3C0FwYynr739bbvZa4MjFckIl5WeEcDcSLhRP5vKr/69lH3epTHJtUg/kJQPLaNScjGzNGsBsxLmICTFaU0AOT3F1ywJoF0sIItHaS861cQ/kpJ8vq7fT+rzuXoLVx27Wr89AgBf+uLImXXszQeLRWrp91lIS2OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Es+3h0yc; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64b791b5584so1120220a12.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1766084804; x=1766689604; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=meIgiWUQ9De2m5wPFplm4vW4qbqL4VHogHh5hQm1yv8=;
        b=Es+3h0ycDlu1mQc9WkRGHiVB7T4ywkAa2W6jYDtRz05w7oAtYW1G7JTvVRot4klunr
         k/Qef8Kfgj05v+38DJ3kMiaO4Ur9TizRoQmk1pkuMZUsY6klwRt1lCLom/xAU2XmUwsF
         47V54R7AuBs0ADQuimL9oyYvkYJai5R1qXmgMU7D/TeLAKPmwk0OmPJnVRf6V4apDHuJ
         mqB+93pEp7D4vWFVjXOr9beNenke5amC9sMmpmJPtQOPoguLSGq51aWVtT1qRQYBK53D
         1rY4sk/I10rxgbT+heC99tOM0WwGKf/qfWI0ORbm2Vsh54WnXl3oLzxMRiwj/gnF+x7W
         yxlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766084804; x=1766689604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=meIgiWUQ9De2m5wPFplm4vW4qbqL4VHogHh5hQm1yv8=;
        b=aGP39MgOgBFpJETc9Gh+opP80/2NF/SxCERgOuKcc8a1y1p+Rta9cklKrkpr458wPL
         HuMYduKPxBTb4aeDvXhut8/V1uUwP0HjgBETmeINlPlNJWQjfBznqpDuqmi9FWrZqnvW
         UqCp9Njc/x1qmfb2qV/KD2NjdgRctzQPgKv8IItooAULAY6JngFufVPcQMT00A4C5Ajw
         roz/YeZkwmut+Q3kDqrZanGwWUBWiKVVI6gUfI5pbneCh/jtsHfa2AjhLhMZz+/oOmMu
         fAMM+a4extqZxdQZ4L2i84oCF1kEqhbwlsJJbyGrI3nVLlidOyjKLoo8ROr5zqeV3v3q
         UqHg==
X-Forwarded-Encrypted: i=1; AJvYcCUCxSw9C178zMbzNVv5IHaQhEuyh5wuP5sszveStJ7s8OxqY6O8qABVVI3UeQj47EdKzxe4W5K1VA9f@vger.kernel.org
X-Gm-Message-State: AOJu0YyTY5ejWrD29vunW6qenxdelvv9GP2FpVH7ynUlF5LqztmOadGV
	Ttw2Ec2dEC8okclC7a92ChvXDh4x+fwzdE4BkaOYyhCj3fsOyJzjk1ZScMWV5uaCJA4=
X-Gm-Gg: AY/fxX4YC64KYsJE9Jd3+L1xKJi4BqbMG5/6ZtoNe8N2VfaZtuIFONTFMNfi44/4hO6
	oqKfYdSzhEWiGX5uJQ2Qq+UZso8plw28Jjube6SW0amv71jkAk7UsrwM6JUa6dQSer04uYt+jZG
	qt1RkF11NRXTfVJ2csMFIrVNL2D36+yxRfl4ULkjnMwIHvN4jVerGP2ZwsPdBwsRAZ9QtUnd9EH
	Ng8I77lAZWtQRSSFiZii3sNYBl2yrxTz+16iQhHSNzb0BWV4f4Z71nGmo9dmp6o9QOTgrr9LOQe
	qbNjX77VPpjgPndS3g6GdRO5krMDx5sZx+tTAfsOI7ZHZsQ0tlayri6dmnF2OUx4XT9cF5pUaec
	k0r5JHGFHxKLbFpu52Mgq9OR7KHLxYGZD65M8/7ssXzD2hddOXHurFZWZeH9h4/cxUj7gECILqr
	JXEQ2Fw8tA0pytHiswzogT0eyQRAxYpdr/AHYhNhiR/7SjbvFQb6hwqw==
X-Google-Smtp-Source: AGHT+IFzFfQNZh0mLNNy8P0sjbZrtvUKo4fA6WSa5t/h81X7jrCeW0CUo03UOo7LGxZQ3fjwMYJm8A==
X-Received: by 2002:a05:6402:2345:b0:640:9eb3:3673 with SMTP id 4fb4d7f45d1cf-64b8e93baa1mr437157a12.4.1766084804297;
        Thu, 18 Dec 2025 11:06:44 -0800 (PST)
Received: from localhost (host-79-37-15-246.retail.telecomitalia.it. [79.37.15.246])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b90f53c51sm173729a12.3.2025.12.18.11.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 11:06:43 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 4/4] arm64: dts: broadcom: rp1: drop RP1 overlay
Date: Thu, 18 Dec 2025 20:09:09 +0100
Message-ID: <85167b815d41ed9ed690ad239a19de5cd2e8be1c.1766077285.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1766077285.git.andrea.porta@suse.com>
References: <cover.1766077285.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RP1 support loaded from overlay has been dropped from the driver and
the DTB intended to be loaded with the overlay no longer exists.

Drop unused include file and overlay.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
Just a heads up: This patch removes rp1.dtbo from the Makefile, just like
this [1] proposed patch also does, but the merge is trivial.

[1] - https://lore.kernel.org/all/20251211193854.1778221-1-robh@kernel.org/
---
 arch/arm64/boot/dts/broadcom/Makefile       |  3 +--
 arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi | 14 --------------
 arch/arm64/boot/dts/broadcom/rp1.dtso       | 11 -----------
 3 files changed, 1 insertion(+), 27 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi
 delete mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index d43901404c955..01ecfa3041845 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -13,8 +13,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2837-rpi-3-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
 			      bcm2837-rpi-cm3-io3.dtb \
-			      bcm2837-rpi-zero-2-w.dtb \
-			      rp1.dtbo
+			      bcm2837-rpi-zero-2-w.dtb
 
 subdir-y	+= bcmbca
 subdir-y	+= northstar2
diff --git a/arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi b/arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi
deleted file mode 100644
index 0ef30d7f1c352..0000000000000
--- a/arch/arm64/boot/dts/broadcom/rp1-nexus.dtsi
+++ /dev/null
@@ -1,14 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-
-rp1_nexus {
-	compatible = "pci1de4,1";
-	#address-cells = <3>;
-	#size-cells = <2>;
-	ranges = <0x01 0x00 0x00000000
-		  0x02000000 0x00 0x00000000
-		  0x0 0x400000>;
-	interrupt-controller;
-	#interrupt-cells = <2>;
-
-	#include "rp1-common.dtsi"
-};
diff --git a/arch/arm64/boot/dts/broadcom/rp1.dtso b/arch/arm64/boot/dts/broadcom/rp1.dtso
deleted file mode 100644
index ab4f146d22c06..0000000000000
--- a/arch/arm64/boot/dts/broadcom/rp1.dtso
+++ /dev/null
@@ -1,11 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-
-/dts-v1/;
-/plugin/;
-
-&pcie2 {
-	#address-cells = <3>;
-	#size-cells = <2>;
-
-	#include "rp1-nexus.dtsi"
-};
-- 
2.35.3


