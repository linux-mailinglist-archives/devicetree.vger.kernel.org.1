Return-Path: <devicetree+bounces-253457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D309D0D00D
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A871E30208E3
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B9A33CEAA;
	Sat, 10 Jan 2026 05:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VCBZqv4C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDE033CE92
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768023463; cv=none; b=c4+647DKNtsuweviYcSlrI3Wtb++C46pc1aht+V/HkD8Jp2tiCvozqitOMfvMDU3CSnFD1gajscUQXjeAzEVXVg9s1Q3sD7Phb5UUrU8DHA8o6PV7ZrB0eiHKEer0N4HHO0Nd4PeUUmJY8yWlmUacqwAkMguT3EGuE6dJ92m+ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768023463; c=relaxed/simple;
	bh=WljOqNK74DzVd+siLPZsiFtaVwMXuKc/CKeyp/+23k4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qaJHt7Bd6cmiKVsCKLnBDv3RI50m+jpedehS4k8mGjSUndVah4Nz8apoysFkl7W8fkR40r7XQuyaVQFkDJW/AdSZfziQxWqXcFzlcTBmle0km2lbp7GoU8g2SNU/FUuBPyeYuXmPE20M/QJcowFAlZDi77tWG+KF5XiyQlG2OsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VCBZqv4C; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so37074585e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768023460; x=1768628260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SwF/unBnaFW1rvIB2VegLLFRYP2bQTcQU4jqjcGifVk=;
        b=VCBZqv4CGVz8NveJQ5YLsu/1M6LCbbuLZ8Z4HcEqEBThZr+F6YjkvMgUZ2C41R3n8P
         IL7+f2qoplWdyLEeQ7k33Z7CNnKY8k6DCvK3FK/XNuzyo7WHVfYD1vNI9+kYVObuJWfW
         RMxqW0CNC6oYGoodferu7sA7YGZisdVNdu825ccoPk/fU7W2OWgWi42v9fuO3n9mw4fD
         ofUpRoYh7d7+fV6NEfxqC2PFjjRr+gJ3e4NRlwzq79/xwn9dTsUKbjyhDibz7Zk6Ggv6
         dbjYJw2eWHhsg12XTrltfBXJXuD9DI1iBnnTUp8LFySNJ2A1/CLlyqMKi4vOCLUWDYaj
         XSaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768023460; x=1768628260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SwF/unBnaFW1rvIB2VegLLFRYP2bQTcQU4jqjcGifVk=;
        b=CSOLT+p788n2OG0tvgO1Uh5oVQHXbbZ5i/jFJjbOUoMLJGeoeOD97sn5bM/EeljQ0W
         T/v60ntZhbXKA132/gnESllzEf/bXDLL3tcdxjjLNRUHZQmnISJaW4o8qTWwhf2WXy94
         RUfhZ2taVWL9MufwACH3sqjh+Zya9jmiCq970JVbCMRnwtEG5A/PuEfIxKFlT+PcGYpz
         KdnsRQA65Xd8tqV39aXtuy30VpbC+X0Fv5bkXXaq2Gr1X0jngA5jlWRUyeBenSEBz5Jz
         8hCiNO5rN+CDMYDaIQoysjyMTSXVJHvFwxpunS2vkOVaPi7jVAi78U3Jq4s5cpupMDbr
         kK8w==
X-Forwarded-Encrypted: i=1; AJvYcCUCzjxWTZittWGxKEnLgVdzQvWwD1t/65dZ27iR+NnGlk4dAVdSNuOzTNNC/smRupSRitp7f4fWvb18@vger.kernel.org
X-Gm-Message-State: AOJu0YytxfIKInQPb2w5zIRPUgjT68Wntp947Z1rwPgvMLYPmEupxcES
	mz+sNJ07zqWR+b69DYlAb1fXQFtRl6sJAjKLOQsOIaGv6NXd8+rJzB3L
X-Gm-Gg: AY/fxX5CZpoQEAPTvCNWZ9Z/dbH+jW5GN8s1Flh+/JZZHWP7aLAwxnAYGsfz5SVUzgz
	NeVhket8CqtvgJbuhZLS+r6SBKgXvmhJ0o1cWd+0iQQDquBYTaeaY3Xv+spLGkrzjwwWKV4nYZU
	M4tcGAyw2OW4OkDvXnHka42ANX2/yOB5594auuo4H98T8lkBiB0NfiBA+JsgpuYakAujI4MfuVg
	lG9OyFI7QD3NkWw+Wi1oAaWpTBcIPoxOQhseUqZqJD7WET3qy7wRM1ruo23R5BbOGLa/MBt0kZi
	kpeplX2upgHihkBf8WEIRIdjB0FUMuXsKBOMJ5GH/WXwgItKxi2n52m2sME+TYyv1g92tCVEU/1
	usTqm4bvXdlaZg+amW/CDuBR8Oq0lIqkzDKCQXIn6rik1WbW5vL9Ce+kf2vOxycZWhcwyl2hYOq
	oBlZVNzwt/sClCv8g=
