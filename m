Return-Path: <devicetree+bounces-139444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 833B2A15CDE
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:42:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54B6C167E0C
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 410BB1A706F;
	Sat, 18 Jan 2025 12:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YfzDnRCj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C09C1A073F
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204072; cv=none; b=c9dS/3jDkr6ZUUUv3Fd3Ui8k73HmAgLYQFPio1usn3WGp27kBWPvJIK0Xv2DDhVYURPEHlIBdvgqvhNG3598dCaYfhtL5T8TWme1hQ/ULe8lFSrvjG2uQJO1KYclI8sH82tOUnGAuemz+JKBvyaUCHJrV7CUylVimMH/W5GdQdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204072; c=relaxed/simple;
	bh=vc25/TFqvg0Ekr2Sm4G/VkkviBdPeMF5e7FdTWNCvAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=INa/PkxsSbjcEQDMZjthKhyYZMeidzYxpbqfoypKXHXGRZx42mrr4DVCdV3VLMHogASYuDp8UJKkyv8PUQe4NWfEP4f4TGUg66IYWtsOscKBUZN98uEgiC7NFpiPEorvhs1zvUDwWEeKTINlDk9o71oKafDpqdlXk3yCR0zHIr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=YfzDnRCj; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aae81f4fdc4so593944566b.0
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204068; x=1737808868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=YfzDnRCjHQOJQ9Wd3ZAPtQNvmtxWQRdO65n3Ve9UTzm4F80g5ud4YMLihrKTi6ntQL
         q1HQx33s0ZRpYnBwgve8Qtr2R6uBqpGyWqqxe8LwugBKvpP2n/cm4u3i4qe65DQpMoVd
         o7oIIeEutgd9BoZisfcKUP0zqB29rzLCAJ4u8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204068; x=1737808868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=Olxhpa+Bae+bsDaAMwdufxMbE0VETC7uZk5vlYKEeCMj/E88OmcTD0kTGB0hLGXd1j
         A6QIQBiFnVxrxXa39UXRDSQqhtpJ30tZGgO3cpC5cBCbIszWGJBVLA3xRh3pHw7Qo4gR
         o2jAv2PpjesTI/2qm7OPRO4Py016Kwe2iifPEJGDcCR374JwVqgop09qgwX+pZgWkjqj
         okvB3UemxO0Jj5mLJhP8QTYBq5rDypItHCnP/nj/mD6H0R0A1UYl87MA1BXHHRQi9AkS
         gWNgYDN41GboRdORztZw+8IbAMKcuhX4dDM5FQoS66i41OdlbpIiU1Mrye7GnHHm5kIL
         fmEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVj7ZVgbgxygIj3dYv7c/1XTQfvngQWYjZwXGVpik/w+KZgMUDKX8haTu5SM9cdVro0Brxp2mgpDz7O@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfk2A5mXVAOOKGUOKLo/6OGNfTYXZIx7G4Cgm+sR0hXg9Nt7fl
	0ON5DQCbgmdIkl+4veGHuQvwqZn34bMD56A4bLEmavrq2jhYIoFDqEdFfD+r5H1aOCo8mbMPEQ2
	4
X-Gm-Gg: ASbGncvPe2bw8eBVB5fYnoYtk9v6DgMcIxjnZ/heEdGwFa+C9wmkTxQA58stDQioWZ+
	OPDErNtwo0H/k9YqBT2etqyvW91SjInHlrzIU4pe7uKTLY4Zhq2vzPjLiuCFDLkWLKStWNRNA/q
	HKarP0CPUojpzvBiF1K+8in934shQEIaZcdKxr2jyc72b1sxVdOAm9KZIYkX2rDf11JPP2GDwff
	fhdJfAGe+Cm9NjO3Fn/SAom5+Y4blI8uW3j1G+8uUDVp1xPuKOGE6MR7WfoT0ACoLRA/8vcOn5K
	ZdL228iCv0tLkK6KJopr8qMOw+74+9mDon1hfuUd/NWyUmnUynTPi4Wly/U9pHJDFaevIDd/YF1
	Xwg699PKF96yHmkY7hmOSwRVcq7sOnA2Swsx1
X-Google-Smtp-Source: AGHT+IEjVsxeqV3q0cuCfowb8sHunl1c2U0QJyl0v84iVeugrlhDgI71TwU/pUagXm7GAT1GfAlb1g==
X-Received: by 2002:a17:907:940b:b0:aac:619:7ed8 with SMTP id a640c23a62f3a-ab38b1e651bmr538826966b.7.1737204068521;
        Sat, 18 Jan 2025 04:41:08 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:08 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v9 09/23] arm64: dts: imx8mq: add anatop clocks
Date: Sat, 18 Jan 2025 13:39:52 +0100
Message-ID: <20250118124044.157308-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d51de8d899b2..1d1424a136f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -817,6 +817,8 @@ anatop: clock-controller@30360000 {
 				reg = <0x30360000 0x10000>;
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
+				clocks = <&ckil>, <&osc_25m>, <&osc_27m>;
+				clock-names = "ckil", "osc_25m", "osc_27m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


