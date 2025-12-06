Return-Path: <devicetree+bounces-244918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C3ACAA3CD
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 11:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4AFC8308D46A
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 10:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A962E229F;
	Sat,  6 Dec 2025 10:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LnFtz2Ko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B14286422
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 10:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765015827; cv=none; b=c0vc6mLjHYB93U5kKs2MHl77OT0ewjLYvNnzmmdmjDPwGv3JhgRyVXQRM7T+xe4CDOAVrYIcraqgXbgT0Ku86unTcEi44asntYa4a+ENegYVdtk9ENkflI5I/dEf7KhhZgYCI3KZu7YDHyThmXPE40ISxbdjhEsE8PK3gMR7RDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765015827; c=relaxed/simple;
	bh=m5XQ03NkmU7Dyvrl3uNqx25v8w2wEU616h/uh5i28kk=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jUDn1S1TD2D+cA2KgjAp+CfHedQ/CozaaklP6YCc3aLQk4Plu5pLiQ8FdMY/DjSBpV5EYA0LinLTqtw5Zg0BLlph+o0M6n2y1Do38ORNvYOu9AMlVVlB/9f4qwTLnBKj9udOIGAS0isVN4BMg4jmCfu6xvNztfNXAv5oNX6k9Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LnFtz2Ko; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-37ba5af5951so28161121fa.1
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765015824; x=1765620624; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HePzOK2YwREM++8Zxr7PF7Xhi3Zuwv6TtIklSs2K0TA=;
        b=LnFtz2KoVhE2S7ZBjLI4tWPpO1mA1B+Pe/zY5ywSzN0JfTkbtvBnkVcd32kNP2hLJM
         V5Ta+0acdBzXN9C9NTb9s3NonWfQlk2MGUHiXUrXcsIo1EvBJkQS8MftOQZ5ADjUGwXJ
         jNxcdffQ0IyEHMpDyZZOWJdqDnTg7ef9x00N1VvO9S/OB8AR9n+5OOP04qoGcSTsX68r
         l8oKXS/goftTmlzsx9UM6uBRzMaziFHs3Vw1/vVz8kto8BrvnwUqVAFuxgQBpnn4QkRr
         LUYEI6msh4u4R6sTVsos0YXyYqvfU391j5n7YfM0B+C02VtCtWKbKWRZyz/BElHpGJ39
         u31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765015824; x=1765620624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HePzOK2YwREM++8Zxr7PF7Xhi3Zuwv6TtIklSs2K0TA=;
        b=sGIdL6VuQDmbFlUmTb9gV82dPdkMY+FKdNmVWJNK0Z1MoEN2cwjUIsd6jMbkbLHQmG
         GwsdXdyuloNl1gdkRunW3Q8lA7SuwXA38sZcUGS7czpqTA+WsO4eO24gjgZ0VNUJijda
         B+WMjp1oUiM2d3XGUfgeSUsDbkkR5A3w3ojfjlkHeE4zs2YP2JgBzA96nG8YxCXj4EHi
         LbRWyOC6Ln61GQZdU8tao9JOna7/XggjSPNssoboJmS+5mpklmYRJwZNis9UMK7gde1f
         xR3Xrjr6abWG4/f3oWMVqHIT+4HQpxrgjMnsGjV0dOmX6v1pgg6VklewCSOYx6GQSQIb
         BE8A==
X-Forwarded-Encrypted: i=1; AJvYcCXThyGqw6qxGgXbPQIFkXT/KmkyglWQ+ZKWhYj1ZMtVItETCO/sRZLuOqK2bsmAFuS+mSMbRBDxZBBD@vger.kernel.org
X-Gm-Message-State: AOJu0YzBZ/xxwEZT6ka2P3fyJxCpPRXTXNd+ZQyIQXLNcW2WLN1l/iQQ
	RxLnfPd9IcfRgbEyeH0wTJU52ADOyrjvctKShB1TBnjvVR732VETMZNpcWiOcEXA5jc=
X-Gm-Gg: ASbGncu9l/RtnOiaUBCWQolSvuZxUWOEDytnt2Eq5GlQeDgqna7Hsyq3MiVSVPo/7m3
	4uf70izDv68D1Qc8AQ5AitdjRCXyhMuddyWdkpIUSfr2Jg6rPNS3JOIwz37GKl0VVfytJ2hSypi
	byLbHcVXdn3EgiNdAWuQpI4a4gkTMOdnLzzYzY/tVtBRH5XTX6MVao/wJQoJVu9mWaB6X8ww/qA
	7lYwpgBxdvS+qwHHE2Ynj6lN6uFVQoeiyL6/m0xae0pjxNmcxRqW2ekIHuh1nqEhyOVQ+v7Iate
	fFcKJmDfrIjK78FRwokO1fPWdkUIGkw/oLEu5HPxoW2L7mJHG3AG0q8yB5UUhq+UODPEqY8y7la
	gN8IT57ggHfrpcsoAO5UDMNLpNeR350/vNiOElIw3BRvtaBdziivst/k+Yg9ODVTKjBqUopwQyY
	L6Uqr4/t0Oabcgaic=
X-Google-Smtp-Source: AGHT+IHZhU14o4ScBHW4P11RxOcWO7E57dLHDLPGPlafHtqW8aK0T9R3cLmmCnbIYLub9+VE97fizQ==
X-Received: by 2002:a05:600c:8b0c:b0:477:a219:cdb7 with SMTP id 5b1f17b1804b1-47939c8b376mr21743575e9.0.1765009703680;
        Sat, 06 Dec 2025 00:28:23 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:23 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] media: rkvdec: Add support for the VDPU346 variant
