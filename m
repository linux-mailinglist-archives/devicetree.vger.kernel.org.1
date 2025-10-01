Return-Path: <devicetree+bounces-223079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30019BB0B96
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:35:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5F1B1921A02
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC2825BEF1;
	Wed,  1 Oct 2025 14:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PPmL9fMV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059BA2571B8
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329319; cv=none; b=Z2gFpguiUVXGDRgX9UxAkGE0m9YMvs0er4tKGMAEA/VzFcowt68doRi8HtX2mr6GCMLqaPj7ZPC68mx0AzyDmiY7Vki7/50m6pqwvzCtn4+iIgrGQNGMpreG4jLE7Mu473sU5/kupAKId/rGCsRruJHDrWINZOLthHq++Kl32CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329319; c=relaxed/simple;
	bh=CD8jS3mi5l0ptE5mloshmhyPStp+3Ujo5r6yvkMZV70=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KfdzUwt2DOSzftzphk1Wln5iQtcLLIEunI4FtzE3BiPfYJMxFrGzzVSKafnLM39lYQiusn6ofNeujCW4rZVR1ZC26pIc4UiNLdebW1tH5IDO/iHbKMblp4ArPDd1A3CwEZOmVH92o7UF7lc2bpyGxSMLKoBZDQqv90VnJHjp4q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PPmL9fMV; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b3d5088259eso615516066b.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1759329316; x=1759934116; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qKLAYC4j9KDlgpKElsaQCZMFHUJovZT20hAAdQtCFec=;
        b=PPmL9fMVQ8vokFsk+/iGTtPqKPTGV5ooCcFI7zY086Mmi7tNxCKKqvBwF2IHvUJB4O
         zA7d71ZzRp+RKbKsgXs2YdeRf+DlNil7yEDLXHBP2+omCjNlu/u+Gpw8MEngJ6QzE7pU
         TusnMtV+kf7y9IkGm+mCi8ouaMlV9PeHl1hvk5HPubs6kkk6W2M23y9WredQb6jE61cC
         OaaQE/FDXh2v37+V864UW6P5nidDyX3LGb/lYlvfHipZoBT8AN21sLIVdWNx6icWaRxc
         1LeA/k9QD7v/9+LaYcZWGC3iaz4+34BB6cHppaNhDReJGgnXj0iKXEbtAM0gKQLN3Dmb
         ANIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759329316; x=1759934116;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qKLAYC4j9KDlgpKElsaQCZMFHUJovZT20hAAdQtCFec=;
        b=N778uJe44vI6JbifVrxIuPCGosyI4kzhRbWDX6JLZy+dHRcCJswAn4In/xGQD5Kv7m
         PXsIvy6X+FLiG85YjwQl2MjeSEHJI0h3VnwOX47GopeMV6cX24jzhTiQjwmXmqhZep4r
         O9kjjFTTa7wJ5/9VPzlIl1YvYk0yrfhkWhh/kOfJWx68/P/AcaKBtWZe+uQPC+xI5sM0
         G2+RAlr3BYKMjFzSjYUAKzImtCaXA1CeBD4uRs/v0DE2O3xHFDVIm6QI/vTfWPDLzLSB
         AsYlYmfoDpnLu8aPSuFLCMspBUm0YKigRPlb7gIQZIoY7vFFN80I6drl9Ohm6kUBqo/p
         uwcQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7CNFsi7nG9v+3EYKXKrLFLg38so4RIyOGpcOuV9dnQk/DrQjNV71IpC2iVna0yp+RzbeEsJ+Jycc1@vger.kernel.org
X-Gm-Message-State: AOJu0YxM69ONE44F/q6BGCpHMi0reUlzQ1lNjNib4uNPXjsyKb9Oo+xc
	0NCkUaRJ48Jcoay6yAa2WVbV3RP5n+9k7G/CO6gP3HOMdnoXRQ0nmHPpAKHGceOPzbw=
X-Gm-Gg: ASbGnctYxob+Ha0Ibc0KkI0tFJgzlYdmYKeurRznAxSD6mj3RIJhMikjWJY+4SSbJBD
	conuVVtOAAxlGju07Hoa6DvxsK5vTuveXl9DA+H8WqCuC55I0IHOgVONaa73N/AcrVtV3OK9miJ
	mFGWVQjlAJQgHiYCPdygqbVrW9rkEr1Z5zv3jvSCZwepfBwI/XbnvzXTweahwKZ8P2FoFFRmm0T
	JpjdM6+20rs4Tgx9jB1RV81FJwcqeE3x6IYEFuuLTVbTzmVp/UKJ0yFDTWafkYs1r2SIn2Sizdn
	mEwCKmKtEUXIbSGEAYsl+bBXcdYpFXPliCpic2x/Hp4Z0jlIjYqIvHgyHdQcQGH8h+3fb4Mp2eX
	DqAFS8dQpSiyj49TU7qUn+S2ck0dCxZbl4MzgiJ3nhRrY
X-Google-Smtp-Source: AGHT+IEYEURijCwuhDP0G34PhcYmv4fOEgcLLFjlM+TFZMLirjS7EIEOqa9JbLLvv3rtWABWVxPKzA==
X-Received: by 2002:a17:907:96a2:b0:b3b:9931:3aaf with SMTP id a640c23a62f3a-b46e22419f7mr453073866b.28.1759329315788;
        Wed, 01 Oct 2025 07:35:15 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-634ce748d4dsm8879086a12.29.2025.10.01.07.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:35:14 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Wed, 01 Oct 2025 16:34:13 +0200
Subject: [PATCH v3 1/6] arm64: dts: ti: k3-am62: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251001-topic-am62-dt-partialio-v6-15-v3-1-7095fe263ece@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1217; i=msp@baylibre.com;
 h=from:subject:message-id; bh=CD8jS3mi5l0ptE5mloshmhyPStp+3Ujo5r6yvkMZV70=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhoy71l/2FPTNi1pzafNt2ZnqfP9lZyevVxbz2VLwpvu62
 bJwVWP2jlIWBjEuBlkxRZbOxNC0//I7jyUvWrYZZg4rE8gQBi5OAZhIgQHDP81V6QbP/35ulzAs
 UC8/t8rzW8fzmy/9Z7mue8o8/fbyBQsYGW4vDF3BIZfN7cMXpZMqFc8Sanm0pWLW9lrRZX8mcoR
 p8gIA
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


