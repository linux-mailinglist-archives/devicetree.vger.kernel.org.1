Return-Path: <devicetree+bounces-223414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC7CBB47B4
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 18:18:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D2827B423C
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 16:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B90A125785B;
	Thu,  2 Oct 2025 16:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A4wLHIgO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB553252292
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 16:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759421865; cv=none; b=Hhxig8OK2aq8eSDw1eAFzgJYaMmtC/Xneo8trpmbssoirhSL4QT6dWV86mqBIk4tXtLRmmSDDTzMvkHAqnd15lQ0vVgrdVwkuki8t0aCenL9B7li/9aOrEGpIEcyTMza0seILKyGYzzFGp0ycR+s/vXrSgBvPVYw5MUBFOAAeZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759421865; c=relaxed/simple;
	bh=AyS3u95uyqH/xDcmCFbZlmlbD4K3Ky/RpGp89Hwicg4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DXZ1QovN3Qy1PaW7ksJpBXj4FJGLceOJnpcXBnk7sTNeWb91wQ37KLSN4dxI0yQ7cgbKi50YlerBfUmf0hbK0gwGouilFk4NZNDai93KVkItsV/9oVOPxDsJzCS7oyoxTPEMG70+1/yBrX9ais5VqH38AQwzAxpgg7mlr4u+XWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A4wLHIgO; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e37d10ed2so10883845e9.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759421861; x=1760026661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDy+bcBz5SReUL1/hrWcatTUHafCDQsXpig3EVAl2cQ=;
        b=A4wLHIgOk17gfgMioo5/nuoJjbA48ZMS9gw9ZdImDSAXkNlNXsHxagAhaQ3BuctgJm
         FvHeVRFjTv4BCRCSgPg4GiPCUQzqdQi9UZS3D1nV8ljn08lIPKEuR4f0VdlXO8Ba8xB3
         UkDhGAkuxt0jeLjO5IPlodYENM+ZG9eBj55WpqJ/7Gx7XBpWxjgjoXtok6mlOOF5zMFM
         KCCMepK+ivm5ecRzcRKGShchWZGcRQUvMewXwq9cAXSYbbOcyJZm6wGlEQKbSKscNFb+
         atcrexBi1HVIEZur7kjYh5+IQhN0EQlsQn68QnhwnBDAoovk3/xkjVJG2+Ej4xFTDPkb
         Za3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759421861; x=1760026661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xDy+bcBz5SReUL1/hrWcatTUHafCDQsXpig3EVAl2cQ=;
        b=PhGdEqBoJnlXLal8riZiE+a3QDrFPLL1krTLROxhLYZHj6UXw6T3H3teQBicMI7MhO
         bwDwrEAyKEqv9D4q89RtDyc+Aw3UZzCuernKwPJWM1WR337tlxAQ5WHZFt4h3F5+F4Xj
         c0yOsncmkixY4xVdPmZ4uq5yJJOJEQL5KV/2tL8YnhNABKtJ2piKySGrJejjGTC3sDnJ
         2DN2foPYI7UlymFM40P2Kso39Vf/fPvexipqkiZYi7LV1i/fxooKyQagQmfqu3DpiUp6
         0A7jj9Uucu3iBKqKt1JAO/6cAAsM5AtX4g25Zx1HbMtQu9EwHMV/JOpLwECymIBWauZu
         wpmw==
X-Forwarded-Encrypted: i=1; AJvYcCVZPl5J3MdkkCUugSXtzpDlhPkiTnd3b/tB4z0EDs9DWH1YiLZwJPo8LwAoJcf0qJdpIDReoiTjqSMD@vger.kernel.org
X-Gm-Message-State: AOJu0YwQAyjOHnuxB+/5J/tb84uVF4jJHD7tknbsmS2jpHz9aXnemHzt
	mOLeTj9B3JnVBkmF6ZbxeusX/Gg7gB2H+sTeoOAzf2Nx94E9i717a0ol
X-Gm-Gg: ASbGnctAKbWEAk8xaE3PNziUW8/Ha7BNXzFC88gEWtPMq5dSJu0Q2GKiRO2PZFZD/lw
	TH8hHf2kU1xu5mLxPXvwafPSsgF05khsj3/voYIt1tx1GM309JxNhbU+mMANeY4na5SbnYEA5C2
	KdbauDBc5c7BvazWTj0z4IHc2RUFPNa2nRObaCE0yG5QVtRpAu694Zawu3mDPJSHeqf9CC6jNjK
	qE0HUGdcNQJvGBLD80C3WAUMKIzBYX3+WYs6cUREH+C4nYk8+i2eGScW9LNpXY+e9BMKwpCjz1y
	uqqac23kgkSJqyqoJ1ZMraOCfWlumm20setwbY1XdquFkuQY1iR62FVSJqP9Dv/yoGK4CvhYpmq
	M+O3xB6DsMtbBBNeTFTvFkb7H1hn+U3W0VV6KBe6FYopm0u8ydWEHpWKDSkAVRtgoX2b8xrBK/J
	xHZe5s
X-Google-Smtp-Source: AGHT+IHrq2Ok4208eIeZKRmn8dvl8f5AQ6yStLCnXfA+SOQTweqJ+ph9ADJMK5C1VCoebsbnYj9+Yw==
X-Received: by 2002:a05:600c:3149:b0:46e:3b81:c3f9 with SMTP id 5b1f17b1804b1-46e61269212mr68911085e9.17.1759421860723;
        Thu, 02 Oct 2025 09:17:40 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:607d:d8e6:591c:c858])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5b5e4922sm58605515e9.1.2025.10.02.09.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 09:17:40 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v9 1/6] clk: renesas: rzv2h-cpg: Add instance field to struct pll
Date: Thu,  2 Oct 2025 17:17:23 +0100
Message-ID: <20251002161728.186024-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251002161728.186024-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251002161728.186024-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add a two-bit "instance" member to struct pll and extend the PLL_PACK()
macro to accept an instance parameter.  Initialize all existing PLL
definitions with instance 0 to preserve legacy behavior. This change
enables support for SoCs with multiple PLL instances (for example,
RZ/G3E we have two PLL DSIs).

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v8->v9:
- No changes.

v7->v8:
- Added reviewed-by tags from Geert and Biju

v6->v7:
- New patch
---
 drivers/clk/renesas/rzv2h-cpg.h | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/renesas/rzv2h-cpg.h b/drivers/clk/renesas/rzv2h-cpg.h
index 840eed25aeda..e2053049c299 100644
--- a/drivers/clk/renesas/rzv2h-cpg.h
+++ b/drivers/clk/renesas/rzv2h-cpg.h
@@ -16,20 +16,23 @@
  *
  * @offset: STBY register offset
  * @has_clkn: Flag to indicate if CLK1/2 are accessible or not
+ * @instance: PLL instance number
  */
 struct pll {
 	unsigned int offset:9;
 	unsigned int has_clkn:1;
+	unsigned int instance:2;
 };
 
-#define PLL_PACK(_offset, _has_clkn) \
+#define PLL_PACK(_offset, _has_clkn, _instance) \
 	((struct pll){ \
 		.offset = _offset, \
-		.has_clkn = _has_clkn \
+		.has_clkn = _has_clkn, \
+		.instance = _instance \
 	})
 
-#define PLLCA55		PLL_PACK(0x60, 1)
-#define PLLGPU		PLL_PACK(0x120, 1)
+#define PLLCA55		PLL_PACK(0x60, 1, 0)
+#define PLLGPU		PLL_PACK(0x120, 1, 0)
 
 /**
  * struct ddiv - Structure for dynamic switching divider
-- 
2.51.0


