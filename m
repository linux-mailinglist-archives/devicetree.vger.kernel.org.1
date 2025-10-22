Return-Path: <devicetree+bounces-229838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CC5BFC820
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:26:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F95C1A07AF3
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3921B332EAB;
	Wed, 22 Oct 2025 14:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V0S12DWf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C31334F24C
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142920; cv=none; b=ImRjasaPMDJzFGr8Y6M6+9grzVtfrpTylbmdg0q9pNbC7Wpqq8tqdxrdZxch85cZ9uyOIqVVs6YkH7GqwmsbYrFVSWjbDVKny4MGUTK9H8rTncgrDY1NyeY79lpnmxv6Tmk5JLcBJskSYBdMNqspTmiSsMiRsQTpDZdgf16GiAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142920; c=relaxed/simple;
	bh=XgB8KsEi3SYKaCRI3oNJWrMN9bQwIrOmPTcOOnLD0Pk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YVEOHjQN9DTPWi+PwUCG4fm5mnoGeUGFOi0ZFvlItKc5+Es6wE+H/00R1huqxA2EqnQKV2CSHJcuvQVtsd3LdigO8FioJPsBd072PQ6CAo18iZp6UAHIy7Pj2GOSqyKSEWFYu4kGqVPsrgxvyIrtDw0D4QxwsGeXVzJvbSoOJ/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V0S12DWf; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4711810948aso49182705e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142910; x=1761747710; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ne9mN8p7VyKKwWuePUxtC0rx2/aJWgxMVpbUKoFNi3U=;
        b=V0S12DWfk+S/VIHJuwpkQ2PpMlzcY4Rxuq1sBatS9vauIdKAZLHYtwBRq34O/Y8WLB
         uJC32w4DWK21ZBirGq4maT/1nH3XkxSKRmSZlWRf/JjeevizCfRxireSwXriZgQWnYya
         3XCAyMY8ZcwPHfXZwLQPHY9VTUKiLTZlt787hDQGSHEFcGhaT8UTpWTcdMvvNRNra5KV
         IXqb2u2tl4O4nSOwgbZOiytkAcZfjeLDZra+p2oJFtBUJvGNnkmpJsNB0sF5DOebuWEi
         RFnija4SCKD+tqdPu/3rNxhxgsj+H3ikjZnDgqXLB7IWm4lLsecMBGdLyKlLGl+Yl+O7
         CQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142910; x=1761747710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ne9mN8p7VyKKwWuePUxtC0rx2/aJWgxMVpbUKoFNi3U=;
        b=IpKeQMSrZ3tHKPgauW0qIkswl4O3Tq/4RAl6NGXF1ItW4/3qRHc9Ih4Db81+c0MhWs
         mHg2OSqYPdM6qfhXvcvvk/d24MnnRmxDR/0vna0opxMochGG+hfnjMWp6CvyBj0/n+4+
         HGFPmQ0kr1Ww8mHYly5ouLXQ72N/+KUwDZ9Trap7q8a/WzLYTt3Fiw+EvpaGhqAj+mBh
         4BZaanB10STr656K2quRewOHq8bkCLlMGxRzdOwahhl0nNsd1Pgvr5O32gwUNZnqJhLp
         +bjkzCW7L1M6bc2dd5LkbBSfl894uxzSURk2cMYKyoRmHD9D6uRiu/jEClAqVoddG/5h
         qwjw==
X-Forwarded-Encrypted: i=1; AJvYcCVOn2wDNG8pkIrW8ty4PmXMvxyOEA6AmnpCRPrK0JZI1a29fYSXGuDCfMtn1VVob1TgPvTeYoYqaWYR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8okjq55zotdhYCK1m8tCGEEsPnC1T+5bCsGWVY6Qs6miTaT9M
	XqY49PUOvvvLF35wHDkAizyM51GQCuaiLf8vFDyuBAabGnCm9V7c7bZ/
