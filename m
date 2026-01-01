Return-Path: <devicetree+bounces-250885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D9CCECCA7
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 916F930559E5
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB1132580F2;
	Thu,  1 Jan 2026 03:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="CtPWkMT3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302E5264FBD
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239023; cv=none; b=Dc6ousC4jLc50v4qXwl1H61CUm8AWY8aO9PgDxpYUIZKXlLcVoBdue/ahbiXOX6PGAm6wffSSyoPrGoeoq5bYVS1yQ50qGAJSwyiF3XUGug8z4v/OIkP4OTFf5lxLGaS2imsJmseNv2Y9BX3M5er6wY5pEKvYdOvZmxNIUzIZWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239023; c=relaxed/simple;
	bh=YQnC0cXs830I8Fu+woFzditN9OAfghDUteRskQwtFoE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MYGsPf5kiWLYk0tVJDg6A0mbegt5wWlYMD1pUUr9curicSp7tSQmCQBfmKLDrXDOlH/BEllxFtaigRntj10R+PU6YsawRe5ONnHELH5+OBJ3eQt/N+GgrcKB+0ogIHYtYH3lO5/qNx3HFsnWcpU1bl0ipMs02uhVISe9BiiLqT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=CtPWkMT3; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a0a33d0585so103651335ad.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239021; x=1767843821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BmPknBa7EUoDVTpeNE+XfDt8WIjV/AuJhnQGvVdFuSM=;
        b=CtPWkMT3Eomh5oV72+3sv3RE5zjmhb+MHGa0FpgXvZ6BFIELgLzc8cKop0cqte/khb
         8ZRcpYb1au8A14tPlS/xlMO3Rzws6Zwkd0DO/KkY5dT5Erad9KnodiNJxSWXqQfsIFMX
         vb/0ux6bVps8WIq8l2LvDFOaVDw297Dxg8r9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239021; x=1767843821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BmPknBa7EUoDVTpeNE+XfDt8WIjV/AuJhnQGvVdFuSM=;
        b=kFau+2i7NQ+7yrxR+tlhwEz7851xwokLYvtec/DIXOuPBj2o8t/Pu4gBmqYatj+pnk
         OaQ7ItdUrzGqs56Zj6rOQtNqa7HghxpqwVDhOsm/YE2yW352T+FKZJugCKl2g0Xk7WLt
         b/y2lpmQI9DUCfSQauXWYRVh7K9BrjIgqKCsld+JAlzI+redsMzh964d6xL3TrE07JZH
         fmG9IauirbkaZEtex05oJVZ5TyWP+xTWtUuSM8lBMPWBBGoADEKrb9yBAX16UKQOOOK0
         hHgaozl4A2O5/lgMcW1GkmUsuNIpVcwUNrI9g3WKyCaIpGyTSotnAbgEffXnK3tGWmZ7
         Pakw==
X-Gm-Message-State: AOJu0YwkMYkoW9FzPxdyOpJh5IUVqGCDG9O6JhTKgm0ubMCcmT0zldPu
	yN0nQLfpAAC51pkObMAQHmF6FXTqGjdqLiJtpKQMCJXwp32yXQrYu7AoKd29qy3c5eQ=
X-Gm-Gg: AY/fxX7rB8t0azdJU0hLqrD0X14KUdb/PTnXz/Qx++JmVMorYOaJHq+ZH5je8vx/aRk
	CT8Bs0yOmyeq8Rcg+PPKqrHcya/TlaFqFPe7p8UcCByjjG7serH/7ppqEuRswVGRLU5pXAYB2dB
	ZQlQz5dkkrTqd12md/12BlPwSfjVZFy/LfE9HxINI0ZJSLWbXflAJlPYeYhqosT2/jgXbpXQk4n
	Ts8V1IDGgQqcSpsdYp7GrIa50as6Wrc/jIW8fYaTnPKbiSv46NlxFyYxUcYjZyIaHFcHzzUXze5
	PhlEQZBZQjRlUK4fP3dUbDnouBGzsZfus1UqLTnXCjYD0/PAOSpmQ2Wln2mx/dyDQLF0NBL/P8b
	5q0f0CZE30thadZLQ2XC2dIQc4WDXnlJfnMXFRBk2nQg3ocfssscTJa87OD8y1tXx+ztelq45Kt
	FXR3tS0+lyd7WKZruJx9YJe/BE+m1zWbT5FT78oDX4gmSDKJwgOBYz
X-Google-Smtp-Source: AGHT+IGRu58uXm2DHJ8VgNh5qWG/ekglaXXYjNdXsytwCBSs2FYBPZ4rNVRhi99TEkrsAnoWzlvp3A==
X-Received: by 2002:a17:902:f607:b0:295:9e4e:4090 with SMTP id d9443c01a7336-2a2f2a3cea1mr398407675ad.52.1767239021487;
        Wed, 31 Dec 2025 19:43:41 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:41 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 6/8] arm: dts: mstar: infinity2m: ssd202d: Correct memory node name
Date: Thu,  1 Jan 2026 12:43:04 +0900
Message-ID: <20260101034306.1233091-7-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260101034306.1233091-1-daniel@0x0f.com>
References: <20260101034306.1233091-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Memory node name didn't include the address which was causing
validation for all of the boards using the dtsi.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d.dtsi b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d.dtsi
index 176e10a29896..74621a7628b2 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d.dtsi
@@ -7,7 +7,7 @@
 #include "mstar-infinity2m-ssd20xd.dtsi"
 
 / {
-	memory {
+	memory@20000000 {
 		device_type = "memory";
 		reg = <0x20000000 0x8000000>;
 	};
-- 
2.51.0


