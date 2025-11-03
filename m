Return-Path: <devicetree+bounces-234374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DC416C2BD1B
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:49:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 380754F3112
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47B23128D4;
	Mon,  3 Nov 2025 12:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eRWAJG4b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E34312802
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762173618; cv=none; b=Gvv4jb3M5a1PrFox4pE24QnlNBZYF6zAfDzTPAAnFbT7OalBkIgz+ZCa6DgJck8yUqGblETb25W9bflPhfjqF8Gbf5iMtoXn3MLfsDTTY84S8wuFCy+P0222zheJES/lm6qr4EXzQgsHNkdZBySNxe3W4tqPlx75O4hcPIHDVZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762173618; c=relaxed/simple;
	bh=6hGcnBOkrSMQIKieC/McV84XZyXymXT7FDaWvZWNWbs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jBsVMDXwL3Cd46WAN1fek86vO98YJ98mKLbMLast1H541+pzwOgSiFybWVrzgczidoCQg8qDP5kuLSp+VUmJJ9mC/++FhEUkfGdey1fzuLu50NnlYIHzZFM6zmLDHJp23dtPOIvcRW0doT7Yz1v0USI2jFe1GLqfBM4WiytVoHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eRWAJG4b; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-640860f97b5so3042325a12.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762173615; x=1762778415; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wJeAn8jSSo6/JIcJaohDppo/oGstUTXUuYjdPwTMcs0=;
        b=eRWAJG4bVy4QyGFoCeVd6LfvAKURh8+/VZwRJvXP1RN/w986oKpAs2dlTP+evLpAJi
         rsD1S4w30x0fLfEqUCLMbjUcP/pTiq4UO4XnaYXxuUJd5o/sChP/ggCm0rzakfs2yWBb
         AKsq9LcuZJxp+bUmo+hY7lK5hQ2N2jyJ/3S3b298eX15sfRJ1W3/bfDNb/Mm7zAaINlK
         g3QxxrjXubiZ1mepz5VMeWwGcW/PuRpNo3uhtp5y301WrS5MU/MD1m/QUhomOS81jeAh
         xfnd628HkZMi4rtz1/u+QI+xZA2EBWAJxDidVmO2P8WWXKFi+fwk56TSs3FTKj+lz9XH
         sGLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762173615; x=1762778415;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wJeAn8jSSo6/JIcJaohDppo/oGstUTXUuYjdPwTMcs0=;
        b=OvVHH2Zx+VZjXCJO1y/JKaDd2eBvnFlCLQPvoCo7bpiLLRQVxroEcUjj53kJvUAmNW
         fR4p47ZlVcze2pFfDuyPug9F9eenS6RUzO6D9Fz6VDIkAcbBiisBzR1nEASYg6P5HXBV
         7WvvJijoCDylq4D4GcHmHUh6k/Bhd9+uGlsEW1trrpGrzxyI8QZSbiyue869ciDxc+qb
         sQS6do33JhGxZP5/Rnviu/ps8wzGGlfvpp7yBp6fC0RpRu7QYXDi5xIuYU7KhCLfsWuJ
         KuA3HYDImagM3KLZm5ivtwFs0VOY9ACZuyKwEPH9tcnAXAC55ThJObB/kVYzjuIqOx8b
         tiMg==
X-Forwarded-Encrypted: i=1; AJvYcCWw+e0og/9i6nGcD9YfJWKHKgpBg4iaIC3EDVnrToht0ZOpVqQ00+x7cn6Cux1FrcONc48u0o5zs4OP@vger.kernel.org
X-Gm-Message-State: AOJu0YxWyct60fpr+mzIMTRn7+y9JqVvDlb9IVU+4sZ5NyOhRWRiLeRP
	GFpVwTdTEJBStGFellHiAQz1IT6kNxcjxPwT/BfmBEN7G6g6uXerZ0FUZTCbQJoizaU=