X-Gm-Gg: ASbGncsFXzy7rOJKWWoumcyFswWU5DQFy13oRHafpaTJyLyYx/fu04k9tsMIIxWS0an
	98IojXi7KKKaM0W44n78uy/+1d00aeMOcD36vrh1KUSHb4JrTtLod5erq7v17V1lJIvQckhhZFb
	OvF4dRe1vgTQ2hSFNxXiFZiNzXkbY1Jdr9WKDkEn/gmsN0c2rAy48GiMO8J4NX7DdatWfcB58A4
	vws/IctMC6hklBorccXUtOPRxnC1NdCLD7xsUQW4Kzf6bXOl6wSHUuJ/ERvMkiH7eVhmF4xl8NF
	22Hv2JXkkR5H7JZ1idFXf2kqLs+H1O2LpmFk2o7ZJxvj9Kk0kkz1T0vf6IjPBEU44vu/oTWYQNJ
	wMTM6nFqvDQtInsy558hyhpAn/EaYWDeAB3cz19QIRxxnXFA945u8gjeSigOx8RoCCEf92YQ455
	GJsbPORzPxlGLI
X-Google-Smtp-Source: AGHT+IEP0lZDwWoQ8fhgqYnzJqh6N1AZ5f6aJKDbbO477Hgks4d4HLvq2RPYshd4kiKVXv6gMJi7cQ==
X-Received: by 2002:a5d:64e9:0:b0:427:928:789f with SMTP id ffacd0b85a97d-42709287ae0mr13629934f8f.53.1761142910150;
        Wed, 22 Oct 2025 07:21:50 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:49 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v5 15/23] staging: media: tegra-video: tegra20: add support for second output of VI
Date: Wed, 22 Oct 2025 17:20:43 +0300
Message-ID: <20251022142051.70400-16-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

VI in Tegra20/Tegra30 has 2 VI outputs with different set of supported
formats. Convert output registers to macros for simpler work with both
outputs since apart formats their layout matches.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 drivers/staging/media/tegra-video/tegra20.c | 83 ++++++++++++---------
 1 file changed, 47 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/media/tegra-video/tegra20.c b/drivers/staging/media/tegra-video/tegra20.c
index 3e2d746638b6..7c3ff843235d 100644
--- a/drivers/staging/media/tegra-video/tegra20.c
+++ b/drivers/staging/media/tegra-video/tegra20.c
@@ -28,13 +28,19 @@
 #define TEGRA20_MIN_HEIGHT	32U
 #define TEGRA20_MAX_HEIGHT	8190U
 
+/* Tegra20/Tegra30 has 2 outputs in VI */
+enum tegra_vi_out {
+	TEGRA_VI_OUT_1 = 0,
+	TEGRA_VI_OUT_2 = 1,
+};
+
 /* --------------------------------------------------------------------------
  * Registers
  */
 
-#define TEGRA_VI_CONT_SYNCPT_OUT_1			0x0060
-#define       VI_CONT_SYNCPT_OUT_1_CONTINUOUS_SYNCPT	BIT(8)
-#define       VI_CONT_SYNCPT_OUT_1_SYNCPT_IDX_SFT	0
+#define TEGRA_VI_CONT_SYNCPT_OUT(n)			(0x0060 + (n) * 4)
+#define       VI_CONT_SYNCPT_OUT_CONTINUOUS_SYNCPT	BIT(8)
+#define       VI_CONT_SYNCPT_OUT_SYNCPT_IDX_SFT		0
 
 #define TEGRA_VI_VI_INPUT_CONTROL			0x0088
 #define       VI_INPUT_FIELD_DETECT			BIT(27)
@@ -46,6 +52,7 @@
 #define       VI_INPUT_YUV_INPUT_FORMAT_YVYU		(3 << VI_INPUT_YUV_INPUT_FORMAT_SFT)
 #define       VI_INPUT_INPUT_FORMAT_SFT			2  /* bits [5:2] */
 #define       VI_INPUT_INPUT_FORMAT_YUV422		(0 << VI_INPUT_INPUT_FORMAT_SFT)
+#define       VI_INPUT_INPUT_FORMAT_BAYER		(2 << VI_INPUT_INPUT_FORMAT_SFT)
 #define       VI_INPUT_VIP_INPUT_ENABLE			BIT(1)
 
 #define TEGRA_VI_VI_CORE_CONTROL			0x008c
