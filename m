Return-Path: <devicetree+bounces-170171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75809A9A1AE
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:23:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 074885A4AEB
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AECF1F152E;
	Thu, 24 Apr 2025 06:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="QKngTrY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B4A1EBA08
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475728; cv=none; b=iFTKer5SePCcPfBNYlx5cfCpk5NL1OWMBCsFp7weMWz7mGTVIg+1H7QHVrmjOCthPfHWXBeN2kpIjegX8bj2NsU6/8ZOvBILyANhG2tHnjnk1T4QPI8yct9CMWFTYjUsXFjF1H3tP7c2AgAUkChvX+so3ObzL5Na+itvRPKNOfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475728; c=relaxed/simple;
	bh=xUBRrkr1aLPPwLeMGNd5Xto6SUkG0PhtvIzCxxAX118=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E88setGij7ZSKrIySYntuu8j3SkqGlBLsbXBHuDC5daAwss0nQQ5IlPOBYZybb+YkqLxSldYe9FwXdhq1+uTaC61xs/fV76ayy0oQD+JrQ4DR3pMekJ4rTNVPjdamkPY5dPxP02TWQRIroBRQWKD8U8LaQ1VdtsAmRyo2wCPtQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=QKngTrY8; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so3647485e9.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475725; x=1746080525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=QKngTrY8XyYb/oPmUsUnO/2BT+z4663V4PMCniNqB1/BmJOU+WPhKIgFCdbwuumwkt
         FYaQeAPGtJx8B9zlQLt0qXdojIl+QghaePHM+4XviZRHURLgZhNGm3jPn2SZQrQ/b6TN
         LdvX07qECDVcHIukmfsb22bzKLbbWJdI0RK+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475725; x=1746080525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T8/6J4AE7rdE7DvbcqL7lv8LvF8nVi/MJUfgoa9DfhY=;
        b=PP+L3EHtuOEyG9dIRRY3IUlIt0uJ2pQQSoavHiFn6s+++Tc1KYieTob4NM2eLrYZTA
         VUFjIIOx0RkHQ408E8lVJByEm02ztlNhFQnzwRwf2Ttk96DyCQ3oxqhqg53Af5W418ma
         dN4/HtTCkKAJZ8XQthrhCAyah9W9kvaFHSgv6BmvGqljLz+lD3pglxhkEK9+MMAjrJmj
         eyI3uFjV6HPPksm5Tji8oILCkCBwlQ5RhGBEict4sY0OllP9eXB5tyAhJtUD5gmWUroR
         zOTIwxnD1YV2ThCOwGmTN/l0oTB0VFnx0GoZJlXKRvbepGfecMd9eDjffKaaX8S/tyn0
         7Lrw==
X-Forwarded-Encrypted: i=1; AJvYcCUWCFSIXUYTUPJ+U/KlS4EO4oBxn38fRm2ZTd6x4XR+B+CViQw0plUcvRd7BZ69g/fCUp1vxUzUwVT6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3xfdrJVDVEcA/+Vcv2TIkxtvNl0fkpU3LOaN/ROPQbE0krm+s
	EmWykSBoCYGnZtemZGmUEkKYzf/MC5EoqwW+4W+EHJcuot6gG+d//wqFo4zWNUyQaGK3KoRQzB9
	t
X-Gm-Gg: ASbGnctZHUGtZxc4nOJUx/RJe8LVYaX44EnMDnFrXXZ6hvEG4wQSy+ViIZLQqv0GRCd
	xInYqaEmKuLVHJhLi9k6vHlLsUGMhD5sxx8Pafikh0psMRFPcTki2i6m4Ib/2N7X+rVrbZOkRFN
	tssWkxKumDVoqeObKak2q9ODmox/+grynJMOI3Ljn5l5VTicvW0niT8e719ZPi38w1WmwE3Q4kA
	jnwGrJVMa36MGX024ek/Z5Vsj4UJgCxIBzrT56tKT/ypFdeQ8d/uasJ52bbQUYJYyVVhPcdXJDH
	UsfKRvHQjIfoNJk/vPnBIHYENeJAKjqysB4u/NzG/5QFLK/huwfe7TXiOofIy3vGWYjgZFCacxE
	1hGAxUbYOnk5yTD0=
