Return-Path: <devicetree+bounces-18733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A83DC7F89C6
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 10:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37E71B212A1
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 09:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D679453;
	Sat, 25 Nov 2023 09:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A3D310CA
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 01:47:08 -0800 (PST)
Received: from p200301077700a9001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:107:7700:a900:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1r6oyw-006fpG-SQ; Sat, 25 Nov 2023 10:29:46 +0100
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1r6oyw-0004JV-23;
	Sat, 25 Nov 2023 10:29:46 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: lee@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	bcousson@baylibre.com,
	tony@atomide.com,
	andreas@kemnade.info,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH 5/6] mfd: twl4030-power: accept standard property for power controller
Date: Sat, 25 Nov 2023 10:29:37 +0100
Message-Id: <20231125092938.16535-6-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231125092938.16535-1-andreas@kemnade.info>
References: <20231125092938.16535-1-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Instead of only accepting the ti specific properties accept also
the standard property. For uniformity, search in the parent node
for the tag. The code for powering of is also isolated from the
rest in this file. So it is a pure Linux design decision to put it
here.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 drivers/mfd/twl4030-power.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mfd/twl4030-power.c b/drivers/mfd/twl4030-power.c
index e35b0f788c504..3ef892e63b88f 100644
--- a/drivers/mfd/twl4030-power.c
+++ b/drivers/mfd/twl4030-power.c
@@ -686,6 +686,9 @@ static bool twl4030_power_use_poweroff(const struct twl4030_power_data *pdata,
 	if (of_property_read_bool(node, "ti,use_poweroff"))
 		return true;
 
+	if (of_device_is_system_power_controller(node->parent))
+		return true;
+
 	return false;
 }
 
-- 
2.39.2


