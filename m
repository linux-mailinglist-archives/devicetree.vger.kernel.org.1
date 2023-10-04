Return-Path: <devicetree+bounces-5705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E69F7B7895
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:20:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 03970B20802
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE9E36FB3;
	Wed,  4 Oct 2023 07:20:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B929748A
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:20:13 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDC69B0
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 00:20:11 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9b27bc8b65eso299216966b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 00:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1696404010; x=1697008810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8B4uJGiQDVz8dojAdH+xsYrxjsdR8PRSq/ZZq7Eofz4=;
        b=Vp5aUcZ3O9+Oz8cUOygZNVJ5Msxi8JE9Tv34vfUthncYefK61m1FZAhkFutU59RelB
         8JT/2G69sg8MTlaoAlUfciocZfg4awqmV7hu1QUlz8NF5ZxJJR6FeGmupTrp90qAF0go
         TL1fr+4pQFz/8gNJkzZOl7qANBptHA8hjfHOfm9P/pXGlqmOYbUbeKhLbW3eoCnIVdVl
         dmXU0Im1G91UOqW9eMTNRVJxuFjGQxkI+O8pMCjdZUxR/5c2QGT/rGGdWG38w5hcs+hs
         dLRcE06rEhbOYd5dZTAGvudebumIWuS7ToV6plUVRt1IakxtanJO2u7QNM+sHelU+rNr
         +NbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696404010; x=1697008810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8B4uJGiQDVz8dojAdH+xsYrxjsdR8PRSq/ZZq7Eofz4=;
        b=XjTiE9KhWLPqwGrrfICyG5on5kboMy0oSI+L+HzmefT/NHWUJqBV4xs5j4koPRBoO/
         caKDG6LCuZbCbBMQ2RCo1tJo7nWzYZKwIp0H+t3c3v6MCVZDSNB7LV/JsEB2syH5QNPR
         20OQDj0rPogb6ePlNBMN8jx9iBDi9KMWq/peJfoqmxcQnvafsjytSUNTASJ+gMy6Y8Ay
         Y6+sVDFtrWK1YDYpJlH8/3mQr2Jkm9gY1rZMZ1tfpJsjthgfO5gGLJ/GgbhQsIpOleEG
         F9x2FKd8kCbB+ACbubnHeg1uWJZVdlQ5aRticRoLtUlTJr/orvrRnj7hEWKxWmNp3NJl
         1sUg==
X-Gm-Message-State: AOJu0Yzg8whG6G+nMFzsaZsYMaSkGi2tomTOc5RrLSkCz8AvW31OucaM
	rjV/Oftgtnulg1z1k73givUHFA==
X-Google-Smtp-Source: AGHT+IFMcXcyGsPl5k6CIwy4QhpwXmsXsdPrFUDsSpCaw69HSFowSEFr9I8y32Kq3V4ONPzOC9THXQ==
X-Received: by 2002:a17:906:10d1:b0:9ad:ec25:825b with SMTP id v17-20020a17090610d100b009adec25825bmr1139003ejv.58.1696404010329;
        Wed, 04 Oct 2023 00:20:10 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id r13-20020a170906350d00b009a9fbeb15f5sm2255795eja.46.2023.10.04.00.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 00:20:10 -0700 (PDT)
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
Subject: [PATCH v5 6/8] media: uapi: Add mlx7502x header file
Date: Wed,  4 Oct 2023 10:19:45 +0300
Message-Id: <5a8f0d6a6e448548111cdea90e9e106560dd2c3a.1696347109.git.vkh@melexis.com>
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

Define user controls for mlx7502x driver, add its documentation and
update MAINTAINERS

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 .../userspace-api/media/drivers/index.rst     |  1 +
 .../userspace-api/media/drivers/mlx7502x.rst  | 28 +++++++++++++++++++
 MAINTAINERS                                   |  2 ++
 include/uapi/linux/mlx7502x.h                 | 28 +++++++++++++++++++
 4 files changed, 59 insertions(+)
 create mode 100644 Documentation/userspace-api/media/drivers/mlx7502x.rst
 create mode 100644 include/uapi/linux/mlx7502x.h

