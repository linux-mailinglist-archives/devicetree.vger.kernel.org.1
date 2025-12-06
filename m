Return-Path: <devicetree+bounces-244914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B30CCAA2D8
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 09:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBC70310BAB1
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 08:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7CF82D9EF4;
	Sat,  6 Dec 2025 08:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U4zXS4Ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFCC4C81
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 08:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765009701; cv=none; b=L08yqvTI3OHTgvfSKHhniJrk46KVTkHmnyT+MonwakBHa99TLJ0pIS4c2uBKmWTQedE60HeRVnkrjDyBMSMzsoUWDJSsT4WzR4Vol2rOWihsyNqsge7RmC30weluIgo61Q/CpOfSMVQ6OnYDQvXgscOw+yztpF6k4zvIjhVFraY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765009701; c=relaxed/simple;
	bh=66/0LGwhPBNZZcINEUO9HXjaMhfiwQEPBMwcQigYeNs=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C6ONI4EmXwV4XbuLNv/Avo4Q1VDSKokpphUH5hW3mAY3mOA+n9YwtWbHL1EphGbB54l5qDotf1A4VegiEbJ7v7Z0j5+QREy7Py3p35K4t+7abo+iKMgWYSI+meBrXC1icVsPUgl7SRVvedMv2m/qHZCly8n5yCKN5dtm8KLPxLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U4zXS4Ps; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so32458465e9.3
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 00:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765009697; x=1765614497; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FezSaBLf7wCo5DY/lU0PUbH+WokJ3F83+Nys5IdDnP0=;
        b=U4zXS4PsbA0EtO0W9mjxmSIT5QT5gv4j0QUBxH0QCPDSrYgvgTKttIpbxwwOx2fBu/
         9oScrDQptH6yewBNwsbIeYd515zpav7J2hFdl3Ct3z5R8sTrZqUk6UsGmVoZIa6+XfaQ
         LOJxTqndQKXrw+cpX081vTrGcc38aN8q6dBAnrWuRBWgj7vUILrtJ9SWDcohRiJsESQB
         DjFXfPIH5ZO3s0xvp7mps5gimku0FpTpUcpIfbRPq15Ly+HUWjT83GQLtC6G2yXXwQ2J
         fWbZ1IrfeajQlDGwAuOzFG6zbajEVPthfyMOIRrY1snDY0q1bC9nkLzSSokEbDDXRds1
         rb1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765009697; x=1765614497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FezSaBLf7wCo5DY/lU0PUbH+WokJ3F83+Nys5IdDnP0=;
        b=Jdr76SHN0eXPz8y3QA0nEbRddLPCFf7y83V/sb2KoreVGAdbpvWfYb39K6AYGdBeAW
         uGz8GyGZKJNt/h7izkhM7n2+5EFG+Vs910udgqt8FiwIzXLtjQ18jHUXrQBVtsZURiB2
         7bFVyfpE2uLJB9xL5wx6j6VBw+iKiVAL4ILetgdYsQgqzFDQHGTEgrZtyhm4HFP0V4v6
         FGegWLSd3ltSjqBgoM4Dks3U9tJPAyx1PjCFHxymnq0+XEre4y2QH+i2cd9N7e2cjtDH
         5ACCoFRCncLd4J1b6cD+hKk+nPFcQW5RGp/LH2Bc86p8xsfuRmBgO2z1YA8OYqapFyWT
         HeBg==
X-Forwarded-Encrypted: i=1; AJvYcCU4+b9oUu1PasYZhvJVUmmTb/L8v/j1xRA4OoLI8J/RhF5oafdFcdGFiYBzydw54uXc7SEb1QLKdMvz@vger.kernel.org
X-Gm-Message-State: AOJu0YxfCU8m2geRBPmJhaKz9pscp7r9JZ+BLwk0Mq4ED1pGqr4UeWb2
	YzKkxQqtv918ruOYmwKm0FycubodJo8d009yZkUglU+2pCMR1bcrGolF
