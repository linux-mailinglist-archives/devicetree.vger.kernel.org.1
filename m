Return-Path: <devicetree+bounces-234372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C2EC2BC21
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:44:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A42D18950A0
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:43:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ABB631281E;
	Mon,  3 Nov 2025 12:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XgykU/+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C123126CC
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762173617; cv=none; b=FwBoxSzAkgol0cR0eND7UYqz4lVZ+11zIdt13x2h4yIdfYTcyqzBXLz/DuvbRsNNlezYuXhOcWPBOTJjVRZiErcEU8DXkEvVcRnxhicybS63bkxNWGRc8lscL4vfNXqLCVnSB5TR5h0g008Sq6cTAQZJbfgWUGlOAZOXadRKUaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762173617; c=relaxed/simple;
	bh=CD8jS3mi5l0ptE5mloshmhyPStp+3Ujo5r6yvkMZV70=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BBHkXa1XhqJTzOxakHwv1EA8POndh4CYVc136OzZaMI+VMjc1dWFtDM+S21HFFpcSBCoZzON71qqCSznz9YxwtPdegXntTZoOLXRAWeBMrSA/Kx7kjdomK+zOcGrZFms0uQHRuXulAAOgeHEQSabRCGRIof/xSHrADh3uNIj6p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XgykU/+C; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b714b1290aeso90260966b.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762173612; x=1762778412; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qKLAYC4j9KDlgpKElsaQCZMFHUJovZT20hAAdQtCFec=;
        b=XgykU/+CD5Qwp1PhzYoPphmzCcSWqmhK/3/LQ26vf7A6fiJmbKWk+FcMgw6XYzhrXT
         PSfrDjyGECozGJv++a4D6B8CDa1b0N8BrcqfYGZkVb7KPHsROU+OehhmQe2rqEfcFxIY
         4YNs4XPU1a2qRvp88EN0LlT8t+upa2RnREqpboWeKV/KKUtWgTvxwcNb2iHVjkbv8iqi
         xlAch44sq9GE9Bqgci+cwPVzXaP1mloNtu7uHH9EQhMIm2xKi7gC/pZCodiO7k7KSFgs
         IMsWzWA01D2vMPYqg6RP2N+N8wMpAM3mpl9dknnpelKtm/bg3d5XVzwBaOpKcHjkFIQ2
         B+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762173612; x=1762778412;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qKLAYC4j9KDlgpKElsaQCZMFHUJovZT20hAAdQtCFec=;
        b=Xat3Xb7XTTYGbaqFZHdt2dYQkha3+tJaE6a8ZrLAYvaFKK3gD6NN9aQotnMjHghLj+
         Xvmvveo7F0V9ixoQBShN1/IhiWAGAgnkbe+BlgyP6Zh5pDjoho0CRAH4q/SvQpeJNc1s
         8zBjyIBytGkHmmFQ2bTeYfINBjzkAscMjSJcJvSI8ZHTsmdcqkzG5r2yEOfM5RE604Vz
         Xehd6WLuFtw9cuvaZqz7unwf4NnoYQ8fj3XxWtjQQZtTiyqIggLvH4cRW7k0zqXE/dJS
         2m+FzfE0cmoD3jJIGyMg4iDXhbUnq8KMMeGO8ADCYRd94vmNeVWiPO7gzwKhr0u2V8KZ
         UcqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJTaR4mEKbRGcVqIOfqO5ci/FSLjqx6zf8T92k6bjzkmy6SYERiir1UYS+LBtgMKOm9qweJkulrZXN@vger.kernel.org
X-Gm-Message-State: AOJu0YzzcRoMcTthiutGzE6iR9/hjNkhWs9lhBlVoo08RnmQmvovSxZA
	L4FHmJCM+4wZFRW0peXWNJOuZnU9Suob+k1YzxNnoLgiJmjuztZo6xXLgDTIW6NxbAA=
X-Gm-Gg: ASbGnct4cmXu/aE0Wgg0mVzoL6586vQVxeL5KTECHZZK8trvCPTdO/k4UEJTtGSJs2k
	5Eg9Lti3gv2z9laP9j+aNRr3oXM35DOxYmNqYMHxcWdsEnxqbeTjqwzrgjvj+kG5kduAizFtJVg
	PlY97ZhRTcR6mh2Aynb8oN91m0X5OhxePDMR7MgxauIjborbJlx1QKxJFp2KKdPTGO5VWBDXdiP
	0FOmoQgSRmWJdZc+MrleKG5/CsQCutP4lFyNMLsIgWCyJvPzXtgJNoqHQP/L4ar5KaYeNKBT9mc
	QwiqrBxgWZcglHYb2AQu6tEYni6BtW9f5aRFQO9IOSacF78PnpPO46fR0ErGV0N7FpxRUttXWbL
	7ZGS0ibsJ6S+lSrzMn7TlOKfMVKU1mmyB7EqEzAv5pAKwuvYAiRxRzAr1pEd70y3rvOfs+47ymo
	7aSAvxBQ==
X-Google-Smtp-Source: AGHT+IEJLGHUCqJbKodNhVUSRCa7L5Wjlnz8ENzdksAajWD/eFBThYHb+p1nQw21ODRf5Sv8XEPCww==
X-Received: by 2002:a17:906:7952:b0:b70:df0d:e2e9 with SMTP id a640c23a62f3a-b70df0de647mr267854666b.44.1762173612081;
        Mon, 03 Nov 2025 04:40:12 -0800 (PST)
Received: from localhost ([2001:4090:a247:830a:fe22:a8:f29a:a5c3])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b70b91e44a8sm382716766b.33.2025.11.03.04.40.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 04:40:11 -0800 (PST)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Mon, 03 Nov 2025 13:39:28 +0100
Subject: [PATCH v5 1/6] arm64: dts: ti: k3-am62: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-topic-am62-dt-partialio-v6-15-v5-1-b8d9ff5f2742@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1217; i=msp@baylibre.com;
 h=from:subject:message-id; bh=CD8jS3mi5l0ptE5mloshmhyPStp+3Ujo5r6yvkMZV70=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkyORV0vpu16rjT3+a7vb0R3TszcFcrt92hu81YxJ38VX
 tdzoj+3dpSyMIhxMciKKbJ0Joam/ZffeSx50bLNMHNYmUCGMHBxCsBEYpwZGd5tfh/GeyTA/SrT
 yRlZ7d9XH5n25+zHmMeLmmTOTVwo+X8ZI8ODHdKH/mUcedG6ce2kdX26gkIFflmaHZyJM3ttpq7
 92scHAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on TI AM62 SoCs.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62.dtsi b/arch/arm64/boot/dts/ti/k3-am62.dtsi
index 59f6dff552ed40e4ac0f9c7077aa25d68d3b5283..b08b7062060ca12ecae83917a831ee779f1a288f 100644
--- a/arch/arm64/boot/dts/ti/k3-am62.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62.dtsi
@@ -46,6 +46,28 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_partial_io: system-partial-io {
+			compatible = "system-idle-state";
+			idle-state-name = "off-wake";
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
 		bootph-all;
 		compatible = "simple-bus";

-- 
2.51.0


