Return-Path: <devicetree+bounces-9412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E017CCE6D
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 22:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C56CB1C20CEE
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08BA62E3EB;
	Tue, 17 Oct 2023 20:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hLak6oa9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536C52D7BE
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 20:45:33 +0000 (UTC)
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75B56124
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:45:31 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-517ab9a4a13so4591787a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697575531; x=1698180331; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bR/IFAv1lnI0y6g+8jA+bwtSS6VCFSGKbX2JFhOV5b0=;
        b=hLak6oa9RY60EQrK8i3SH1/pDUCuPdydHyVU7ftfjwpftwTbO1QhwDjVMwG7VQEsyC
         5UK+5KX6O2058TXJKLXMxJH6Hskpmi5IjICmRfTXNcadfPoi+GNAjSt7IwfRo2DH0xpz
         4pmkOsn6QNaiMALImz73SU9jdh5HJCfpvQa+ny6bJg69A0xuJnEPpwDh+pYSfsDsIV2b
         WojQsQcj5ty6+uyLytCv+tV61v/jfz0NYa4LV9NvGNT+PHmmWC0px2HJ8EuGICjtd15K
         IGX7RntGbcPRK1CI0q3vm10z1XBfT3d1DlzcIN8MXjUEGAI9eAmaZ1RkPUy2KpawQui7
         SfTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697575531; x=1698180331;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bR/IFAv1lnI0y6g+8jA+bwtSS6VCFSGKbX2JFhOV5b0=;
        b=wc4UQqVXimRecEueXpcZCIzNB8snTFFfw1aPbHnhf/REAJ5Y340iFrnHkEo0ZNTZwq
         C9nCiWhdTNGOgsOEVecmTFJoxKE8Jm9KNRM2xFMxRl0n2OiCPX4TACutYpy53vVQfeZD
         gupNvNIuVxJppjQRNIjzc6mU6UEZe/K+Hna6eAULQb7CpApqziV38yuuG7TuzQqzPxS6
         GD5QbPdsoBUn5E+VZeD3wuEcTg9cZWh0wDFxTVm4q9/Zae2TtKbyB6RA9umWwWDY7f0x
         wmUihrCBYUpZ2BgmsFU+IIdFLzSR4ueYrUyffvd1D1f3f8Ha4jYsg/DDAvpYX7Gqa2Xb
         XUbQ==
X-Gm-Message-State: AOJu0Yx85wpWLJyiW8vo2sahjASBWj/Z2vv/JAc3CY8VWFYVIhBVxXW6
	Ieff3vYcEkRx+yLtED2urLnbW+Cf1OjNJ4/vNgE=
X-Google-Smtp-Source: AGHT+IG73caoxqESTeHk5XR1yvgGOUSKaOSDSG943bozBwmE7lSRPCi9n15GPtaVf1K5N2iNcWWPlg==
X-Received: by 2002:a17:90a:31b:b0:27d:50a:f8a6 with SMTP id 27-20020a17090a031b00b0027d050af8a6mr3293077pje.10.1697575530940;
        Tue, 17 Oct 2023 13:45:30 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:51d6:dcd6:63ef:52e9])
        by smtp.gmail.com with ESMTPSA id w3-20020a17090a6b8300b0027b168cb011sm1906553pjj.56.2023.10.17.13.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 13:45:30 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Tue, 17 Oct 2023 13:43:52 -0700
Subject: [PATCH v2 6/7] riscv: dts: thead: Enable BeagleV Ahead eMMC
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231017-th1520-mmc-v2-6-4678c8cc4048@baylibre.com>
References: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com>
In-Reply-To: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1697575515; l=933;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=vNFZt2gizhpsjzH9MAKHp09E78+qWWf2znY/lpZAKnk=;
 b=j5MwipA9159XueCAdESnb2EitXe9gLx6ENZSvmnLtlql41q832inr6iR4u+oaVwFG7pwLGGN0
 Vi3eKERq18FDVLSmbURSHVWxMLqysL2SMc3AwBaEAzRyYd2aeL6EEmC
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add properties to the emmc node and enable it and set the frequency for
the sdhci clock.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 70e8042c8304..bf55319ba950 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -52,6 +52,10 @@ &uart_sclk {
 	clock-frequency = <100000000>;
 };
 
+&sdhci_clk {
+	clock-frequency = <198000000>;
+};
+
 &dmac0 {
 	status = "okay";
 };
@@ -59,3 +63,13 @@ &dmac0 {
 &uart0 {
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

-- 
2.34.1


