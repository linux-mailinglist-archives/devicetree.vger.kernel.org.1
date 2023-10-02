Return-Path: <devicetree+bounces-5186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4F87B58A7
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:14:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 84D6A284BE2
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 212DE1DDF1;
	Mon,  2 Oct 2023 17:14:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748151DDE6
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:14:14 +0000 (UTC)
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEA5FA4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:14:12 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-77574c076e4so2257885a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 10:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1696266852; x=1696871652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VNHPyhjdF/EgT+ErFOTgdy7sUGT7qrL3KrhKOabumMM=;
        b=3Q7p9Vs6ZUAhXoLxBH4lY6C8TpXPwgB6/rLWkRUx1+uT6oD1C5uvWxOI26GF4jbKuP
         wY0WoaiapG7xc476R9laabv9BmPsjXF5CbCWAk11qexHyHWOmejzQJ+dmOntlCdcZxyp
         3a7Fk7KWzT6K4hZkpNy+bDpIRwVtwYoVGIZsawEgwXM4N90cHGuskIDt9jch7dTRpjqY
         QAtEHJPC4q6ODZJYN2VrddL4J1tMUtv18IIhawSWddU88iJTxHN3bABsL6KcWXEK2XTH
         12aiCNx660077jS9+gx733S+VOu67sSA7Q9EsY+dp0eAzMxaER9GJkpH5rGKim46Sed1
         ePOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696266852; x=1696871652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VNHPyhjdF/EgT+ErFOTgdy7sUGT7qrL3KrhKOabumMM=;
        b=s7oJLQWnwrj9+UmgjdXTB8Wq5xtruCKfb104FBp5qH3TFDyJr+NkK70evjl1UTN4FB
         +5fm3vj47OrTP101SgBWGlooOXXDTaywCj7gHc8zJe8fhzdUmJyF+WtSO8zBfYWg2kTs
         XbnD+wmyc1oDetstJKPROv2mjI6vgor+cCLTxbJtRfy2BfbezFi9WQr6OLYgszde8tMj
         hqBYbUOhUvngIywAuComZDVV3ONP8GRPUGByJFtGm6/Kw0N89DepGh1VD2U6aivuRFon
         P83HZfm3RD3fPdH92ikvmroyCkDamoethtMdpxpNqgh7E49ns84UcdogYxLWvh8IZGAD
         PGjA==
X-Gm-Message-State: AOJu0Yzm4GZfh+OvfiklsxmKp/nr4GlbdMvs8vw+bMg0pVjDBGluMu5K
	c0HcGvE6HVHfZERaJ/sFi+8n+w==
X-Google-Smtp-Source: AGHT+IEWK9INZfqH54sojbPPQ04UX+zsKbgvbESo0CRSHjzA94kt7jBUvnzEPtI2+sJX7off71P2Fw==
X-Received: by 2002:a05:620a:25ce:b0:76d:2f15:56a9 with SMTP id y14-20020a05620a25ce00b0076d2f1556a9mr12871693qko.31.1696266852065;
        Mon, 02 Oct 2023 10:14:12 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id dy52-20020a05620a60f400b007678973eaa1sm9132660qkb.127.2023.10.02.10.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 10:14:11 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH 2/2] ARM: dts: stm32: add SDIO pinctrl sleep support on stm32f7 boards
Date: Mon,  2 Oct 2023 13:13:39 -0400
Message-ID: <20231002171339.1594470-3-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231002171339.1594470-1-ben.wolsieffer@hefring.com>
References: <20231002171339.1594470-1-ben.wolsieffer@hefring.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Use the new analog mode SDIO pin definitions on the STM32F7 boards.

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 arch/arm/boot/dts/st/stm32746g-eval.dts  | 3 ++-
 arch/arm/boot/dts/st/stm32f746-disco.dts | 3 ++-
 arch/arm/boot/dts/st/stm32f769-disco.dts | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32746g-eval.dts b/arch/arm/boot/dts/st/stm32746g-eval.dts
index a293e65141c6..e9ac37b6eca0 100644
--- a/arch/arm/boot/dts/st/stm32746g-eval.dts
+++ b/arch/arm/boot/dts/st/stm32746g-eval.dts
@@ -188,9 +188,10 @@ &sdio1 {
 	status = "okay";
 	vmmc-supply = <&mmc_vcard>;
 	broken-cd;
-	pinctrl-names = "default", "opendrain";
+	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdio_pins_a>;
 	pinctrl-1 = <&sdio_pins_od_a>;
+	pinctrl-2 = <&sdio_pins_sleep_a>;
 	bus-width = <4>;
 };
 
diff --git a/arch/arm/boot/dts/st/stm32f746-disco.dts b/arch/arm/boot/dts/st/stm32f746-disco.dts
index c11616ed5fc6..b50461d676a7 100644
--- a/arch/arm/boot/dts/st/stm32f746-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f746-disco.dts
@@ -103,9 +103,10 @@ &sdio1 {
 	status = "okay";
 	vmmc-supply = <&mmc_vcard>;
 	cd-gpios = <&gpioc 13 GPIO_ACTIVE_LOW>;
-	pinctrl-names = "default", "opendrain";
+	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdio_pins_a>;
 	pinctrl-1 = <&sdio_pins_od_a>;
+	pinctrl-2 = <&sdio_pins_sleep_a>;
 	bus-width = <4>;
 };
 
diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index b038d0ed39e8..5d12ae25b327 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -131,9 +131,10 @@ &sdio2 {
 	vmmc-supply = <&mmc_vcard>;
 	cd-gpios = <&gpioi 15 GPIO_ACTIVE_LOW>;
 	broken-cd;
-	pinctrl-names = "default", "opendrain";
+	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdio_pins_b>;
 	pinctrl-1 = <&sdio_pins_od_b>;
+	pinctrl-2 = <&sdio_pins_sleep_b>;
 	bus-width = <4>;
 };
 
-- 
2.42.0


