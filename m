Return-Path: <devicetree+bounces-19005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F53D7F9672
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D024C1C2083F
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A752915EBC;
	Sun, 26 Nov 2023 23:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="mnjkk6zW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E41E135
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:14 -0800 (PST)
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3F30140C52
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 23:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701041293;
	bh=Vqg7fThbBt+8kUZZ3WC9X56u6PAz1V4l82aCCquh0FA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=mnjkk6zWpEKw/y+GCW70v258ONf5b+sNmoz6P0vz6lbs1Ys7uNEYVfBx7c3KnW92g
	 hZ4PX9U4oGKD0GvqYyFkN/tcM/WI0j3gQMwCrkEZtqQ1wrEXufWcVuQ0tHi+646jnf
	 rrQJaG9LTXvwG+4Ar0yCeAbmodlBH5Kw3WkKhaCKTs2pW12gVFHLzeedomDsMtfjnU
	 sa6w6wkVHMyuXnzcE5Tz9I+iEvKdSAgYlrjjSM7nlVQfsbjKX/+1IV1mTcOGPID/Pp
	 n48RrtYpzIoj0gkhsSjF/PgI6C8071xn6IY324LmhW4V34VlKuo+JPTiBh481WOfl0
	 8BgbRe/VGdFUA==
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-5c16f262317so3434905a12.1
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041292; x=1701646092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vqg7fThbBt+8kUZZ3WC9X56u6PAz1V4l82aCCquh0FA=;
        b=JEhNbzv3+wi/p8UuMANQEHxSdX1Wxp69sTO7w+euoXmzwJF/NEi0tGs2OdUBd4bC5A
         wlI+hQhu85YAvuSWQx5THz2f1dTavH12kUBPnOUs3HZsmhTs4r4PLWhTtudQY8hMt3R6
         T4itWcxh5zM+RdDVuW50GURKqZg/Cqcpw9fTs97r4OkMmYHav81sR2qW4SwUaZCYaHFl
         QMzNGf7Hc7iz0Q3ojqBW+Vi1Gklg6ezXLeL7XHoLRh0xMu95Imam7GLhmVWq+YtO73z1
         2CLUUJQz1FnnzXc2ayI1531JFFerDzpxTthXRbTk+KoN5b9MsiL2c7YRgGrLL6rmtAGv
         WqqQ==
X-Gm-Message-State: AOJu0YyAqbrXH7VJOT0rU6TvTXeU66N+3ruCDe7Jced3HiTzy8o9Vh7W
	U55zvpgeDzI4ufVfj8owHdTDx95cByV3z6XoUiERSwhzszOGxWfFrO/U93W+JcmXMRGbc/psE02
	hV8bC6KK7JbgRVMYHs3mcHuHZ5VQZCvol6RBBRr4=
X-Received: by 2002:a17:902:c942:b0:1cf:87dd:5138 with SMTP id i2-20020a170902c94200b001cf87dd5138mr19675985pla.29.1701041291904;
        Sun, 26 Nov 2023 15:28:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHNetELMWc4XmW/Du0+GF8pso9dZtHfzTB9OE36Oakvb80NDQtS6s7ixj3rGx/02k0I+BSaKQ==
X-Received: by 2002:a17:902:c942:b0:1cf:87dd:5138 with SMTP id i2-20020a170902c94200b001cf87dd5138mr19675962pla.29.1701041291569;
        Sun, 26 Nov 2023 15:28:11 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y10-20020a170902b48a00b001cfb52ebffesm3123853plr.147.2023.11.26.15.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:28:10 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v1 2/8] riscv: dts: starfive: Group tuples in interrupt properties
Date: Mon, 27 Nov 2023 00:27:40 +0100
Message-Id: <20231126232746.264302-3-emil.renner.berthing@canonical.com>
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

From: Geert Uytterhoeven <geert@linux-m68k.org>

To improve human readability and enable automatic validation, the tuples
in the various properties containing interrupt specifiers should be
grouped.

Fix this by grouping the tuples of "interrupts-extended" properties
using angle brackets.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index e68cafe7545f..a40a8544b860 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -149,15 +149,15 @@ soc {
 		clint: clint@2000000 {
 			compatible = "starfive,jh7100-clint", "sifive,clint0";
 			reg = <0x0 0x2000000 0x0 0x10000>;
-			interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
-					       &cpu1_intc 3 &cpu1_intc 7>;
+			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>,
+					      <&cpu1_intc 3>, <&cpu1_intc 7>;
 		};
 
 		plic: interrupt-controller@c000000 {
 			compatible = "starfive,jh7100-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
-			interrupts-extended = <&cpu0_intc 11 &cpu0_intc 9
-					       &cpu1_intc 11 &cpu1_intc 9>;
+			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>,
+					      <&cpu1_intc 11>, <&cpu1_intc 9>;
 			interrupt-controller;
 			#address-cells = <0>;
 			#interrupt-cells = <1>;
-- 
2.40.1


