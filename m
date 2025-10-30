Return-Path: <devicetree+bounces-233124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 707C0C1F404
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:22:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C63C9189D1F6
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C09423431EA;
	Thu, 30 Oct 2025 09:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HQmsm+9H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B308B340D98
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815949; cv=none; b=XIhr4v/IExgEFMJ8AhgfIq0tOgl+j45pudvAAkro9fPRdQ02qI1z0FXvYYC5T5pwYBuVMZUkRyQ8aGI13lFpNZQncvuEOSpBvlqXjOfKE5vtthPDCQ4v3lZagD4hYULTljHBVl0cE5YC99gkfRzA5WnB7qTNfd3MeYI+NISzSFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815949; c=relaxed/simple;
	bh=6hGcnBOkrSMQIKieC/McV84XZyXymXT7FDaWvZWNWbs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IoFd0/5/HqLy6gDdDEVQe1lSm76Ps8NLPSk6Xgr5DMgiL8+xl5V1F9rm7V4DFugStixmMh15Ilp0y1TWynP/2a0Bpk0yiSbt9jZu4upxf5fvJf70koYrw4mbQvoieWfo9qnSiOhnvprV5pKJWdt33aP3QDQsJwYgRzlrH2gKlOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HQmsm+9H; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42557c5cedcso473020f8f.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1761815946; x=1762420746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wJeAn8jSSo6/JIcJaohDppo/oGstUTXUuYjdPwTMcs0=;
        b=HQmsm+9HCwMIinmC/YgvOuS5iRGR6YU/89IBhITE0LlrJciHmRGaH80R2S4F2bncdO
         gr1zy1RyoGU5Pf986rS+y5/a+s65d8h7b8EyhUC14ywoZL4f2WZXj76ngIXgjmadPLsU
         YV+Alg5qDIOBR9t/zaGcIWqhjHkjB3ldZB/OljKSGau1ZY2zKaab7VCY4341hIncoG8V
         8Ro01Dspa5yST8+xFQdot7/qefo9NjgTUjGNpwKL1jCpJo8IYiRs2xZaT1G2dyPeD7tQ
         pG2SI28Tia9uTP4FSMSJkBqSC7r6Mm1P2LdcLtr7L/0j0ySpqfDA4AUM6A7F9OuErUwk
         z+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815946; x=1762420746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wJeAn8jSSo6/JIcJaohDppo/oGstUTXUuYjdPwTMcs0=;
        b=aCYYUmMX+spRrFcSPXVL29K003sBuqqxKU43hotrUujipIklUKSyDWYbZDLcxoE3GT
         Ru0v5sjYA5GHik91bKaaa55HtWXxE3XFat1ARf28WBxv21Gb1evbCyfbfVLrCpxrczOq
         SyM6JOdUsA5i/9zeWyHJZOCSI9ZLJCuZwltVQRq8sTIeQ/NadX7qy0zUG+VAXFTF5ioL
         jrF84RyqgLuvkOLCiTjMtD/bB23rAFBACeO7T50Kd1iiLlhnxZSp3ruuboZZHBStO1/O
         TMhMJVb/SMJ07u7zNGX7LYVxbn79x+EFggnDfc0leblxvkhsl13LUBOHjOVtcyYBP1ns
         8tOA==
X-Forwarded-Encrypted: i=1; AJvYcCXbh6OJPbJmBdRGA7LZiDtRmy+w9ykdW9rkG1NXReJ/L43tohscLZBE/IRIUAtpehH36V31CuDe1JJ1@vger.kernel.org
X-Gm-Message-State: AOJu0YySLrHFM4h+AAwIjIGxscrTZ2sUa5cSPBh6GnI7VrVgwTAq7/9H
	ERPqWtN2IeczjJeaqacpgNlpGCUcaQZGppEQfHfo9hFpTGudH9U3yJR2E4ovEzIOQHg=
X-Gm-Gg: ASbGnctH/d4zE79GWwQkp2nE3z0RjLwOqU7Yrk9ATtuZVP09OFSJ7CgSSwvB3nKtGqp
	bjEy0AEh9LS3vK4S7beUK2vCi+Aq86O9TiBb3EoipZkOsKScfp7I8NmgTHm+zf79mBquVWkHhuL
	mf0kg8c4myjcPp7niFRO1H3xD94LhgwwuDSBhOvdueuMSe/xvJw0P5QKSG56JWIB42C3SPPUbpG
	gmruUTXhvhBdSEcW0XvJx9kJY4dkTIjcuIcXp9Dr5JvLJaSoij46rfZRAUNYIGGFTabw9EsZ/Lo
	/KEXUoCteKBWBn44woeN4DafFbMiVycfpbvY9aW8Qp3xkWS9qHer0Ok8By+ipy7f01qnwlPjqpq
	D0JvgMOIynxYhgvSKtH+IArbYkvJ+FmrclMx+vr7xiDhvzQOcxEQAQiRumme/eOnrhaM4gECG77
	+9/G4eXKQF
X-Google-Smtp-Source: AGHT+IH1PgB1uMdxkq4IGP5D3051kFV2D7hdhJU7IzYW8jXnJKiozXoXWL4JvU6/d2O0ucUtSXr8nQ==
X-Received: by 2002:a05:6000:2204:b0:429:9501:c9c1 with SMTP id ffacd0b85a97d-429aefca849mr5070963f8f.46.1761815945792;
        Thu, 30 Oct 2025 02:19:05 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-477289e7ceasm28861635e9.13.2025.10.30.02.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 02:19:05 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Thu, 30 Oct 2025 10:17:25 +0100
Subject: [PATCH v4 3/6] arm64: dts: ti: k3-am62p: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-topic-am62-dt-partialio-v6-15-v4-3-6b520dfa8591@baylibre.com>
References: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com>
In-Reply-To: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com>
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
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkxm3fS+LRssj0xiOlaZVtNT+GH7qynvDA/MvX3pcO+Mn
 VEWJ74/7ChlYRDjYpAVU2TpTAxN+y+/81jyomWbYeawMoEMYeDiFICJFNUw/LPYq2zlwPRVhP3z
 Ea1PkXfdXtp4VvftW2efsE+F2XTKKVuG/wmaiVMqxDZM1fqs9NFkh5TOh8CWt7F3hKSvOOovWX+
 rhQMA
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


