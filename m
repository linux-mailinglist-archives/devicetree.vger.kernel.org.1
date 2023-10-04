Return-Path: <devicetree+bounces-5704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 866C67B7893
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:20:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8031A1C20863
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E276FCC;
	Wed,  4 Oct 2023 07:20:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC006FCF
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:20:10 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57905B8
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 00:20:09 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9ad8d47ef2fso317716166b.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 00:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1696404008; x=1697008808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4ZgBmHteA4wHsLrCFexpXA7K7drP5ZEJIQkSB/aVxY=;
        b=DID62vkPq/VUnxOpfFxAi/VHOlGNhCBgZwIH01rEgXpebAha4q7zIXt/O6KwcHYEhV
         qwT9DIp3oApxmv62u98bIOVz/RXwCOgp0orbsgZJxN5Ck1i2TLcawSj8V28hnUymMdKM
         fH0A75k/Nyk2IKhFihdsIC+UbKZZgCogdiIDtgfN8g53MaAz5tKfAHqkz9Sv/9LIP/7B
         JYMXADrthpM4dAIUIP34HSPR7i32gwRMXDV9SZHGrOlnzfO18EQRJQcbuMPQTljuKDan
         dq+F0Ddnh/iinRzzOnObKaKQcaeLKSntu1xqbDdPx52BhspAeGCTTn0WNsQu2zc3rCmA
         3vvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696404008; x=1697008808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o4ZgBmHteA4wHsLrCFexpXA7K7drP5ZEJIQkSB/aVxY=;
        b=fK4oP5lwk1kJnLP/LvP8wIJUFNvQubKInvq5q4uTlY5jTFnQiDxU73sS2IVECOplL6
         LKHp6SKvrKyLRz+24JRp92p0Ag6mkUJB2uTpCqj1FMLtYPJscqSspm1ApA21RZ826sYI
         d1VyrziX+Vu82Yt0PkRLs92C2vZ1h0c9yzH8TKw3CAOxZt4AN4/IPjEHD8H5g4DL5F73
         Dv73DdUdGNgp+JHmb1QWHDuqSdk1nqrN9A978xQc5XS2rnLcmTSB2EDU7/ad+9OlPDhp
         Xxz1Y1nnmXYyekKETMVnt4W9XWu/tarcdBS9xqHljhsdVzxdyWFM1TnOxuQMH06GvYsj
         G42g==
X-Gm-Message-State: AOJu0YwprMcR3ODNC77PUSl+RkWwrRt0KA5tJcnMDcU/ANc0hhZTk2qp
	vpsx+YAJTvZlpCU40jSfu9qGAw==
X-Google-Smtp-Source: AGHT+IHjaQnPJiOBXT2srG6qiWyWozTCOtRExhfL43SYkbnCTGkV0QlIu7hyxYuUdHGNL7GoroyFCw==
X-Received: by 2002:a17:906:259:b0:9ad:c763:c3fd with SMTP id 25-20020a170906025900b009adc763c3fdmr1282878ejl.28.1696404007907;
        Wed, 04 Oct 2023 00:20:07 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id h14-20020a170906590e00b0099e12a49c8fsm2295468ejq.173.2023.10.04.00.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 00:20:07 -0700 (PDT)
From: Volodymyr Kharuk <vkh@melexis.com>
To: <linux-media@vger.kernel.org>
Cc: Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v5 5/8] media: v4l: ctrls: Add user control base for mlx7502x
Date: Wed,  4 Oct 2023 10:19:44 +0300
Message-Id: <825edc1f9ed194a8478ca1432edd9a26c7a11934.1696347109.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1696347109.git.vkh@melexis.com>
References: <cover.1696347109.git.vkh@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a control base for mlx7502x and reserve 16 controls.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 include/uapi/linux/v4l2-controls.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 92b3957d5720..28af0b3e2240 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -204,6 +204,12 @@ enum v4l2_colorfx {
  */
 #define V4L2_CID_USER_ASPEED_BASE		(V4L2_CID_USER_BASE + 0x11a0)
 
+/*
+ * The base for Melexis ToF 7502x driver controls.
+ * We reserve 16 controls for this driver.
+ */
+#define V4L2_CID_USER_MLX7502X_BASE		(V4L2_CID_USER_BASE + 0x11b0)
+
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
  * and the 'MPEG' part of the define is historical */
-- 
BR,
Volodymyr Kharuk