X-Google-Smtp-Source: AGHT+IETNRaHMNAZQeH2gwTg4jdbHnvg19YnwNKOZH/s/Wk/33B+6YxgXnlQIAepe6DAJfUBCWI5ig==
X-Received: by 2002:a05:600c:8b65:b0:477:79f8:daa8 with SMTP id 5b1f17b1804b1-47d8fbda479mr66222065e9.17.1768023459645;
        Fri, 09 Jan 2026 21:37:39 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dadcfsm25973825f8f.3.2026.01.09.21.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:37:39 -0800 (PST)
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Dang Huynh <dang.huynh@mainlining.org>
Subject: [PATCH v3 2/3] media: rkvdec: Add support for the VDPU346 variant
Date: Sat, 10 Jan 2026 05:37:26 +0000
Message-ID: <20260110053727.2295260-3-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260110053727.2295260-1-christianshewitt@gmail.com>
References: <20260110053727.2295260-1-christianshewitt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

VDPU346 is similar to VDPU381 but with a single core and limited
to 4K60 media. It is also limited to H264 L5.1 and omits AV1 and
AVS2 capabilities. VDPU346 is used with RK3566 and RK3568.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Dang Huynh <dang.huynh@mainlining.org> # Pinetab2
---
 .../media/platform/rockchip/rkvdec/rkvdec.c   | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index a5cf6f3240f8..6e49b129d11f 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -236,6 +236,62 @@ static const struct rkvdec_ctrls rkvdec_hevc_ctrls = {
 	.num_ctrls = ARRAY_SIZE(rkvdec_hevc_ctrl_descs),
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
@@ -463,6 +519,41 @@ static const struct rkvdec_coded_fmt_desc rk3288_coded_fmts[] = {
 	}
 };
 
+static const struct rkvdec_coded_fmt_desc vdpu346_coded_fmts[] = {
+	{
+		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
+		.frmsize = {
+			.min_width = 64,
+			.max_width = 4096,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height = 2304,
+			.step_height = 16,
+		},
+		.ctrls = &vdpu346_hevc_ctrls,
+		.ops = &rkvdec_vdpu381_hevc_fmt_ops,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_hevc_decoded_fmts),
+		.decoded_fmts = rkvdec_hevc_decoded_fmts,
+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE,
+		.frmsize = {
+			.min_width = 64,
+			.max_width =  4096,
+			.step_width = 64,
+			.min_height = 64,
+			.max_height =  2304,
+			.step_height = 16,
+		},
+		.ctrls = &rkvdec_h264_ctrls,
+		.ops = &rkvdec_vdpu381_h264_fmt_ops,
+		.num_decoded_fmts = ARRAY_SIZE(rkvdec_h264_decoded_fmts),
+		.decoded_fmts = rkvdec_h264_decoded_fmts,
+		.subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
+	},
+};
+
 static const struct rkvdec_coded_fmt_desc vdpu381_coded_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_HEVC_SLICE,
@@ -1657,6 +1748,14 @@ static const struct rkvdec_variant_ops vdpu381_variant_ops = {
 	.flatten_matrices = transpose_and_flatten_matrices,
 };
 
+static const struct rkvdec_variant vdpu346_variant = {
+	.coded_fmts = vdpu346_coded_fmts,
+	.num_coded_fmts = ARRAY_SIZE(vdpu346_coded_fmts),
+	.rcb_sizes = vdpu381_rcb_sizes,
+	.num_rcb_sizes = ARRAY_SIZE(vdpu381_rcb_sizes),
+	.ops = &vdpu381_variant_ops,
+};
+
 static const struct rkvdec_variant vdpu381_variant = {
 	.coded_fmts = vdpu381_coded_fmts,
 	.num_coded_fmts = ARRAY_SIZE(vdpu381_coded_fmts),
@@ -1705,6 +1804,10 @@ static const struct of_device_id of_rkvdec_match[] = {
 		.compatible = "rockchip,rk3399-vdec",
 		.data = &rk3399_rkvdec_variant,
 	},
+	{
+		.compatible = "rockchip,rk3568-vdec",
+		.data = &vdpu346_variant,
+	},
 	{
 		.compatible = "rockchip,rk3588-vdec",
 		.data = &vdpu381_variant,
-- 
2.43.0


