Return-Path: <devicetree+bounces-14933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B47F7E7984
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39D641C20C52
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 06:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9209D29A5;
	Fri, 10 Nov 2023 06:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xqIGQ/12"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17151FAB
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:48:45 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFF4A7DAC
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 22:48:43 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3b2f28caab9so969824b6e.1
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 22:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699598923; x=1700203723; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DnDZGk512Fn6FcfRLVRqtgZTjSOOBJwTCzWACAW0uhY=;
        b=xqIGQ/12QDRF0hrERfZN9ldxQ6Xrb3EQpxdnYf7wIFZ9WTyaIxSxChiLz09tkThlYJ
         FlTimLray/EBZWEPxm7B607gLRQtlkYLugIJqnd3WCJnX6Os6JM/nShcYrt9DVoRJ9tl
         qvB8Xge4UMe573RZT3ZKp+wR3YKhuaVQpt7O1eLbyIX/EIFP1ftKB3tUw/kduguWpFDq
         9CP3NL1xjiNKI/M9+FLbjNlVkOK2RHSQQcICurBSFaGfS9RxVyw/2i2VHNaemCU3a+TU
         l3T/kmKGsOce5D4jkg9R8HmcKECf2EMCtazfIf8m5W05RnyuTziny+PhhDQS1+HJj2G9
         RnRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699598923; x=1700203723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DnDZGk512Fn6FcfRLVRqtgZTjSOOBJwTCzWACAW0uhY=;
        b=xOtn7SifBxUmaCMfwlbG/QDaNC5QaT6jiaZy6bfZSF+aijA6MjTquXCRJTQxXgzJla
         fWByrbbCVprofc7fMjU6J4Q2D9lsA+70Ia4RCMgPi3svetP9uODExJnOxjqBFAIkvqJh
         V7kMxLgU3/yrkWKgG81/nFGlFPhm4v9wsiwMwTtwYDuG4g/KMXBuNT/UIqQHp1xa3S+p
         uNdxkheLI1G8bt/UVKrO45Rlk3ci2yL/QHvvA2WJVpNU7bTMqkHvdIvO5J4KHhTf6srf
         c8UKLMU9ccS9lrgeRuJnuFv6etnAS0N1+5sUQ1V79qAdzxtYbsr6ISAftonV4MQhYVf9
         dR2Q==
X-Gm-Message-State: AOJu0YyRu4I8JPqHM4/sfVXgswbdwnK8g+JxJBwE4a3fLMe+F9wH4Eou
	3YVjusCwUr6vdSwdYdgxGfZd8Fp0D7oXpoKUxnaLeg==
X-Google-Smtp-Source: AGHT+IGTTsahV81/Rw5QlsTpUJVxQ1PAILctgM4NyU6BPo77WHSOVHAuWPMQfe9MkO/AQRFIKwQmIA==
X-Received: by 2002:a17:902:cf01:b0:1c9:d8b6:e7ad with SMTP id i1-20020a170902cf0100b001c9d8b6e7admr11068018plg.56.1699594958186;
        Thu, 09 Nov 2023 21:42:38 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:2071:4479:98b8:cc69])
        by smtp.gmail.com with ESMTPSA id ix22-20020a170902f81600b001b8a00d4f7asm4498845plb.9.2023.11.09.21.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 21:42:37 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Thu, 09 Nov 2023 21:41:17 -0800
Subject: [PATCH v5 7/7] riscv: dts: thead: Enable LicheePi 4A eMMC and
 microSD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231109-th1520-mmc-v5-7-018bd039cf17@baylibre.com>
References: <20231109-th1520-mmc-v5-0-018bd039cf17@baylibre.com>
In-Reply-To: <20231109-th1520-mmc-v5-0-018bd039cf17@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
 Conor Dooley <conor@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699594943; l=1102;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=vZkA/Rp2zWEJvsAGA/badfpHmHgx6/3DqqLzYe2IxQc=;
 b=fJaLj8Us7PpYhDPHDt2gAJV0CgQsotNJKZ73gVndaddpreipV21Pv9bXilRM3ODn6eiDa/Ubk
 h7kJ2SCtnDZD8g4t2P9LyI/wn5hmo7COmgWYmsLyqjWJR3zX5ICneL5
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add mmc0 properties for the eMMC device and add mmc1 properties for
the microSD slot. Set the frequency for the sdhci clock.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi      | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index a802ab110429..94f1741435a5 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -29,6 +29,10 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
+&sdhci_clk {
+	clock-frequency = <198000000>;
+};
+
 &uart_sclk {
 	clock-frequency = <100000000>;
 };
@@ -36,3 +40,19 @@ &uart_sclk {
 &dmac0 {
 	status = "okay";
 };
+
+&mmc0 {
+	bus-width = <8>;
+	max-frequency = <198000000>;
+	mmc-hs400-1_8v;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&mmc1 {
+	max-frequency = <198000000>;
+	bus-width = <4>;
+	status = "okay";
+};

-- 
2.34.1


