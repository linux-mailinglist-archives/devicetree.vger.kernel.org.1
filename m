Return-Path: <devicetree+bounces-90778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84539946C9C
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 08:16:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 988FE1C20B0A
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 06:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC75101E2;
	Sun,  4 Aug 2024 06:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qt1q2CUJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E0B7494;
	Sun,  4 Aug 2024 06:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722752167; cv=none; b=eRyeVyRApNPDhV+2QOkRtFSAP087HIQsrD4Zc1mG1gYfM+yeazP7dYyWsfhOXqqPNejbUuXCajMTV3B1qg+BswPWVRqxxxa58J0FOnKdXUuYB7c3dQ1cAqOhf9JvHwtjm5FxgB3HVe5nZKdrj5FxJvvnvpPGGUSYLrvM2gbakz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722752167; c=relaxed/simple;
	bh=r8yoEQ0reCekWeqwleTzGRWgWpe471HvfJ1Uib+GKiQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ph9TXCVk6AMkmrb5u8F45HOlPSR+deFzq2BNIxYuN7MxQBzD6d/PnOU3qR9I74RVnlKU3xr2qFxzUOy+kwtOKphKwr+DOO5sJ0Zx/+bl2EwkPqnZEk9uYXkrBkCIPMkfj2hDrxf5lWJQWC8lLJU0E6BcXrPWJBnteEzHjp9JQPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qt1q2CUJ; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1fc5549788eso76920865ad.1;
        Sat, 03 Aug 2024 23:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722752164; x=1723356964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xfVv4qodUJxAElU8OCPQKl4LQdnqypaO7KahP1BwXPE=;
        b=Qt1q2CUJwhDOyMYvmATKTXcn6HrEfZkFxPhn0JTBpbeJtbhvRZU1amazALLISAegiA
         2lsh3wQEvldS7y6HDXDUbhAmheP8W3HhzLDAOYgvjoIuGXjLsUzhZ9aob3NH+qEQZuM+
         yEuAaUggLOuFj1FhPD0HtxaYiwZ1HtiDD/O2GG3/Y1MKW6yI23C85I24y7JINTSvPoQ2
         ZC5sg/FdQZlpIfPrxCgoZ1jhx4ty0GLEhzU7+uDjwm+2EoKNEobNFc6y4HppnAEFb5u5
         uy33mvlbImYNo1QY/WJC/mcNKXVJWm52tzFg4X0US13dP3DoqaNsIOqkvq0qR16+5qqW
         ODCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722752164; x=1723356964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xfVv4qodUJxAElU8OCPQKl4LQdnqypaO7KahP1BwXPE=;
        b=LHoTmVSW6Hoh03XuZ5/DSNqMluZ6S2JMpEN9MVya5eGCYdMRlbPAlf/4bymy3NVeUR
         jbu9DYzOT4n1ijBUMoM+UQooPJ1A+O79u9IPCbOI1XIsVO1flRae2QgjCFgIXM/eyVT0
         DsHCv+TIi8McBjgF6Z1CJ0ntVl+BypzyODC/Cz+/zWACzYZYbjJhgS7zqe0OgjkNTa3F
         vuwKgoQMDqbh/1Td08/esWOkDbNgota7q79rPSKVIpq+RHUtS4QmybLegIriQRce32oO
         xduCIzzuqf47Vhz9Nr6oaIuQ8zyC4EchuI2V43a1SHR5rs4lt9tUcK95rLYVAw0w/f5k
         mWpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwISfBTkX+52MkMbeJssxKYZWjZ9L5MonZVVoS2LFSEJ1a/kCaTI03CyWUuVOeTMmF8RUGHcB3GHf+Or344lfxmXuoFOuv/t2WhQ==
X-Gm-Message-State: AOJu0YwAsVB4OutNiYJvYDbSr7ebVq2s8WF0+uk5xjdIjjDcnJ7sMguf
	/ZNtUSt+ADl2cxFpjtCRvqRhh9RNMHCoc9GsrHMmR0MkfCd5vhx0m1z3J8rx
X-Google-Smtp-Source: AGHT+IGF9uRbn73Ub+lUyStmEpuarBXANkQ2ZLjEI6iPTCADnmTxxdPY0aoVpI76cw1nbCAtNWDfZQ==
X-Received: by 2002:a17:903:24c:b0:1fd:9e6e:7c1f with SMTP id d9443c01a7336-1ff5748f366mr113288415ad.56.1722752163856;
        Sat, 03 Aug 2024 23:16:03 -0700 (PDT)
