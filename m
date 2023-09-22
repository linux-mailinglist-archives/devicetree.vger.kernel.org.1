Return-Path: <devicetree+bounces-2279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F997AA6BF
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 03:51:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0A5C62828C3
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 01:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 300B4659;
	Fri, 22 Sep 2023 01:51:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779EB17E2
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 01:51:16 +0000 (UTC)
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A30BF1
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:51:15 -0700 (PDT)
Received: by mail-vs1-xe2c.google.com with SMTP id ada2fe7eead31-452962769bdso833335137.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695347474; x=1695952274; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cDyDoj9zqW3tb6f+dTciYYHXjkgtjjsfpMWk3ptqz4Y=;
        b=B86e/X7aEhmN3y8sZ6vGfdHFqR0IyXE0fJdlDTD7NXyLuIZLeFGOxaKRchA1l17tvy
         kE+1pvwAmmNuj05Zn/1VkWlK4nEu4k1ZUadus8KafP2s/ZM8RqGDerw0euCS/OTN09xX
         gQXwUmlvfj7yfNnx2j5E9G3I63nD9UtaSHPkoViLZj3soT0Pld25HQXJkGtagynfogWd
         gwpieKSDQ11zBdcBkxKDGBxM2Zn0HTvVIhiOlt0b1+keF5/UYDekqYfONFQhBJoMlKm2
         MvKfotOnd0w/hmsWK+qAL6DlvU/27ecINjDth28+4Czc+Ni9ny4FA6vbTuI7PHglSJ0d
         Skzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695347474; x=1695952274;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cDyDoj9zqW3tb6f+dTciYYHXjkgtjjsfpMWk3ptqz4Y=;
        b=vJYzB/2QayK/TIqYPxAWEZWpuZjp1m+vUmuzArC5YHtcY71pTkOZDGJom0Jz+5kZhm
         gVo4Y1WL73gDHAVuKJq81wifl88FV6dksJOn8DJR+2HTQ424WLpkl8JLUGWxBs9YwvYe
         dX+UxLPTuGxz7MGr6hg/G8Q1n0pFolJdU/Cw9kmmMhnq0YGSH/wzMeoMau5xiiQ5WaPM
         aPGJ3TWUb2s+pwY4Jcml7JAc7DCpmtinYS9E9A+zIH6goOFcSzEqt9eQcI0Uvd/ntUj1
         QwdGuT5PvktttLlRWrgDh4S3/bemk930FoKXRv6tgA2kMbvBiUZDBw4+DjK1ZbbsK4Zf
         3X5w==
X-Gm-Message-State: AOJu0YxqOFYjIYOKhw3CYT8ZxBW4F4Xo6k5ynwZ9b+SJhhogYJFZOJC0
	2Iy5eEAcwXpjqNtqoWMv44bwoA==
X-Google-Smtp-Source: AGHT+IFXdS2JE5SAgxFGpk2JBdV0QiDMGOB+zNKqvG/7UuF33hvfFUA7v/UeS7e5AxcMQ4nkJcmsTQ==
X-Received: by 2002:a67:b911:0:b0:452:5798:64b6 with SMTP id q17-20020a67b911000000b00452579864b6mr7136727vsn.29.1695347474300;
        Thu, 21 Sep 2023 18:51:14 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:fa26:6227:be1c:67f0])
        by smtp.gmail.com with ESMTPSA id y10-20020a63b50a000000b0057412d84d25sm1973856pge.4.2023.09.21.18.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 18:51:14 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Thu, 21 Sep 2023 18:49:53 -0700
Subject: [PATCH 6/6] riscv: dts: thead: Enable LicheePi 4A eMMC controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230921-th1520-mmc-v1-6-49f76c274fb3@baylibre.com>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
In-Reply-To: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695347467; l=995;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=NVR/jz5zFITHdlX9LFGuP143Lx0/07lnI+f1VmxUhWc=;
 b=raxv8sdLi3NXEnuRTMoKuMBfYJblfB31JVKLCA7ZyLEQDTMFK0QMg4FBDAS1/RE2PwM8GeM9g
 37Bq/mEBjXzC14O3M2KIDYrOlsISgPYO/PybYfDJ47mNjxkGGIw5rgl
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add properties to the emmc node and enable it and set the frequency for
the sdhci clock.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index a802ab110429..3de8ae0a4384 100644
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
@@ -36,3 +40,14 @@ &uart_sclk {
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
+	thead,phy-pull-up;
+	status = "okay";
+};

-- 
2.34.1