X-Gm-Gg: ASbGncuCaJXBeyFjEN4PPxV+/VQOx8NGzOP6+OOItFOpnVJtaobk0X9Z1Y6TzUGEe+P
	i2PU8hSiRfkMtTHHsOoyDxtkhHKuB8/tvNPux7wTB5WBGHYHZ8qxujsxucNpiOgw2Y41sgKYpUt
	HUIxlwfgu/6BdtJpwx8oas+CUAQI9ZgQIDmMIJHcHSvxTeCsnEnGPpjV25W7CsKLxHX8pKSmu19
	fb77+d0aLgNEPyCcjz8C9tM9FflcRrUazgCs9aazOrtDQxi08JxhOEBAII2aexvgKd7IydMRWQX
	CMygFOZbvFwu1bOfri8p6nGLnCbLu9hq2Tzd1UFsFdMxE71LMjWbwi2Vyov8Y40d5GqMkf3Q3ZP
	CMiwQGOD/e7agN1WRGWC7zy+3KFUIMoUlE1rSMR/i9GBN1qgWhwI3O61Y0+NR5rmHv3JHEqA=
X-Google-Smtp-Source: AGHT+IFtVVqljuKCW5f4r6Ri/wyAAiuSHubsIp0V9cF0MgqTvnQQpbVTM4xuWKtVwgdiUdE8atDHyQ==
X-Received: by 2002:a17:907:9484:b0:b40:da21:bf38 with SMTP id a640c23a62f3a-b70704b654cmr1222307566b.36.1762173614941;
        Mon, 03 Nov 2025 04:40:14 -0800 (PST)
Received: from localhost ([2001:4090:a247:830a:fe22:a8:f29a:a5c3])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-6409ad0d7fcsm6763392a12.37.2025.11.03.04.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 04:40:14 -0800 (PST)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Mon, 03 Nov 2025 13:39:30 +0100
Subject: [PATCH v5 3/6] arm64: dts: ti: k3-am62p: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-topic-am62-dt-partialio-v6-15-v5-3-b8d9ff5f2742@baylibre.com>
References: <20251103-topic-am62-dt-partialio-v6-15-v5-0-b8d9ff5f2742@baylibre.com>
In-Reply-To: <20251103-topic-am62-dt-partialio-v6-15-v5-0-b8d9ff5f2742@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1357; i=msp@baylibre.com;
 h=from:subject:message-id; bh=6hGcnBOkrSMQIKieC/McV84XZyXymXT7FDaWvZWNWbs=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkyORVO4zlYb+XjuFNbb80/xB5vjh8z7fb2SysedJPd9r
 +Va+JS5o5SFQYyLQVZMkaUzMTTtv/zOY8mLlm2GmcPKBDKEgYtTACbifIiRYVkAL4ton6lHQkOp
 oNsa8dIOnRAu/5D2CT6CruxODC7LGRkmv4sUdeM/JFNwb/Ixj7SuDumLy3y/7lN7VnWE8R733BA
 mAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on TI AM62P SoCs.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
index 75a15c368c11b068430362fe0b8d2d9ecc052588..c69e16f16c835489f2bc5cba158235ab955347e3 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
@@ -44,6 +44,33 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_partial_io: system-partial-io {
+			compatible = "system-idle-state";
+			idle-state-name = "off-wake";
+		};
+
+		system_io_ddr: system-io-ddr {
+			compatible = "system-idle-state";
+			idle-state-name = "mem-deep";
+		};
+
+		system_deep_sleep: system-deep-sleep {
+			compatible = "system-idle-state";
+			idle-state-name = "mem";
+		};
+
+		system_mcu_only: system-mcu-only {
+			compatible = "system-idle-state";
+			idle-state-name = "mem-mcu-active";
+		};
+
+		system_standby: system-standby {
+			compatible = "system-idle-state";
+			idle-state-name = "standby";
+		};
+	};
+
 	cbass_main: bus@f0000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;

-- 
2.51.0


