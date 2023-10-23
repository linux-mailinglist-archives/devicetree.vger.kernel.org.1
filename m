Return-Path: <devicetree+bounces-11085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6E47D416A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:07:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7899F2815CB
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9B0219EF;
	Mon, 23 Oct 2023 21:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3OSmfjho"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4C321A1E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:07:23 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F03C610C9
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:20 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-692c02adeefso2891020b3a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698095240; x=1698700040; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DnDZGk512Fn6FcfRLVRqtgZTjSOOBJwTCzWACAW0uhY=;
        b=3OSmfjhoDv6l5PJ9uzJle5MNSJ9q++gY6CMzb1Pc5bcb0E7FUY3gtn6VfcCycQ8ilO
         Jj4h/uWUdHJLQOab7nnJppZQMkpjx9mYtMjgM0hwaVMv+N/SUdm45jDtz2I0tLLBbR6U
         62G964kdgHHDpUAmWr29ctgjn6PoPW9MOHLjtMPnFbLVn1Z0C12wFhsD8endEDQulg/J
         uiSS9TfJ51+Gv0QF/dSyqVtHThjSPmEX0S62dBUTko1WD/UA4UtBiHwPGLnumYlKmO6j
         C1o2+rMSpVEmnI/wpu8RrmkvGhL60SjWesOWFPyU5xddnq3peu1WYGU0hO714Ao7MT3Z
         t6eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698095240; x=1698700040;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DnDZGk512Fn6FcfRLVRqtgZTjSOOBJwTCzWACAW0uhY=;
        b=oEGprN8skvd0u1TxIxpP2e9CrO5N5a6QwBLPHZjCLIXK7Ds3JSEzMuOAJ19k/mVZuo
         ELh4i0ifwY8s9gjiMkzScPvdidoQV4LxdgHQcFOpyro17WmpX+yXiO7+lVVSG6XtX+Dl
         X6Ye8OjDEhiY9M+nolQjqSRmXVihM4dnUKB7FM2m66MsKQegkR/71tqz5+Ue7mBjXMJN
         A2GSs6IIlgHMT6A5fv2C9EBXakcS3dIVnFuK4qZK1TZ/b8iVi2cElYd7nKfLlW9wQJ0b
         kN0abrakwwscEoICqslPSlhnlKa54TmSUXfC9zLTrojbU6x0phUErnSDqAllPPOUd7tA
         6VKw==
X-Gm-Message-State: AOJu0YxczT9dqFJGMFyHa1hhfw4yXx0YFS8DfF5HSyfujrSt6lDV23VO
	3QeeKGgEzIqtwNjPWibSUTyxXQ==
X-Google-Smtp-Source: AGHT+IFy9i3wiRv7RsL2aaRs6W12U8SLHVKjHe5u5szPZ8Mmj2tmiOgWQEONmuRJ4KzzhMNyDRzMng==
X-Received: by 2002:a05:6a00:1896:b0:6be:2bfa:6290 with SMTP id x22-20020a056a00189600b006be2bfa6290mr9584374pfh.8.1698095240362;
        Mon, 23 Oct 2023 14:07:20 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:b9a0:8714:407c:4146])
        by smtp.gmail.com with ESMTPSA id k28-20020aa79d1c000000b006bde2480806sm6573066pfp.47.2023.10.23.14.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 14:07:20 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Mon, 23 Oct 2023 14:07:08 -0700
Subject: [PATCH v3 7/7] riscv: dts: thead: Enable LicheePi 4A eMMC and
 microSD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-th1520-mmc-v3-7-abc5e7491166@baylibre.com>
References: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
In-Reply-To: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698095224; l=1102;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=vZkA/Rp2zWEJvsAGA/badfpHmHgx6/3DqqLzYe2IxQc=;
 b=ax5AGQOb4EokTCr2I432j5nbW8QaPOXuJavEGggSs1ADU93cWqll3c1fgKxLtJr4V7cVFFlVf
 3vhc56vd56WA2rIDPUGnxPWzgbBzvgjFKNJQh0b6hnAKjzBdq1stbeQ
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


