Return-Path: <devicetree+bounces-238084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F96C57072
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D1C7F4EE7C3
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C23B335BC1;
	Thu, 13 Nov 2025 10:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="lecXYPsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay98-hz2.antispameurope.com (mx-relay98-hz2.antispameurope.com [94.100.136.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4225E3321D0
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.198
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763031007; cv=pass; b=KTS8bXu9YE2LlQQEG6OzdoUkBrPZJszZCg7zAPuNzO7GGyZS3UY3GcnFiNWMvZBu9/Gmbz+4WCvsTUbVgTcnLZk4hsh00Bq6WcU+BrhTx4ZA47LwUNoJUi6zoY0TZWVy3CuVNxpF3Juonk7eeh3V6isUiafxkY3Upc8G+Y6TjEw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763031007; c=relaxed/simple;
	bh=HLL0IAJP64dP85RN0m4fxffw6mQ9TrEM/iZVC1SJfQc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=suAh5P8n+jxu/MW7KXZI5nuLPYJ2FimGl7O+SFjkRRnJ2yFeDiqts6BOWfa2uyPwgqOwLD2SrJhHSPoxZ6bY5VuUgRfpaFyHphBOwBF+YMZsLLJQD2HDjblpovINUw7yH2xFNPU2S3pB1WlnkkqY3wezOnpMxsIufwajsLv3+bE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=lecXYPsq; arc=pass smtp.client-ip=94.100.136.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate98-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=20x6bk/6ulOfgyNrjZnFw6yDdlvk5X5c9JtUmQUUw5I=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1763030952;
 b=mYMNNeQuUHRi2lgkrUMtpgjZrwd6jBjQtO//GVR/IYLqz2xa84jsJqDTSdmgA5qxNunZSiJT
 8ynkO2lXl3AkTYsc6jErf9h+ZJWKerERaVSML2DALXlS+fXPYCBQPfCnnncx3WevPtP3Fp8joCy
 Xwfw+LOrpnDrV96CTQe+p4/xFKUyJCmJT+a/y/0vA5Kb4vJuDdtFK1kLkw+Bw2I7XW72gPQdt5F
 CmpqigRjra+E9NjjMr1foEjL6M5yoeob+lT9LwUYORrXX6XZjxe5Q/twBGwTiAkLL2R8Qkeivxq
 kYwKRFfVBV3wrTXVN4C1YUhJ7DWnZZYcSAxS0TxgeL4HQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1763030952;
 b=RrKj99Q+z+EXm62E2Thc+rrIPDkibCncZ43bbNnn30FgvHsDIQLAt9aECxElG3NZsPJmGEPQ
 Lcqe/qrwrFMK+bQvfnoudx75w+GABuMzqg8gBSCxexseUOa90JZ2RojevZBje6cgDPn9lJ0KpoE
 GXNCfH2uAM+qCyg3oRoS0df/2BoETYdjjAIfbQwgbt/E7T8xzOwAbFJtrFfmBoKE1IzeloyDuSf
 7OViRC0k0X7sswEEx2IwHk91RqAdXa6TI5koT2IJO+7GLXK1E/jN6tHDzQD4IQxxQ4fMyHzKqsP
 ijH7xNDvGkyub+Kz4vyhu0iMXJolZFozj32AlgGKl/Dkg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay98-hz2.antispameurope.com;
 Thu, 13 Nov 2025 11:49:11 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 3838D5A0ED4;
	Thu, 13 Nov 2025 11:49:04 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: mba8mx: Add MicIn routing
Date: Thu, 13 Nov 2025 11:48:54 +0100
Message-ID: <20251113104859.1354420-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay98-hz2.antispameurope.com with 4d6cTD74cSzJT7J
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:572a54ff1f0833590d00b461732b97c6
X-cloud-security:scantime:2.040
DKIM-Signature: a=rsa-sha256;
 bh=20x6bk/6ulOfgyNrjZnFw6yDdlvk5X5c9JtUmQUUw5I=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1763030951; v=1;
 b=lecXYPsqY+8cA9N7rAco1P8LuHMuEEaRMz2HS1H6N+2R77BAVETRhV4eqp1nVCyoWMUmK7r3
 M6paNz4pynfNEhrWpt/0BC69Prh+bQuU81JuFZuh54fZmmgzz1Q5/nAjmtubwaAcTkUIxCCwzMz
 wCQJiyzc67+ncyMVsDZrBHPVnoJIxmyEjI0FXGkslQ9ERfCNul2ap2t5aZ0cmWgK+CqIKM+SWFG
 mIAxVzQiL9Qh9LmYeIpL9Y6TXt0BUkxV5As5ySh9gRLp330TIJz/C/mJoPhxiXhorv00q/whhDZ
 BWTBph67Bm81CepXlR/bP7gCy2bkRjxb4UJWemOy9vJUg==

MicIn is connected to IN3_L. Add routing including the Mic Bias.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/mba8mx.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 79daba930ad64..225cd2f1220bf 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -141,6 +141,13 @@ sound: sound {
 		model = "tqm-tlv320aic32";
 		ssi-controller = <&sai3>;
 		audio-codec = <&tlv320aic3x04>;
+		audio-routing =
+			"IN3_L", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"IN1_L", "Line In Jack",
+			"IN1_R", "Line In Jack",
+			"Line Out Jack", "LOL",
+			"Line Out Jack", "LOR";
 	};
 };
 
-- 
2.43.0