@@ -66,7 +73,7 @@
 #define       VI_VI_CORE_CONTROL_OUTPUT_TO_EPP_SFT	2
 #define       VI_VI_CORE_CONTROL_OUTPUT_TO_ISP_SFT	0
 
-#define TEGRA_VI_VI_FIRST_OUTPUT_CONTROL		0x0090
+#define TEGRA_VI_VI_OUTPUT_CONTROL(n)			(0x0090 + (n) * 4)
 #define       VI_OUTPUT_FORMAT_EXT			BIT(22)
 #define       VI_OUTPUT_V_DIRECTION			BIT(20)
 #define       VI_OUTPUT_H_DIRECTION			BIT(19)
@@ -80,6 +87,8 @@
 #define       VI_OUTPUT_OUTPUT_FORMAT_SFT		0
 #define       VI_OUTPUT_OUTPUT_FORMAT_YUV422POST	(3 << VI_OUTPUT_OUTPUT_FORMAT_SFT)
 #define       VI_OUTPUT_OUTPUT_FORMAT_YUV420PLANAR	(6 << VI_OUTPUT_OUTPUT_FORMAT_SFT)
+/* TEGRA_VI_OUT_2 supported formats */
+#define       VI_OUTPUT_OUTPUT_FORMAT_VIP_BAYER_DIRECT	(9 << VI_OUTPUT_OUTPUT_FORMAT_SFT)
 
 #define TEGRA_VI_VIP_H_ACTIVE				0x00a4
 #define       VI_VIP_H_ACTIVE_PERIOD_SFT		16 /* active pixels/line, must be even */
@@ -89,26 +98,26 @@
 #define       VI_VIP_V_ACTIVE_PERIOD_SFT		16 /* active lines */
 #define       VI_VIP_V_ACTIVE_START_SFT			0
 
-#define TEGRA_VI_VB0_START_ADDRESS_FIRST		0x00c4
-#define TEGRA_VI_VB0_BASE_ADDRESS_FIRST			0x00c8
+#define TEGRA_VI_VB0_START_ADDRESS(n)			(0x00c4 + (n) * 44)
+#define TEGRA_VI_VB0_BASE_ADDRESS(n)			(0x00c8 + (n) * 44)
 #define TEGRA_VI_VB0_START_ADDRESS_U			0x00cc
 #define TEGRA_VI_VB0_BASE_ADDRESS_U			0x00d0
 #define TEGRA_VI_VB0_START_ADDRESS_V			0x00d4
 #define TEGRA_VI_VB0_BASE_ADDRESS_V			0x00d8
 
-#define TEGRA_VI_FIRST_OUTPUT_FRAME_SIZE		0x00e0
-#define       VI_FIRST_OUTPUT_FRAME_HEIGHT_SFT		16
-#define       VI_FIRST_OUTPUT_FRAME_WIDTH_SFT		0
+#define TEGRA_VI_OUTPUT_FRAME_SIZE(n)			(0x00e0 + (n) * 24)
+#define       VI_OUTPUT_FRAME_HEIGHT_SFT		16
+#define       VI_OUTPUT_FRAME_WIDTH_SFT			0
 
-#define TEGRA_VI_VB0_COUNT_FIRST			0x00e4
+#define TEGRA_VI_VB0_COUNT(n)				(0x00e4 + (n) * 24)
 
-#define TEGRA_VI_VB0_SIZE_FIRST				0x00e8
-#define       VI_VB0_SIZE_FIRST_V_SFT			16
-#define       VI_VB0_SIZE_FIRST_H_SFT			0
+#define TEGRA_VI_VB0_SIZE(n)				(0x00e8 + (n) * 24)
+#define       VI_VB0_SIZE_V_SFT				16
+#define       VI_VB0_SIZE_H_SFT				0
 
