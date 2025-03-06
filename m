Return-Path: <devicetree+bounces-154794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3B1A548FA
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:18:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84AA11895471
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29C4A20D50A;
	Thu,  6 Mar 2025 11:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qNWJcxXr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED8A20C48E
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259771; cv=none; b=RDQSjJNje0v/6PpTxNi1ZOFT/nALfpSXImFYE2UkHE3iBwmplsK+pEuVoCbRC0YIVhzf4Nb3tnvWFDHZtu7TuyGY09G2YYkklfApEDy+BtmcJChrEH4kGosVWAHY10868pEhOLFg1LQSvgEt5f1jztpiRABqel/qpRoZIeWY5gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259771; c=relaxed/simple;
	bh=d3nIpQjsg552gUrVGPgqy9iTBzYcp5YGOFeSSkRUy00=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B39ptB5z9gOKWtNpM0QnGXVwpcyA8FCefV5jlc3ZRPm4YGw5Zoa3P6f3J0U1PrPmVa42TC1FKeeD4R3MJupvTRzPcNrfiwYKcgXSzyu4YuBdN1dWmZJIEuSmN6ubdvqxaQ7e92wdoR9nWf+zdCFopfM2Gi3E1cB+GCekIdz2hq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qNWJcxXr; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ab771575040so329542766b.1
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741259767; x=1741864567; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OKuPzbZ56Sy/epGKjdADXzKdvm5oH6KCiW1QGMA8BgE=;
        b=qNWJcxXrt7czJu9KuJvJh8jlbbepfvnvaXoWA90QL75ATxzoAnO7LDAqkQ1BKR7AmE
         maWDa7x9Q3+mTvfKT2xxGIvr/jgzh81JvnpzOagLP8Bs04H3cUkEY3JfmMxvqz7KDjA8
         h7cOwjGe8WkLUCYVB91oDT+lSgcxlw8v8yl0iGlIqVY2dOQB/Kdr4x+YqSE7WySVSloN
         4P/mrbVQG8jvMkGefQ9XPTSsImx6+jDgE+IR7Le+akl9Efr28N7io5Ecx2/QsiOpCn0d
         irXvOUc9X/iaEV8Ih3GZuu1nIMaI8VekTYoQH5KEDtJ1x5s6nbbBLI4YdA0aLPYskNTi
         Tc2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741259767; x=1741864567;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OKuPzbZ56Sy/epGKjdADXzKdvm5oH6KCiW1QGMA8BgE=;
        b=U3h5p8wLvEIr9aKSsqaodpEcadXpENTRf5fkYxshdUhiXkJ6DhP2ais4oYanNstOH9
         kLz4zZvN3Sp8/id+oyO71uT6355vw/k3uaGEtWoHHEmMsLPhc9el1IkE5mfCY3CW82hy
         /yO9YzJBiSVg6SAdcAisA5ImLI/RcXBnb1Tw+j3tId7JcZ2a8HMEUA8tNPyBhkDq0jU/
         6ADJCj7vAK4tSgvE7iijC6plO0Waqe1lcD/4mhotRVi7cM5DtWPebxdIz8VGkV0t4aTy
         QN22u0R+WogsR9N79bA6FRRhMSDhF0drcHBV59pP711kGHBwuI7z4z4dTDt1UH66NvSs
         Z1CQ==
X-Forwarded-Encrypted: i=1; AJvYcCWU3F0uRZcYnSLL1n5l7RCtARE8uAiGbvGt6XeuQqJk33+jfl+vcQdqfnIVPmRF8eyJPAvOBvTaaG0r@vger.kernel.org
X-Gm-Message-State: AOJu0YwXOEgjlZ2VlTogIo4JcwPQE6dHtwOC+W74JG8zL9uvUoe+BQnc
	W+17dTb2ZRN30q6MNVdYPY0+3iyaxRQu3FQz+VaXbkQ0HEPIYd9H00EleghjeE8=
X-Gm-Gg: ASbGncvAf8DEasG7nFrqO1tQTjftJ3vG7ayImHcL5+Vbb3kJGzoEVRFYbG9fRNfNjLZ
	N+IFAtAok+d/ml+JuRfHf8H/M/I1d8XuW4SQaJDzNMm6KMkYt60ws84uaFRkPiP0lU9BKtaILy9
	TnfnxGu+O8HGPP7kxXaCnDktlSgkOUyVhY/VycBWPUqhEu2zi4RpTzzK2FZdbe2NexeG8kHvDKa
	umAtad6S/1q3qJ1Wu14M1dIC6pQfEbHXTU3cKkgH4Gn6jrDSaIKNDvdallmONslM+M0bwmI8sM4
	49uayEMDnfl/JVx805mJ08yj3p59V74nhtuS99Ct8Q==
X-Google-Smtp-Source: AGHT+IEFVSa18GEIJgxa7KRMd3iFVsH8mF7vScmeGZEq9ZjRWKNOLFR/ZTMFQ4Nw9AMvKsYhWHjA2w==
X-Received: by 2002:a17:906:11ce:b0:ac0:4364:4083 with SMTP id a640c23a62f3a-ac22c54f4b3mr263879366b.0.1741259767248;
        Thu, 06 Mar 2025 03:16:07 -0800 (PST)
Received: from localhost ([2001:4091:a245:8327:80ad:8144:3b07:4679])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ac2394389cesm77908266b.27.2025.03.06.03.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:16:06 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 06 Mar 2025 12:14:47 +0100
Subject: [PATCH v5 09/13] arm64: dts: ti: k3-am62a: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250306-topic-am62-partialio-v6-12-b4-v5-9-f9323d3744a2@baylibre.com>
References: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
In-Reply-To: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>, 
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, Kendall Willis <k-willis@ti.com>, 
 linux-can@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1345; i=msp@baylibre.com;
 h=from:subject:message-id; bh=d3nIpQjsg552gUrVGPgqy9iTBzYcp5YGOFeSSkRUy00=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJPNl86LNn5Me/ikXMSPjKMS1/t1V1iu3wuW8Cnukl7v
 261c96e21HKwiDGwSArpshy98PCd3Vy1xdErHvkCDOHlQlkCAMXpwBM5HQDw1+RH723J4oXXTlw
 7Z/VlrLErYq+enNm/pFQjzZt5Fp0UX4Dw//cpVfvTklJWnuBmTHr0JE7dmEl11XaNwocW3Kh+3r
 JdDVmAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on am62a SoCs.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a.dtsi b/arch/arm64/boot/dts/ti/k3-am62a.dtsi
index 4d79b3e9486af18b8813a8980a57937669ff6095..0b58ade9561a3076fc89f3b85dbafa969285162f 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a.dtsi
@@ -46,6 +46,33 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_partial_io: system-partial-io {
+			compatible = "system-idle-state";
+			idle-state-name = "Partial-IO";
+		};
+
+		system_io_ddr: system-io-ddr {
+			compatible = "system-idle-state";
+			idle-state-name = "IO+DDR";
+		};
+
+		system_deep_sleep: system-deep-sleep {
+			compatible = "system-idle-state";
+			idle-state-name = "DeepSleep";
+		};
+
+		system_mcu_only: system-mcu-only {
+			compatible = "system-idle-state";
+			idle-state-name = "MCU Only";
+		};
+
+		system_standby: system-standby {
+			compatible = "system-idle-state";
+			idle-state-name = "Standby";
+		};
+	};
+
 	cbass_main: bus@f0000 {
 		compatible = "simple-bus";
 		#address-cells = <2>;

-- 
2.47.2


