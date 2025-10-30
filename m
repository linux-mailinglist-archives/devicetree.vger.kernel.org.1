Return-Path: <devicetree+bounces-233123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0677FC1F3D4
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BD51D4E821B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECDBB341645;
	Thu, 30 Oct 2025 09:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iKZiFrgA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E421233A026
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815947; cv=none; b=WdU2Yx6zdKANuyA0+ML4fJ2+krEiiMjErNhSXLNRse8eEkyL7jmQxddZz4NTVvrDs8nqybIietiGYfEMo1nhaPg+r4W3JiZz81Bs6mli6jek61KtyFOLEn2x3gsBc5skcl6HSInAWOP2ZE9cJxhuIE64LV20+iS1PjeNverOXas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815947; c=relaxed/simple;
	bh=ewnVTjrK+RQoWcZSJk3a3VufQN4Z70DOdAXgMXn6M70=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KrUhpp9ovg6QHesJ24id/g0VvqnU/wR+vu8v/b+89hugl/LzA2w+wBA02ndDBF4+Mo/5ppG7YV7/iykXGcAXJ+FnbtOoSSxp+mByaHl3kBSJsnUMnlyE3W80WxaRbfziFr0v4hrJcFZH3T9shRBjOrBoglD3kJ2ZaAOKg9kx3y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iKZiFrgA; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-475e01db75aso5057995e9.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1761815944; x=1762420744; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KA4oUZwX0z4qIkAync1NbIUw+gj3BAYqhFw1et34T6w=;
        b=iKZiFrgAhjjSGVmhfDnJqY2DMPy2Ux0ORw0Izmmo34+iuc758zVgi5wcm0s9wFEW27
         dbtXu1q1DWslQEufFE4txOPUa+WxvQ7NlMXEkEcT47lC6s2myAQSVtIqNyW+MryVIKjC
         ZjbbcChqRaPkkG+dqxJwWxGltYHlq3tAMBMsmET0ISXDTQUJ8FrUuyvIzMKIQ9ydi7G+
         BAlqaQmiWLBVnj52jiiAuCbqTpFcStXOgJKRxosh13ebRuhrLPNO/AY5l+iTjf+zMT78
         6qg/TTOLbHxshzZysxL6/sr51vZC6jB+nmBvXa04vyvuFgiXBMvY6L86crUQnsmDbYpc
         OcAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815944; x=1762420744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KA4oUZwX0z4qIkAync1NbIUw+gj3BAYqhFw1et34T6w=;
        b=PZoSdbqQ4nuwiX3KEwSnjbawTnEIz6093Oqjrm3CU8jRwZhrsXTqRfohwGS+VQXcpg
         c4NnEUAaHIO5uqXddBqXl5Jd6ivdNL93fnTSGyyi1hh9ZM+OHPIfTxgYpqgiv0sYhF0G
         zhbucpQqJnoGSv/Opm7qSStRM1UGb9/bUx/5hMYvU/ziUlWDThsrKleOnN37jOZO5kAB
         ebdGUwsR1fj46n6vBSAn6WjVJDzx13sVveT9DAQYhcPYmUjRwKjdcc0JwouqkOdPX0uq
         dTH2+dWwlrr+HmaXMsoLw5QpAB43uTSqEoA7kQB96ONcZAwiG0o1nXniVA80prSOSjmX
         +cAg==
X-Forwarded-Encrypted: i=1; AJvYcCVyFN8C7+BeOV6RIF0rcOhS6uhQ+R882SsQSk2qBXkmxIPagR3SpYeoo8rFqTANkA5DIn+MAsfXCNOE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz804SxGJC8Fqi84O3ErerK8HvOfY0XrF0wKcWFY0Izbq4cU/1s
	Yf9gTDZ2amkF00ygNij99AlMGaIVA/7hwLNj4oW3RxpiSzWSbNRlhba0UYgWAlHrx0dIpEie3FO
	/YbZI
X-Gm-Gg: ASbGnctd4z0TFkAxipAFRhBpaHIxjy7yaZovaZoeVHoxvAz5CeYROROk11xWbfOb4wD
	HRLO3NdOy2X4+aWua5JOWkfFiL4UPuCbCMfc0AdhTtzeUZcrAGejxtUzGsihVTRHVlCG6kODZC2
	IdTnk2n/oPxGJi36JdRSHLLMTI4l7CLon25u9HlT2fM+/OhPMAF5PobU+oFw25z0MSyUbxjsoFe
	nY7M5FHq1ubu/Q3sGvGa3Z4xdaEnSZrxc9fhu90eRckJPwg5TGQfbwdVhV9sKVk1Uu1RKQES0fG
	0Uv9zFEkwitg5FygYbHw8nfgwqM/se8w3KrK9GKSSMeCppfWnTj3rjMiwhPiXa9zlq07yt3Y0Iw
	MnmdDYY4Zx4cGQics6e1X7jmPIBjClHCxv3IgqZA8X2sAgzBp0+O1O+QMWd4/xx8u2LqIf5YeYf
	48b9w0t4lR
X-Google-Smtp-Source: AGHT+IFhGrgcbFfOulX+iDaGdlSnxfTr1i99B+BANP4h++UJmhUQbypXcv48n75+Y9SSCx3IGH+2gw==
X-Received: by 2002:a05:600c:190d:b0:46e:59bd:f7d3 with SMTP id 5b1f17b1804b1-4771e3a88c0mr46479125e9.20.1761815944052;
        Thu, 30 Oct 2025 02:19:04 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47718ffa42bsm63685265e9.4.2025.10.30.02.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 02:19:03 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Thu, 30 Oct 2025 10:17:24 +0100
Subject: [PATCH v4 2/6] arm64: dts: ti: k3-am62a: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-topic-am62-dt-partialio-v6-15-v4-2-6b520dfa8591@baylibre.com>
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
 h=from:subject:message-id; bh=ewnVTjrK+RQoWcZSJk3a3VufQN4Z70DOdAXgMXn6M70=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkxm3fjTuhfSU+bwXd13/oSqtOSUEHnf3AAOreJFvwSZ/
 rj1nVraUcrCIMbFICumyNKZGJr2X37nseRFyzbDzGFlAhnCwMUpABPZ+YiR4dZmWQmXJb7fUkw5
 Al26XJlijr9assB+1ffed52VO+Se8zAydD4s+r7BMfuOj7FvimzBsae7ZPevyX/Ye2Xt+Ye75sc
 v4QAA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on TI AM62A SoCs.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a.dtsi b/arch/arm64/boot/dts/ti/k3-am62a.dtsi
index 4d79b3e9486af18b8813a8980a57937669ff6095..31b2de035f0f748e34b8919f90251aa0551d9b32 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a.dtsi
@@ -46,6 +46,33 @@ pmu: pmu {
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