diff --git a/Documentation/userspace-api/media/drivers/index.rst b/Documentation/userspace-api/media/drivers/index.rst
index 6708d649afd7..de3619672d44 100644
--- a/Documentation/userspace-api/media/drivers/index.rst
+++ b/Documentation/userspace-api/media/drivers/index.rst
@@ -37,6 +37,7 @@ For more details see the file COPYING in the source distribution of Linux.
 	dw100
 	imx-uapi
 	max2175
+	mlx7502x
 	omap3isp-uapi
 	st-vgxy61
 	uvcvideo
diff --git a/Documentation/userspace-api/media/drivers/mlx7502x.rst b/Documentation/userspace-api/media/drivers/mlx7502x.rst
new file mode 100644
index 000000000000..d68506c09f84
--- /dev/null
+++ b/Documentation/userspace-api/media/drivers/mlx7502x.rst
@@ -0,0 +1,28 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+Melexis mlx7502x ToF camera sensor driver
+=========================================
+
+The mlx7502x driver implements the following driver-specific controls:
+
+``V4L2_CID_MLX7502X_OUTPUT_MODE (menu)``
+----------------------------------------
+	The sensor has two taps, which gather reflected light: A and B.
+	The control sets the way data should be put in a buffer. The most
+	common output mode is A-B which provides the best sunlight robustness.
+
+.. flat-table::
+	:header-rows:  0
+	:stub-columns: 0
+	:widths:       1 4
+
+	* - ``V4L2_MLX7502X_OUTPUT_MODE_A_MINUS_B``
+	  - tap A minus tap B
+	* - ``V4L2_MLX7502X_OUTPUT_MODE_A_PLUS_B``
+	  - tap A plus tap B
+	* - ``V4L2_MLX7502X_OUTPUT_MODE_A``
+	  - only tap A
+	* - ``V4L2_MLX7502X_OUTPUT_MODE_B``
+	  - only tap B
+	* - ``V4L2_MLX7502X_OUTPUT_MODE_A_AND_B``
+	  - tap A and tap B (this config will change PAD format)
diff --git a/MAINTAINERS b/MAINTAINERS
index 83e325e273dc..49cc44fe8ec4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13562,7 +13562,9 @@ M:	Volodymyr Kharuk <vkh@melexis.com>
 L:	linux-media@vger.kernel.org
 S:	Supported
 W:	http://www.melexis.com
+F:	Documentation/userspace-api/media/drivers/mlx7502x.rst
 F:	Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
+F:	include/uapi/linux/mlx7502x.h
 
 MELFAS MIP4 TOUCHSCREEN DRIVER
 M:	Sangwon Jee <jeesw@melfas.com>
diff --git a/include/uapi/linux/mlx7502x.h b/include/uapi/linux/mlx7502x.h
new file mode 100644
index 000000000000..80e9317ff0fc
--- /dev/null
+++ b/include/uapi/linux/mlx7502x.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/*
+ * Melexis 7502x ToF cameras driver.
+ *
+ * Copyright (C) 2021 Melexis N.V.
+ *
+ */
+
+#ifndef __UAPI_MLX7502X_H_
+#define __UAPI_MLX7502X_H_
+
+#include <linux/v4l2-controls.h>
+
+/*
+ * this is related to the taps in ToF cameras,
+ * usually A minus B is the best option
+ */
+enum v4l2_mlx7502x_output_mode {
+	V4L2_MLX7502X_OUTPUT_MODE_A_MINUS_B = 0,
+	V4L2_MLX7502X_OUTPUT_MODE_A_PLUS_B,
+	V4L2_MLX7502X_OUTPUT_MODE_A,
+	V4L2_MLX7502X_OUTPUT_MODE_B,
+	V4L2_MLX7502X_OUTPUT_MODE_A_AND_B, /* output frame size doubles */
+};
+
+#define V4L2_CID_MLX7502X_OUTPUT_MODE	(V4L2_CID_USER_MLX7502X_BASE + 0)
+
+#endif /* __UAPI_MLX7502X_H_ */
-- 
BR,
Volodymyr Kharuk


