Return-Path: <devicetree+bounces-23218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2C780A7D1
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:49:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9D7B1C20909
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ADB832C8C;
	Fri,  8 Dec 2023 15:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hk0g/rHG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 559881724
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:48:53 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1fb14047fe7so1570483fac.1
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702050532; x=1702655332; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CvGIaRZZrGiaN7WfHKadaS8JLhBTOynXGjwIgWbiLpA=;
        b=Hk0g/rHGHYSQfcIYm+KV4I2ZCE6NCf3zyUwLnyRwfrIP0NG9M/49zAjm8UddA8EVHN
         SOF01yYZQiPReOJoxMA0ZBRjv8LC5A8DhFYun8lMyXK2VxtLZNFyedIzpXQsXqZi/V6e
         79MfHNKQ9Mt06srDPqw8wGPYGSUBYHqi/N3indW85tlH38agtH6FstZLBs8a44+fdK5J
         v714wkkpirF/CR6YMNMURC+/NboGsqNIsZRFhFpZ3+vuhom2Zg5H+btW5/RuLxcuEHjL
         VAxRCGcSiEtkuj6zLeOxQO7TQ+zQtQoIZj/3DdE8Co/C6V/gJ9+HsNJyxmjLDjyj+H51
         6gmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702050532; x=1702655332;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CvGIaRZZrGiaN7WfHKadaS8JLhBTOynXGjwIgWbiLpA=;
        b=ViIbVIApHcLiBYEhtjFALIWCImROjRCYlFZQ+ra7yBNhz48220QHkQUG50lsivNJ7B
         X3b5ofpIJ5IKXEfX1ptOH+P4Cxm8dpBScD+GZIwMsB/VEWkUK7DeIMC8SyLaFCwIu5kN
         9p04D/UrJT8KSJchDgVKKptYJw96cbIcKeT7JNFkmJTTyD1+SasCom1Y1n8z/ftM0WC9
         VqlNTZYulYiXI5nRhaCq22Q0DXUCBcq+Qvk5fYWfKKEYOn2Yg/bCHZXlgfU/LUch2LG1
         6Ahrp3gn5jbQku/e3zRJoBavHwXh7f5+btV8WQObhb62oTMync3E///A9PoL42YjNElI
         5O0A==
X-Gm-Message-State: AOJu0Yxhh9OPlnuqVtE+tebmlzdHgdRq9DDU3xM//mNC9nIJN5SRyL5D
	ojjg5w+4GrWvULbJN5yxkMa5VJUdfsA=
X-Google-Smtp-Source: AGHT+IFcyiv07XisAWrr55TzlRfXp9Mk8AGnaOZAaI0YTkOm5TiqFGi/N32KJ7yt9vjPxevz2v9OTA==
X-Received: by 2002:a05:6870:4723:b0:1fa:477:8a93 with SMTP id b35-20020a056870472300b001fa04778a93mr511508oaq.24.1702050532411;
        Fri, 08 Dec 2023 07:48:52 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id os25-20020a0568707d1900b001fb28cd0e9asm444624oab.3.2023.12.08.07.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:48:52 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org,
	linus.walleij@linaro.org,
	marex@denx.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] drm/panel: st7701: Fix AVCL calculation
Date: Fri,  8 Dec 2023 09:48:45 -0600
Message-Id: <20231208154847.130615-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231208154847.130615-1-macroalpha82@gmail.com>
References: <20231208154847.130615-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The AVCL register, according to the datasheet, comes in increments
of -0.2v between -4.4v (represented by 0x0) to -5.0v (represented
by 0x3). The current calculation is done by adding the defined
AVCL value in mV to -4400 and then dividing by 200 to get the register
value. Unfortunately if I subtract -4400 from -4400 I get -8800, which
divided by 200 gives me -44. If I instead subtract -4400 from -4400
I get 0, which divided by 200 gives me 0. Based on the datasheet this
is the expected register value.

Fixes: 83b7a8e7e88e ("drm/panel/panel-sitronix-st7701: Parametrize voltage and timing")

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
index 0459965e1b4f..036ac403ed21 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
@@ -288,7 +288,7 @@ static void st7701_init_sequence(struct st7701 *st7701)
 		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL2_AVDD_MASK,
 			      DIV_ROUND_CLOSEST(desc->avdd_mv - 6200, 200)) |
 		   FIELD_PREP(DSI_CMD2_BK1_PWRCTRL2_AVCL_MASK,
-			      DIV_ROUND_CLOSEST(-4400 + desc->avcl_mv, 200)));
+			      DIV_ROUND_CLOSEST(-4400 - desc->avcl_mv, 200)));
 
 	/* T2D = 0.2us * T2D[3:0] */
 	ST7701_DSI(st7701, DSI_CMD2_BK1_SPD1,
-- 
2.34.1


