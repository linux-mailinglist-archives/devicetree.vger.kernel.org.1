Return-Path: <devicetree+bounces-2987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2477AD0FE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:03:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 1C6AC1F243D6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 07:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D16107A7;
	Mon, 25 Sep 2023 07:03:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2287C1079C;
	Mon, 25 Sep 2023 07:03:08 +0000 (UTC)
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0CACC6;
	Mon, 25 Sep 2023 00:03:06 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3ae0b0e9a68so3795146b6e.0;
        Mon, 25 Sep 2023 00:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695625386; x=1696230186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WDGT67Q+ic1nejZuLGS46+I/MVwpubEr1pR0ugjy0IU=;
        b=G1QMWT8JVjav9cfYKo6W4V9tEiTFM677khgXsdb+3DmD9KyzoETpoYU4mhMWez8FZd
         /WGYQ1HHFvTgToS5UsraZC9zPlgbaOmcxjpa8897j9itIJ46lW7aCHtnhv/URg2Q8hw1
         vB29FBYcjM7yo1iPnwPqiaB0bnxF08LrHlWDExY3XVpuJeGiD65Vzau5qbMrKtVyt+uP
         sWgbQuiYQauNlyCaoNlRvt1ugu5WFPI4Cpw8acbgrOhj0NipzfLlnz14rMHR5CV5nM19
         fYn949jdChMJMaREPz4brtWw/rXl/v5VselSoU5szDahuj6t/ITVi8wRXqI43wJ3/cgw
         yqyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695625386; x=1696230186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WDGT67Q+ic1nejZuLGS46+I/MVwpubEr1pR0ugjy0IU=;
        b=Q/3QGCC7SDPQHUho7wdvRroFugD97l9t/kyh/FpEPM7WNW2TTfBeoHpu+gevTASJCL
         19aKev9BpUSnWQAaaYCxplfYYM/ik4h5qhCPpcnceloz19HCEUhrYO30BmceQn3nMo5s
         a+gR90JPh4kPkJS++pONSObpiHf2wCuiLw5+Fh9YNfUDMSZmE3dhGyP0p9t627wX0p4V
         ryR6oo9eWahKR6p+k68kmmhrAgkYodzDyAi/RSjzGQly0sJdqQ+gS6hc1tuZ/u60deBD
         xwWfwDwt1Unexa8YBKGCxrIMR9L1w4GRHrBILkmTpb01Y5ou+CwpOn+YSLQMHqPEb+4K
         hJ8A==
X-Gm-Message-State: AOJu0Yxeek0diHasJm3rKK/5pJlt9dCgu8Q/n7F726XAqd4bwoveHgm7
	8HbQnqQY7b/ryZCFnVywYBI=
X-Google-Smtp-Source: AGHT+IGuIf5mBPt88+M6/YIuuNJKLE8C/47l0VkV0khzucuV5WQH4sTDrzNExeLrUZwNC2wFVnVfUg==
X-Received: by 2002:a05:6808:23cc:b0:3ad:fcd5:3dd6 with SMTP id bq12-20020a05680823cc00b003adfcd53dd6mr9828065oib.13.1695625385867;
        Mon, 25 Sep 2023 00:03:05 -0700 (PDT)
Received: from a28aa0606c51.. (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id y5-20020a62b505000000b0068ffb8da107sm7349833pfe.212.2023.09.25.00.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 00:03:05 -0700 (PDT)
From: Jacky Huang <ychuang570808@gmail.com>
To: a.zummo@towertech.it,
	alexandre.belloni@bootlin.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	mjchen@nuvoton.com,
	schung@nuvoton.com,
	Jacky Huang <ychuang3@nuvoton.com>
Subject: [PATCH v4 2/3] arm64: dts: nuvoton: Add rtc for ma35d1
Date: Mon, 25 Sep 2023 07:02:50 +0000
Message-Id: <20230925070251.28-3-ychuang570808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230925070251.28-1-ychuang570808@gmail.com>
References: <20230925070251.28-1-ychuang570808@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Jacky Huang <ychuang3@nuvoton.com>

Add rtc controller support to the dtsi of ma35d1 SoC and
enable rtc on SOM and IoT boards.

Signed-off-by: Jacky Huang <ychuang3@nuvoton.com>
---
 arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts | 4 ++++
 arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts | 4 ++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi         | 8 ++++++++
 3 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
index b89e2be6abae..b3be4331abcf 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
@@ -54,3 +54,7 @@ &clk {
 			   "integer",
 			   "integer";
 };
+
+&rtc {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
index a1ebddecb7f8..9858788a589c 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -54,3 +54,7 @@ &clk {
 			   "integer",
 			   "integer";
 };
+
+&rtc {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
index 781cdae566a0..394395bfd3ae 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -95,6 +95,14 @@ clk: clock-controller@40460200 {
 			clocks = <&clk_hxt>;
 		};
 
+		rtc: rtc@40410000 {
+			compatible = "nuvoton,ma35d1-rtc";
+			reg = <0x0 0x40410000 0x0 0x200>;
+			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk RTC_GATE>;
+			status = "disabled";
+		};
+
 		uart0: serial@40700000 {
 			compatible = "nuvoton,ma35d1-uart";
 			reg = <0x0 0x40700000 0x0 0x100>;
-- 
2.34.1


