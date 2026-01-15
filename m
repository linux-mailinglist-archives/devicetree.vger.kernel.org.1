Return-Path: <devicetree+bounces-255805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D3BD29516
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1533730BDB5E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48CB233120B;
	Thu, 15 Jan 2026 23:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="LGJqUAEs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96AF2331A63
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520581; cv=none; b=ZU9x2yWo0xbXzrxQbd/zd4y4ZI6EiL4xOESb8JpZ9OEpoLfLR9zmX++CSIowFwjB34Uma2vENMBBANnqkZo5MRi24by4FGlM6xvXn0kbHxaIX1UHP9yGIC8Frdbx8NaLCZbXgI5DMziTZWD9FZ2FHxyarcJqWxyUDQ3pwhBQJaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520581; c=relaxed/simple;
	bh=EEjRqQx/H6A5D0M2EPOuD3mdpqZCKoJ2C5PoaUS/a6s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VlcW1Jts91EFsQBrC/ciLUvdGrqAZrvnF5chzYOnVLe4Hk0UWP5C0WSunzhrEfy26DwpicOTjQUSM55N5LpZtPsHDjPKVQ+ks1sXDwTAI07SWCQ6LW4KIYqxWf0E0O3dr3PPO7L6IWmWpJY2b3TojzxnqQtJuT6QniiJkR4tnqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=LGJqUAEs; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-78e6dc6d6d7so15871377b3.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768520568; x=1769125368; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZgauUMDVjNkmmnUZThthivYhABO9DN7YXuMbhZ6n408=;
        b=LGJqUAEsUnEnN0ikvATmZswx8eb+G/Mya/WMhzivBIpUsdNVOszB3GIAtwPobmkXyD
         L56PM7wYScxVxcsSYijAawebASbGnFfZD2DBcInywb1CaNmcUVGbu+CTS8dzqXB1ujU6
         4rUb9AtHGDbtFldWnbquRcnsjlHJMyO4NcosKJCRtk5BJCCJvy1cbaEJu10RbFyLuALh
         RgQCZRFJ73JU6icvP4vi4CcH6CIBVOY89/rd2HFeGBHncRCBI818SXqCYd+BK9tJoPYo
         dphijL2J7h2M4j/q8GY2iaYicCcRHJg3GQZEGLH28X4Aj8fbfvsu7ZuYNBobhBJDool5
         zAfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768520568; x=1769125368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZgauUMDVjNkmmnUZThthivYhABO9DN7YXuMbhZ6n408=;
        b=J8IgEnpWkVldo/oz2ax0tWg9OQLswGOiFK5YIAL5TbQ4NWR16ThRZEd+GS6CQwEObP
         83G3iS2LbxkO/IaAM7Gil+rP+Z6GMxbba2YK18TvVimNUpcHQyIQyXFfMKDfZ/MiYmw/
         qOY5QTGKnFfEN4fACnYARDEXBMjjUnpDF/wWbLByWA0vFf2oOETOuk7W6+FxEuRnE26v
         ZGqiUPVt5BrLLMcWeNXGozdFY+Z7KRZIx9ztftPnMwLTc4vmyijkN55BWvOS9LSUfDiH
         IiXc5JchAVBpigVnJitKokHOt5gfPXyYdvUqwpjmtFJgslPkf3AY3csS8jSDVW169sj9
         xRHg==
X-Forwarded-Encrypted: i=1; AJvYcCW37EjtsNUXLffSDm0/bvJG1VmTP+iLms7V8nqvCqic7uytE6uImYA7nBzoW9QyScNZAwaGgUSQSHAg@vger.kernel.org
X-Gm-Message-State: AOJu0YzTHMZiQhyvvpe4GWl2T4AaYxLJlU71UNm+gyF1ebY2JspbdmH6
	55Y14SP9vJ0cZ1FAHwFbljNsblSQkANM4LV+l20i8ynMvtz8uR2tRtwOkmCIK3Idd5Y=
