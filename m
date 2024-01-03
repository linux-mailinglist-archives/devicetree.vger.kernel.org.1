Return-Path: <devicetree+bounces-29423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8BA822E52
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:30:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 264451F2448B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 619AE1A713;
	Wed,  3 Jan 2024 13:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="WPkkZHrz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0471A289
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E43A03F5C5
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704288545;
	bh=Z6kJEMrEbGLyI1yj9sToUKHZA2SkNTvsj92LWdDmHKU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=WPkkZHrzBYjqFRI9k7bpz88HNGn6b8NMOoYZLRsLvCEeT56tMzE5hyNW8TB2oCNRo
	 2Ge05U5YIp+jClp7eXFRRCpsLmBo0O1hYYNETFb+PGGqDBPaWyndpAhjTk/KFw0xGn
	 vGPMuR/XZrHXXOGD4SdkItuZ1c38si1c0Ad+gMri1OkgwSTXGY6rtk+BRtq+CaHvPS
	 P5fy27sLbh1k0UiBlRKqExF5dko4LtkRzljC/zhAzD/ZMBv7MQXs8TvJIR5qwRJg3K
	 Ipi09Te5VaewVxVpKKGvzMLJFGc/raa+F0RfFsvtrjlEd53YztTEnZUmIWBg1oKxei
	 JBWm1FauKTj1A==
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-a2801b68a97so112984266b.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 05:29:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704288540; x=1704893340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z6kJEMrEbGLyI1yj9sToUKHZA2SkNTvsj92LWdDmHKU=;
        b=CD/NkGUg9tnzo6TACifOROamoGak+K2uIrFNGR/tHZd0blyXLwJ2QI79hSiaRrGRwR
         XCF0afPP11d3a43K0lMRW2szpYOTiY+cvG5jWk57wMe30hUqY2mkPBKqko2Jybb0UD5n
         7xbdfYS68Ay+prCzDlYTRYWOjJcFlu686931TH8wAvVxxEGfTA4GAfVuKdKNydeal4RC
         V9+5u2mrQ3KgUX8BFC+CqvLKc/zy8Rrvt5eT2f6/UuhCSE0vffiiwckC2YHthzJ3PcDu
         6RWRzaFMmONn0u4sOYeuk471g9zGj2zu7wUrivV9cQwtd8KcRqxeXVfY1T/R4FhWjUC7
         t8IQ==
X-Gm-Message-State: AOJu0Yy4n6OXp6B6t6F95+JdOltDmK1zY039rcerT1krVhq70R+1mLvD
	MwLJAyOGEWqxu7FUvZOFm0QlR1/OvJ8khTxigxTbosIB05eRYmJ4l1zhT1STRp2u6D8DedQRL7B
	lBywonIkQzRgen2gPsfzWVjROt9lA9NxfSJNgXFJH9XZr1A==
X-Received: by 2002:a17:906:3cc:b0:a28:28a3:89a6 with SMTP id c12-20020a17090603cc00b00a2828a389a6mr1880011eja.54.1704288539858;
        Wed, 03 Jan 2024 05:28:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+dUglk3qywpv3HLiAtpq5rTNNTGkv6sHrUH3Nu8K83CpFHOwrW3TADKmgsLV6w9iY21gf0A==
X-Received: by 2002:a17:906:3cc:b0:a28:28a3:89a6 with SMTP id c12-20020a17090603cc00b00a2828a389a6mr1880002eja.54.1704288539708;
        Wed, 03 Jan 2024 05:28:59 -0800 (PST)
Received: from stitch.. ([2a01:4262:1ab:c:5af0:999b:bb78:7614])
        by smtp.gmail.com with ESMTPSA id eu18-20020a170907299200b00a26e53be089sm9549873ejc.44.2024.01.03.05.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 05:28:58 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v2 6/8] riscv: dts: thead: Add Lichee Pi 4M GPIO line names
Date: Wed,  3 Jan 2024 14:28:43 +0100
Message-ID: <20240103132852.298964-7-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
References: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add names for the GPIO00-GPIO14 lines of the SO-DIMM module.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../dts/thead/th1520-lichee-module-4a.dtsi    | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
index 9865925be372..f674e5acd0f9 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-module-4a.dtsi
@@ -37,6 +37,45 @@ &uart_sclk {
 	clock-frequency = <100000000>;
 };
 
+&aogpio {
+	gpio-line-names = "", "", "",
+			  "GPIO00",
+			  "GPIO04";
+};
+
 &dmac0 {
 	status = "okay";
 };
+
+&gpio0 {
+	gpio-line-names = "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "",
+			  "GPIO07",
+			  "GPIO08",
+			  "",
+			  "GPIO01",
+			  "GPIO02";
+};
+
+&gpio1 {
+	gpio-line-names = "", "", "",
+			  "GPIO11",
+			  "GPIO12",
+			  "GPIO13",
+			  "GPIO14",
+			  "", "", "", "", "", "", "", "", "", "",
+			  "", "", "", "", "",
+			  "GPIO06";
+};
+
+&gpio2 {
+	gpio-line-names = "GPIO03",
+			  "GPIO05";
+};
+
+&gpio3 {
+	gpio-line-names = "", "",
+			  "GPIO09",
+			  "GPIO10";
+};
-- 
2.43.0


