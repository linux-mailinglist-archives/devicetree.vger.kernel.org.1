Return-Path: <devicetree+bounces-232748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E46C1B534
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D6A985C4274
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E876C3559F7;
	Wed, 29 Oct 2025 13:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QXGyrsgQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81412F657C
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761746174; cv=none; b=KgNGGT1+ouJWUYRC9A+z4uu9Y9VkVrl+RgSjIX66fmHcR0OXTiPq3xu6NGGr4IcwHNRidzBdBaJhYVoU2iwiWLDvZSdwKvlNiGDOxDbjFc//KkNmkHEjWopi/myKyryfMj6UtgSbtAE9Tk/N0FAdk5xUupmg6GuxmGMRNx/5Xno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761746174; c=relaxed/simple;
	bh=v5ahFBmmoGFzUch7/2SvprVd1+ErqpD5A4vWmS2SEcU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UZ4jH7UX4NjL5LlfXyTdg4sjPgjsAqPnqXjSx9IyMpksAjp8qvEToZeCxCrrAvgrkOyPA8ZVqYDWydL10EJrmZYCf8/TFyQ9nV9Mv6Fv5ATEln9VGZDDHn/8VbXFed+rL5NT6NZGyvRtgIMOHrFH5W9Yjq1Sm4/NHrVIxSzSc/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QXGyrsgQ; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b626a4cd9d6so1507595566b.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761746170; x=1762350970; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DWLsbyIMgrO4Anjvx4doEaIEZAGpDh1hvTWQGxqxKac=;
        b=QXGyrsgQIw495cgh7znPWycJd8DmXUIGvFt1GnIvoLG+PYx0aYMza4WBTHbckJrRr1
         PPpDX+TSnrahMBwbIhadjDx8NcoittoHtXBwEVUsQka3x3pY2AbwJCM2EPeovCsQqOoX
         k4+tiUmIOTbr4uMNt0CwWR9zhlSogITKvIJOLhm+FDY/vFbJ/Wdz6v/5brTjQN1JbYFi
         rPgouNUptK8lpWdKdR01xRHquSomeLJvNZcnOw1JQnv8amRYkDiuzDu2Xqa+LU7lUXxW
         /uOYDWOKCqPtDq+ubZX4e5eehfylRJQSb7IDIlKOYNX1BZTiHDZjv/3i14SXgEMyYD1N
         B6dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761746170; x=1762350970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DWLsbyIMgrO4Anjvx4doEaIEZAGpDh1hvTWQGxqxKac=;
        b=PwZxkXhzbtZHEXI2Bm+QUQrWTs53Iu/+P8BVaihQ1ZUd3sJEfGNEP4h5kW1VGrCLO3
         Ia8v8hBM0syKfXb0e6ZspNGEg9idwIqerlZ8sqsUO4JsbhyTUu3UDVkd8coYTIOzGPVq
         4fM9QC5yK1i4LQ1jZiE8+dlNRYtc1VOdtScIqY35cqYcQmpbycaewZr21Uj8xw8iMvIH
         2MYH/GAKo/+6qGxvV3a5730SitNwdj+waSSLWce/FTWXWISj/t98/HJvkQ4lNOcVRZWH
         B5c0U2IPf4ejOpala4yHI/LJNWfL/usfLaO/3E5gY78pZupScm0zyqgThfGaDVunnA40
         OmUw==
X-Forwarded-Encrypted: i=1; AJvYcCURcHI/gnUhf7fQFrqDv2lrSdhSw1aYCcg7IA6vaB/IPOhNo9yS/UTM8H7j6EMYvEWLZurVS0ioshDy@vger.kernel.org
X-Gm-Message-State: AOJu0YxidXQLehu71lS0J3VTEDl3Lj+LYbLRu2zhfo6i2WtWXN9Q6sI8
	eUGQZhAM9y7+14nI0Zo5spk5VmEHL/Cy5UssxDysZ3QyuXha7lPDntiV
X-Gm-Gg: ASbGncsOIcIkLIrKhUG//kNMbDXt2/wGErdh5vtCmKi/ta+0I/MPepBrLDn22WHTZ1f
	Tm6wO4CojUSJJAp+Tn1LgUBrXbCzDOBA3kMOcrgbrshVYoEnH1yxf+k4Rd8nTxJwSfBhh4BmOF+
	nwXp5/5opKDPRvzI6PUY6XZHQPfeXhz7/mLJVb0Pg0F1c7kEVg0CgFwMNL35TcAY45aK4jFu9aQ
	ffvbx2ctZC4zko2WIoMmaV8nlKdfGIokA8w3RcsIRtNXEMwSAF1ORZV2+KeycH5zt0v73p1ujTe
	Bbqp9dTlv8HHjc12fo/11CaWI36jNNOERhcHzLRi8qVmzn1OY8pZH7L+9NE3MLh2hI25P2UHyAI
	Q+wYsIagP4XWmPd7BMXbbEpiWyabmhuMCR1Ggd7A2DQQCH6A0EPJToIfGz4z6zOxe/Wz9BtxsLa
	vz26Q4o7uSRh1LHKAfk0x8dNQG/Q==
X-Google-Smtp-Source: AGHT+IHsIhczBnvh9jDdmQP7dI7sF9RIy0mdsWyOBSP3lJT3RdO+FroC0QNH4bBEw0VRWYxAQ/wuNg==
X-Received: by 2002:a17:907:1c93:b0:b55:e023:5e79 with SMTP id a640c23a62f3a-b703d55cd84mr342463066b.51.1761746170153;
        Wed, 29 Oct 2025 06:56:10 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8534d99dsm1444960766b.21.2025.10.29.06.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:56:09 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 4/8] reset: imx8mp-audiomix: Drop unneeded macros
Date: Wed, 29 Oct 2025 06:52:25 -0700
Message-ID: <20251029135229.890-5-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
References: <20251029135229.890-1-laurentiumihalcea111@gmail.com>
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
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 drivers/reset/reset-imx8mp-audiomix.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
index eceb37ff5dc5..e9643365a62c 100644
--- a/drivers/reset/reset-imx8mp-audiomix.c
+++ b/drivers/reset/reset-imx8mp-audiomix.c
@@ -14,11 +14,7 @@
 #include <linux/reset-controller.h>
 
 #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
-#define IMX8MP_AUDIOMIX_EARC_RESET_MASK		BIT(0)
-#define IMX8MP_AUDIOMIX_EARC_PHY_RESET_MASK	BIT(1)
-
 #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
-#define IMX8MP_AUDIOMIX_DSP_RUNSTALL_MASK	BIT(5)
 
 struct imx8mp_reset_map {
 	unsigned int offset;
@@ -29,17 +25,17 @@ struct imx8mp_reset_map {
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


