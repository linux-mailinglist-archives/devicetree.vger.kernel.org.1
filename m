Return-Path: <devicetree+bounces-248304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E67DCD0F08
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B039303D265
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:41:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BAE234F47C;
	Fri, 19 Dec 2025 16:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="G3O+x61n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5C72F7AB0
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162492; cv=none; b=JByTTB69VqzMw2PTop3N7wmGT9aTO22wMHlnFJREOw0UrR/XI+EndxtbFHACkSCIdTewmgVgEc77U8aEEhP/A+XKZgg8QvOLBD0XX6buIxYy/UVVt369Uxc2lpYB8BLyLBjV7VtuGpNh+1IS0+83c4BWf423ZOchiYSJddlbx/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162492; c=relaxed/simple;
	bh=ohNmR27RG7BPFcETLws/RzDvloxNbzu49qmgmsyHzbg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SMSSGpYJfeLWbuP27Akdt7H/xFzsRcOh7GRI2GVQ7sa3qZX7J3chcVfExMvbBig85IcpMIhpiuvU/Y63jccapNrz9VVKfow2OfyDLUphbZfZPFpJybMC7XyJkyLR9rT48Xf/nS6IwPG6PRxd6xO0lf0BglIKvr5EI3PsdvSSj3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=G3O+x61n; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b736d883ac4so351434966b.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1766162480; x=1766767280; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uWMS63VZAWh+LwVHiFL3RZByyF+lbmglu9thz5C4XBk=;
        b=G3O+x61nJGQ2v9gxlW9DoKQWs7FlDsR7e+iYSWtrvNdmW3VOwum19S21HI7t7JSjSx
         N7pjkhfoO3dzCGING/WbFXZiPxc8fPpetibizAnOBeO/Llk1eKLD8irIq7uttHfle9/k
         Pu6kXgj8HLeQZDAW7b5yXXllT9hofWQImtONCCBhvNUj8LGi5R82DKmT4toJcbusaxLd
         IM80nrE8iSK6yLBYeJqX/0nCmJKQ23vIP2RyIN3KClbRWrl+w6eiLBnEYgX4zWYgLdQf
         hYzW0r3Fa7gdY9GxoY6DuyDAWhU1skLPaJQBnSVBIjqHEs+DyY8bUgeD0/kHCfs3Ltil
         /HtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766162480; x=1766767280;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uWMS63VZAWh+LwVHiFL3RZByyF+lbmglu9thz5C4XBk=;
        b=C7hJfs/cp0sUM7tfjRFt7S++gWKiosQ2mcp40RHaU3iT+hawTSxeAF76jxN+VKluWR
         LZ1eTE+uZMaJUXb1409HHcufYIiAcFjUN2MO90KE9Qjk09Vk/1XgLWG7xpj6kNlmpK2O
         2AoCrxipqp3X45PW2jXYF6sk1hRJGWbyH89lvLf7KIEY9ULwsBymMmkytfx0RLa/vwS2
         fNlEBjUCIadubwuxyLmyTT071dj6EreA3CDIEEbIN16Jb7q7H4Pij9cYHI5mP2WnM/OU
         wytvIoiFw+dUD14LD4A/PvSQVirpCakz07ItG9v6Y63Qc2Mrgs5xJkJ0kjwWQ6V0Lt/f
         v/1w==
X-Forwarded-Encrypted: i=1; AJvYcCWGeQ17vhDWYTKVqFUIvue8/LYACI8o0yjW4bEd/SacsvG1DFQTqsd+b2XkA/BrwG///Jgq8WDtuWj+@vger.kernel.org
X-Gm-Message-State: AOJu0YzBMGrwOJJuBy5gX3VhKj1KfEoesIzCKnmSzW3Xi3crk7P/Gq/x
	AXiCBmhiS6k7ibKqxf4SsO0Qvej5kaeyrTZYzkOfcGzOFV4XEcefWV7UXHDz1qUofYo=
X-Gm-Gg: AY/fxX7ZXuoN1fOu9BSnkg2e5OUYLlJcna4xhUz76oHf87CQrVR/dsiG3/WP5/hBMOl
	G7n1KpBpffURAenMt3Vv4LuHwcSjBgrcYDSwEFjgXB4qiEb/gVUlVxBQUVvukhkTrfP8g/kO79+
	akFLiUgKY9X4UlNVzrnT4VJImDAT3zzRBkzHvTR+vYrsJaMRWuEakD/5mjU49pOqJLPgdOc1GyS
	X0eBX/GepkkdRPVWG97/u28DLliDo8077NmH0ye3QF41TiujBXMoO2XM0Cg2eP2Bap/fGuVD1Tn
	9ipFM0xLNuFTYpnEl3lg2+OQmmycVIlvCOrwwq66YXpb+zJkzxQJRRTOFXlvNHp66teCaZq8acM
	xUBW4kSgPliCTj47kdTeT2dvrKlzo8Kqk+dAYMx0yd2qDx66KdAZFeVfquHCTIJcNyrIBF70/Nz
	AWrM1cRtCJG54NRhrzrsTOo/jSCGxOsSU7/0g3LMF4mK9WS+ExTN4f85xDsLd1hkVw7hYtXwfzL
	GU66UvdEU+o2mntRGVmpB0nvtfQBvtzfHI=