X-Gm-Gg: AY/fxX7hKN/Zq2RSefJakcaw164iqz0pw5qUp6ZyqNL3S9okQoHpYWEXh4X9QFcUBB2
	mEI9EauwusirQL9ID+JZz3Vbi/RngeiW5+mk84dDZYuYPEd4EC4hApJmreu5m58xtPbNMAMVwve
	Me7DxxCaSFN4WobC1Sf6p/rLAx8C3RL6ZsXZ7dsDc+8rb25LMylkO1avztlnrlgiWIzzj/NxpVT
	lRMQQ6J0Mq9gW2C+tSAB8o7xpeen+iG9BfGlfikxT/Z+TR4lPJCY9X1qptUvRDWphDSU6mqJHdv
	Yd03TkHTlSbAGKMXsOD/J3l8jZrNuYKMWn/aNg0PPFIoYst+Ih0EwXLRBeoBv5aMPdtPdsnJsBl
	twIJX6vPW0R9ryTHsV9v7n1ff9EhuscrJ97mfzdIi2BnomK5fBqlPNUtUvYjCgeV3tMif9+qP56
	v6HGTatKDdlFurb3sU+rBabUx0w84Zl6tAa5mOuqb35+OfAO7T9ykfZq9sMPVsGPhVdbxJrHQ=
X-Received: by 2002:a05:690c:6e0b:b0:793:bbd2:5675 with SMTP id 00721157ae682-793c67f7993mr7567597b3.44.1768520568667;
        Thu, 15 Jan 2026 15:42:48 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-793c66c72aesm3027117b3.11.2026.01.15.15.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:42:48 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 15 Jan 2026 17:42:03 -0600
Subject: [PATCH 4/8] dt-bindings: soc: tenstorrent: Add atlantis resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-atlantis-clocks-v1-4-7356e671f28b@oss.tenstorrent.com>
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
In-Reply-To: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
X-Mailer: b4 0.14.3

Document resets from RCPU syscon for atlantis.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 .../tenstorrent/tenstorrent,atlantis-syscon.yaml   |  5 ++++
 .../clock/tenstorrent,atlantis-syscon.h            | 34 ++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml b/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
index 3915d78dfeda..7e9c8d85ba9e 100644
--- a/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
+++ b/Documentation/devicetree/bindings/soc/tenstorrent/tenstorrent,atlantis-syscon.yaml
@@ -31,11 +31,15 @@ properties:
     description:
       See <dt-bindings/clock/tenstorrent,atlantis-syscon.h> for valid indices.
 
+  "#reset-cells":
+    const: 1
+
 required:
   - compatible
   - reg
   - clocks
   - "#clock-cells"
+  - "#reset-cells"
 
 additionalProperties: false
 
@@ -55,4 +59,5 @@ examples:
       reg = <0x0 0xa8000000 0x0 0x10000>;
       clocks = <&osc_24m>;
       #clock-cells = <1>;
+      #reset-cells = <1>;
     };
diff --git a/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h b/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
index a8518319642a..ac6afc95b224 100644
--- a/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
+++ b/include/dt-bindings/clock/tenstorrent,atlantis-syscon.h
@@ -64,4 +64,38 @@
 #define CLK_CAN0_TIMER_CLK 52
 #define CLK_CAN1_TIMER_CLK 53
 
+/* RCPU domain reset */
+#define RST_SMNDMA0  0
+#define RST_SMNDMA1  1
+#define RST_WDT0     2
+#define RST_WDT1     3
+#define RST_TMR      4
+#define RST_PVTC     5
+#define RST_PMU      6
+#define RST_MAILBOX  7
+#define RST_SPACC    8
+#define RST_OTP      9
+#define RST_TRNG     10
+#define RST_CRC      11
+#define RST_QSPI     12
+#define RST_I2C0     13
+#define RST_I2C1     14
+#define RST_I2C2     15
+#define RST_I2C3     16
+#define RST_I2C4     17
+#define RST_UART0    18
+#define RST_UART1    19
+#define RST_UART2    20
+#define RST_UART3    21
+#define RST_UART4    22
+#define RST_SPI0     23
+#define RST_SPI1     24
+#define RST_SPI2     25
+#define RST_SPI3     26
+#define RST_GPIO     27
+#define RST_CAN0     28
+#define RST_CAN1     29
+#define RST_I2S0     30
+#define RST_I2S1     31
+
 #endif /* _DT_BINDINGS_ATLANTIS_SYSCON_H */

-- 
2.43.0


