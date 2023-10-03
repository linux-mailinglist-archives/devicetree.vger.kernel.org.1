Return-Path: <devicetree+bounces-5628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF7E7B6E96
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 18:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8DB4F2812EF
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 16:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39312AB3D;
	Tue,  3 Oct 2023 16:34:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6046221349
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 16:34:04 +0000 (UTC)
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CDA6A1
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:34:03 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6c65d096c96so561962a34.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 09:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696350842; x=1696955642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OOhsxi8PjymwwLh84f6DRmuTn2wewUc5+RB2fJ2TRcU=;
        b=lCIHJP4yl32iPa4Yo4lzvAUSczC1wJjZxL5dtmvwYpHiymwD73YzuWaoJ+dw+tzi93
         UmdND2zi/mDghOzny8mOlRcyeK4talvLBvPsCDQyet/I9OkZ69Hx92YPdvDpou9eW2vs
         oNAb+Sh8fSqcu/ohds7cjIERS0gOFD+a5Q7CfwbECfne1GTixBh1OqqM00DyQ9JNK7z7
         oeImxxDPOhJCjtpf6emaX51LLIJtA+zhQxv0j4YdPNB9xVvNNrI7jSp1bNNmKy7hRtGJ
         ajpesAzv2H21NURBcW47JgEXxdfNiiUcADRMK6PSDzX/+OqOT2vRgYhGT1rsMmmQnHWu
         vN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696350842; x=1696955642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OOhsxi8PjymwwLh84f6DRmuTn2wewUc5+RB2fJ2TRcU=;
        b=ttZAKcf1UbgTkik3clw8b2Zbds72Tjo7x75vBiP9VBhMbS6e9mXn0A7Bl5Lp8ufl1Y
         hCuM8HhSqnNQlQA8d0mscjwFG/sRooywE+hBqaXXkYggyBjwj9WCH/HpbLT1IbsGTmAU
         bFVo6fRhMunWmBKr0d4alt1odidgiGUy+qvX0KW+owezbLQ9MT/ax2g4a0pK7+xqU02h
         oIGhlDjvbae8O50gjTP5pStr3zrZyve86w4C5qlmeZWTcBv3mHXCgLHTnJ6k2AOxEqx4
         WFg0ditV2TwNvnZ0DGh29mIgb0XisrUXdcqDwBQhhToKp4Alvtdz7xv0fk+JJjAhQS9O
         KqMQ==
X-Gm-Message-State: AOJu0YzK0j+DBmJZnzjmN+VNweUoTMGfk/R1sJoZxKbf2afpUgvex3E8
	2ACuU6N+XcKhZlWq4saXnT9+pkLt1lQ=
X-Google-Smtp-Source: AGHT+IGHNXqHa6jkCe9KMpnHnliPmuqTDgmCLUyx/lAKaiY0iO/4u6SqhOLzt0FQ6WLR191Bt6Txnw==
X-Received: by 2002:a9d:6c0f:0:b0:6ba:864e:c5de with SMTP id f15-20020a9d6c0f000000b006ba864ec5demr1787223otq.8.1696350842548;
        Tue, 03 Oct 2023 09:34:02 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id k6-20020a056830150600b006b74bea76c0sm198567otp.47.2023.10.03.09.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 09:34:02 -0700 (PDT)
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
Subject: [PATCH V4 2/2] drm/panel: nv3051d: Add Support for Anbernic 351V
Date: Tue,  3 Oct 2023 11:33:55 -0500
Message-Id: <20231003163355.143704-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231003163355.143704-1-macroalpha82@gmail.com>
References: <20231003163355.143704-1-macroalpha82@gmail.com>
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
 drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
index ad98dd9322b4..79de6c886292 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
@@ -388,6 +388,13 @@ static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
 	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
 			  MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
 
+	/*
+	 * The panel in the RG351V is identical to the 353P, except it
+	 * requires MIPI_DSI_CLOCK_NON_CONTINUOUS to operate correctly.
+	 */
+	if (of_device_is_compatible(dev->of_node, "anbernic,rg351v-panel"))
+		dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;
+
 	drm_panel_init(&ctx->panel, &dsi->dev, &panel_nv3051d_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
-- 
2.34.1


