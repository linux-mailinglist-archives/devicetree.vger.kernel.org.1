Return-Path: <devicetree+bounces-5703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 897A57B7891
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:20:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A7BCA1C203D6
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD06E6FD8;
	Wed,  4 Oct 2023 07:20:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D1A748A
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:20:08 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31947B0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 00:20:07 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-99c1c66876aso322902166b.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 00:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1696404005; x=1697008805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kzcwo4ukmDfPKZy6rdPKwwlEPxVpUKsKZT5Uwd7WsXc=;
        b=L2y7A281RF9yd2rDx+o1Sj6lqBaa5pjFzslquoAJRCFoDowEv3OuyQpOtJJ/F71shk
         wItUF/uLAckTOjAD0x2hkpQ1KmkqXtmxBMa9RprnnfCgZ/nb5Y3djheKHyLA47qupp9Y
         PDM2RVEQynzwumkxmgCYGJsnr4IxQ4MBU4GnojYnF1eWhYBHgM90XpQQcZj9rYDrhv+q
         Oay2rggwo4P14/mBlxXOIBuLCfDZnWRTYWzhdMPFspdBOd6sXhnfIvwe7e/wI/gvZr5L
         ypPEfqgR6KCpgAFBdeU3e9cWOg1sD/Ei1YdSA8rdnpWgJsRu/sUwE9JskXyv/if8jLcl
         7rng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696404005; x=1697008805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kzcwo4ukmDfPKZy6rdPKwwlEPxVpUKsKZT5Uwd7WsXc=;
        b=auWSJuLo6PHY6AZoGxPElbLyAwUnQ+w0ACg29L8DLQXo5o6zTvAnZDll4mI/6Df6qo
         9rQIB/rHZkj+Q5UBg7Gvmkm9vsGI+sWshxi6MFGliB5lpCzkqgVHDxRNzLkTGYZBy3eq
         ATo8TcE6UeIHUhLceTXMUAd13ivnOtD6zpUngRZIr1Z1j9sf3Dj95Qo9GdXvmH7eO7wF
         GpKhUIrkNPqbQO7N7cWGwEo9ivIuRvHu9PI5eWupdNH4zzjNbg+7dix8L9VYlB0AWVQy
         4gv69HKOzMoKTkl+JJTpRiQ2QWJVZezo5Jw196w9eATFytVBRgwIlWuLjZOmIyjqnxE+
         U31g==
X-Gm-Message-State: AOJu0YyKmCgmBfLVaJQKbiBZukuMAunWJkYaPBLC5jXgjlyhAJF5ssIN
	68cGmvsXsWZYXg7djz3F71FxHEOTCU/PQge2oVteNQ==
X-Google-Smtp-Source: AGHT+IE5xYr03nXNv+eAduyOMopyqz38v9LQhcENIeSzCs8FoM7dZaX9YHayscV8PLuOl5v8tWk6mA==
X-Received: by 2002:a17:906:74db:b0:9b2:78bf:d8d4 with SMTP id z27-20020a17090674db00b009b278bfd8d4mr1362877ejl.5.1696404005642;
        Wed, 04 Oct 2023 00:20:05 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id h14-20020a170906590e00b0099cd008c1a4sm2296005ejq.136.2023.10.04.00.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 00:20:05 -0700 (PDT)
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
Subject: [PATCH v5 4/8] media: v4l: ctrls-api: Allow array update in __v4l2_ctrl_modify_range
Date: Wed,  4 Oct 2023 10:19:43 +0300
Message-Id: <4861f8420b6b11343604c681fd410836fa7ce4af.1696347109.git.vkh@melexis.com>
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

For V4L2_CID_TOF_TINT, which is dynamic array, it is required to use
__v4l2_ctrl_modify_range.  So the idea is to use type_ops instead of u64
from union. It will allow to work with any type.

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 drivers/media/v4l2-core/v4l2-ctrls-api.c | 25 ++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls-api.c b/drivers/media/v4l2-core/v4l2-ctrls-api.c
index 002ea6588edf..03e7efea1cf7 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-api.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-api.c
@@ -934,17 +934,18 @@ int __v4l2_ctrl_modify_range(struct v4l2_ctrl *ctrl,
 	lockdep_assert_held(ctrl->handler->lock);
 
 	switch (ctrl->type) {
+	case V4L2_CTRL_TYPE_MENU:
+	case V4L2_CTRL_TYPE_INTEGER_MENU:
+		if (ctrl->is_array)
+			return -EINVAL;
+		fallthrough;
 	case V4L2_CTRL_TYPE_INTEGER:
 	case V4L2_CTRL_TYPE_INTEGER64:
 	case V4L2_CTRL_TYPE_BOOLEAN:
-	case V4L2_CTRL_TYPE_MENU:
-	case V4L2_CTRL_TYPE_INTEGER_MENU:
 	case V4L2_CTRL_TYPE_BITMASK:
 	case V4L2_CTRL_TYPE_U8:
 	case V4L2_CTRL_TYPE_U16:
 	case V4L2_CTRL_TYPE_U32:
-		if (ctrl->is_array)
-			return -EINVAL;
 		ret = check_range(ctrl->type, min, max, step, def);
 		if (ret)
 			return ret;
@@ -962,16 +963,16 @@ int __v4l2_ctrl_modify_range(struct v4l2_ctrl *ctrl,
 	}
 	cur_to_new(ctrl);
 	if (validate_new(ctrl, ctrl->p_new)) {
-		if (ctrl->type == V4L2_CTRL_TYPE_INTEGER64)
-			*ctrl->p_new.p_s64 = def;
-		else
-			*ctrl->p_new.p_s32 = def;
+		WARN_ON(ctrl->is_array); /* This shouldn't happen, as
+					  * INTEGER/Ux/BOOLEAN/BITMASK will not
+					  * return an error.
+					  * In case it happened, all array will
+					  * set to default value
+					  */
+		ctrl->type_ops->init(ctrl, 0, ctrl->p_new);
 	}
 
-	if (ctrl->type == V4L2_CTRL_TYPE_INTEGER64)
-		value_changed = *ctrl->p_new.p_s64 != *ctrl->p_cur.p_s64;
-	else
-		value_changed = *ctrl->p_new.p_s32 != *ctrl->p_cur.p_s32;
+	value_changed = !ctrl->type_ops->equal(ctrl, ctrl->p_cur, ctrl->p_new);
 	if (value_changed)
 		ret = set_ctrl(NULL, ctrl, V4L2_EVENT_CTRL_CH_RANGE);
 	else if (range_changed)
-- 
BR,
Volodymyr Kharuk


