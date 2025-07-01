Return-Path: <devicetree+bounces-191603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3167BAEFD7F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 17:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA0883A57AF
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 15:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71D427D780;
	Tue,  1 Jul 2025 14:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Au9mT8Pq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D9327CCE0
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 14:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751381897; cv=none; b=ZL4/mT8aSVn45ADy4b0Tzy2uq3OyO3yyOeJUkuTFUUIbybT66/IMGoSBHXyMw7Tvj5l5dM0JX8J+6IaheXvwjHOdd/gEWTuvbkZ4bLtz19ucWxuRkEO6k/rjm1OGFMWCnyFKSKIXmeunSw9n6xv6iIimh46tlCCdIA2eGNg3Tyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751381897; c=relaxed/simple;
	bh=V3/1Jhz+8jf7kFbZFnPBPOCuvUVUSIhpyy7UQB/kU4E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=S6G9J1JCjaYKXHH0KWTnwHm91LN44hx+TquFAt1CTFofyBa1rvIJnoRqyCp5aCoLfGavaTWV9ZQacbn+63PXFdgd1n+nyAORM6WIXb++KVBDewRKwfaXEdGTLK/Df8nrt2UnH7eJFWPqY/MGHbTcKKLC5qzBTqRS22vxD1ADkvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Au9mT8Pq; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-453749aef9eso21895225e9.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 07:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751381893; x=1751986693; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9SnrP3NnfwuDtIo3bxA5uNn9yAXYdP3Skxl+K4FHxq8=;
        b=Au9mT8PqG25k8NMp3U+Nx8IMd/GAKdFlf0feBvjMsKlzlS78O++Pi9G5fOTdjAXlj7
         K2cURzX1spMvb4jf1p5OCUHkQmYMiU+d2/cX7UsybdpfZIuXm0Fta1g/Ny5635EscPx2
         8vrJmqXF0H5EYCzPuLZcb9O2HCSqCPMcsngjacw1KPnniCW0aoKjvPKUK9uxhF66a/C+
         rkidsAxgEKWwpnR8bpVN76llzrCGMg7CNF8ncZNfgDA+r8q0LkkZCmQEeCX9xSYmC7lL
         wLTompuVTBKNZwGIOEsJgPCxRcjyGde5gwTACjV42ZL23+a5Ou1Ry/4OJaLLpIOY6ocd
         3vZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751381893; x=1751986693;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9SnrP3NnfwuDtIo3bxA5uNn9yAXYdP3Skxl+K4FHxq8=;
        b=MB8dW7Bi3Z48UInfZGO+PGv5gnJsfZFmvvG9JHe+N2MHP9FInmQqX8CKXL8Qex7fkO
         lw9Dg9ejkrAEnvu0gRpop7ZDXORCXztypohIq6lx3sHva8k4FhBe9u3Z2Lr6svZAmKca
         J5nisPDwoderLSD7ZVsRpgYDcdZGc5EZoGu9W5ADLd5MklWqxn/44drsKdRUs9GkBX9R
         b+4JCfIkFHMtJKDsus49ZqwTo9vrE4g98upg5A5FAuGMgOmtl745Mcx3fT95OPBeA2Kp
         9VHWlYyyo3FnSqnWeFv9vxFAj2nhHxf5GSZ6mpxovl3ohV8Xd+cGelrrA97Evl/JrXTZ
         +e3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWNfVHrId31cb0XWlixihlWa9nAC8N3EOYjWmfOs2WfB0WDJkimDd30TKDGYJZ+DNdZtGfHj0pNUcvL@vger.kernel.org
X-Gm-Message-State: AOJu0YwywrYkoRWJLSHU5KPE5QqLlvmnLSdyVUr3J6jJBl/sGfZRJUgi
	FywgMp/QHKUgM6NUD/TwsgW6AaW0ejXZFlf72V3hoxpzrrANDIwQNOwAc/ZrRAbx4Qg=
X-Gm-Gg: ASbGncufHt+rWPzO0d/w1/DtQ57Zj1iLpGkAW0vxnJFk5oifEuJ8MBfiAn07CpmQuvI
	ho1kcgbYDWJZQRryaE6ipn6RvdS7hqTrRX6zKj8/kRtrK5tNeDE7CCcMk502rnandhEP2iBCJHO
	A5tzT5mVQ8gKAhM59Bp5j+6uVqnoGFkIvbIMYu+aNA2+Ra42TskTwqm/LrC/pkBGOif129iy4YG
	my0nCCnQZAW4bvPELvm0qVfCZN5xpQZmhQ/0f9IwWkkH8m5sQ0j6mrCFVmBishhPyOSS2Ar3ZTE
	Gc7aYI3DjmnZ3NKiMZ+hHdoqU6UyktwCaZ/5NDMY06heJxV6ppibRQO9Pe8irk9BIeVMduyx1aN
	G53k0i4cVmOjwuGLWOXs2MPKnFDEnQ3Uyq1wiR8A=
