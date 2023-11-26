Return-Path: <devicetree+bounces-19009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B189B7F967D
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3B541C2082C
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4944416400;
	Sun, 26 Nov 2023 23:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="SOeL1YT6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A0A123
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:41 -0800 (PST)
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B9A213F18D
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 23:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701041319;
	bh=OuMn6YJcnYA0SdFjV5QIvrMlS1FQMrQ/PHdRB99f0NE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=SOeL1YT6bSbk0XdhgDWSbLQ3Oy2/R330q1FZW9Otql84J+LVo+a+ftyWioX7X+XLE
	 WsxSrwwg/P59pPDLYmxOJAl/9TCz1USYBQgmpN8hXweRkD3i6Bf0moQR+W54rQT5VD
	 H+vQL8+7CsGj71XsrVF/gLCpx1htMw5a6FAUB+tdZdIFso/ohrT0kG2Pd6iPeOfCTF
	 +drDqIKz/kEztmbP9ijGw/XyKRMhKRQT1tjyl8CgZvKAlZqqZVs5zlYkr78aooDeJn
	 D2Ca80EAPxvcRPKDIVxDVq75Vp5RdfKH9n0Au6CImu5fIqu534LWbQTrwJjaAwWatG
	 qBuf15ArBLASA==
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-285b3dd68c0so1662832a91.3
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041318; x=1701646118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OuMn6YJcnYA0SdFjV5QIvrMlS1FQMrQ/PHdRB99f0NE=;
        b=ETw9/5xjDMgfGcw1UYE6YeJErspwTkJp+g6MZUSOtcnyqXrLs4qwUU5JL/sL7XJVVR
         g1Ijf/Opp7KHmNUKsqQIpz+wm3aRCmskfKRtD2U5rup8uqY/xnSDo596IpeFc3DxCI4Y
         7j+0L+wURCMYPXibAHeWztJnGLpSetH6WbR839UAGsMJG3SPG1nBt++Mn0mYNqree8dG
         eF910Oxh6RrMMGxVEl06aNbwYau5/Ma/AfKTjzJgWu+NgQOuUsGu8jCM2yHOIWKoml48
         yzWL3hgW/wD7/OZKRxmxlrIyWd8GW2YzOIflWKKsJ89fxRgN7ERv1fT2iF+QouA6X/1q
         5caQ==
X-Gm-Message-State: AOJu0Yw7rPotBnS+0fBFEbVA/TyNwgRAUBsqlZj/IEChBIXI2FyHIFd1
	pynKCsufJjlPbOoDB7Exae0eVN+rv75P2r8+0vccZL4xRO/3wYu88wbqAQZx1hdnunDyamri/Bo
	Og8DZPtef0+sPyx1MfnBZamk7jm8VbNvzO1uIGXg=
X-Received: by 2002:a17:902:e80d:b0:1cf:b56f:5359 with SMTP id u13-20020a170902e80d00b001cfb56f5359mr6002918plg.16.1701041318487;
        Sun, 26 Nov 2023 15:28:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEJoOhGmXHm3ZFgs42HkJ4RCFLyzcurPDAEjQybVEulGwZcrjrwFmdT8LY5fG5jxKouwWX+bA==
X-Received: by 2002:a17:902:e80d:b0:1cf:b56f:5359 with SMTP id u13-20020a170902e80d00b001cfb56f5359mr6002901plg.16.1701041318277;
        Sun, 26 Nov 2023 15:28:38 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y10-20020a170902b48a00b001cfb52ebffesm3123853plr.147.2023.11.26.15.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:28:37 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v1 6/8] riscv: dts: starfive: Add JH7100 MMC nodes
Date: Mon, 27 Nov 2023 00:27:44 +0100
Message-Id: <20231126232746.264302-7-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree nodes for the Synopsis MMC controllers on the
StarFive JH7100 SoC.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index 0cafac437746..c216aaecac53 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -178,6 +178,32 @@ plic: interrupt-controller@c000000 {
 			riscv,ndev = <133>;
 		};
 
+		sdio0: mmc@10000000 {
+			compatible = "snps,dw-mshc";
+			reg = <0x0 0x10000000 0x0 0x10000>;
+			clocks = <&clkgen JH7100_CLK_SDIO0_AHB>,
+				 <&clkgen JH7100_CLK_SDIO0_CCLKINT_INV>;
+			clock-names = "biu", "ciu";
+			interrupts = <4>;
+			data-addr = <0>;
+			fifo-depth = <32>;
+			fifo-watermark-aligned;
+			status = "disabled";
+		};
+
+		sdio1: mmc@10010000 {
+			compatible = "snps,dw-mshc";
+			reg = <0x0 0x10010000 0x0 0x10000>;
+			clocks = <&clkgen JH7100_CLK_SDIO1_AHB>,
+				 <&clkgen JH7100_CLK_SDIO1_CCLKINT_INV>;
+			clock-names = "biu", "ciu";
+			interrupts = <5>;
+			data-addr = <0>;
+			fifo-depth = <32>;
+			fifo-watermark-aligned;
+			status = "disabled";
+		};
+
 		clkgen: clock-controller@11800000 {
 			compatible = "starfive,jh7100-clkgen";
 			reg = <0x0 0x11800000 0x0 0x10000>;
-- 
2.40.1


