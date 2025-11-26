Return-Path: <devicetree+bounces-242387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDEDC89CFD
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 13:43:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D2ACD4E575E
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B49B6328B5F;
	Wed, 26 Nov 2025 12:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hf4uB24V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BF332692E
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 12:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160988; cv=none; b=kgslSCSrTjShBWJ3u57vBYo+4k6Gr+6R1t4yQp1LNLo6MX6l9qssd5C6P2YlOMvhQ+Lx85Yoc1AdjxC2Vpmt2y1ePXxpLazrGjftlN14bDa5Uor/kYjPws6tqA9OpWDJivVKbse9+D43wPO+rZbEcepKwHjQhoJaDSPfAB0CNWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160988; c=relaxed/simple;
	bh=x0VpZkifpmsZOeiUeKRVj5l01SHfLNEX+dBjXy+hSXo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qBpLuzp0mXjtrlJuBrP+XdncShooejlTTv2cTleXLhQ+kylEzMli8Moo4K88UuKlkqjOD9GnQt5ffDT1v2fBZwaZyfvx8nVmN5G7P+k5WW9ZLsQN9Xn6U/heVwKUHMMAgan7Of0yYGuz2a15MpmuAfFDAx6dN3UvDtm/C4NLk5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hf4uB24V; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b7697e8b01aso737390166b.2
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 04:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764160983; x=1764765783; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=URd/ONh2/S9cNJVZREq3Fly7rFEXScu5qM+CsEx4Im0=;
        b=hf4uB24VArUTx18oPYbedCvuxJBw5lkEjbAI81DZzOWrBeJU5NIdMVbNciXlyTFUZB
         XhrSl93nHa5yWnVt/edfNbG46Px6whbodEX54fz+dPywT5MJ33p9nKevCnzxrneWbqFL
         6WfW/g85DiI1RZs6oB6ph63soGhjTeUO8ihxwiRt7Antq1MO+C5gKL7USqFvQuYO0CHZ
         4r3Uyrv2zVVBh7vSkNfNtN9g82a/Ha4aF8855IP04kE7SLQphl2zV0FQitdvlU9FMm7V
         er8xnRWiIcqW/7Bc841g8j+HDS+ZGnIOrfhTwmGUfcWGebP7uz2Uogy2CSy6Mz3LORS4
         +q/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764160983; x=1764765783;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=URd/ONh2/S9cNJVZREq3Fly7rFEXScu5qM+CsEx4Im0=;
        b=a8DLoUOPRSVCquMJJZQsFX/9MqOm29pyPPNuM7SCe9gU3uLkANjuYlqO1NzwWX8hMM
         3sr3sRymWH3z2iEaTayXdovRtomAyprHi5L1sXaIcPear8uDZIN5C2xtOjIQDNqBswWt
         xwEdo5EVe6tZR7wYmt7bCP9CP2S1Xb2tjds6DxwiX3P+bXnbtkU9Ap5UGqA/BI/TOkOA
         NQ4gVPf8/cTAiPgo9hFDCzJDBwDFIb4qgfZr94ixHyqOLXm2l4l9JCvB1Vmqh4Eh9xil
         UISQApMOPkYD29afORRFS1BHHCBTXSTXOZVL5ABr7Vs9JovPrzYtfSmHO4+yg0eWjCQ2
         7cqA==
X-Gm-Message-State: AOJu0YxknWlL3kga1+V09Eh7HaFmSqMzNIse5X4lVqcHP6DYIM53Cc9n
	8s6YqSAeFYT1BiENfBMDq2Qtteetc7LFDsfQlPQXI+LIlya9aRQ9Cxkb
X-Gm-Gg: ASbGnctPa8xTgrVwb9FJP0KIp2J3wBjakPt25KUpMtFMKWteqa0VibeChNKgKKyAf1X
	Gi2AufjNWsfb2XXl1fm+DqORAOCEZORDo8beOhKiE1KT9mcXpB9sw89TFLjhAW5jT8Vx/f3gk5M
	l20j3gV2pJj+h9H+hW9GVgYIKQgB4G3rwVbSA0QDy47+qHZtgIAQz2isiB+YiYeshr9Qk39twDp
	lAeClpSuHc1dv4BCx2O1puXxXVdF6QjgSEX15ieeuRPPpwHhXdlNlQjdW1nxFj39n75kljlKObj
	Gk2EIB95j4zTEobuWN2oggGCJVae1eTcyXZhsRPuVTCLbkUzpTc7hmIkbEmwVwf7ys41uCeeASb
	m4i/+JOw/AlMl0IepNNGiHQxlEEvuNUmaQfNRuBjQKAdfDMA2DjA6PcHkMDHLqueEsH/be26wbk
	Gtq29euw9LNxzsf40T4WGOLPmhGlEe9PhV5CDGB9jOfsFx3E0=
X-Google-Smtp-Source: AGHT+IFZ3jJn6ZtuPHP8d1zHAviRf2Hf5JxHWcSBJlcuwsyLTvUvL+Ag9uQmMJeg0bd+BjS0LWB2ew==
X-Received: by 2002:a17:907:a893:b0:b76:3548:cdef with SMTP id a640c23a62f3a-b76715af3bbmr2271548866b.25.1764160982366;
        Wed, 26 Nov 2025 04:43:02 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64536459d92sm17654824a12.31.2025.11.26.04.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 04:43:02 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v6 1/5] reset: imx8mp-audiomix: Drop unneeded macros
Date: Wed, 26 Nov 2025 04:42:14 -0800
Message-ID: <20251126124218.803-2-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
References: <20251126124218.803-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

The macros defining the mask values for the EARC, EARC PHY resets,
and the DSP RUN_STALL signal can be dropped as they are not and will
not be used anywhere else except to set the value of the "mask" field
from "struct imx8mp_reset_map". In this particular case, based on the
name of the "mask" field, you can already deduce what these values are
for, which is why defining macros for them doesn't offer any new
information, nor does it help with the code readability.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index eceb37ff5dc5..acfa92b15329 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -6,6 +6,7 @@
 #include <dt-bindings/reset/imx8mp-reset-audiomix.h>
 
 #include <linux/auxiliary_bus.h>
+#include <linux/bits.h>
 #include <linux/device.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -14,11 +15,7 @@
 #include <linux/reset-controller.h>
 
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
-#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(0)
-#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(1)
-
 #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
-#define IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK	BIT(5)
 
 struct imx8mp_reset_map {
 	unsigned int offset;
@@ -29,17 +26,17 @@ struct imx8mp_reset_map {
 static const struct imx8mp_reset_map reset_map[] = {
 	[IMX8MP_AUDIOMIX_EARC_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_EARC_RESET_MASK,
+		.mask = BIT(0),
 		.active_low = true,
 	},
 	[IMX8MP_AUDIOMIX_EARC_PHY_RESET] = {
 		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK,
+		.mask = BIT(1),
 		.active_low = true,
 	},
 	[IMX8MP_AUDIOMIX_DSP_RUNSTALL] = {
 		.offset	= IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET,
-		.mask	= IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK,
+		.mask = BIT(5),
 		.active_low = false,
 	},
 };
-- 
2.43.0


