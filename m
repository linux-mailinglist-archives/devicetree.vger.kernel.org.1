Return-Path: <devicetree+bounces-225059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E920ABCA191
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 18:17:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B67CD3C770E
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 16:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F16492EC574;
	Thu,  9 Oct 2025 16:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kXQu6+nQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBBF22B5AC
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 16:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760026063; cv=none; b=OoTeuuTCQs1PdlQ/yWE/VdBVU5nr6tXd9jD/vQDyojwx8RtO9nALMGHRvDdhtR4R7AY6/+9l0VCUed+LxM8lYWSbS1FGoLXeurH30VF6OsVGFsiPfOWtbA2HjIbyC30hzZvsRAS2BKKLlp7kmcXuTvWWc93gOnwcLMzTEIZC82Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760026063; c=relaxed/simple;
	bh=71hixeoR9RIncU5HPut9ksVAu7DA9S4h2/eOB3zBs1I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cVUAYo5smEr2SsD52sxRGAfK4AKF08V8Ig725f7+4hHR95+ihQghJmwlCW0pSxOKmhXrEGdVxktinTYTGWNwZl7v/jh5/BmZzMuQTPVMALvnm2whr2hAZ+xzp4+dhXnieo1xna5XCMORh6bvKIdLw/+nuMjL8EBJO7GNP7GbnAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kXQu6+nQ; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4257aafab98so1038637f8f.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760026060; x=1760630860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pq2Tr08L1lg3adWXzaD7SZjNMtQpBC/86/5deu6J4qw=;
        b=kXQu6+nQ3lHlK2fnSzmt3vi4uH4DpqxIotcOChsM+KbnL41niWMV9AeL2dpZlXYA9K
         2f0ntd6L3CZMhzZk+QiPnSaugmR7NGVxrsGpkQu6sn5HzzuW+jzFfmLmX8ymk+xq2iX+
         HzV3imlePFhLV0F3nvu02Zsk63q0mytXjqtqJ0R7fMpwcEoHgGdzowHVEMLIRAd8YSrx
         Qgq5+DTAq7jITqG81xwJWXeRC4a1QZnJREbpNTfD2w/ggGfOLM7AhhlpFwU1Raft9Gji
         2tOVKl4CKhtBY3V+BYUZOIsdmhw/hKKDI4n2DKWAkFG9OhUdqbBDknraZX8eJ8LcjAjt
         bQSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760026060; x=1760630860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pq2Tr08L1lg3adWXzaD7SZjNMtQpBC/86/5deu6J4qw=;
        b=kHK3RpapVLVynvfH9Tctt4GEk2yGosu9qlXQBfmBm7J2LKg41MDMMs0YQBqJjN/4zC
         lS8ZJe18aef3+A0kbPaTidznepkJJIaEkzEtweMm+FTK22jY+n6MG7bmIAjyobSoYa8L
         Eg+HvV0TiWppv5PnicpH/MWOOFr5GFHyGwi5u1ZW9eM+NSJn+RPQkbG71dj2WwAucdGF
         Ejl35v0aKKgxGebsDY+Wr0WL9GvFupoQvwAZP1uxP2EEVUEY+rm/hTJnojTWNJqDPt4E
         VkFMG7gTDYk8Y/KBj4OpoU+uOjtYkEt0EUdaVtA0cXrMZTBxPvCmW4A5Bd9qh0LWra7I
         Uc/w==
X-Forwarded-Encrypted: i=1; AJvYcCX2mH/BzIQ/wUXUOzbJMN/Irtyei3tN/4fwQjrq6/1SfmUpJgHvf/sQo4COy797jQbEzUrg4BB2aaEZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6rSIN2y4fpHo5lZYJl7Gs3Y6QVL7bI7kc0pSPtOAaI7G8EeTL
	f6Ak1qOXPTF2P8Je9cI5jFc0S6V8laGjmx4CHpB5o6TIwW4dPHbVTFek
X-Gm-Gg: ASbGncvMb3rdzBeFDPj53TCFEhlpAcxqB3+W6ZZB9/UcIiE10i6O8g9MOTlwlUXGjJF
	boPGSkBhFe+FdMslO4qkx1zGobky/OdMKzDXBD9mil42FRXMxHnLXOMC/siHrQrIuLWF+PdaY8X
	tAAVmwZj7n0QRoqRXwM25oa3IRHRXhE0ekOyQYTep3sZULwUOYLwnF3gwdGc3iEdCMu8v98pNv4
	f2XSQk9Mya+iw9i5GiXEWBQigmkyBhozjCLJApWwCbpLINkSNIoqdM+bI5FiDBHJi+M4GU6WvEt
	/Du5hJfVGV39X3Tb2HVvpcLiwNEHTHc6bGC56F+CPVW7iuc/0npvNUN6VvH3usXNwSao/gByjHl
	+TG9/qJ3354LEXYfVTu/BU8e9aLSoMTPUBiiTeTiwz+1KEaKSIYssezc0PzIRtwk4C2K/aBeAAQ
	8orPKyVM+RMDJodOo=
X-Google-Smtp-Source: AGHT+IG0LyGj7zfSQuOuhq0aYpFFxrUIfS3oUT4MH30fCAKrUqSSLWi2E25suH7i+Zh55ryMx4uMAA==
X-Received: by 2002:a05:6000:40dc:b0:3ec:d78d:8fe7 with SMTP id ffacd0b85a97d-4266e7d91f1mr5245654f8f.33.1760026060415;
        Thu, 09 Oct 2025 09:07:40 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:480c:edeb:2884:a92a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426cd93e45fsm94632f8f.4.2025.10.09.09.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 09:07:39 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
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
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v10 1/6] clk: renesas: rzv2h-cpg: Add instance field to struct pll
Date: Thu,  9 Oct 2025 17:07:27 +0100
Message-ID: <20251009160732.1623262-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009160732.1623262-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251009160732.1623262-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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
v9->v10:
- No changes.

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