-#define TEGRA_VI_VB0_BUFFER_STRIDE_FIRST		0x00ec
-#define       VI_VB0_BUFFER_STRIDE_FIRST_CHROMA_SFT	30
-#define       VI_VB0_BUFFER_STRIDE_FIRST_LUMA_SFT	0
+#define TEGRA_VI_VB0_BUFFER_STRIDE(n)			(0x00ec + (n) * 24)
+#define       VI_VB0_BUFFER_STRIDE_CHROMA_SFT		30
+#define       VI_VB0_BUFFER_STRIDE_LUMA_SFT		0
 
 #define TEGRA_VI_H_LPF_CONTROL				0x0108
 #define       VI_H_LPF_CONTROL_CHROMA_SFT		16
@@ -136,7 +145,7 @@
 #define       VI_CAMERA_CONTROL_TEST_MODE		BIT(1)
 #define       VI_CAMERA_CONTROL_VIP_ENABLE		BIT(0)
 
-#define TEGRA_VI_VI_ENABLE				0x01a4
+#define TEGRA_VI_VI_ENABLE(n)				(0x01a4 + (n) * 4)
 #define       VI_VI_ENABLE_SW_FLOW_CONTROL_OUT1		BIT(1)
 #define       VI_VI_ENABLE_FIRST_OUTPUT_TO_MEM_DISABLE	BIT(0)
 
@@ -366,8 +375,8 @@ static void tegra20_channel_vi_buffer_setup(struct tegra_vi_channel *chan,
 	case V4L2_PIX_FMT_VYUY:
 	case V4L2_PIX_FMT_YUYV:
 	case V4L2_PIX_FMT_YVYU:
-		tegra20_vi_write(chan, TEGRA_VI_VB0_BASE_ADDRESS_FIRST,  base);
-		tegra20_vi_write(chan, TEGRA_VI_VB0_START_ADDRESS_FIRST, base + chan->start_offset);
+		tegra20_vi_write(chan, TEGRA_VI_VB0_BASE_ADDRESS(TEGRA_VI_OUT_1),  base);
+		tegra20_vi_write(chan, TEGRA_VI_VB0_START_ADDRESS(TEGRA_VI_OUT_1), base + chan->start_offset);
 		break;
 	}
 }
@@ -455,6 +464,7 @@ static void tegra20_camera_capture_setup(struct tegra_vi_channel *chan)
 	int stride_l = chan->format.bytesperline;
 	int stride_c = (output_fourcc == V4L2_PIX_FMT_YUV420 ||
 			output_fourcc == V4L2_PIX_FMT_YVU420) ? 1 : 0;
+	enum tegra_vi_out output_channel = TEGRA_VI_OUT_1;
 	int main_output_format;
 	int yuv_output_format;
 
@@ -472,33 +482,33 @@ static void tegra20_camera_capture_setup(struct tegra_vi_channel *chan)
 	/* Set up raise-on-edge, so we get an interrupt on end of frame. */
 	tegra20_vi_write(chan, TEGRA_VI_VI_RAISE, VI_VI_RAISE_ON_EDGE);
 
