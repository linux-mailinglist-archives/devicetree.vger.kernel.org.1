Return-Path: <devicetree+bounces-168906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D154A94DDE
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7455A1715DC
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 08:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB16A2580C0;
	Mon, 21 Apr 2025 08:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vxEahM+a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D780213E66
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223325; cv=none; b=MjShcH9yKRPL432IQ92dGrEo+Ai+eLd112OOpPgdA8dQ2LrX24AwRg4+/JOLiL+QHyG0wZi6IVME6feQARVoMl6bDzWPzLq0uiuKy9Tl3/Y9ZjOcNVX6S3NlJczQgl5oR2QB2HUXSCNlcRpTH56xyj7Ld10m8f5Rvk3dGIXgv1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223325; c=relaxed/simple;
	bh=DDUKqJYdItgCK7if8keg+0cOFuGTse8BArfuVENTgzk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eWGPEH60tBg3KeGFqn8UAUyIlTpCyuideE8VZ1s8YUgK7tjcL04cnyB4hagCAEeov2h0El6i8R5PwaC7LgT5Vf9x7wK+DTFSnt0iJauRa15IIEQOypSMxev3Gt/cN6YQQXru2PIhZeWl+HDfuG+ltw8/BchCpwpKaRhXLkCSDCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vxEahM+a; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5ed43460d6bso5437262a12.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 01:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745223322; x=1745828122; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7K/O9EvDZo94mWF4xlSzvWet1rbGz7p+KBumP0GD4DM=;
        b=vxEahM+aGn0ZSdOuWXWh/xQ8K91SSioaLIg6E7wSEloeS3OVW/W8FH/ApOvQdIYSRJ
         dL4KavCmTvmy2CBJ5nG9cjmYf5taB3JipVIMy/Tn3lQ3PhgvQANLM5koRgtSC2TGHOJt
         qkGA0Q3W4i4IlXU3Ad5K8HSxWnrkY5TTKks4B3yOgDnn30UHhkCxrhHGj1uavF3n2U9F
         eFIuhbjP/UVIFayi66xm3LPY+3mgLjjObBdpuaemq9Kj7TRRkgyZlukGHupkFE5va+nK
         zqN7W10sAqb72rm9dupOUwJc2Qww/02AVQk0sBbLIBHTtrGc1p+ISfZlhztJNk2cc0DO
         30CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745223322; x=1745828122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7K/O9EvDZo94mWF4xlSzvWet1rbGz7p+KBumP0GD4DM=;
        b=hsQz+VkBnXJTHmDve0YeCVmZIGR/8F5TE27C7wq0eXqdhriLNn8XQgoQK+O9eB+FHw
         3JgCrRP1aVRGu0vy0PvL9q9/aXusUcxmOlT89PDRazpK1xuMyr864rRkaJVSLJWbGK4H
         Ya9/1bcpN53GLh2dHoz9jTei3OzLI1SixYFKE30qE33cWi6knoFGOFZSLWg8AqSwUigO
         L+YcGMKvjUHF4a+4NK9yPGXeh5TiFSpIu+YFln8Pfmj5cDk67a/gR6fcSU8d30BQfLfC
         pbOeTMtyElPRN82lDlJTHYPm/PU3SQR0AxDKXeYjpTNyspNE/9vU5pgafo0C6Cn3lxQB
         6a2w==
X-Forwarded-Encrypted: i=1; AJvYcCUU9AI83yzXN7gepstyzcWA+4hvVJGKj0TAYtLXakOaYbJ9jiH08qt2duaA+S/TxziCiFXtraDjtzSr@vger.kernel.org
X-Gm-Message-State: AOJu0YzLCgsDBnlAEU872rN2855SjWHJUs++Y7IuNNIxWXV2Ze5IOD73
	px7QIcwZdx3j9z4zEYQ3RSPNtxRL2RfeJ2Gujy30fv5I+oemrj1R2ZPMvu6A8Xc=
X-Gm-Gg: ASbGncugg4FruiIi9HtnzkLOWg18eQrm+TPIIilFI1PXXrx+9w9Yg3TyDwoNW6fcFhl
	7bu0bxfIx4aKhT7mSkoLKpN9oyiNE6gfHWT1ZsApl514DPBDZVlImt9p9Jx2Z/NbJxIpW3gOu4V
	7t9tZ5OQCLQID8E+xknFSOhumarqhBPy2/bMt+AbHwPxY1vFOpTDrKt7Yegn5URS+r/Kpq1DHAP
	7sf/nC28bORrLeIPg2aDrHSgcjNZD4Ps04Bbg+poZUkPvo9nwdHMZicum/RBlz3pv8uqE6RCpMo
	v/j+P+mFKN+cUBkmqZebGCm7Y4w0ruYEifc=
X-Google-Smtp-Source: AGHT+IGavSHBUnEKp2SLZSsMc+Z3PxkFoYizZmoJvGkx3hfKMDgRJptjKyk6zn1z6gEYNGmCH9jGKg==
X-Received: by 2002:a17:907:9409:b0:ac4:4d2:3867 with SMTP id a640c23a62f3a-acb74b0b022mr848922466b.23.1745223321733;
        Mon, 21 Apr 2025 01:15:21 -0700 (PDT)
Received: from localhost ([2001:4091:a245:826e:c0c:4cef:7dd:26bd])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-acb6ef45784sm468996766b.129.2025.04.21.01.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 01:15:21 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Mon, 21 Apr 2025 10:14:21 +0200
Subject: [PATCH 3/7] arm64: dts: ti: k3-am62a: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250421-topic-am62-dt-partialio-v6-15-v1-3-6ced30aafddb@baylibre.com>
References: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
In-Reply-To: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com>
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
 h=from:subject:message-id; bh=DDUKqJYdItgCK7if8keg+0cOFuGTse8BArfuVENTgzk=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhgzWf2Wrvy4y+qVzV/X5pdptazMD+byvKPtYSvrF7F9tc
 OJYlv6cjlIWBjEuBlkxRZbOxNC0//I7jyUvWrYZZg4rE8gQBi5OAZjIknsM/2Mv7iuV5tsus4tx
 W+1D2YwZG3Yqfe/6d4V3TqTHkoI3ThUM/6vnOL4qqr7XGGg+f+WdS08tuCc/3fLtmYuRhbHVm5U
 P/nACAA==
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
2.49.0


