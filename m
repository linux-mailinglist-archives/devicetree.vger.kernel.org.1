Return-Path: <devicetree+bounces-48744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CA6873515
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 11:57:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0401F1C2326A
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 10:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8746277A0C;
	Wed,  6 Mar 2024 10:56:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [195.130.132.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D18077F1B
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 10:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709722576; cv=none; b=QqNHxz4M/+rF1UwW/KDGazc/EJLhmJMB71g4xv//ac0tQvm5057YTM9yf6CdMkfizH52jGWG2xU2ZIVraghQIG+pM0NT6dqWqlc6mjUxpt5bNFwyIEnUT+JhiqHs9sv8EwKyAs0TdfS1vNqYkUzTk7zibfZMzeB6vh7rcek5T5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709722576; c=relaxed/simple;
	bh=xw1Of5eP9QN94JfZZcLhKlocVavuPmL/Ptad+alYLtg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JeqRu0cgy4kvFs7/nZhOdYp/OXTZM537N8Q0f+w6JjM1u659Af3nhjDDzg0G9yYwQZrvwKV/hLrhx22thia792Jm8TTBNQqXPKq6GMzWUC2p05ee8+0f6WTxHuldnrSid33Mvv7QiqXFs+hXN+ECuKKDXAJh2/f3HtsgCMVnxfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([84.195.187.55])
	by baptiste.telenet-ops.be with bizsmtp
	id vNw42B00G1C8whw01Nw4Br; Wed, 06 Mar 2024 11:56:06 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rhowB-002Y8l-2Y;
	Wed, 06 Mar 2024 11:56:04 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rhowO-00EMJj-9p;
	Wed, 06 Mar 2024 11:56:04 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/2] thermal/drivers/rcar_gen3: Add support for R-Car V4M
Date: Wed,  6 Mar 2024 11:56:03 +0100
Message-Id: <bd5b002a802c1e058e0048592f17862db1d04263.1709722342.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1709722342.git.geert+renesas@glider.be>
References: <cover.1709722342.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the Thermal Sensor/Chip Internal Voltage Monitor/Core
Voltage Monitor (THS/CIVM/CVM) on the Renesas R-Car V4M (R8A779H0) SoC.

The conversion formulas for R-Car V4M are the same as for other R-Car
Gen4 SoCs.

Based on a patch in the BSP by Duy Nguyen.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Changes compared to the BSP:
  - Use existing rcar_gen4_thermal_info instead of new data_v4m.
---
 drivers/thermal/rcar_gen3_thermal.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/thermal/rcar_gen3_thermal.c b/drivers/thermal/rcar_gen3_thermal.c
index cafcb6d6e235be44..a764cb1115a57562 100644
--- a/drivers/thermal/rcar_gen3_thermal.c
+++ b/drivers/thermal/rcar_gen3_thermal.c
@@ -428,6 +428,10 @@ static const struct of_device_id rcar_gen3_thermal_dt_ids[] = {
 		.compatible = "renesas,r8a779g0-thermal",
 		.data = &rcar_gen4_thermal_info,
 	},
+	{
+		.compatible = "renesas,r8a779h0-thermal",
+		.data = &rcar_gen4_thermal_info,
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, rcar_gen3_thermal_dt_ids);
-- 
2.34.1


