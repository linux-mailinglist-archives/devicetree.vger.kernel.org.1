Return-Path: <devicetree+bounces-13529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D175F7DEADE
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 03:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89B14281206
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 02:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B67BE15D2;
	Thu,  2 Nov 2023 02:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LprtyhiG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63391849
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 02:49:31 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8681E13A
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 19:49:24 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1cc0e78ec92so3226235ad.3
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 19:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698893364; x=1699498164; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uSa6NAVY2VMgd1nmwOwphCO64qKVXCiZUmGbVj1XUeM=;
        b=LprtyhiGjftwOF8WmFLsGNxTAibLyKujXhR5b6myDxo4Vi83L8d2bJo973kCLRdPFK
         7W/31UlCqsALSxvLTNdafqNB3kcW+NFgbx5BhsSD+tj84LYkHDooUJcrm01/VzKIUpKP
         Jwk5gxvGYqlLenazr2O7lZgonJfdoPAOflPBu9jWlV24Llmrn5NGYwJfk3fFS8GBJgrN
         dwKTGT2CjLrGodM+3dVU0DXr/sTY9JjXqSLGEj8Ttl7SALrFmrfqiqYardRaSo9K+oon
         1b6s5QA74H97lh01kgoCVGUAkgEXw35fl6W2Hm6DWjjRhBPqKsS6Z6iy+z77+lGxmYG9
         YGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698893364; x=1699498164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uSa6NAVY2VMgd1nmwOwphCO64qKVXCiZUmGbVj1XUeM=;
        b=SnWiwLemiYKIOTnDnAbCtSOrtyDhO88YsURaqzfpgDxH3aNyjnoqMqHjqjP6xhav3L
         N0pFOfTe3bL2UhhxDBsw7p6E59GJDIG/pyPCPmO8X7af0fZcHt9FK7W/zGDgs9q8aRSg
         RREq1uz2G3eVuPN/Kedu7uYDKZZFnL+HR4oWSvUz8hpLyFLqk5x4jjc5IswJGG9v7KFf
         f5AHqvhBwdezysPTqOXXNdobRDExV3NAl94t/4PByLPbZ/dwO1nMV4dBWJt4zEHVRwFy
         5mdyiT+StJkoFUw2rf7Qr3HORIjLgf3JavpIPNAgdRNigRxZSxkMT46YS+JY1YcbfeZN
         Zx/A==
X-Gm-Message-State: AOJu0YzYg8wOiw/MeKyvHyfEfpgCfgjmm4A2tIGeoFbr6BU6a5DEWkJd
	k64ilkWge9HXwvKSfQsO7U2P4w==
X-Google-Smtp-Source: AGHT+IHX9AJrAVgWSnYbOXa7mutrw1tVdRN6GcBHN4fbPFOszvbXB4wUQnu7dVhwrk4ZcsOpXB+xQw==
X-Received: by 2002:a17:903:cd:b0:1cc:5db8:7e92 with SMTP id x13-20020a17090300cd00b001cc5db87e92mr6755183plc.58.1698893363682;
        Wed, 01 Nov 2023 19:49:23 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:7e4c:4d4e:6943:bc0f])
        by smtp.gmail.com with ESMTPSA id n4-20020a170902e54400b001b850c9d7b3sm1925787plf.249.2023.11.01.19.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 19:49:23 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 01 Nov 2023 19:48:57 -0700
Subject: [PATCH v4 6/7] riscv: dts: thead: Enable BeagleV Ahead eMMC and
 microSD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231101-th1520-mmc-v4-6-86e0216b5994@baylibre.com>
References: <20231101-th1520-mmc-v4-0-86e0216b5994@baylibre.com>
In-Reply-To: <20231101-th1520-mmc-v4-0-86e0216b5994@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>
Cc: Robert Nelson <robertcnelson@beagleboard.org>, 
 Jason Kridner <jkridner@beagleboard.org>, Xi Ruoyao <xry111@xry111.site>, 
 Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>, 
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698893345; l=1108;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=4bgo3aK3cuR26cRWBbMVA6MrvhUqOJ8As8gzvmDCzhs=;
 b=aA13H2waFkFK8rdICEfWcJcPhFaGSH0ZRd4ROe0tmGrxSg7hrWq8+i/vrM2/4uVwYFqUm7YA2
 XG5qUI7lWhuBylW5Vf6NOpK9BxdJC/LQDXKQpfLDXXSAcE3QiPgjyL3
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


