Return-Path: <devicetree+bounces-229424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B26BF74C8
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:23:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 809C8501101
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88D5F3446AD;
	Tue, 21 Oct 2025 15:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZGInI9fJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4BB342C81
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761060193; cv=none; b=DnLKDDk3AfenplmykaMbv2RLMYYFWPBrNiRneE+sxGCOlISm1VdTqifEPKuvwbjVRzWOtIZTsyZeFKbvu6GIzf3+odjZ6+w0WhZDuY+dA42TWJvYnz5lJ88YSvfAf9WPsa9VFwzYmjk7pwCtCv2zUFCbchQJyWdIJYFoLnPUu0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761060193; c=relaxed/simple;
	bh=B/V0PZcMSL4fr5BJFAi6FbrjWZ96Fh2mlodt6dce7JE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EzviOCJR8nrN5uIsYr3oP+4shnn3GW3JRJm+QUbO4Wc7RyghW1GqHI9S2gHJGTpOXcxagu5H41ZXlOUV0e21OMiNhFhFkQpuWuzsHx4IXu5W3fx8EQwa6m9dOniJBfUVrqDUKeaDlzwUA9XbEqtAORI5c/vu74QdCngcYZXdH4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZGInI9fJ; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b626a4cd9d6so1147437666b.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060189; x=1761664989; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pkVtrQQNx9JXmbmmhcqWd4PIxXamm4sTBDEU32vDCe4=;
        b=ZGInI9fJxpXB+swW978kTlEOBWKxp2NGh7OY1g0/w1boZv6/mfWtf4UalfMyCtNwBQ
         K9Tluhl1ifRdfy7ymYWqfCKRxG2IIXUNIBvIPOvwiPOEF4sBIXbJreGXMZ3iKRlM7Dbl
         02Vwy3g5txUBjxl5leOfmGw2IS0KHkvTadff1LcLoHBfM4488aULaRfQNy5NvwzKT9Cm
         NoZ5wlNgfM3Daws/sYUYflfD5g8CZa6ZWGsDdu+0+Q9iFRo2/vKmOS5lLMAIUAbCCRKe
         t9m+rUTUGWH+kDZwjFcECWxn7a/XyS6cvCpIJMC5FJ+ZcHVzFB6Xl2I/oQDtjRBH0q+l
         l4EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060189; x=1761664989;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pkVtrQQNx9JXmbmmhcqWd4PIxXamm4sTBDEU32vDCe4=;
        b=lbZke0hcAGpQuvwTWvOymHL5qjVCC7mEjoiBBqMcOMMWG8O76gZPDjnRWkimPr5DCo
         DgYtBMgWB/7ry1ElA26P7QsL08Vzk8P89TZd39v0FWXUdFXM/u12sZSEP/igmaqCxeOU
         7sDtYeHqzk3NAnGMpdAyav0B7vlnS5q4lZGBKMfawpfB/O1yFZsf2lke2dmJX5/UoEZm
         yvHcKb6OmgGjSYn0Ul06mIp5G9kvjdyIF2iARPInH6/DSwJ3WU6TlX7InMJMDtb8AJPB
         ZjznuV8IULcKUE9hfqGS15YNHrNW9pXa/Pw5m8SyM+UXziZoc6mF1QoVIC4/tUUKgm2l
         WL6Q==
X-Gm-Message-State: AOJu0YwcDmq03FnarIm4St2YV7upiutDUGnOpKJbuAOFc9L7yLFM0uka
	agmBQJvII0FnKo1p22fpgf8V2MVCfq6W/Mshle5U9OrJ+mz1nEupK6S6o5u7pPJs
X-Gm-Gg: ASbGncvO1QdsxQ67ckOOapBbdicAsKKLLN04kxtWAB2B9a5oMxCyG9404ThYQ3DyuK8
	2fMpI0mFfNu2PqCCv2Bke063Su/VQzcA7qignFD0egVlns9TyZ3mywz1NEkb43asZB7+y3pQdFG
	kVMpyN85v2QOlVayZYZGt1FPKvUet1ctzT1JePvr9trM7iyUj1y8mtMwD05Lc10m4F2UbaP35au
	u0POI5q7/bFlCdjqoBUJgAdgh3DyjTU09bNgy/mVrFJFGp1hJG579evvhA4IQFwSs5Bp6RV4hDv
	Fs93XhJRNzcQgXcIzrddmeTArLbuMoxy4I2Nv0ONZI/YJGmUNCujBslHGlqP8jKGfWL28NK5TW3
	fMULyAxoF0EcacWQwFt9dYjdq+NcWCGGwlnmQBfGtfjf1XnfHKyre+UqdYuLLiXf4qaoE1xcOHi
	BtA3psGF/E5AWOjbzZxa255j5uPFCU9ncDMlQZfQ==
X-Google-Smtp-Source: AGHT+IFBawaPITrNdYmiay8yNLixvU/sNG7B1UP8/hHhq3TLFQvwCAZYt06AP2bMcG0Yh7bzOTP88g==
X-Received: by 2002:a17:906:ee89:b0:b47:de64:df26 with SMTP id a640c23a62f3a-b6474b371a3mr1920210966b.35.1761060188643;
        Tue, 21 Oct 2025 08:23:08 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:07 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 2/5] mfd: khadas-mcu: drop unused nvmem code
Date: Tue, 21 Oct 2025 17:22:42 +0200
Message-ID: <78fab8c8b621c0ec1d7c702c028840d7f431e429.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <cover.1761059314.git.efectn@protonmail.com>
References: <cover.1761059314.git.efectn@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Muhammed Efe Cetin <efectn@protonmail.com>

Drop "khadas-mcu-user-mem" code since it is not used anywhere.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/mfd/khadas-mcu.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/mfd/khadas-mcu.c b/drivers/mfd/khadas-mcu.c
index ba981a7886921..ca4bd6cf56994 100644
--- a/drivers/mfd/khadas-mcu.c
+++ b/drivers/mfd/khadas-mcu.c
@@ -80,10 +80,6 @@ static struct mfd_cell khadas_mcu_fan_cells[] = {
 	{ .name = "khadas-mcu-fan-ctrl", },
 };
 
-static struct mfd_cell khadas_mcu_cells[] = {
-	{ .name = "khadas-mcu-user-mem", },
-};
-
 static int khadas_mcu_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
@@ -105,13 +101,6 @@ static int khadas_mcu_probe(struct i2c_client *client)
 		return ret;
 	}
 
-	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
-				   khadas_mcu_cells,
-				   ARRAY_SIZE(khadas_mcu_cells),
-				   NULL, 0, NULL);
-	if (ret)
-		return ret;
-
 	if (of_property_present(dev->of_node, "#cooling-cells"))
 		return devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
 					    khadas_mcu_fan_cells,
-- 
2.51.1.dirty


