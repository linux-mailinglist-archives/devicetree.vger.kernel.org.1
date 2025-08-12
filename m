Return-Path: <devicetree+bounces-203657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C7FB222DB
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:22:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7F393B3B4C
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 09:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8D892EA142;
	Tue, 12 Aug 2025 09:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aNeRnowJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5232E8DF1
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 09:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754990198; cv=none; b=RpyuIguVWRVBMPlqaMRuAI+IN5D1AUhZneYeCdeHbEwtYpMAfRxJgcqf/Sv4L0fZ3pP+Jx/iUEp88py6bWwKtn08Z6Uge8ErKDhnpS0AFU5URFcz46cBplm9P3KZq/8Z0UtrSMSu7aBRvVJPf2bEup9vyzrVkgXNamh1RI0BZgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754990198; c=relaxed/simple;
	bh=NQ0W2prGrb5FYMdevsZCsW42+VX/kA5sT9snVK2MjKU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f87sluwiPsl+hZazWD6FbuhdB5ScE5jE0lMeFs8BTCnAkUAlZG5EjV2oSsVr0sdwlFb7T34mI8/o07on/uG+E4+x5NvyoOp8x84eTKi48vZta3eG5PwXk02MbNY2h7r7zCpbG7JC9RFlVLEHzEXcgnJzSjLnkuzjj+Ql1I943OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aNeRnowJ; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-af93150f7c2so796407066b.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754990195; x=1755594995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VdmQiv6cMD0TtqYMo1t5mZtX9ofrz+6RM04gqc41y1M=;
        b=aNeRnowJ44Fvr+xVFzby6AszBoL+m+d6KKJvRf8AOSdqhnt3iR48aLUinzG6V0SPDh
         iZ3No3o7gr3VDtxiRcfzKF1J4jNtNYHuraRE2dzjmLsds8e6/6tpH2LGQjaVZuXMU9Tb
         gEbu0KJDNruH4rqfg8GsLMhdmvbBd8i8Ye6lN2DqsoJMkAmRowrSiyaUxRl+FBv27rjQ
         wJrE6prEKdFE9Bmw8a7K+zrDQ7CMUyZ2Vv7BPdlbA94ZeIbtbmrVNUYwbwyQptWbuKLp
         YUtGJoIp8ZlJ3JD1SRCg7DcMXGveGjM3JNkIkgYTV0dRq9S5Iy6l7JzoV2uS5TgQJ6JA
         aynQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754990195; x=1755594995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VdmQiv6cMD0TtqYMo1t5mZtX9ofrz+6RM04gqc41y1M=;
        b=YmKzH/HpOzIbD67vDLlax4qNMK+cImEEHY9yOD0tLxzmZn3rUTXUNPNy832wcOtOdy
         4neKweLv/Xd/Xk1yZkIU7YSFiUKUh0GmaqcdHYqgn5DIR0ESsraa8JX1xhfBcgo90kVe
         2gmMKo9x5sZy/7crHM9jioUM6x6TbVjk7hsYtnHSw4RBS490jqUlAzROF46cpuCwliJu
         ex6Hy83CGAMgHyJ3RA4yD3KoHr5mEjVX3onVwJRqS0HdAbE8L5gJsF4b99qMh8sTwo7C
         wFkFbbK23y7AzDBGg5GZ49yZFM8pHKh+x/28t4uhhPJPA/L17J3PBysqf0Zo+TFIRZ4t
         bE0g==
X-Forwarded-Encrypted: i=1; AJvYcCVSP7VaPPuvtcBRFwQQ+HL1qTzFez4abHQgTw0pz+IOqRE08zh0zy9nlCGO7FaK5oMtdZfOhv/N8uJh@vger.kernel.org
X-Gm-Message-State: AOJu0YycDJBV0rDVsDAVe5ycFZ9PvrA2JX+naApojUsp0HyMF7r/QHTr
	mj1gH7rcx6nAUDCrDfC++p37JwpgrnsS7kzrMq0hoImIsvpjz0Qspt9L97fsiksDRvs=
X-Gm-Gg: ASbGncvYtJbmcLPwecnWvSVUs5j3cVXlwhz1L6ObyX3ZV7IfD+26UZe/zDSa2XyqTe3
	XWN0rb6ib86AhT41v3fon/K36u+q/zR1HTKre0e5UrWBoRqm9YslAZ8dhb0Q4go/BzLOoE6nNj6
	NE6V4TMJAzAg8XBATFQ1Psh30ghz7Cj7AaXN+kCDbLFN5j/SUXliuxuuLmIrI0CGKLGZz4Kv0sO
	zGBEM9hEfLVh+HJsZmYRCA8eGkZUutLRSsxvOX/YFsaxj8Cs7kXc9GN7XQkP4yoxKAXELCf75zG
	+MYJkaPQ7Mu8IQ0genkAETXkkuPkObtxPmNQzqb8LsleQNvXVd1i+GsNtVAwbILgdmrl4JcAOJj
	XGMomJ3uNbo/fwuHjnw==
X-Google-Smtp-Source: AGHT+IE/lSF9QPDKTg/7UPE6qm2SbqVvO5lbJE13BB6VOVUHEyhjrw4Mzk8zczsxQOEGqPcBNfspwQ==
X-Received: by 2002:a17:907:3f1b:b0:af9:a162:7fa8 with SMTP id a640c23a62f3a-afa1e1ecbfdmr208931866b.50.1754990195168;
        Tue, 12 Aug 2025 02:16:35 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8691:4b7a:7bbd:bac:c56e])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af91a21c050sm2165345766b.104.2025.08.12.02.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 02:16:34 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Tue, 12 Aug 2025 11:15:23 +0200
Subject: [PATCH v2 4/7] arm64: dts: ti: k3-am62p: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-topic-am62-dt-partialio-v6-15-v2-4-25352364a0ac@baylibre.com>
References: <20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com>
In-Reply-To: <20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1345; i=msp@baylibre.com;
 h=from:subject:message-id; bh=NQ0W2prGrb5FYMdevsZCsW42+VX/kA5sT9snVK2MjKU=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhozZbBGH7aZ+3HMy4fTC1QZs0a7zvAOTbBbMWPyrsHo35
 022eWeXdpSyMIhxMciKKbJ0Joam/ZffeSx50bLNMHNYmUCGMHBxCsBEQqUYGT6yvOwR/tv32ino
 n9IX9b7Y6zeD6mZNnBIcFMu3pcnAv5nhF/PNgJVtwQ98JB63R2gLPpW6s2LBz09Mu+2rw9PYN09
 OYgQA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on am62p SoCs.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
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
2.50.1


