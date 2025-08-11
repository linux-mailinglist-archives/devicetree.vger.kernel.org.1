Return-Path: <devicetree+bounces-203364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14247B20D70
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 17:19:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C140624FA3
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A83C2E092D;
	Mon, 11 Aug 2025 15:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="DMqv0+yo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5E72E0902
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754925491; cv=none; b=BaER7Z/mFQ//BLHRD6DziihDtBafCCahMmuDk/BWrV6cILuvKZWldSir8MyuAnEKGqRVk9zSvXyT2I3weA8zrpZKBPYXUufO14KF7W2tmvTWx5sP9IM4xc+G8ZnjBPdPUduWTzoEcJQeGK1ojYzLbDcIg4B1EMGPmwWhXwmJOIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754925491; c=relaxed/simple;
	bh=YvWvllehKsY0eU8l/4yDh9aRcQewZPW2zyG86okcjvk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JaUOktaZr5kvM15PCAon+VVQ2goz4nJuPEvJReWWmesnOZD8Y8djY5NJ/82At6pJe5h1PkopEc6HK+FPDX5MJEI2rkOKCy4VEH8SaIdyMkyXB3TIRlwRSxaF0M6j/mZIne8kZETBFfe+AYjEGWJv9skAeW4I6MBDUlBJGIOj6oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=DMqv0+yo; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-af93381a1d2so722790966b.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 08:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754925486; x=1755530286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zhh5zaRs2oIpYFCywf4aV1Gc4V+uvx/WgvPXoTIlm1k=;
        b=DMqv0+yobTAyM91z4NzN/4oh2hr/MAe7td/gR0I4zmjGfVpdx15GBl7cbemZexMUjU
         3wgobkmvDin6LXVZrIO7BYdbkh5G0QpioJJ+RThHorYkjCZirZ9phowRd8UkLV038sdG
         EM9SE82p1Hv+PwnNbTZw9xInsSR5Gz1aibVjzriem6zLdax4wm6akVZhBmSftmd1xLLL
         XsF2d0P+3CjuEWf2cuogzfT3XZ57FpC/kMwTFUzdcMckqafggJ7hLo80rssrn9QPyejN
         DzkRUL0r3Bu0BBTxTDG0u5Mk/N4CdubSXWzXSe8GVDeYNNlm2j4JDpIneNLVd27PU/4a
         MkdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754925486; x=1755530286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zhh5zaRs2oIpYFCywf4aV1Gc4V+uvx/WgvPXoTIlm1k=;
        b=N3yyP1x0iah/fHqXJ5bBbdrYLS8ftL6TNjRtVhJGLcxUoZrIVVFKeWJdy+h5JjRGYk
         Q+KK/6hY8cntg5gmxfX/PFLRlOPq0zqyETA97zWMjgx0eNrzWk2wkf3hY9qrxt95O7ND
         I+yRPc3oh3wQ/KRaL/OIZju5U1102dPvHa3WEwmSTFmPPzmoV+0cwKXUaDgkmoaX39Xv
         veRypRhijOZbx949egL2dfDQfdmlcmk6C1QNEh3I6cXRrGCMTQXQf6pAahKP5jqe7AdV
         pn4owQb5e8Q7XgliY5gAUxuRNStZ8g5OaLAZbnBmH3fE17Aodb3J/kcBemT0Wpd42DVj
         bLfA==
X-Forwarded-Encrypted: i=1; AJvYcCV86ZnlaW709LaLctICcwmxUOpWV3xDoiWm84rJcBHyFobSGmfvdtjvhzyq+lyiluWcCVDSxwHJqKPN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5x0PkRugpKz2/oVCmULPAvSwAximYEIuHXyuRpGibD4xJ1Kol
	ykYOux/fl5WvKVxny+pO0Dzxh3zOn8BByhB3TFi0fm7r9I9285sNReyer8IgHNXy0kw=
X-Gm-Gg: ASbGncsID2Pol/OTMvCi0hOoyOzK/nPuiK6B/N5Q1YALN/6Tv4ITE3vYug6CVY/DSe/
	Ng3TEJyoxsEdr1R6XSx7wRI8KqpiAv06BQk85rK5UvhPRpCRoyeBdo65yuGhJROkufHzFUxMLRN
	pE8pPkwOL0RRZA4Ew3C9WGaVu9upt71y/C7o1MAhOFU7xjs5C00iXPnyHl7NeZznaaQwYeEFbAu
	0uIRNhDWUSvho7le6WJMccXTiZrNc97KtBbkiHYgxDrTxAM+ow2IHVSGx3mstOXba1am2ZuhMBZ
	r6diCF5L64SeZhtS/1ZYDXoK6eAtw+MX3Lfo5DnMNf+e4IUrddnXlD/Ehz8+n5d6ydCOdI6MEfF
	dvRgmNfW2NiQ51PHsggVKj4nnTKl46cJw4GPp3DxL4ujM4AS0snPqOJ3UmB8brZXByQ==
X-Google-Smtp-Source: AGHT+IGNa3UAEq/Ce3/sswcy3A+j3yXj3Hu9QHzagv2xAwHzDuZRAXkuzsWUlKzyxvuIXzuGjI7OUQ==
X-Received: by 2002:a17:906:9f85:b0:ade:43e8:8fa4 with SMTP id a640c23a62f3a-af9c6373614mr1374008766b.18.1754925486344;
        Mon, 11 Aug 2025 08:18:06 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a07659dsm2020105866b.21.2025.08.11.08.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 08:18:06 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH 2/6] dt-bindings: serial: Add clock-frequency property as an alternative to clocks
Date: Mon, 11 Aug 2025 17:19:46 +0200
Message-ID: <419658ce1a1009c6f8b7af22a02b278cd695dab0.1754924348.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1754924348.git.andrea.porta@suse.com>
References: <cover.1754924348.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The UARTA controller on BCM2712 connected to Bluetooth chip does not
mandiatorily ask for a clock connected to the high speed baud generator.
This is, in fact, an optional clock in the driver.

As an alternative, the call to uart_read_port_properties() ensures that
just a simple 'clock-frequency' property can be specified for the clock
value.

Amend the bindings to allow to either specify clocks or clock-frequency.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../bindings/serial/brcm,bcm7271-uart.yaml    | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/brcm,bcm7271-uart.yaml b/Documentation/devicetree/bindings/serial/brcm,bcm7271-uart.yaml
index 89c462653e2d..96697b1428bd 100644
--- a/Documentation/devicetree/bindings/serial/brcm,bcm7271-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/brcm,bcm7271-uart.yaml
@@ -40,7 +40,15 @@ properties:
           - const: dma_tx
           - const: dma_intr2
 
+  clock-frequency:
+    description:
+      The input clock frequency for the UART, Either this or clocks must be
+      specified.
+
   clocks:
+    description:
+      High speed baud rate clock. Either this or clock-frequency must be
+      specified.
     minItems: 1
 
   clock-names:
@@ -61,11 +69,18 @@ required:
   - compatible
   - reg
   - reg-names
-  - clocks
-  - clock-names
   - interrupts
   - interrupt-names
 
+oneOf:
+  - allOf:
+      - required:
+          - clocks
+      - required:
+          - clock-names
+  - required:
+      - clock-frequency
+
 unevaluatedProperties: false
 
 examples:
-- 
2.35.3