X-Gm-Gg: ASbGncv5nN061Wk9a/2DZrNb0ki6sHt6dHG+OdlMyAc6u13eKyYC9ZGcaepm6IEsz4P
	Zld7iMp8OnC2fPAiOFAWf+Tvl0o/zkzd72ivazAm1qmv5gWpon9ArJhEmZb+6Ws1Zjjgeteg8qx
	ErdQhlXcpKoyNJHiGVGqbDkIb4YLchGcyMy4G/o9KPFaijyIzm+2f+ThsWSV/YNk85j1nne2pQy
	rjfkMuq1oyAghYwxiK27hyHeNhAzkoOLTZq8wXwX7bBkCTseoNCcHGJuMJtSF/sCvvbxfx19I8A
	42oXHhBrwHma+iYnaW/totzG3NHPlNEUyxAy0SR/NjAsGE+xdAVfdVQoZfV/kWEWrfyMFAD2Tp7
	XRv+AG4oXnxOqI85Rdwig8XY/jLhNHTV2xvcNKca89ODKb/f4G51AKOTfZc3xARd3vRXRFCjZ7V
	7xVSZgB9TTHDGH87o=
X-Google-Smtp-Source: AGHT+IEkUrPBcFh97XMz8GJKKpFnTbZn0ROoOhlMrdyTdBPLjuhn+cNwEGqKaQDpj9DV4jFElIFQvw==
X-Received: by 2002:a05:600c:1f8d:b0:477:af74:ed64 with SMTP id 5b1f17b1804b1-47939e3d0a6mr13423475e9.27.1765009697222;
        Sat, 06 Dec 2025 00:28:17 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:16 -0800 (PST)
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
Subject: [PATCH DO-NOT-MERGE 1/4] media: rkvdec: minor fixes for current DETLEV patches
Date: Sat,  6 Dec 2025 08:28:06 +0000
Message-Id: <20251206082809.2040679-2-christianshewitt@gmail.com>
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

RK3588 TRM Part 1 para 5.5.9 shows RKVDEC_SWREG12_SENCODARY_EN as
the register name so the 'secondary' typo looks maybe intentional,
but using correct spellings improves code readability.

RK3588 TRM Part 1 para 5.4.3 shows RKVDEC_1080P_PIXELS should use
1920x1088 (to be 4px aligned) not 1920x1080.

Also correct some H264 references in the H265 driver.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h    | 4 ++--
 .../media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c    | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h
index 11b545e9ee7e..7cc6cbb8e549 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h
@@ -24,7 +24,7 @@
 
 #define MAX_SLICE_NUMBER	0x3fff
 
-#define RKVDEC_1080P_PIXELS		(1920 * 1080)
+#define RKVDEC_1080P_PIXELS		(1920 * 1088)
 #define RKVDEC_4K_PIXELS		(4096 * 2304)
 #define RKVDEC_8K_PIXELS		(7680 * 4320)
 #define RKVDEC_TIMEOUT_1080p		(0xefffff)
@@ -90,7 +90,7 @@ struct rkvdec_vdpu381_regs_common {
 		u32 reserved4			: 7;
 	} reg011;
 
-	struct rkvdec_vdpu381_sencodary_en {
+	struct rkvdec_vdpu381_secondary_en {
 		u32 wr_ddr_align_en		: 1;
 		u32 colmv_compress_en		: 1;
 		u32 fbc_e			: 1;
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
index dd7481a4353d..b4fc0d423c16 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
@@ -275,11 +275,11 @@ static void set_pps_ref_pic_poc(struct rkvdec_hevc_sps_pps *hw_ps, u32 poc, int
 static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 			    struct rkvdec_hevc_run *run)
 {
-	struct rkvdec_hevc_ctx *h264_ctx = ctx->priv;
+	struct rkvdec_hevc_ctx *h265_ctx = ctx->priv;
 	const struct v4l2_ctrl_hevc_sps *sps = run->sps;
 	const struct v4l2_ctrl_hevc_pps *pps = run->pps;
 	const struct v4l2_ctrl_hevc_decode_params *dec_params = run->decode_params;
-	struct rkvdec_hevc_priv_tbl *priv_tbl = h264_ctx->priv_tbl.cpu;
+	struct rkvdec_hevc_priv_tbl *priv_tbl = h265_ctx->priv_tbl.cpu;
 	struct rkvdec_hevc_sps_pps *hw_ps;
 	bool tiles_enabled;
 	s32 max_cu_width;
@@ -479,7 +479,7 @@ static void config_registers(struct rkvdec_ctx *ctx,
 
 	memset(regs, 0, sizeof(*regs));
 
-	/* Set H264 mode */
+	/* Set HEVC mode */
 	regs->common.reg008_dec_mode = VDPU383_MODE_HEVC;
 
 	/* Set input stream length */
-- 
2.34.1


