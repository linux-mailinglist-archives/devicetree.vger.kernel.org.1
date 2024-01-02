Return-Path: <devicetree+bounces-29211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A267C821F61
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 17:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5138628177B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 16:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0533E14F6D;
	Tue,  2 Jan 2024 16:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="j1ngbm0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B719714F65
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 16:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-55369c59708so3176314a12.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 08:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1704212323; x=1704817123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vMFcXrpERZXaCP9uPS19JP2ScOwkrDDZS5qe/Ujb6s8=;
        b=j1ngbm0Y7cIvaZIPANngxqC3h6F/ZllvbMaOKiPh1f7rqczj7+GwBW7t4EsICZ8O63
         XlksXK2O1JuBAF0rbrwAt0yf8IGpKysGlsdL+7iTdswp0KM9wIFo88ZTOOPiMe4q3nlo
         LPj9h66Dzrl7GAbcOOh+fFmGtGtbrbYIqF5EXaKBOEO1AsLTJFFc+TC5VL5EwIRvqo5l
         hlq5+nWJ72JWVOlN/7FFkWOOc0+BbtJdUNrJwOYtrbGlKGQZhV4SWNb/k9rYgNGY3ahz
         V/EfsEu6W4FsldIBV20tHjguYQp2DaZMixJ6pIfDUCRU6bhquANsfGQP/ytZ9kiOnKML
         9l3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704212323; x=1704817123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vMFcXrpERZXaCP9uPS19JP2ScOwkrDDZS5qe/Ujb6s8=;
        b=U5cXIF6SdWSh8moKkN2B1qSf4zJdTMXLrG97ZMNBGOg3JGT8w266vU/xGqlrzZFEMC
         TZOlcuWoAvDrR102N3/e+3iwsleojVi8n1oaQTcOo5u8RFcOrU0oiGYn9DXRKicMVppR
         735pdbV8iQQlzgrvvFA+TFcbvfSPfDLPEhueVawrT6jTwyKZ6+KBKUElHMQWwNzctk/w
         eExCEGoDfPq3RGbUlfI+gemi8GRdyurgpPtRQWhlsXXGf7vLeJyWCHEp4ALQLyvJ+F+7
         6U8LpanBSS9nNnGMYosuuAXVAPzxQqrtT/iqH+ycVqXK8O0/NBwr6cDVENXVF2+X5/au
         ozJQ==
X-Gm-Message-State: AOJu0Yy94S2pWrzXDmM/zQ6GnsO0NaRmJexzM/q0WECao/tJYAN1y2PB
	gXrggc+0GLszlR4FGPsyEqoemn2s+JgvYw==
X-Google-Smtp-Source: AGHT+IEET9neX9obFk5esYJTEcqRBHb85r0N5bqkFTeCpk3CM0h8awtabQKDJw/NeN28gjT54pViVQ==
X-Received: by 2002:a50:8d03:0:b0:552:29d9:92c9 with SMTP id s3-20020a508d03000000b0055229d992c9mr22101109eds.3.1704212322891;
        Tue, 02 Jan 2024 08:18:42 -0800 (PST)
Received: from fraxinus.easyland ([77.109.191.117])
        by smtp.gmail.com with ESMTPSA id h12-20020a0564020e0c00b005561a8c2badsm3969191edh.83.2024.01.02.08.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 08:18:42 -0800 (PST)
From: ezra@easyb.ch
X-Google-Original-From: ezra.buehler@husqvarna.com
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Cc: Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Michael Zimmermann <michael.zimmermann@grandcentrix.net>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v1 1/2] ARM: dts: at91: at91sam9x5ek: Use DMA for DBGU serial port
Date: Tue,  2 Jan 2024 17:18:38 +0100
Message-Id: <20240102161839.702625-2-ezra.buehler@husqvarna.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102161839.702625-1-ezra.buehler@husqvarna.com>
References: <20240102161839.702625-1-ezra.buehler@husqvarna.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

The UART controller does not seem to be fast enough to receive data (at
115200 baud) without dropping bytes when DMA is disabled.

This has often been noticed when pasting SSH keys into the serial
console (ttyS0). Only after multiple tries, the long strings would be
successfully transferred without missing characters.

Co-Developed-by: Michael Zimmermann <michael.zimmermann@grandcentrix.net>
Signed-off-by: Michael Zimmermann <michael.zimmermann@grandcentrix.net>
Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
 arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi b/arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi
index 5f4eaa618ab4..9618b8d965b0 100644
--- a/arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi
+++ b/arch/arm/boot/dts/microchip/at91sam9x5ek.dtsi
@@ -39,6 +39,8 @@ &adc0 {
 };
 
 &dbgu {
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
 	status = "okay";
 };
 
-- 
2.39.2