X-Google-Smtp-Source: AGHT+IHUmoDZ1xCqHU/YoX1VGjQsqIcwCI4NeUvfcRvvMvB3GVl/xxbnk7JsJ/Hkt3zYQQizDFlazQ==
X-Received: by 2002:a05:600c:358d:b0:450:d367:c385 with SMTP id 5b1f17b1804b1-4538ee5d5f8mr208971115e9.16.1751381893014;
        Tue, 01 Jul 2025 07:58:13 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a892e5972bsm13611051f8f.68.2025.07.01.07.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 07:58:12 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: Purva Yeshi <purvayeshi550@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	soc@lists.linux.dev
Subject: [PATCH v2] ARM: dts: lpc32xx: Add #pwm-cells property to the two SoC PWMs
Date: Tue,  1 Jul 2025 16:58:03 +0200
Message-ID: <20250701145803.140004-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1890; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=V3/1Jhz+8jf7kFbZFnPBPOCuvUVUSIhpyy7UQB/kU4E=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBoY/d8toMLlz9lxSI2Llq56+YvDEDL4asEd5CrC RI5bWIYEqeJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaGP3fAAKCRCPgPtYfRL+ TktAB/4soWg74PxIEoMJ0HCcBne4dGY+GAy12UbwZonUtaMNIbvMcY+uICUI5B0u1OWZl4yv+VP 6SfkyOG7IK0m4xe2NQdRrvpsoqRmAd/G7pPUziwN2ofDvpNCX1BFZzgaTEufOWjDmCHa1DbbiKf baPqXHW8A7MdPSigqhloWsBqwBlb7rXdL4DruYiINyvGdgbArsjyWVp/UQPptAzln1vrUtu1bN6 vc4Yk2hFGT/YWCRmQqf1sO1BiJLTtZ7tn+jrnlhqwfI9oNZ3LK09QMzYU1jeMKNCuLZqgR+kpGu Y+opYi8G0asrxrSO3LpY3t2rH4Xxj8WqY/RXFk58Py9/d9c2
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

If these PWMs are to be used, a #pwm-cells property is necessary. The
right location for that is in the SoC's dtsi file to not make
machine.dts files repeat the value for each usage. Currently the
machines based on nxp/lpc/lpc32xx.dtsi don't make use of the PWMs, so
there are no properties to drop there.

Reviewed-by: Vladimir Zapolskiy <vz@mleia.com>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
Hello,

this patch was send to linux-arm-kernel@lists.infradead.org and a few
other lists but not soc@lists.linux.dev[1]. So Vladimir's appeal to Arnd to
apply it was lost.

The changes compared to (implicit) v1 are:

 - rebase to todays next
 - add Vladimir R-b tag
 - add Arnd and soc@lists.linux.dev to recipents

Thanks for considering
Uwe

[1] https://lore.kernel.org/linux-arm-kernel/20250403104915.251303-2-u.kleine-koenig@baylibre.com/

 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 41f41a786f9d..6cf405e9b082 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -481,6 +481,7 @@ pwm1: pwm@4005c000 {
 				compatible = "nxp,lpc3220-pwm";
 				reg = <0x4005c000 0x4>;
 				clocks = <&clk LPC32XX_CLK_PWM1>;
+				#pwm-cells = <3>;
 				assigned-clocks = <&clk LPC32XX_CLK_PWM1>;
 				assigned-clock-parents = <&clk LPC32XX_CLK_PERIPH>;
 				status = "disabled";
@@ -490,6 +491,7 @@ pwm2: pwm@4005c004 {
 				compatible = "nxp,lpc3220-pwm";
 				reg = <0x4005c004 0x4>;
 				clocks = <&clk LPC32XX_CLK_PWM2>;
+				#pwm-cells = <3>;
 				assigned-clocks = <&clk LPC32XX_CLK_PWM2>;
 				assigned-clock-parents = <&clk LPC32XX_CLK_PERIPH>;
 				status = "disabled";

base-commit: 1343433ed38923a21425c602e92120a1f1db5f7a
-- 
2.49.0