X-Google-Smtp-Source: AGHT+IFeBLx34o/uuAUMdH45ClT+LNyEz+ShlvD87iHmO/mzLZ8v0c7+jV3dTjNrwelR4FlFcBNZ7w==
X-Received: by 2002:a17:906:fd81:b0:b77:18a0:3c8b with SMTP id a640c23a62f3a-b8036f0a48bmr315593566b.1.1766162480371;
        Fri, 19 Dec 2025 08:41:20 -0800 (PST)
Received: from [192.168.178.182] (2001-1c00-3b89-c600-71a4-084f-6409-1447.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b89:c600:71a4:84f:6409:1447])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f4ef1fsm270073866b.64.2025.12.19.08.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:41:19 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 19 Dec 2025 17:41:08 +0100
Subject: [PATCH RFC 2/6] drm/msm/dsi: add support for DSI-PHY on Milos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-milos-mdss-v1-2-4537a916bdf9@fairphone.com>
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
In-Reply-To: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766162477; l=2966;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ohNmR27RG7BPFcETLws/RzDvloxNbzu49qmgmsyHzbg=;
 b=u8kMZZ5XCdBAQqVc75EEYESeLgtSwulD/FZN1Nv9WKgIfHtzElwwgfCg8ePkE2aG/YwOFsu88
 +7CWnoGudYNBpfHSe96RbCE5NSbFfaFoIDAKT4j6P4V8E4RsRpxpuIQ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add DSI PHY support for the Milos platform.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 24 ++++++++++++++++++++++++
 3 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
index 4ea681130dba..0ac5029d3eb4 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
@@ -571,6 +571,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
 	  .data = &dsi_phy_5nm_8350_cfgs },
 	{ .compatible = "qcom,sm8450-dsi-phy-5nm",
 	  .data = &dsi_phy_5nm_8450_cfgs },
+	{ .compatible = "qcom,milos-dsi-phy-4nm",
+	  .data = &dsi_phy_4nm_milos_cfgs },
 	{ .compatible = "qcom,sm8550-dsi-phy-4nm",
 	  .data = &dsi_phy_4nm_8550_cfgs },
 	{ .compatible = "qcom,sm8650-dsi-phy-4nm",
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
index 3cbf08231492..011bee593199 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
@@ -61,6 +61,7 @@ extern const struct msm_dsi_phy_cfg dsi_phy_5nm_8350_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_5nm_8450_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_5nm_8775p_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_5nm_sar2130p_cfgs;
+extern const struct msm_dsi_phy_cfg dsi_phy_4nm_milos_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8550_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8650_cfgs;
 extern const struct msm_dsi_phy_cfg dsi_phy_3nm_8750_cfgs;
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index c5e1d2016bcc..6ca45e5c2cc0 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -1436,6 +1436,30 @@ const struct msm_dsi_phy_cfg dsi_phy_5nm_sar2130p_cfgs = {
 	.quirks = DSI_PHY_7NM_QUIRK_V5_2,
 };
 
+const struct msm_dsi_phy_cfg dsi_phy_4nm_milos_cfgs = {
+	.has_phy_lane = true,
+	.regulator_data = dsi_phy_7nm_98000uA_regulators,
+	.num_regulators = ARRAY_SIZE(dsi_phy_7nm_98000uA_regulators),
+	.ops = {
+		.enable = dsi_7nm_phy_enable,
+		.disable = dsi_7nm_phy_disable,
+		.pll_init = dsi_pll_7nm_init,
+		.save_pll_state = dsi_7nm_pll_save_state,
+		.restore_pll_state = dsi_7nm_pll_restore_state,
+		.set_continuous_clock = dsi_7nm_set_continuous_clock,
+	},
+	// FIXME not sure about these rate values
+	.min_pll_rate = 600000000UL,
+#ifdef CONFIG_64BIT
+	.max_pll_rate = 5000000000UL,
+#else
+	.max_pll_rate = ULONG_MAX,
+#endif
+	.io_start = { 0xae95000 },
+	.num_dsi_phy = 1,
+	.quirks = DSI_PHY_7NM_QUIRK_V5_2,
+};
+
 const struct msm_dsi_phy_cfg dsi_phy_4nm_8550_cfgs = {
 	.has_phy_lane = true,
 	.regulator_data = dsi_phy_7nm_98400uA_regulators,

-- 
2.52.0


