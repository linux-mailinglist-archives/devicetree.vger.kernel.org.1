Return-Path: <devicetree+bounces-14922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1F17E790F
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:15:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94AC6280FB0
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 06:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F05325259;
	Fri, 10 Nov 2023 06:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="j3l+Eb7Z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCBD5257
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:15:13 +0000 (UTC)
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 176D855AC
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 22:15:12 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6ce291b5df9so1000179a34.2
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 22:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699596911; x=1700201711; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uSa6NAVY2VMgd1nmwOwphCO64qKVXCiZUmGbVj1XUeM=;
        b=j3l+Eb7ZBgnj9NUgn7OGM1BFmLgZQrIqCgWKNc3RBVc4yp349Z8vQy4+DL0LzeiKli
         6R1ia1vsxfewprDfZy1sNPg3rxuoEJ7C8hvp+DIVrh4RU7PRjy84rsvTWR/E3WEBYw5q
         ypB8JFtjouiLPJkSS07YUkXjtglz/1kI/mAb+YfWbRPVQO+R4ZkLvdu4hJoI/sjdqFa+
         MM29jk8Q55urwrSU7gmC8hYryCh+SehnUg4iGiP9DJagru+nEzPISqayIn8dYnhn0kGo
         Vq/1c2sIAwhLYRtJay/PmCjFA4NdKKuSCdG73MiWvFM2DF7cx0WpMlTPc1ykddMDvlw8
         0SHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699596911; x=1700201711;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uSa6NAVY2VMgd1nmwOwphCO64qKVXCiZUmGbVj1XUeM=;
        b=GCT0hIqGjPj1aulHVGKi48f9Xo7arOd1BkkkIjFMeuOQDtdvg02C1ztC56HM74n8hN
         1MvX6/qwQJj8tblxr6hEWmJ2Rvi1lgnbNMwQki+LpYQ2COme9MxcSASO9QoTOIe5+74I
         XRer0alMQbJXlNE7bBZEF+KPXzBFkwpVJAfV2pwBMI3TFOjT8KC1t+YgO3sKbxPf0MiD
         6cGoMLT7WyBQ5/Dib8uKYpQnMuEO73MBSrmHNiDw7XCwOtWSYXcS+0b6DexeRYbjGIdL
         JHHZvPLrVIrLf/UYkVSYziRhqIY/POH2U773yzp1mKUC8vRcZQjvYOkZFOQI5xXNEzqd
         e+RQ==
X-Gm-Message-State: AOJu0Yz6met8Vcc2834udFU+cjtNPD84DDIy8xmqNo5QjljAaNN4BFZ5
	gMCvlszvBx1Hj2KbXUn4NzVjWY7ba9c/n5kwIiaUWg==
X-Google-Smtp-Source: AGHT+IHc2dzth6LKzC6h7TBn2/SL7V+OAEY7bksLZRGZnVrvIoOC/yuSFZMolHtPmyTWRt1rlElQlA==
X-Received: by 2002:a9d:7a83:0:b0:6c4:897a:31d0 with SMTP id l3-20020a9d7a83000000b006c4897a31d0mr7519725otn.24.1699594956388;
        Thu, 09 Nov 2023 21:42:36 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:2071:4479:98b8:cc69])
        by smtp.gmail.com with ESMTPSA id ix22-20020a170902f81600b001b8a00d4f7asm4498845plb.9.2023.11.09.21.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 21:42:36 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Thu, 09 Nov 2023 21:41:16 -0800
Subject: [PATCH v5 6/7] riscv: dts: thead: Enable BeagleV Ahead eMMC and
 microSD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231109-th1520-mmc-v5-6-018bd039cf17@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699594943; l=1108;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=4bgo3aK3cuR26cRWBbMVA6MrvhUqOJ8As8gzvmDCzhs=;
 b=lALKEKj8Qm8uCPZT94ZeDZCapEMna2PJb7qYfmxdtsiIiPu5ZBsq1ZTsCjmwM7LQeHswhFuMT
 bUj9CkooLlrCm59R+vpdz5OfJa2nhKLJZ6dvleve4V8ZDgXFGGMNDkz
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add mmc0 properties for the eMMC device and add mmc1 properties for
the microSD slot. Set the frequency for the sdhci clock.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 70e8042c8304..f91d94f95510 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -48,6 +48,10 @@ &apb_clk {
 	clock-frequency = <62500000>;
 };
 
+&sdhci_clk {
+	clock-frequency = <198000000>;
+};
+
 &uart_sclk {
 	clock-frequency = <100000000>;
 };
@@ -56,6 +60,22 @@ &dmac0 {
 	status = "okay";
 };
 
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
+
 &uart0 {
 	status = "okay";
 };

-- 
2.34.1