Received: from noel.flets-west.jp ([2405:6586:4480:a10:167:9818:d778:5c14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff58f29ef4sm44194195ad.14.2024.08.03.23.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Aug 2024 23:16:03 -0700 (PDT)
From: Hironori KIKUCHI <kikuchan98@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Hironori KIKUCHI <kikuchan98@gmail.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 1/5] drm/panel: st7701: Rename macros
Date: Sun,  4 Aug 2024 15:14:45 +0900
Message-ID: <20240804061503.881283-2-kikuchan98@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240804061503.881283-1-kikuchan98@gmail.com>
References: <20240804061503.881283-1-kikuchan98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rename DSI_CMD* macros to ST7701_CMD*, and ST7701_DSI macro to
ST7701_WRITE, because they do not belong to DSI.

Signed-off-by: Hironori KIKUCHI <kikuchan98@gmail.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 736 +++++++++---------
 1 file changed, 368 insertions(+), 368 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
index 421eb4592b6..a9a8fd85057 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
@@ -18,75 +18,75 @@
 #include <video/mipi_display.h>
 
 /* Command2 BKx selection command */
-#define DSI_CMD2BKX_SEL			0xFF
-#define DSI_CMD1			0
-#define DSI_CMD2			BIT(4)
-#define DSI_CMD2BK_MASK			GENMASK(3, 0)
+#define ST7701_CMD2BKX_SEL			0xFF
+#define ST7701_CMD1				0
+#define ST7701_CMD2				BIT(4)
+#define ST7701_CMD2BK_MASK			GENMASK(3, 0)
 
 /* Command2, BK0 commands */
-#define DSI_CMD2_BK0_PVGAMCTRL		0xB0 /* Positive Voltage Gamma Control */
-#define DSI_CMD2_BK0_NVGAMCTRL		0xB1 /* Negative Voltage Gamma Control */
-#define DSI_CMD2_BK0_LNESET		0xC0 /* Display Line setting */
-#define DSI_CMD2_BK0_PORCTRL		0xC1 /* Porch control */
-#define DSI_CMD2_BK0_INVSEL		0xC2 /* Inversion selection, Frame Rate Control */
+#define ST7701_CMD2_BK0_PVGAMCTRL		0xB0 /* Positive Voltage Gamma Control */
+#define ST7701_CMD2_BK0_NVGAMCTRL		0xB1 /* Negative Voltage Gamma Control */
+#define ST7701_CMD2_BK0_LNESET			0xC0 /* Display Line setting */
+#define ST7701_CMD2_BK0_PORCTRL			0xC1 /* Porch control */
+#define ST7701_CMD2_BK0_INVSEL			0xC2 /* Inversion selection, Frame Rate Control */
 
 /* Command2, BK1 commands */
-#define DSI_CMD2_BK1_VRHS		0xB0 /* Vop amplitude setting */
-#define DSI_CMD2_BK1_VCOM		0xB1 /* VCOM amplitude setting */
-#define DSI_CMD2_BK1_VGHSS		0xB2 /* VGH Voltage setting */
-#define DSI_CMD2_BK1_TESTCMD		0xB3 /* TEST Command Setting */
-#define DSI_CMD2_BK1_VGLS		0xB5 /* VGL Voltage setting */
-#define DSI_CMD2_BK1_PWCTLR1		0xB7 /* Power Control 1 */
-#define DSI_CMD2_BK1_PWCTLR2		0xB8 /* Power Control 2 */
-#define DSI_CMD2_BK1_SPD1		0xC1 /* Source pre_drive timing set1 */
-#define DSI_CMD2_BK1_SPD2		0xC2 /* Source EQ2 Setting */
-#define DSI_CMD2_BK1_MIPISET1		0xD0 /* MIPI Setting 1 */
+#define ST7701_CMD2_BK1_VRHS			0xB0 /* Vop amplitude setting */
+#define ST7701_CMD2_BK1_VCOM			0xB1 /* VCOM amplitude setting */
+#define ST7701_CMD2_BK1_VGHSS			0xB2 /* VGH Voltage setting */
+#define ST7701_CMD2_BK1_TESTCMD			0xB3 /* TEST Command Setting */
+#define ST7701_CMD2_BK1_VGLS			0xB5 /* VGL Voltage setting */
+#define ST7701_CMD2_BK1_PWCTLR1			0xB7 /* Power Control 1 */
+#define ST7701_CMD2_BK1_PWCTLR2			0xB8 /* Power Control 2 */
+#define ST7701_CMD2_BK1_SPD1			0xC1 /* Source pre_drive timing set1 */
+#define ST7701_CMD2_BK1_SPD2			0xC2 /* Source EQ2 Setting */
+#define ST7701_CMD2_BK1_MIPISET1		0xD0 /* MIPI Setting 1 */
 
 /* Command2, BK0 bytes */
-#define DSI_CMD2_BK0_GAMCTRL_AJ_MASK	GENMASK(7, 6)
-#define DSI_CMD2_BK0_GAMCTRL_VC0_MASK	GENMASK(3, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC4_MASK	GENMASK(5, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC8_MASK	GENMASK(5, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC16_MASK	GENMASK(4, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC24_MASK	GENMASK(4, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC52_MASK	GENMASK(3, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC80_MASK	GENMASK(5, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC108_MASK	GENMASK(3, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC147_MASK	GENMASK(3, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC175_MASK	GENMASK(5, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC203_MASK	GENMASK(3, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC231_MASK	GENMASK(4, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC239_MASK	GENMASK(4, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC247_MASK	GENMASK(5, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC251_MASK	GENMASK(5, 0)
-#define DSI_CMD2_BK0_GAMCTRL_VC255_MASK	GENMASK(4, 0)
-#define DSI_CMD2_BK0_LNESET_LINE_MASK	GENMASK(6, 0)
-#define DSI_CMD2_BK0_LNESET_LDE_EN	BIT(7)
-#define DSI_CMD2_BK0_LNESET_LINEDELTA	GENMASK(1, 0)
-#define DSI_CMD2_BK0_PORCTRL_VBP_MASK	GENMASK(7, 0)
-#define DSI_CMD2_BK0_PORCTRL_VFP_MASK	GENMASK(7, 0)
-#define DSI_CMD2_BK0_INVSEL_ONES_MASK	GENMASK(5, 4)
-#define DSI_CMD2_BK0_INVSEL_NLINV_MASK	GENMASK(2, 0)
-#define DSI_CMD2_BK0_INVSEL_RTNI_MASK	GENMASK(4, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_AJ_MASK		GENMASK(7, 6)
+#define ST7701_CMD2_BK0_GAMCTRL_VC0_MASK	GENMASK(3, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC4_MASK	GENMASK(5, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC8_MASK	GENMASK(5, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC16_MASK	GENMASK(4, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC24_MASK	GENMASK(4, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC52_MASK	GENMASK(3, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC80_MASK	GENMASK(5, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC108_MASK	GENMASK(3, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC147_MASK	GENMASK(3, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC175_MASK	GENMASK(5, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC203_MASK	GENMASK(3, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC231_MASK	GENMASK(4, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC239_MASK	GENMASK(4, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC247_MASK	GENMASK(5, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC251_MASK	GENMASK(5, 0)
+#define ST7701_CMD2_BK0_GAMCTRL_VC255_MASK	GENMASK(4, 0)
+#define ST7701_CMD2_BK0_LNESET_LINE_MASK	GENMASK(6, 0)
+#define ST7701_CMD2_BK0_LNESET_LDE_EN		BIT(7)
+#define ST7701_CMD2_BK0_LNESET_LINEDELTA	GENMASK(1, 0)
+#define ST7701_CMD2_BK0_PORCTRL_VBP_MASK	GENMASK(7, 0)
+#define ST7701_CMD2_BK0_PORCTRL_VFP_MASK	GENMASK(7, 0)
+#define ST7701_CMD2_BK0_INVSEL_ONES_MASK	GENMASK(5, 4)
+#define ST7701_CMD2_BK0_INVSEL_NLINV_MASK	GENMASK(2, 0)
+#define ST7701_CMD2_BK0_INVSEL_RTNI_MASK	GENMASK(4, 0)
 
 /* Command2, BK1 bytes */
-#define DSI_CMD2_BK1_VRHA_MASK		GENMASK(7, 0)
-#define DSI_CMD2_BK1_VCOM_MASK		GENMASK(7, 0)
-#define DSI_CMD2_BK1_VGHSS_MASK		GENMASK(3, 0)
-#define DSI_CMD2_BK1_TESTCMD_VAL	BIT(7)
-#define DSI_CMD2_BK1_VGLS_ONES		BIT(6)
-#define DSI_CMD2_BK1_VGLS_MASK		GENMASK(3, 0)
-#define DSI_CMD2_BK1_PWRCTRL1_AP_MASK	GENMASK(7, 6)
-#define DSI_CMD2_BK1_PWRCTRL1_APIS_MASK	GENMASK(3, 2)
-#define DSI_CMD2_BK1_PWRCTRL1_APOS_MASK	GENMASK(1, 0)
-#define DSI_CMD2_BK1_PWRCTRL2_AVDD_MASK	GENMASK(5, 4)
-#define DSI_CMD2_BK1_PWRCTRL2_AVCL_MASK	GENMASK(1, 0)
-#define DSI_CMD2_BK1_SPD1_ONES_MASK	GENMASK(6, 4)
-#define DSI_CMD2_BK1_SPD1_T2D_MASK	GENMASK(3, 0)
-#define DSI_CMD2_BK1_SPD2_ONES_MASK	GENMASK(6, 4)
-#define DSI_CMD2_BK1_SPD2_T3D_MASK	GENMASK(3, 0)
-#define DSI_CMD2_BK1_MIPISET1_ONES	BIT(7)
-#define DSI_CMD2_BK1_MIPISET1_EOT_EN	BIT(3)
+#define ST7701_CMD2_BK1_VRHA_MASK		GENMASK(7, 0)
+#define ST7701_CMD2_BK1_VCOM_MASK		GENMASK(7, 0)
+#define ST7701_CMD2_BK1_VGHSS_MASK		GENMASK(3, 0)
+#define ST7701_CMD2_BK1_TESTCMD_VAL		BIT(7)
+#define ST7701_CMD2_BK1_VGLS_ONES		BIT(6)
+#define ST7701_CMD2_BK1_VGLS_MASK		GENMASK(3, 0)
+#define ST7701_CMD2_BK1_PWRCTRL1_AP_MASK	GENMASK(7, 6)
+#define ST7701_CMD2_BK1_PWRCTRL1_APIS_MASK	GENMASK(3, 2)
+#define ST7701_CMD2_BK1_PWRCTRL1_APOS_MASK	GENMASK(1, 0)
+#define ST7701_CMD2_BK1_PWRCTRL2_AVDD_MASK	GENMASK(5, 4)
+#define ST7701_CMD2_BK1_PWRCTRL2_AVCL_MASK	GENMASK(1, 0)
+#define ST7701_CMD2_BK1_SPD1_ONES_MASK		GENMASK(6, 4)
+#define ST7701_CMD2_BK1_SPD1_T2D_MASK		GENMASK(3, 0)
+#define ST7701_CMD2_BK1_SPD2_ONES_MASK		GENMASK(6, 4)
+#define ST7701_CMD2_BK1_SPD2_T3D_MASK		GENMASK(3, 0)
+#define ST7701_CMD2_BK1_MIPISET1_ONES		BIT(7)
+#define ST7701_CMD2_BK1_MIPISET1_EOT_EN		BIT(3)
 
 #define CFIELD_PREP(_mask, _val)					\
 	(((typeof(_mask))(_val) << (__builtin_ffsll(_mask) - 1)) & (_mask))
@@ -149,7 +149,7 @@ static inline int st7701_dsi_write(struct st7701 *st7701, const void *seq,
 	return mipi_dsi_dcs_write_buffer(st7701->dsi, seq, len);
 }
 
-#define ST7701_DSI(st7701, seq...)				\
+#define ST7701_WRITE(st7701, seq...)				\
 	{							\
 		const u8 d[] = { seq };				\
 		st7701_dsi_write(st7701, d, ARRAY_SIZE(d));	\
@@ -185,11 +185,11 @@ static void st7701_switch_cmd_bkx(struct st7701 *st7701, bool cmd2, u8 bkx)
 	u8 val;
 
 	if (cmd2)
-		val = DSI_CMD2 | FIELD_PREP(DSI_CMD2BK_MASK, bkx);
+		val = ST7701_CMD2 | FIELD_PREP(ST7701_CMD2BK_MASK, bkx);
 	else
-		val = DSI_CMD1;
+		val = ST7701_CMD1;
 
-	ST7701_DSI(st7701, DSI_CMD2BKX_SEL, 0x77, 0x01, 0x00, 0x00, val);
+	ST7701_WRITE(st7701, ST7701_CMD2BKX_SEL, 0x77, 0x01, 0x00, 0x00, val);
 }
 
 static void st7701_init_sequence(struct st7701 *st7701)
@@ -199,21 +199,21 @@ static void st7701_init_sequence(struct st7701 *st7701)
 	const u8 linecount8 = mode->vdisplay / 8;
 	const u8 linecountrem2 = (mode->vdisplay % 8) / 2;
 
-	ST7701_DSI(st7701, MIPI_DCS_SOFT_RESET, 0x00);
+	ST7701_WRITE(st7701, MIPI_DCS_SOFT_RESET, 0x00);
 
 	/* We need to wait 5ms before sending new commands */
 	msleep(5);
 
-	ST7701_DSI(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
+	ST7701_WRITE(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
 
 	msleep(st7701->sleep_delay);
 
 	/* Command2, BK0 */
 	st7701_switch_cmd_bkx(st7701, true, 0);
 
-	mipi_dsi_dcs_write(st7701->dsi, DSI_CMD2_BK0_PVGAMCTRL,
+	mipi_dsi_dcs_write(st7701->dsi, ST7701_CMD2_BK0_PVGAMCTRL,
 			   desc->pv_gamma, ARRAY_SIZE(desc->pv_gamma));
-	mipi_dsi_dcs_write(st7701->dsi, DSI_CMD2_BK0_NVGAMCTRL,
+	mipi_dsi_dcs_write(st7701->dsi, ST7701_CMD2_BK0_NVGAMCTRL,
 			   desc->nv_gamma, ARRAY_SIZE(desc->nv_gamma));
 	/*
 	 * Vertical line count configuration:
@@ -226,14 +226,14 @@ static void st7701_init_sequence(struct st7701 *st7701)
 	 * Total number of vertical lines:
 	 * LN = ((Line[6:0] + 1) * 8) + (LDE_EN ? Line_delta[1:0] * 2 : 0)
 	 */
-	ST7701_DSI(st7701, DSI_CMD2_BK0_LNESET,
-		   FIELD_PREP(DSI_CMD2_BK0_LNESET_LINE_MASK, linecount8 - 1) |
-		   (linecountrem2 ? DSI_CMD2_BK0_LNESET_LDE_EN : 0),
-		   FIELD_PREP(DSI_CMD2_BK0_LNESET_LINEDELTA, linecountrem2));
-	ST7701_DSI(st7701, DSI_CMD2_BK0_PORCTRL,
-		   FIELD_PREP(DSI_CMD2_BK0_PORCTRL_VBP_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK0_LNESET,
+		   FIELD_PREP(ST7701_CMD2_BK0_LNESET_LINE_MASK, linecount8 - 1) |
+		   (linecountrem2 ? ST7701_CMD2_BK0_LNESET_LDE_EN : 0),
+		   FIELD_PREP(ST7701_CMD2_BK0_LNESET_LINEDELTA, linecountrem2));
+	ST7701_WRITE(st7701, ST7701_CMD2_BK0_PORCTRL,
+		   FIELD_PREP(ST7701_CMD2_BK0_PORCTRL_VBP_MASK,
 			      mode->vtotal - mode->vsync_end),
-		   FIELD_PREP(DSI_CMD2_BK0_PORCTRL_VFP_MASK,
+		   FIELD_PREP(ST7701_CMD2_BK0_PORCTRL_VFP_MASK,
 			      mode->vsync_start - mode->vdisplay));
 	/*
 	 * Horizontal pixel count configuration:
@@ -241,70 +241,70 @@ static void st7701_init_sequence(struct st7701 *st7701)
 	 * The PCLK is number of pixel clock per line, which matches
 	 * mode htotal. The minimum is 512 PCLK.
 	 */
-	ST7701_DSI(st7701, DSI_CMD2_BK0_INVSEL,
-		   DSI_CMD2_BK0_INVSEL_ONES_MASK |
-		   FIELD_PREP(DSI_CMD2_BK0_INVSEL_NLINV_MASK, desc->nlinv),
-		   FIELD_PREP(DSI_CMD2_BK0_INVSEL_RTNI_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK0_INVSEL,
+		   ST7701_CMD2_BK0_INVSEL_ONES_MASK |
+		   FIELD_PREP(ST7701_CMD2_BK0_INVSEL_NLINV_MASK, desc->nlinv),
+		   FIELD_PREP(ST7701_CMD2_BK0_INVSEL_RTNI_MASK,
 			      (clamp((u32)mode->htotal, 512U, 1008U) - 512) / 16));
 
 	/* Command2, BK1 */
 	st7701_switch_cmd_bkx(st7701, true, 1);
 
 	/* Vop = 3.5375V + (VRHA[7:0] * 0.0125V) */
-	ST7701_DSI(st7701, DSI_CMD2_BK1_VRHS,
-		   FIELD_PREP(DSI_CMD2_BK1_VRHA_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_VRHS,
+		   FIELD_PREP(ST7701_CMD2_BK1_VRHA_MASK,
 			      DIV_ROUND_CLOSEST(desc->vop_uv - 3537500, 12500)));
 
 	/* Vcom = 0.1V + (VCOM[7:0] * 0.0125V) */
-	ST7701_DSI(st7701, DSI_CMD2_BK1_VCOM,
-		   FIELD_PREP(DSI_CMD2_BK1_VCOM_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_VCOM,
+		   FIELD_PREP(ST7701_CMD2_BK1_VCOM_MASK,
 			      DIV_ROUND_CLOSEST(desc->vcom_uv - 100000, 12500)));
 
 	/* Vgh = 11.5V + (VGHSS[7:0] * 0.5V) */
-	ST7701_DSI(st7701, DSI_CMD2_BK1_VGHSS,
-		   FIELD_PREP(DSI_CMD2_BK1_VGHSS_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_VGHSS,
+		   FIELD_PREP(ST7701_CMD2_BK1_VGHSS_MASK,
 			      DIV_ROUND_CLOSEST(clamp(desc->vgh_mv,
 						      (u16)11500,
 						      (u16)17000) - 11500,
 						500)));
 
-	ST7701_DSI(st7701, DSI_CMD2_BK1_TESTCMD, DSI_CMD2_BK1_TESTCMD_VAL);
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_TESTCMD, ST7701_CMD2_BK1_TESTCMD_VAL);
 
 	/* Vgl is non-linear */
-	ST7701_DSI(st7701, DSI_CMD2_BK1_VGLS,
-		   DSI_CMD2_BK1_VGLS_ONES |
-		   FIELD_PREP(DSI_CMD2_BK1_VGLS_MASK, st7701_vgls_map(st7701)));
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_VGLS,
+		   ST7701_CMD2_BK1_VGLS_ONES |
+		   FIELD_PREP(ST7701_CMD2_BK1_VGLS_MASK, st7701_vgls_map(st7701)));
 
-	ST7701_DSI(st7701, DSI_CMD2_BK1_PWCTLR1,
-		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL1_AP_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_PWCTLR1,
+		   FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL1_AP_MASK,
 			      desc->gamma_op_bias) |
-		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL1_APIS_MASK,
+		   FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL1_APIS_MASK,
 			      desc->input_op_bias) |
-		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL1_APOS_MASK,
+		   FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL1_APOS_MASK,
 			      desc->output_op_bias));
 
 	/* Avdd = 6.2V + (AVDD[1:0] * 0.2V) , Avcl = -4.4V - (AVCL[1:0] * 0.2V) */
-	ST7701_DSI(st7701, DSI_CMD2_BK1_PWCTLR2,
-		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL2_AVDD_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_PWCTLR2,
+		   FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL2_AVDD_MASK,
 			      DIV_ROUND_CLOSEST(desc->avdd_mv - 6200, 200)) |
-		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL2_AVCL_MASK,
+		   FIELD_PREP(ST7701_CMD2_BK1_PWRCTRL2_AVCL_MASK,
 			      DIV_ROUND_CLOSEST(-4400 - desc->avcl_mv, 200)));
 
 	/* T2D = 0.2us * T2D[3:0] */
-	ST7701_DSI(st7701, DSI_CMD2_BK1_SPD1,
-		   DSI_CMD2_BK1_SPD1_ONES_MASK |
-		   FIELD_PREP(DSI_CMD2_BK1_SPD1_T2D_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_SPD1,
+		   ST7701_CMD2_BK1_SPD1_ONES_MASK |
+		   FIELD_PREP(ST7701_CMD2_BK1_SPD1_T2D_MASK,
 			      DIV_ROUND_CLOSEST(desc->t2d_ns, 200)));
 
 	/* T3D = 4us + (0.8us * T3D[3:0]) */
-	ST7701_DSI(st7701, DSI_CMD2_BK1_SPD2,
-		   DSI_CMD2_BK1_SPD2_ONES_MASK |
-		   FIELD_PREP(DSI_CMD2_BK1_SPD2_T3D_MASK,
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_SPD2,
+		   ST7701_CMD2_BK1_SPD2_ONES_MASK |
+		   FIELD_PREP(ST7701_CMD2_BK1_SPD2_T3D_MASK,
 			      DIV_ROUND_CLOSEST(desc->t3d_ns - 4000, 800)));
 
-	ST7701_DSI(st7701, DSI_CMD2_BK1_MIPISET1,
-		   DSI_CMD2_BK1_MIPISET1_ONES |
-		   (desc->eot_en ? DSI_CMD2_BK1_MIPISET1_EOT_EN : 0));
+	ST7701_WRITE(st7701, ST7701_CMD2_BK1_MIPISET1,
+		   ST7701_CMD2_BK1_MIPISET1_ONES |
+		   (desc->eot_en ? ST7701_CMD2_BK1_MIPISET1_EOT_EN : 0));
 }
 
 static void ts8550b_gip_sequence(struct st7701 *st7701)
@@ -313,89 +313,89 @@ static void ts8550b_gip_sequence(struct st7701 *st7701)
 	 * ST7701_SPEC_V1.2 is unable to provide enough information above this
 	 * specific command sequence, so grab the same from vendor BSP driver.
 	 */
-	ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
-	ST7701_DSI(st7701, 0xE1, 0x0B, 0x00, 0x0D, 0x00, 0x0C, 0x00, 0x0E,
+	ST7701_WRITE(st7701, 0xE0, 0x00, 0x00, 0x02);
+	ST7701_WRITE(st7701, 0xE1, 0x0B, 0x00, 0x0D, 0x00, 0x0C, 0x00, 0x0E,
 		   0x00, 0x00, 0x44, 0x44);
-	ST7701_DSI(st7701, 0xE2, 0x33, 0x33, 0x44, 0x44, 0x64, 0x00, 0x66,
+	ST7701_WRITE(st7701, 0xE2, 0x33, 0x33, 0x44, 0x44, 0x64, 0x00, 0x66,
 		   0x00, 0x65, 0x00, 0x67, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
-	ST7701_DSI(st7701, 0xE4, 0x44, 0x44);
-	ST7701_DSI(st7701, 0xE5, 0x0C, 0x78, 0x3C, 0xA0, 0x0E, 0x78, 0x3C,
+	ST7701_WRITE(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
+	ST7701_WRITE(st7701, 0xE4, 0x44, 0x44);
+	ST7701_WRITE(st7701, 0xE5, 0x0C, 0x78, 0x3C, 0xA0, 0x0E, 0x78, 0x3C,
 		   0xA0, 0x10, 0x78, 0x3C, 0xA0, 0x12, 0x78, 0x3C, 0xA0);
-	ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
-	ST7701_DSI(st7701, 0xE7, 0x44, 0x44);
-	ST7701_DSI(st7701, 0xE8, 0x0D, 0x78, 0x3C, 0xA0, 0x0F, 0x78, 0x3C,
+	ST7701_WRITE(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
+	ST7701_WRITE(st7701, 0xE7, 0x44, 0x44);
+	ST7701_WRITE(st7701, 0xE8, 0x0D, 0x78, 0x3C, 0xA0, 0x0F, 0x78, 0x3C,
 		   0xA0, 0x11, 0x78, 0x3C, 0xA0, 0x13, 0x78, 0x3C, 0xA0);
-	ST7701_DSI(st7701, 0xEB, 0x02, 0x02, 0x39, 0x39, 0xEE, 0x44, 0x00);
-	ST7701_DSI(st7701, 0xEC, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xED, 0xFF, 0xF1, 0x04, 0x56, 0x72, 0x3F, 0xFF,
+	ST7701_WRITE(st7701, 0xEB, 0x02, 0x02, 0x39, 0x39, 0xEE, 0x44, 0x00);
+	ST7701_WRITE(st7701, 0xEC, 0x00, 0x00);
+	ST7701_WRITE(st7701, 0xED, 0xFF, 0xF1, 0x04, 0x56, 0x72, 0x3F, 0xFF,
 		   0xFF, 0xFF, 0xFF, 0xF3, 0x27, 0x65, 0x40, 0x1F, 0xFF);
 }
 
 static void dmt028vghmcmi_1a_gip_sequence(struct st7701 *st7701)
 {
-	ST7701_DSI(st7701, 0xEE, 0x42);
-	ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
+	ST7701_WRITE(st7701, 0xEE, 0x42);
+	ST7701_WRITE(st7701, 0xE0, 0x00, 0x00, 0x02);
 
-	ST7701_DSI(st7701, 0xE1,
+	ST7701_WRITE(st7701, 0xE1,
 		   0x04, 0xA0, 0x06, 0xA0,
 			   0x05, 0xA0, 0x07, 0xA0,
 			   0x00, 0x44, 0x44);
-	ST7701_DSI(st7701, 0xE2,
+	ST7701_WRITE(st7701, 0xE2,
 		   0x00, 0x00, 0x00, 0x00,
 			   0x00, 0x00, 0x00, 0x00,
 			   0x00, 0x00, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xE3,
+	ST7701_WRITE(st7701, 0xE3,
 		   0x00, 0x00, 0x22, 0x22);
-	ST7701_DSI(st7701, 0xE4, 0x44, 0x44);
-	ST7701_DSI(st7701, 0xE5,
+	ST7701_WRITE(st7701, 0xE4, 0x44, 0x44);
+	ST7701_WRITE(st7701, 0xE5,
 		   0x0C, 0x90, 0xA0, 0xA0,
 			   0x0E, 0x92, 0xA0, 0xA0,
 			   0x08, 0x8C, 0xA0, 0xA0,
 			   0x0A, 0x8E, 0xA0, 0xA0);
-	ST7701_DSI(st7701, 0xE6,
+	ST7701_WRITE(st7701, 0xE6,
 		   0x00, 0x00, 0x22, 0x22);
-	ST7701_DSI(st7701, 0xE7, 0x44, 0x44);
-	ST7701_DSI(st7701, 0xE8,
+	ST7701_WRITE(st7701, 0xE7, 0x44, 0x44);
+	ST7701_WRITE(st7701, 0xE8,
 		   0x0D, 0x91, 0xA0, 0xA0,
 			   0x0F, 0x93, 0xA0, 0xA0,
 			   0x09, 0x8D, 0xA0, 0xA0,
 			   0x0B, 0x8F, 0xA0, 0xA0);
-	ST7701_DSI(st7701, 0xEB,
+	ST7701_WRITE(st7701, 0xEB,
 		   0x00, 0x00, 0xE4, 0xE4,
 			   0x44, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xED,
+	ST7701_WRITE(st7701, 0xED,
 		   0xFF, 0xF5, 0x47, 0x6F,
 			   0x0B, 0xA1, 0xAB, 0xFF,
 			   0xFF, 0xBA, 0x1A, 0xB0,
 			   0xF6, 0x74, 0x5F, 0xFF);
-	ST7701_DSI(st7701, 0xEF,
+	ST7701_WRITE(st7701, 0xEF,
 		   0x08, 0x08, 0x08, 0x40,
 			   0x3F, 0x64);
 
 	st7701_switch_cmd_bkx(st7701, false, 0);
 
 	st7701_switch_cmd_bkx(st7701, true, 3);
-	ST7701_DSI(st7701, 0xE6, 0x7C);
-	ST7701_DSI(st7701, 0xE8, 0x00, 0x0E);
+	ST7701_WRITE(st7701, 0xE6, 0x7C);
+	ST7701_WRITE(st7701, 0xE8, 0x00, 0x0E);
 
 	st7701_switch_cmd_bkx(st7701, false, 0);
-	ST7701_DSI(st7701, 0x11);
+	ST7701_WRITE(st7701, 0x11);
 	msleep(120);
 
 	st7701_switch_cmd_bkx(st7701, true, 3);
-	ST7701_DSI(st7701, 0xE8, 0x00, 0x0C);
+	ST7701_WRITE(st7701, 0xE8, 0x00, 0x0C);
 	msleep(10);
-	ST7701_DSI(st7701, 0xE8, 0x00, 0x00);
+	ST7701_WRITE(st7701, 0xE8, 0x00, 0x00);
 
 	st7701_switch_cmd_bkx(st7701, false, 0);
-	ST7701_DSI(st7701, 0x11);
+	ST7701_WRITE(st7701, 0x11);
 	msleep(120);
-	ST7701_DSI(st7701, 0xE8, 0x00, 0x00);
+	ST7701_WRITE(st7701, 0xE8, 0x00, 0x00);
 
 	st7701_switch_cmd_bkx(st7701, false, 0);
 
-	ST7701_DSI(st7701, 0x3A, 0x70);
+	ST7701_WRITE(st7701, 0x3A, 0x70);
 }
 
 static void kd50t048a_gip_sequence(struct st7701 *st7701)
@@ -404,58 +404,58 @@ static void kd50t048a_gip_sequence(struct st7701 *st7701)
 	 * ST7701_SPEC_V1.2 is unable to provide enough information above this
 	 * specific command sequence, so grab the same from vendor BSP driver.
 	 */
-	ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
-	ST7701_DSI(st7701, 0xE1, 0x08, 0x00, 0x0A, 0x00, 0x07, 0x00, 0x09,
+	ST7701_WRITE(st7701, 0xE0, 0x00, 0x00, 0x02);
+	ST7701_WRITE(st7701, 0xE1, 0x08, 0x00, 0x0A, 0x00, 0x07, 0x00, 0x09,
 		   0x00, 0x00, 0x33, 0x33);
-	ST7701_DSI(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	ST7701_WRITE(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 		   0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
-	ST7701_DSI(st7701, 0xE4, 0x44, 0x44);
-	ST7701_DSI(st7701, 0xE5, 0x0E, 0x60, 0xA0, 0xA0, 0x10, 0x60, 0xA0,
+	ST7701_WRITE(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
+	ST7701_WRITE(st7701, 0xE4, 0x44, 0x44);
+	ST7701_WRITE(st7701, 0xE5, 0x0E, 0x60, 0xA0, 0xA0, 0x10, 0x60, 0xA0,
 		   0xA0, 0x0A, 0x60, 0xA0, 0xA0, 0x0C, 0x60, 0xA0, 0xA0);
-	ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
-	ST7701_DSI(st7701, 0xE7, 0x44, 0x44);
-	ST7701_DSI(st7701, 0xE8, 0x0D, 0x60, 0xA0, 0xA0, 0x0F, 0x60, 0xA0,
+	ST7701_WRITE(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
+	ST7701_WRITE(st7701, 0xE7, 0x44, 0x44);
+	ST7701_WRITE(st7701, 0xE8, 0x0D, 0x60, 0xA0, 0xA0, 0x0F, 0x60, 0xA0,
 		   0xA0, 0x09, 0x60, 0xA0, 0xA0, 0x0B, 0x60, 0xA0, 0xA0);
-	ST7701_DSI(st7701, 0xEB, 0x02, 0x01, 0xE4, 0xE4, 0x44, 0x00, 0x40);
-	ST7701_DSI(st7701, 0xEC, 0x02, 0x01);
-	ST7701_DSI(st7701, 0xED, 0xAB, 0x89, 0x76, 0x54, 0x01, 0xFF, 0xFF,
+	ST7701_WRITE(st7701, 0xEB, 0x02, 0x01, 0xE4, 0xE4, 0x44, 0x00, 0x40);
+	ST7701_WRITE(st7701, 0xEC, 0x02, 0x01);
+	ST7701_WRITE(st7701, 0xED, 0xAB, 0x89, 0x76, 0x54, 0x01, 0xFF, 0xFF,
 		   0xFF, 0xFF, 0xFF, 0xFF, 0x10, 0x45, 0x67, 0x98, 0xBA);
 }
 
 static void rg_arc_gip_sequence(struct st7701 *st7701)
 {
 	st7701_switch_cmd_bkx(st7701, true, 3);
-	ST7701_DSI(st7701, 0xEF, 0x08);
+	ST7701_WRITE(st7701, 0xEF, 0x08);
 	st7701_switch_cmd_bkx(st7701, true, 0);
-	ST7701_DSI(st7701, 0xC7, 0x04);
-	ST7701_DSI(st7701, 0xCC, 0x38);
+	ST7701_WRITE(st7701, 0xC7, 0x04);
+	ST7701_WRITE(st7701, 0xCC, 0x38);
 	st7701_switch_cmd_bkx(st7701, true, 1);
-	ST7701_DSI(st7701, 0xB9, 0x10);
-	ST7701_DSI(st7701, 0xBC, 0x03);
-	ST7701_DSI(st7701, 0xC0, 0x89);
-	ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
-	ST7701_DSI(st7701, 0xE1, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
+	ST7701_WRITE(st7701, 0xB9, 0x10);
+	ST7701_WRITE(st7701, 0xBC, 0x03);
+	ST7701_WRITE(st7701, 0xC0, 0x89);
+	ST7701_WRITE(st7701, 0xE0, 0x00, 0x00, 0x02);
+	ST7701_WRITE(st7701, 0xE1, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
 		   0x00, 0x00, 0x20, 0x20);
-	ST7701_DSI(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	ST7701_WRITE(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 		   0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x00);
-	ST7701_DSI(st7701, 0xE4, 0x22, 0x00);
-	ST7701_DSI(st7701, 0xE5, 0x04, 0x5C, 0xA0, 0xA0, 0x06, 0x5C, 0xA0,
+	ST7701_WRITE(st7701, 0xE3, 0x00, 0x00, 0x33, 0x00);
+	ST7701_WRITE(st7701, 0xE4, 0x22, 0x00);
+	ST7701_WRITE(st7701, 0xE5, 0x04, 0x5C, 0xA0, 0xA0, 0x06, 0x5C, 0xA0,
 		   0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x00);
-	ST7701_DSI(st7701, 0xE7, 0x22, 0x00);
-	ST7701_DSI(st7701, 0xE8, 0x05, 0x5C, 0xA0, 0xA0, 0x07, 0x5C, 0xA0,
+	ST7701_WRITE(st7701, 0xE6, 0x00, 0x00, 0x33, 0x00);
+	ST7701_WRITE(st7701, 0xE7, 0x22, 0x00);
+	ST7701_WRITE(st7701, 0xE8, 0x05, 0x5C, 0xA0, 0xA0, 0x07, 0x5C, 0xA0,
 		   0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xEB, 0x02, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xEC, 0x00, 0x00);
-	ST7701_DSI(st7701, 0xED, 0xFA, 0x45, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF,
+	ST7701_WRITE(st7701, 0xEB, 0x02, 0x00, 0x40, 0x40, 0x00, 0x00, 0x00);
+	ST7701_WRITE(st7701, 0xEC, 0x00, 0x00);
+	ST7701_WRITE(st7701, 0xED, 0xFA, 0x45, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF,
 		   0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xB0, 0x54, 0xAF);
-	ST7701_DSI(st7701, 0xEF, 0x08, 0x08, 0x08, 0x45, 0x3F, 0x54);
+	ST7701_WRITE(st7701, 0xEF, 0x08, 0x08, 0x08, 0x45, 0x3F, 0x54);
 	st7701_switch_cmd_bkx(st7701, false, 0);
-	ST7701_DSI(st7701, MIPI_DCS_SET_ADDRESS_MODE, 0x17);
-	ST7701_DSI(st7701, MIPI_DCS_SET_PIXEL_FORMAT, 0x77);
-	ST7701_DSI(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
+	ST7701_WRITE(st7701, MIPI_DCS_SET_ADDRESS_MODE, 0x17);
+	ST7701_WRITE(st7701, MIPI_DCS_SET_PIXEL_FORMAT, 0x77);
+	ST7701_WRITE(st7701, MIPI_DCS_EXIT_SLEEP_MODE, 0x00);
 	msleep(120);
 }
 
@@ -490,7 +490,7 @@ static int st7701_enable(struct drm_panel *panel)
 {
 	struct st7701 *st7701 = panel_to_st7701(panel);
 
-	ST7701_DSI(st7701, MIPI_DCS_SET_DISPLAY_ON, 0x00);
+	ST7701_WRITE(st7701, MIPI_DCS_SET_DISPLAY_ON, 0x00);
 
 	return 0;
 }
@@ -499,7 +499,7 @@ static int st7701_disable(struct drm_panel *panel)
 {
 	struct st7701 *st7701 = panel_to_st7701(panel);
 
-	ST7701_DSI(st7701, MIPI_DCS_SET_DISPLAY_OFF, 0x00);
+	ST7701_WRITE(st7701, MIPI_DCS_SET_DISPLAY_OFF, 0x00);
 
 	return 0;
 }
@@ -508,7 +508,7 @@ static int st7701_unprepare(struct drm_panel *panel)
 {
 	struct st7701 *st7701 = panel_to_st7701(panel);
 
-	ST7701_DSI(st7701, MIPI_DCS_ENTER_SLEEP_MODE, 0x00);
+	ST7701_WRITE(st7701, MIPI_DCS_ENTER_SLEEP_MODE, 0x00);
 
 	msleep(st7701->sleep_delay);
 
@@ -602,62 +602,62 @@ static const struct st7701_panel_desc ts8550b_desc = {
 	.panel_sleep_delay = 80, /* panel need extra 80ms for sleep out cmd */
 
 	.pv_gamma = {
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xe),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x15),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xf),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xe),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x15),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xf),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x8),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x8),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x23),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x23),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x12),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x2b),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x34),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x12),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x2b),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x34),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
 	},
 	.nv_gamma = {
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xe),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x2) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x15),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xf),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xe),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0x2) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x15),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xf),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x13),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x7),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x9),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x13),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x7),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x9),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x22),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x10),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x22),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x10),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0xe),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x2c),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x34),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0xe),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x2c),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x34),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
 	},
 	.nlinv = 7,
 	.vop_uv = 4400000,