Date: Sat,  6 Dec 2025 08:28:08 +0000
Message-Id: <20251206082809.2040679-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251206082809.2040679-1-christianshewitt@gmail.com>
References: <20251206082809.2040679-1-christianshewitt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

VDPU346 is derived from VDPU381 but with a single core and limited
to 4K60 media. It is also limited to H264 L5.1 and omits AV1 and
AVS2 capabilities. It is used with RK3566 and RK3568.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index a1c02ef3a97c..cf68454b2217 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -295,6 +295,62 @@ static const struct rkvdec_ctrls rkvdec_h264_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_h264_ctrl_descs),
 };
 
+static const struct rkvdec_ctrl_desc vdpu346_hevc_ctrl_descs[] = {
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_SPS,
+		.cfg.ops = &rkvdec_ctrl_ops,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_PPS,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_MODE,
+		.cfg.min = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
+		.cfg.max = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
+		.cfg.def = V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_START_CODE,
+		.cfg.min = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
+		.cfg.def = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
+		.cfg.max = V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
+	},
+	{
+		.cfg.id = V4L2_CID_MPEG_VIDEO_HEVC_PROFILE,
+		.cfg.min = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
+		.cfg.max = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10,
+		.cfg.menu_skip_mask =
+			BIT(V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_STILL_PICTURE),
+		.cfg.def = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
+	},
+	{
+		.cfg.id = V4L2_CID_MPEG_VIDEO_HEVC_LEVEL,
+		.cfg.min = V4L2_MPEG_VIDEO_HEVC_LEVEL_1,
+		.cfg.max = V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1,
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS,
+		.cfg.ops = &rkvdec_ctrl_ops,
+		.cfg.dims = { 65 },
+	},
+	{
+		.cfg.id = V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS,
+		.cfg.ops = &rkvdec_ctrl_ops,
+		.cfg.dims = { 65 },
+	},
+};
+
+static const struct rkvdec_ctrls vdpu346_hevc_ctrls = {
+	.ctrls = vdpu346_hevc_ctrl_descs,
+	.num_ctrls = ARRAY_SIZE(vdpu346_hevc_ctrl_descs),
+};
+
 static const struct rkvdec_ctrl_desc vdpu38x_hevc_ctrl_descs[] = {
 	{
 		.cfg.id = V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
@@ -449,6 +505,43 @@ static const struct rkvdec_coded_fmt_desc rkvdec_coded_fmts[] = {
 	}
 };
 
+static const struct rkvdec_coded_fmt_desc vdpu346_coded_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE,
+		.frmsize = {
+			.min_width = 64,
+			.max_width =  65520,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height =  65520,
+			.step_height = 16,
+		},
+		.ctrls = &rkvdec_h264_ctrls,
+		.ops = &rkvdec_vdpu381_h264_fmt_ops,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_decoded_fmts),
+		.decoded_fmts = rkvdec_h264_decoded_fmts,
+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
+		.capability = RKVDEC_CAPABILITY_H264,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
+		.frmsize = {
+			.min_width = 64,
+			.max_width = 65472,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height = 65472,
+			.step_height = 16,
+		},
+		.ctrls = &vdpu346_hevc_ctrls,
+		.ops = &rkvdec_vdpu381_hevc_fmt_ops,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_hevc_decoded_fmts),
+		.decoded_fmts = rkvdec_hevc_decoded_fmts,
+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
+		.capability = RKVDEC_CAPABILITY_HEVC,
+	},
+};
+
 static const struct rkvdec_coded_fmt_desc vdpu381_coded_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_H264_SLICE,
@@ -1654,6 +1747,19 @@ static const struct rkvdec_variant rk3399_rkvdec_variant = {
 			RKVDEC_CAPABILITY_VP9,
 };
 
+static const struct rkvdec_variant rk3568_vdpu346_variant = {
+	.coded_fmts = vdpu346_coded_fmts,
+	.num_coded_fmts = ARRAY_SIZE(vdpu346_coded_fmts),
+	.rcb_sizes = vdpu381_rcb_sizes,
+	.num_rcb_sizes = ARRAY_SIZE(vdpu381_rcb_sizes),
+	.irq_handler = vdpu381_irq_handler,
+	.colmv_size = rkvdec_colmv_size,
+	.flatten_matrices = transpose_and_flatten_matrices,
+	.named_regs = true,
+	.capabilities = RKVDEC_CAPABILITY_H264 |
+			RKVDEC_CAPABILITY_HEVC,
+};
+
 static const struct rkvdec_variant rk3588_vdpu381_variant = {
 	.coded_fmts = vdpu381_coded_fmts,
 	.num_coded_fmts = ARRAY_SIZE(vdpu381_coded_fmts),
@@ -1693,6 +1799,10 @@ static const struct of_device_id of_rkvdec_match[] = {
 		.compatible = "rockchip,rk3399-vdec",
 		.data = &rk3399_rkvdec_variant,
 	},
+	{
+		.compatible = "rockchip,rk3568-vdec",
+		.data = &rk3568_vdpu346_variant,
+	},
 	{
 		.compatible = "rockchip,rk3588-vdec",
 		.data = &rk3588_vdpu381_variant,
-- 
2.34.1