X-Google-Smtp-Source: AGHT+IHA1z+SJ8l5kTHAH1BnVEYBj1dwbuY6iHebOIqghszliSfqMBNBdsQ07ikrO61th2+IoqH7TQ==
X-Received: by 2002:a05:600c:a417:b0:43c:f16a:641e with SMTP id 5b1f17b1804b1-4409bd05250mr9684695e9.6.1745475724855;
        Wed, 23 Apr 2025 23:22:04 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:04 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v12 03/19] dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
Date: Thu, 24 Apr 2025 08:21:33 +0200
Message-ID: <20250424062154.2999219-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Unlike audio_pll1 and audio_pll2, there is no video_pll2. Further, the
name used in the RM is video_pll. So, let's add the IMX8MP_VIDEO_PLL[_*]
definitions to be consistent with the RM and avoid misunderstandings.

The IMX8MP_VIDEO_PLL1* constants have not been removed to ensure
backward compatibility of the patch.

No functional changes intended.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v6)

Changes in v6:
- Add 'Acked-by' tag of Krzysztof Kozlowski

Changes in v5:
- New

 include/dt-bindings/clock/imx8mp-clock.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 7da4243984b2..3235d7de3b62 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -16,7 +16,8 @@
 #define IMX8MP_CLK_EXT4				7
 #define IMX8MP_AUDIO_PLL1_REF_SEL		8
 #define IMX8MP_AUDIO_PLL2_REF_SEL		9
-#define IMX8MP_VIDEO_PLL1_REF_SEL		10
+#define IMX8MP_VIDEO_PLL_REF_SEL		10
+#define IMX8MP_VIDEO_PLL1_REF_SEL		IMX8MP_VIDEO_PLL_REF_SEL
 #define IMX8MP_DRAM_PLL_REF_SEL			11
 #define IMX8MP_GPU_PLL_REF_SEL			12
 #define IMX8MP_VPU_PLL_REF_SEL			13
@@ -26,7 +27,8 @@
 #define IMX8MP_SYS_PLL3_REF_SEL			17
 #define IMX8MP_AUDIO_PLL1			18
 #define IMX8MP_AUDIO_PLL2			19
-#define IMX8MP_VIDEO_PLL1			20
+#define IMX8MP_VIDEO_PLL			20
+#define IMX8MP_VIDEO_PLL1			IMX8MP_VIDEO_PLL
 #define IMX8MP_DRAM_PLL				21
 #define IMX8MP_GPU_PLL				22
 #define IMX8MP_VPU_PLL				23
@@ -36,7 +38,8 @@
 #define IMX8MP_SYS_PLL3				27
 #define IMX8MP_AUDIO_PLL1_BYPASS		28
 #define IMX8MP_AUDIO_PLL2_BYPASS		29
-#define IMX8MP_VIDEO_PLL1_BYPASS		30
+#define IMX8MP_VIDEO_PLL_BYPASS			30
+#define IMX8MP_VIDEO_PLL1_BYPASS		IMX8MP_VIDEO_PLL_BYPASS
 #define IMX8MP_DRAM_PLL_BYPASS			31
 #define IMX8MP_GPU_PLL_BYPASS			32
 #define IMX8MP_VPU_PLL_BYPASS			33
@@ -46,7 +49,8 @@
 #define IMX8MP_SYS_PLL3_BYPASS			37
 #define IMX8MP_AUDIO_PLL1_OUT			38
 #define IMX8MP_AUDIO_PLL2_OUT			39
-#define IMX8MP_VIDEO_PLL1_OUT			40
+#define IMX8MP_VIDEO_PLL_OUT			40
+#define IMX8MP_VIDEO_PLL1_OUT			IMX8MP_VIDEO_PLL_OUT
 #define IMX8MP_DRAM_PLL_OUT			41
 #define IMX8MP_GPU_PLL_OUT			42
 #define IMX8MP_VPU_PLL_OUT			43
-- 
2.43.0