@@ -703,62 +703,62 @@ static const struct st7701_panel_desc dmt028vghmcmi_1a_desc = {
 	.panel_sleep_delay = 5, /* panel need extra 5ms for sleep out cmd */
 
 	.pv_gamma = {
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x10),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x17),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0x10),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x17),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x6),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x5),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x6),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x5),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1f),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x11),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1f),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x4),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x11),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0xe),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x29),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x30),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0xe),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x29),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x30),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
 	},
 	.nv_gamma = {
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xe),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xe),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x6),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x4),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x6),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x4),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x13),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x26),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x30),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x13),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x26),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x30),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1f)
 	},
 	.nlinv = 1,
 	.vop_uv = 4800000,
@@ -802,62 +802,62 @@ static const struct st7701_panel_desc kd50t048a_desc = {
 	.panel_sleep_delay = 0,
 
 	.pv_gamma = {
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x2),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x2),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1e),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1e),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x23),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x23),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
 	},
 	.nv_gamma = {
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xc),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xc),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0xc),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0xc),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x3),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x3),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x24),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x24),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
 	},
 	.nlinv = 1,
 	.vop_uv = 4887500,
@@ -901,62 +901,62 @@ static const struct st7701_panel_desc rg_arc_desc = {
 	.panel_sleep_delay = 80,
 
 	.pv_gamma = {
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1d),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1d),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x12),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x0a),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x12),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x0a),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x25),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x03),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x25),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x03),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
 	},
 	.nv_gamma = {
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1e),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0x01) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC4_MASK, 0x16),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC8_MASK, 0x1e),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC16_MASK, 0x0e),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x08),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC24_MASK, 0x11),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC52_MASK, 0x06),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC80_MASK, 0x0c),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC108_MASK, 0x08),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x26),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x15),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC147_MASK, 0x09),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC175_MASK, 0x26),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC203_MASK, 0x00),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC231_MASK, 0x15),
 
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
-		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC239_MASK, 0x00),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC247_MASK, 0x3f),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC251_MASK, 0x3f),
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(ST7701_CMD2_BK0_GAMCTRL_VC255_MASK, 0x1c)
 	},
 	.nlinv = 0,
 	.vop_uv = 4500000,
-- 
2.45.2


