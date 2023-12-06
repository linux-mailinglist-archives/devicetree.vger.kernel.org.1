Return-Path: <devicetree+bounces-22115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A534806925
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 09:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16FA528209B
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 08:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB36118C13;
	Wed,  6 Dec 2023 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AlH7iRxr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A70BF1B5
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:09:50 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-5c66418decaso1760347a12.3
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 00:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701850190; x=1702454990; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1pIpUFLzpCT8QDWNeKsRiOFIfK00T0l+KbsCecbFYJw=;
        b=AlH7iRxrqh87YYDZtxg4cll3+Kf/V1zvRRRIStM3Ih/d9Va//p1QVVdjVTtuTD1h96
         Wx6VYSqrPa1F7Bt+A6S/7kGffzO83ZQX6DAr5dMbjT5IjRQOc+jld8VMHcpj9/nt2am8
         R0DpVdr2zMRfa8irprxHpoEaz9vHLVLw5gcZAailcNze1Nxze0nG2yUB4h53XDs8rBT0
         Ycy8tEE8hjR58QxI5vXmMxDs/KQTSx7d3p4j3gObrX26EBcCpEH8Vy5KGPiFUXBuN4gf
         fRMpLrVB9kGMHTxjqnuYhsXDG6C9P0Zg4KSBtZG6rRVS17EJN1InrQcbbtFdOhqPy6AM
         D59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701850190; x=1702454990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1pIpUFLzpCT8QDWNeKsRiOFIfK00T0l+KbsCecbFYJw=;
        b=lkOwy0SxEGrW2nLLWqcpQq1felm6YUgrG9g/r1zVnZs1vWbwYpQrD71YaqKkt4A/qT
         s3KU1Gt09cvVX+itdzVgU0RJEIISRCMaB+1P+nysd7iMR3/KKfxFTlzB6OnfM9JLgIlv
         UHRYmSFyADcJ8jPNQ2HprWYbLVQ4DXrMdkddOz94eAO6XMaypgyo1ZJ7xAco1fa8vFZ8
         egtpexZ8RYge6vvLmi26HkfgeptcRtq1i8zSCbGkW99w7fsm3AgpheE9cD+1zYviJUhL
         Vm7EW9zWXPJAbRtvoxDG6q28AOgDZl3tU9ix/N0puu8bVPzvNBb7qDAvKeCID47KAYJo
         Ubkg==
X-Gm-Message-State: AOJu0YxZUP7VARyu/D29k0ZLkFTC8lsy8HtvDE9bRdFoPWBRFgJ2nU/C
	Wf3XXm0b1MrJ0LxB0uk2k64ZAA==
X-Google-Smtp-Source: AGHT+IEldF6NX4UdDsjXNYhsE6P1JkJbILpm78gIrKcVPLzHcmb7S4JEk4u7SzdUVicpnDM1Ua9f6g==
X-Received: by 2002:a05:6a20:a296:b0:18b:556b:6d54 with SMTP id a22-20020a056a20a29600b0018b556b6d54mr173291pzl.55.1701850190073;
        Wed, 06 Dec 2023 00:09:50 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:92e9:8fb4:700:680])
        by smtp.gmail.com with ESMTPSA id bd11-20020a170902830b00b001d0d312bc2asm1208668plb.193.2023.12.06.00.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 00:09:49 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 06 Dec 2023 00:09:24 -0800
Subject: [PATCH v8 4/4] riscv: dts: thead: Enable LicheePi 4A eMMC and
 microSD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231206-th1520_mmc_dts-v8-4-69220e373e8f@baylibre.com>
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
In-Reply-To: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jason Kridner <jkridner@beagleboard.org>, 
 Robert Nelson <robertcnelson@beagleboard.org>, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701850181; l=1125;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=yYq9cxJ0lp7+Eh78pcwxzBZNnaFwpVwT9d+26rl94NA=;
 b=jb8cqdanu6l93Jt+/zm1d32I4d8zOII7x4Qcm78W4yozsuLULYbPulbeM3HeDuy8xujWKAlu1
 +CIVjtZVPG4DWogtFtk7DWr68Pb8l0gdFp+jKqI0Ni+kiynhHX+9F9u
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add emmc node properties for the eMMC device and add sdio0 node
properties for the microSD slot. Set the frequency for the sdhci
reference clock.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi      | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index a802ab110429..1365d3a512a3 100644
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
+&emmc {
+	bus-width = <8>;
+	max-frequency = <198000000>;
+	mmc-hs400-1_8v;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&sdio0 {
+	bus-width = <4>;
+	max-frequency = <198000000>;
+	status = "okay";
+};

-- 
2.34.1