-	tegra20_vi_write(chan, TEGRA_VI_VI_FIRST_OUTPUT_CONTROL,
+	tegra20_vi_write(chan, TEGRA_VI_VI_OUTPUT_CONTROL(output_channel),
 			 (chan->vflip ? VI_OUTPUT_V_DIRECTION : 0) |
 			 (chan->hflip ? VI_OUTPUT_H_DIRECTION : 0) |
 			 yuv_output_format << VI_OUTPUT_YUV_OUTPUT_FORMAT_SFT |
 			 main_output_format << VI_OUTPUT_OUTPUT_FORMAT_SFT);
 
 	/* Set up frame size */
-	tegra20_vi_write(chan, TEGRA_VI_FIRST_OUTPUT_FRAME_SIZE,
-			 height << VI_FIRST_OUTPUT_FRAME_HEIGHT_SFT |
-			 width  << VI_FIRST_OUTPUT_FRAME_WIDTH_SFT);
+	tegra20_vi_write(chan, TEGRA_VI_OUTPUT_FRAME_SIZE(output_channel),
+			 height << VI_OUTPUT_FRAME_HEIGHT_SFT |
+			 width  << VI_OUTPUT_FRAME_WIDTH_SFT);
 
 	/* First output memory enabled */
-	tegra20_vi_write(chan, TEGRA_VI_VI_ENABLE, 0);
+	tegra20_vi_write(chan, TEGRA_VI_VI_ENABLE(output_channel), 0);
 
 	/* Set the number of frames in the buffer */
-	tegra20_vi_write(chan, TEGRA_VI_VB0_COUNT_FIRST, 1);
+	tegra20_vi_write(chan, TEGRA_VI_VB0_COUNT(output_channel), 1);
 
 	/* Set up buffer frame size */
-	tegra20_vi_write(chan, TEGRA_VI_VB0_SIZE_FIRST,
-			 height << VI_VB0_SIZE_FIRST_V_SFT |
-			 width  << VI_VB0_SIZE_FIRST_H_SFT);
+	tegra20_vi_write(chan, TEGRA_VI_VB0_SIZE(output_channel),
+			 height << VI_VB0_SIZE_V_SFT |
+			 width  << VI_VB0_SIZE_H_SFT);
 
-	tegra20_vi_write(chan, TEGRA_VI_VB0_BUFFER_STRIDE_FIRST,
-			 stride_l << VI_VB0_BUFFER_STRIDE_FIRST_LUMA_SFT |
-			 stride_c << VI_VB0_BUFFER_STRIDE_FIRST_CHROMA_SFT);
+	tegra20_vi_write(chan, TEGRA_VI_VB0_BUFFER_STRIDE(output_channel),
+			 stride_l << VI_VB0_BUFFER_STRIDE_LUMA_SFT |
+			 stride_c << VI_VB0_BUFFER_STRIDE_CHROMA_SFT);
 
-	tegra20_vi_write(chan, TEGRA_VI_VI_ENABLE, 0);
+	tegra20_vi_write(chan, TEGRA_VI_VI_ENABLE(output_channel), 0);
 }
 
 static int tegra20_vi_start_streaming(struct vb2_queue *vq, u32 count)
@@ -587,7 +597,7 @@ const struct tegra_vi_soc tegra20_vi_soc = {
 	.nformats = ARRAY_SIZE(tegra20_video_formats),
 	.default_video_format = &tegra20_video_formats[0],
 	.ops = &tegra20_vi_ops,
-	.vi_max_channels = 1, /* parallel input (VIP) */
+	.vi_max_channels = 2, /* TEGRA_VI_OUT_1 and TEGRA_VI_OUT_2 */
 	.vi_max_clk_hz = 150000000,
 	.has_h_v_flip = true,
 };
@@ -607,6 +617,7 @@ static int tegra20_vip_start_streaming(struct tegra_vip_channel *vip_chan)
 	struct tegra_vi_channel *vi_chan = v4l2_get_subdev_hostdata(&vip_chan->subdev);
 	int width  = vi_chan->format.width;
 	int height = vi_chan->format.height;
+	enum tegra_vi_out output_channel = TEGRA_VI_OUT_1;
 
 	unsigned int main_input_format;
 	unsigned int yuv_input_format;
@@ -637,10 +648,10 @@ static int tegra20_vip_start_streaming(struct tegra_vip_channel *vip_chan)
 			 GENMASK(9, 2) << VI_DATA_INPUT_SFT);
 	tegra20_vi_write(vi_chan, TEGRA_VI_PIN_INVERSION, 0);
 
-	tegra20_vi_write(vi_chan, TEGRA_VI_CONT_SYNCPT_OUT_1,
-			 VI_CONT_SYNCPT_OUT_1_CONTINUOUS_SYNCPT |
+	tegra20_vi_write(vi_chan, TEGRA_VI_CONT_SYNCPT_OUT(output_channel),
+			 VI_CONT_SYNCPT_OUT_CONTINUOUS_SYNCPT |
 			 host1x_syncpt_id(vi_chan->mw_ack_sp[0])
-			 << VI_CONT_SYNCPT_OUT_1_SYNCPT_IDX_SFT);
+			 << VI_CONT_SYNCPT_OUT_SYNCPT_IDX_SFT);
 
 	tegra20_vi_write(vi_chan, TEGRA_VI_CAMERA_CONTROL, VI_CAMERA_CONTROL_STOP_CAPTURE);
 
-- 
2.48.1


