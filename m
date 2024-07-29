Return-Path: <devicetree+bounces-88773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C9493EEC6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 09:44:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F4F81C21A26
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 07:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9996213B7A3;
	Mon, 29 Jul 2024 07:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zuyB+ay1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2601412C475
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 07:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722238927; cv=none; b=C1LWVOWlUFO5dF57Kk7cg0lwz2Toj1cO1bPKvCzaUh7jToxIZtfB59zG0JEP1ZS0JSa+TFNfd/kUJko+CTOISaA5W+2+C6Eha/CScJL6IZeepk+9FwMCemA/UyB1K91fZh1CpwwXP0o2EiGnGpEt5gOuOKx5VTG31vn/ttIQOzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722238927; c=relaxed/simple;
	bh=OoIQayK0GGA9cK/vSVlMPO84bmsDhlZIY0+9n9eet2A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jNSVjeIjWEwpsZ941cNq9pZ8vn3qelwpbOeMjnidWV89LwNls7oLPF5zfIZb4atpiemoErIBFcSx4oD9EC4TYkgsnxBfGiXUrdnD9Xv5SH2LRy3wjRGB8P9NSnd/RLco2U/PkKq5o2TJlIvfzUgfIfjqbYzm2B8aR97jOZ1A9Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zuyB+ay1; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42817bee9e8so10739695e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 00:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722238923; x=1722843723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ikCMpwAbPw7mQsN8sJFhcp+yiR3UIpfqm9/aaxfL+zg=;
        b=zuyB+ay1M2xscVKUuxSm0gOpctF3InI9wfBeXmVXDZecZSgjg7rGe+XfJf+T161h3L
         Rwv7vJVICSLWbSVNE0V1dMuCMolYLJyG7Y8LYWJCOq0Wt6H5lwPMSv3wfLQZVMithe0w
         QbwrHGnhXCmN/mxwpx7CUS+EvyhGn2WRc2vgus3zpR4bHfdZG/XyGjjw9hm69SI95VeD
         fCArbtn0vIwi1Ga1i47wfOR3eJ98uRuVryr9aJw6JWoEWKpM4JOPMm2XHcAUfgNtblpQ
         MGiHjVvCw2QFCBGlGmsbJ5lF6dGp6DHgkuDa5GDHnKcY+IWWMJIH1gDRiL9aIbtQjuPS
         L4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722238923; x=1722843723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ikCMpwAbPw7mQsN8sJFhcp+yiR3UIpfqm9/aaxfL+zg=;
        b=XbTy1NaswVRJSD8p2kDqMPo+uPOwhQngYJ46iGrgN/qn2NA9h8fxqfdq28bOyTMmi3
         Alfa6zGYjZezd1pMuGoOOSRlA0kz3uo9b5JBnHp2jU08hMVIJ2KSCiiJkJA9c3SB8GJl
         wVVHW1As1gpPNDzMh2mADTcGiZI1gBgx9a353LWbvpL3Pvy8C2oOeDOkoPl+j4BnkwBp
         3PRC16hSzWvKSCr8fwWSaqY+n8jQXuQWDqC3sWqzlQAWp/sdFl1io7g51P29gQKMGGLu
         034YNegAImUPP1dJi7EBZcReAxuCidVwTNXHZOZIOLCZ+u/ACDYUP3LASRzVc5xTukg1
         sU8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUAfFqGGz/cRp+tSUJw8Ojg231sjIXUA9g21gZux4koOacN2aZLYkqWsYXgo+dQzcKlU0Q7CaEn9qtiqmHEm/irJcK3xS4xUa7x0g==
X-Gm-Message-State: AOJu0YyPocyIQ2cMDnXjSNp3yXbIx0Nc290Ur41kvynrnkpvXn5i2eFQ
	0XcUd7C9cEW3eUq7ZO7kAZpJ/sSdwgIVy0TA8PNVzo0DjOZ4onk7j0zeVidypf4=
X-Google-Smtp-Source: AGHT+IEN5l0VmZxAx8ThMQxyOgQM8hkfK54kUHCfRNpsKszh+kxzwa4ljts9ev+T1yyFnMhTX3O0rA==
X-Received: by 2002:a05:600c:444d:b0:426:6e95:78d6 with SMTP id 5b1f17b1804b1-42811d71018mr42435605e9.4.1722238923363;
        Mon, 29 Jul 2024 00:42:03 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b36863aa7sm11460879f8f.109.2024.07.29.00.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 00:42:03 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	=?UTF-8?q?Martin=20Hundeb=C3=B8ll?= <martin@geanix.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Michal Kubiak <michal.kubiak@intel.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	Conor Dooley <conor@kernel.org>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/7] arm64: dts: ti: k3-am62: Mark mcu_mcan0/1 as wakeup-source
Date: Mon, 29 Jul 2024 09:41:33 +0200
Message-ID: <20240729074135.3850634-6-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240729074135.3850634-1-msp@baylibre.com>
References: <20240729074135.3850634-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
index e66d486ef1f2..56a40b641667 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
@@ -159,6 +159,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 
@@ -171,6 +172,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 };
-- 
2.45.2


