Return-Path: <devicetree+bounces-5257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BC47B5B4B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:30:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 57B08282CD8
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127AE1F953;
	Mon,  2 Oct 2023 19:30:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAFB1F948
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:30:24 +0000 (UTC)
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90DF9BF
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:30:22 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1e1a2e26afcso57925fac.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 12:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696275022; x=1696879822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3jHvZe6aosJuHasAj0ipH38kAgmnBv9GPeYuxoWs7zI=;
        b=Bx+5fboPc/uHIw+oY73mz16A4upNlLwAf43gf/B1rnSrjHfpQ76l1vLwg5Cqp59PPi
         vjGd9J1mTmymhuDA4o/c5DBkUdX/Gms6n0vKBtwLARw3+gcI1JsbDWwjho+5cv8RMwMZ
         T6jI8NzvysP9YLpYTg454j9t0DjEka1AB4hKm5ochK55ZutqPMBs9yMnaEr6yuvY7SrV
         HBCLMED1cdflBLTt95kuhWY+zS8DH/ESGsJy8hLMahGJXD7tSy+czD5etyEbwHKraGId
         vUUARMxhbuAfcJL1MhjYjew3HtG9nBazfGHIERNTB/Pko73O5ZLyQm86zt4emW7pfGg1
         katg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696275022; x=1696879822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3jHvZe6aosJuHasAj0ipH38kAgmnBv9GPeYuxoWs7zI=;
        b=QH3er43SBop+GORHGKb9/1CRSXhCvhwrSadW3in3gNgUX2yjGoOHmCxCOibSH1dOPE
         OCLAhiRDIPZq9EWz6E9knnafV1HtdQ31wM3s5PvhSjyAHdl/03yWXt3i0VQAdYSyt7a+
         u0RAc6hJFDqhdb5FMgYq7HzHg1+ma5fcfAD3ExV973PIuhj6lKe1gfrvgD7rASVLfDIs
         omRnY1DOWoYi61S2iDQVXTXV1KkeuWgmeGrdbJU63GT9PCbHl1WsJgdGTSKUaA1ouPJb
         pCuJhMeuiy1Wybh/LuWCHu30c9j+hEvnTc/Pl5Kfkv2dZPQ/eCZCKASJ0Rrz3DMC2P7c
         e0Pg==
X-Gm-Message-State: AOJu0YzXjLFGQxhIAv0PVhbtx9WsuslwpjTo4UwDPZlPYoWxWLGx+58Y
	ATIy8Qhra+WpiEE920zK7hqWfdtd2ZY=
X-Google-Smtp-Source: AGHT+IEkqL6FTSuOMDJWac6sXEEHotCWHKEG4suprh91GcPG0WolwrnoAp7zBJ43Mtswbigkp1sdCQ==
X-Received: by 2002:a05:6870:2102:b0:1d0:f5bd:6cf with SMTP id f2-20020a056870210200b001d0f5bd06cfmr14611000oae.43.1696275021683;
        Mon, 02 Oct 2023 12:30:21 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id ep35-20020a056870a9a300b001dc8b2f06a1sm4846398oab.55.2023.10.02.12.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 12:30:21 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/2] drm/panel: nv3051d: Add Support for Anbernic 351V
Date: Mon,  2 Oct 2023 14:30:16 -0500
Message-Id: <20231002193016.139452-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231002193016.139452-1-macroalpha82@gmail.com>
References: <20231002193016.139452-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic 351V. Just like the 353 series the
underlying vendor is unknown/unmarked (at least not visible in a
non-destructive manner). The panel had slightly different init
sequences and timings in the BSP kernel, but works fine with the
same ones used in the existing driver. The panel will not work without
the inclusion of the MIPI_DSI_CLOCK_NON_CONTINUOUS flag, and this flag
prevents the 353 series from working correctly, so a new compatible
string is added.

Tested colors and timings using modetest and all seem to work identical
to the 353 otherwise.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
index ad98dd9322b4..f644dbc8ee8a 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
@@ -354,6 +354,7 @@ static const struct drm_panel_funcs panel_nv3051d_funcs = {
 static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
 {
 	struct device *dev = &dsi->dev;
+	struct device_node *np = dev->of_node;
 	struct panel_nv3051d *ctx;
 	int ret;
 
@@ -388,6 +389,13 @@ static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
 	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
 			  MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
 
+	/*
+	 * The panel in the RG351V is identical to the 353P, except it
+	 * requires MIPI_DSI_CLOCK_NON_CONTINUOUS to operate correctly.
+	 */
+	if (of_device_is_compatible(np, "anbernic,rg351v-panel"))
+		dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;
+
 	drm_panel_init(&ctx->panel, &dsi->dev, &panel_nv3051d_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
-- 
2.34.1


