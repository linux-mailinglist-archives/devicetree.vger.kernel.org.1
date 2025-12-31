Return-Path: <devicetree+bounces-250698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E32CEB1FF
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:56:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 33E96300D90D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 02:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4AD2FCBE5;
	Wed, 31 Dec 2025 02:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="uNSW/Qqm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04822F5498
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149736; cv=none; b=Iher3jdX8xWeUFkiDAZ+vwoOV20V8hBlTsGluyZtkrzcWzEHxJij7ibsplL3vGdAR7LXGgPRmN9xaZel2XivCbKY5g9Xb03XElKWDY8lOmjjFyn2hAJDM7G+ZbetQ7AglD96+rbnfT5v4K762ba0+7H++rmpvK2WW+xTB2Ghbf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149736; c=relaxed/simple;
	bh=nwk4JR1H0Zt0XBoaHOgFRpkXHRBlop9bHNfQxmTC4mQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HluRjSpjLchCLgbjtk4bKmICSXISRVy0afjrbxQ9hcCH4k088w8I9EQwued9aAGqnbF1BBqchNoxOp8jiw9k/4sZU9Q0En9gk9bIrA8EJXZnjjoWv5opQBx27wftZ2OHupC1mcfbQ7jqzWu+CRcYQAW+5uNZQGxUMHNHBE/Mvr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=uNSW/Qqm; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0d06ffa2aso129147655ad.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767149734; x=1767754534; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKI/wJuJbYrNWoYaIKsSOJ2GpyQ/Qm2LNLTXuOKcAbY=;
        b=uNSW/QqmfaFUlFx08nFK+lVpBvh1WLCBkXZFPvopInVwSG2Qc7C+t5p3aUxw83IfsK
         loYuim+dU+7EhcpD4n59IFL9uC8EXl1Xq4v4gfoBypbkSuXZQdLdDfu1LC2vpxVcUh+V
         cPZYnyanwkuGE7QqzxlgY3JE4AQDUA9iroU2M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149734; x=1767754534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MKI/wJuJbYrNWoYaIKsSOJ2GpyQ/Qm2LNLTXuOKcAbY=;
        b=QMvYvzzNuAKY1ppS5DkdDA357yeltPilQHLDfHUUWREgyTtGjqLNwOayxGgFbd3vUB
         TKkwoqWgjGp7c4z6Hwqu5HZQTTfcPLi+BTp/L5y47ref5trm0ZAbIkx2fPBjs+pmpr+8
         Lwy9SPSNwlfuHQrsG6LbaEYuCfuiu0AJ35VtHV5d3OYodb/ocXExwmIzqdR0P3/WpKPd
         4arUsFAA3Hm91EhywfiSCnj/8h+9z6Z7Vh5pvTopAsq3TjsfGOIOoubhPSJLw6I/pt1t
         W8vYlqYiZH3UY7IyJv4cBgu8tyH2ViRvqJ3MBCWme5yQmc39gdkCyx0XdIRZIqzDCPmC
         AZ9A==
X-Gm-Message-State: AOJu0Yy2c8Pt1ZajZC53FqI5Vkq1deTaxUEK8jK8VNwTsGrdKh9TGhrR
	MT83TOOTpXxixz9W1kq63tUg94O9VAFnjuf8TU0Qmjcqq+/5jmWyAzqP8+E0TlQDDMo=
X-Gm-Gg: AY/fxX6bz9cLEMUu8tpqyMyNCxOwfTuqKZObKbsWhNCh6Kt82ilVz3MDShRLHpam8B4
	4tN6TPHwb8g2ZhcXzvB19ujXyKjQ/z6BL9AJ5ca6wX4bE6GfOcggzXLK5bFzbK0ki5SCQ6+yK9P
	L1vOV2ZBZ6a9ou/84aUu7T/GlFqynYGZH/c58jyTOrJYJOxAcDU6fCwIEjOIETDUpF0DOSom7dx
	daYQPrHZCJK5Cx8egEx6axfrfvUqmaUq+hsY3z/4EYkw4Xb/u/Wi9da8sd1XZx4GzfyZSrJ3b38
	H84ckQv2MJtax8qo2bpJjPawyzvT4XGARZ/FsGtsushsiuriqrYGw6TcApK2Pp0ANmcT+UTtXjN
	WdMmyaX+OW4YNmxP2GnGuLMUqMW/grKMtLBu+8/PXiV68gbo3z+nvtw0Q0HElZq3iBKR6Od98Nu
	Udu9WIMHBHeRqgbHqFhvDlumH2YSGLU05g7cNvbgEN+q/2cE2QOahn
X-Google-Smtp-Source: AGHT+IH91W43OdQefIGFtlnWAykgP1FMU8GvT4UyP2ij91/4qjmpK3jHr/9EepXJtOqq1m8MYatVew==
X-Received: by 2002:a17:903:2345:b0:2a0:d43f:c934 with SMTP id d9443c01a7336-2a2f220a644mr267418585ad.8.1767149734322;
        Tue, 30 Dec 2025 18:55:34 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d5d3e1sm307762945ad.76.2025.12.30.18.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 18:55:34 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 2/5] arm: dts: mstar: breadbee: Correct LED names
Date: Wed, 31 Dec 2025 11:54:59 +0900
Message-ID: <20251231025502.1139168-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251231025502.1139168-1-daniel@0x0f.com>
References: <20251231025502.1139168-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The dt validation stuff whats the names of the leds to match
a regexp.

Prefix the names with "led-" to make the validation happy.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
index aedea0fbbce6..3826436a80d0 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity-breadbee-common.dtsi
@@ -33,11 +33,11 @@ vcc_io: reg-io {
 
 	leds {
 		compatible = "gpio-leds";
-		red {
+		led-red {
 			gpios = <&gpio MSC313_GPIO_SR_IO16 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "activity";
 		};
-		yellow {
+		led-yellow {
 			gpios = <&gpio MSC313_GPIO_SR_IO17 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-- 
2.51.0


