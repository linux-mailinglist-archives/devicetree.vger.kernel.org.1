Return-Path: <devicetree+bounces-121929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB269C8FA2
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 17:24:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5D65B45902
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 16:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06D07172BB9;
	Thu, 14 Nov 2024 16:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="Qz6y5aZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DAC139CFF
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 16:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731600108; cv=none; b=gLV20uTI3oN9XWazAWBf3ycmbR3tqeL0mnqSJ9RnMzCZ+XeYww+bWItBH0YW3EGltpfSfO7G1Du4LPWEUyTkMUCYlkzQH/SO251UVjKphGRJUOo4Ivs4pGwI3vNJjkx1A1vCDv+46ZliDN86GjBmEVW7RWXSDWL26owlneaB0g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731600108; c=relaxed/simple;
	bh=RgRcDTZ0cd2d3Z1miPXnLWTGyap0Y17dAsHzTAg8FY0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A4A0VoT4vmWAh3TeJpT756i5WF3OV4+5LM3faIl0U7ZeLafq3lwZ/Kf+Yqi9iyvAuukJHGSBznd0nWFhMrRpElC/0LynFYct+u53SKKCfEjI1WOp+3uv8X5xJZd81dHN2/r+sF9/ButIVAhVIjd+r9Gp5PEUEUEGNhxcqWTd0Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=Qz6y5aZV; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539f76a6f0dso779818e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 08:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1731600104; x=1732204904; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T7c9J9xmOBZy0E+gA1j8HfGDniMhcLFy7E+lLxJu1Tw=;
        b=Qz6y5aZV4ocBS1XT8wCXP91WURgtSO4lsn35zt9niKTiqQbWFXeMI5x7KVBnXcllwT
         Ue4+kN0G8g7ljhbeReg7FZYOgcUSRJqNEPe9FZlhP6LN4E0ezwISFGeLFReK2OTYI5CB
         nOXAX8xwAFrx7meT4KIy6dlyyo+PnRb9WMHsfIdcM+HzZlOGoN/rUaCAeKzBvNy1axCL
         BJvDkxUrDJmku6EgE/Ywzp/J0lH2TahH3P0wdnyUQMHUDrCyfja11hzfciebMURGQXyw
         g+7nzny0OM0EiNqPzzHJEsimW7ys0dchKbg6MRMRlm8t/Ry2bapvMH6fc5q0VOhFxqsg
         O4oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731600104; x=1732204904;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T7c9J9xmOBZy0E+gA1j8HfGDniMhcLFy7E+lLxJu1Tw=;
        b=Cs908bvvz5eZHsw7q33Kx7/aTY0SsaLnAMY1fFqHWx/fRhYL0a+l3Sc6DhPH5kIWbn
         UEDzceaKlqOiyVk39H0feceuHojj2ydJxDRlYND6Z/PJPD3UojEO9E+BlLnb6bKWhOCW
         Xli8cdh+nNI3kYG/xo1tItElMU0DUGouplhPSGqu81S+4kadPO5e6AhHWSCQb3kCuJXf
         5DRsR0keKxBk/b3TKaUmdbr9hi1yuBog+YM36MWdms4F9kzmZinJGuPSKXgMAEvEUNeY
         6QLfbb9IVXkZSpN/NnkzWl4pqu51pPIYsfFiJnLUlXblZm9fLhlDdvwEjzZTnHQdNS8d
         dyGw==
X-Forwarded-Encrypted: i=1; AJvYcCVlLx8fuManyQnCzi5sQT1vtf6jk6iQvSfmqUPmoyLTO5h6/qZVNLiOFR8f72cEsvIrWeSIOYvy/dRY@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq1S+LgXTxMpUmLr+ugVLxEwc3IvKj9OmAjlfmI5DHI3X7aDCY
	MSeMruyqH4zG2aJc7yfhcHYHA7JS1IcKaT+ZFTFwOnxSbAf5ud8+asQcsXCZuSc=
X-Google-Smtp-Source: AGHT+IH2B2O4sDgX4PQFuQz83D5q69hXTp9OqNeMo5HRiiv9F39wpipZ5EJMNQCetw5Zzb0qXWSGxQ==
X-Received: by 2002:a05:6512:3b1f:b0:539:f807:ad93 with SMTP id 2adb3069b0e04-53d9feddd90mr4485395e87.38.1731600103640;
        Thu, 14 Nov 2024 08:01:43 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-382200fe00esm1139024f8f.42.2024.11.14.08.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 08:01:43 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 14 Nov 2024 16:01:13 +0000
Subject: [PATCH 1/3] media: i2c: imx290: Limit analogue gain according to
 module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241114-media-imx290-imx462-v1-1-c538a2e24786@raspberrypi.com>
References: <20241114-media-imx290-imx462-v1-0-c538a2e24786@raspberrypi.com>
In-Reply-To: <20241114-media-imx290-imx462-v1-0-c538a2e24786@raspberrypi.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

The imx327 only supports up to 29.4dB of analogue gain, vs
the imx290 going up to 30dB. Both are in 0.3dB steps.

As we now have model specific config, fix this mismatch,
and delete the comment referencing it.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 drivers/media/i2c/imx290.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index ee698c99001d..da654deb444a 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -176,6 +176,7 @@ struct imx290_model_info {
 	enum imx290_colour_variant colour_variant;
 	const struct cci_reg_sequence *init_regs;
 	size_t init_regs_num;
+	unsigned int max_analog_gain;
 	const char *name;
 };
 
@@ -876,14 +877,10 @@ static int imx290_ctrl_init(struct imx290 *imx290)
 	 * up to 72.0dB (240) add further digital gain. Limit the range to
 	 * analog gain only, support for digital gain can be added separately
 	 * if needed.
-	 *
-	 * The IMX327 and IMX462 are largely compatible with the IMX290, but
-	 * have an analog gain range of 0.0dB to 29.4dB and 42dB of digital
-	 * gain. When support for those sensors gets added to the driver, the
-	 * gain control should be adjusted accordingly.
 	 */
 	v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
-			  V4L2_CID_ANALOGUE_GAIN, 0, 100, 1, 0);
+			  V4L2_CID_ANALOGUE_GAIN, 0,
+			  imx290->model->max_analog_gain, 1, 0);
 
 	/*
 	 * Correct range will be determined through imx290_ctrl_update setting
@@ -1441,18 +1438,21 @@ static const struct imx290_model_info imx290_models[] = {
 		.colour_variant = IMX290_VARIANT_COLOUR,
 		.init_regs = imx290_global_init_settings_290,
 		.init_regs_num = ARRAY_SIZE(imx290_global_init_settings_290),
+		.max_analog_gain = 100,
 		.name = "imx290",
 	},
 	[IMX290_MODEL_IMX290LLR] = {
 		.colour_variant = IMX290_VARIANT_MONO,
 		.init_regs = imx290_global_init_settings_290,
 		.init_regs_num = ARRAY_SIZE(imx290_global_init_settings_290),
+		.max_analog_gain = 100,
 		.name = "imx290",
 	},
 	[IMX290_MODEL_IMX327LQR] = {
 		.colour_variant = IMX290_VARIANT_COLOUR,
 		.init_regs = imx290_global_init_settings_327,
 		.init_regs_num = ARRAY_SIZE(imx290_global_init_settings_327),
+		.max_analog_gain = 98,
 		.name = "imx327",
 	},
 };

-- 
2.34.1


