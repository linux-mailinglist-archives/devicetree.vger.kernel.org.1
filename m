Return-Path: <devicetree+bounces-223080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EE7BB0BA2
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:35:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79B0B189E9C9
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F302925A2AE;
	Wed,  1 Oct 2025 14:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="26O49qbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11788259CA5
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329320; cv=none; b=jt8EslMp/+1iNMNag3FABW/EdXWn8NmG8VyUaMGsQG1Vmzfgt4lRUryBQwarY/aAEkY9xbfx/FHnIV3DfhqSQ4tfqtforMWN90xmiF8NofrWPQugJ90LNcYApJjKsIvAyvGGowvoq8+H2k+ltAoE0P1fMyfhpFbTdVK5K6P6WnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329320; c=relaxed/simple;
	bh=ewnVTjrK+RQoWcZSJk3a3VufQN4Z70DOdAXgMXn6M70=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QR0JgmTzvdbuKHQSnfmNzN6ByN2JktXsZSHDCodkZHdSiq6DsGd9xcCdieYaghtkgyf6H4vIN/pPdFjQaCy5sppS9i1QMUebLjgpVUIN9V3Kyn/1LuurogNfFnGCz7jhdg4Dd8KOXomwzPuXD1kSw5cKOsZZQBT6CLsrribAe6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=26O49qbp; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-6228de280a4so14209216a12.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329317; x=1759934117; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KA4oUZwX0z4qIkAync1NbIUw+gj3BAYqhFw1et34T6w=;
        b=26O49qbpQIj86l/MfWNmxeoI3v7sEnG9kVvl8eC2UMQDC8D3AvYdK1fZU/zKpGhO12
         Wpfvx4ZYqALFipf21PJd4IyB5ic4JdzNhLu5E+/QBp6+zZKCq7+Wqqq9boA4GeoqkCDH
         gSu3Jw4I/ggu15yGdichxuY8ljYSy3O6He10Vygys1nTQ0PWwA5tk6+qzeOOjG3fejKC
         PiQajieQlg0lvPcuPbRsYLIv23+HEvzN5f+oAJTQYDPa+eZ2XbOl1KHs9uy4VXj5sknQ
         qyeNx5Zg7smY3HLGgX8vOdvLgdFobPf+CQot5nPIwyCgXDbvb5smCN4PrUFhY2rz3e3z
         M2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329317; x=1759934117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KA4oUZwX0z4qIkAync1NbIUw+gj3BAYqhFw1et34T6w=;
        b=RpAqGCsuPzWRTKgQxFfWftK8LFEi/azGW4Dn8RU1H5iLIO6PMM1JrUtbg9stLcyBpQ
         pEJbcW3xsrCgIMtIW9aYVKtgLscT8H9AXGMVnyuiZ7i8LJQWzpemlbKI5q9IAxcUMRoL
         adrBsg6H8e1ZTxVV8HwYAyrRXiRED5j0xcnNei0BiaFvuo8FqBkWg2ib3IvPabB5U/cV
         3qGvfl/y2KLkZ674KdEmLHuPoONhBtViYLw4maM3d20WNlEUEkCpCehZeHBXf6paLAo7
         dRFsqlk2gpxbB76OM5NoTu9T8BfxXYE8Y53MOsfSy+lZdPiLin8eO9LzCTnkP4YM8Wd6
         GxCg==
X-Forwarded-Encrypted: i=1; AJvYcCVrE/zxiycC0QueHdu2vh5W2TVJVQt+4BK85IbhH376pUmV02VxA9FlMVtQO2d564Bx1wixc+gtvmEj@vger.kernel.org
X-Gm-Message-State: AOJu0YxcLcRpEGWj/noW6msqHY4ydG/6f+UKlhnS7bypld3SNQsHlVIX
	EZVbt8KZJ9zKbTbEpmd6d4Gu9QBThZEwxgmDUMapk1QItuuuoyfzxbqQ5C4vFVTYgLg=
X-Gm-Gg: ASbGncsbQD3Zj63mlL1yrnKRUuWRvONnxFwdVbwQFHDrOFDY0CRcgELC7xb9kMXvkkK
	s71aMmPZ8kEVKFSuZIVgLcmLc7g4/ZOilkmOKu4lq7EQV5b4QJ6Z4to3QbA8YX7t7Q0z9cnJASM
	xlajGdr/khY6O4nomr+Inb2nJh+dcA8IPgSE3KyLp8t9g0oJmiaaxukPkWJbsrGASERaJcOj2jm
	F8QtQ+JwlyC1wsHohyLEI4tVzQ46K+gulYq3Ti8s5rWcIDAjgdvBQIkM59NtI6OTKR36aEkYXEx
	3YEh3jcnYWB6AFCGU1Xq+gk8s+G+yRdp/jYXfDLesUO6QJizHqf/7io3nirlDTJ+SfXfcxZSjGx
	E3mAKuqmO7ZIffqewKMXccR8VGl6T7qzSVx6YC3ZX5V1e
X-Google-Smtp-Source: AGHT+IHK40bR0n1o6ASxI8wGZaOkHpOfafTJRZ22I6XGvERFOv3c+LhRCpasy8hUR+2MejFied1xhw==
X-Received: by 2002:a17:907:d28:b0:b41:c892:2c70 with SMTP id a640c23a62f3a-b46e5460df8mr439394966b.49.1759329317375;
        Wed, 01 Oct 2025 07:35:17 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b478d9e768bsm133692066b.99.2025.10.01.07.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:35:16 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Wed, 01 Oct 2025 16:34:14 +0200
Subject: [PATCH v3 2/6] arm64: dts: ti: k3-am62a: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-topic-am62-dt-partialio-v6-15-v3-2-7095fe263ece@baylibre.com>
References: <20251001-topic-am62-dt-partialio-v6-15-v3-0-7095fe263ece@baylibre.com>
In-Reply-To: <20251001-topic-am62-dt-partialio-v6-15-v3-0-7095fe263ece@baylibre.com>
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
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy71n/+VpZNOnb3UIXInW8vvmzozJ1ect9q6YEfOfNq9
 9WdsXI43VHKwiDGxSArpsjSmRia9l9+57HkRcs2w8xhZQIZwsDFKQAT6bjNyPC39Zb1iYi5Ub82
 R09+0+Z29/K+t5Zqbx227xZfXiwf1a/DyHDwRrHVzhtxe3dum/lOwEjoB//cQGXHBr446733yy/
 ZarACAA==
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


