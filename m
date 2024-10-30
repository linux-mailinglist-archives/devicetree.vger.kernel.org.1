Return-Path: <devicetree+bounces-117378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A469B60C9
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1B0D2826A4
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 827BD1E503D;
	Wed, 30 Oct 2024 11:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="nLl/cCke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F8D1E4123
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730286105; cv=none; b=HinkK4j2Tp0nVZN78Hc1Ta12UAZBrA12trSCEOLIxOg30vBNM04f65R5U5lmVkotaBUthZBYs+LZiL3rQsxtGcT5e08tRDfgyKEH0yogek/Dred7Hu8kJAsrDwDrJ535FlSGb8aGnAxXAxpnUrrStU8wwXevetdUeNe8XCewehU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730286105; c=relaxed/simple;
	bh=BmdIaibnqlMskUSKL0DNaHvY6ItL8yLeys+bv/Ts46I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kdLlbGfrXJR80KVazTgkEybrPV82rmMaU1O8kX3wHBW/PXsQXqXauqfIbrmiq3pXTpEtyIC25mGHvMXxl4xwft/RZkouSGzgiQda4PUKVC48atEC8KGTwQSWX+/esNaOKAmGZOl2ED+XyH9OEPZKEoRoUX2QFc06sT9kaDKiods=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=nLl/cCke; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4315baa51d8so62283515e9.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 04:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730286100; x=1730890900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4zIqqwXla8XXFQks2xCDUhtmqZI6NDOV+FlaKIa//Ps=;
        b=nLl/cCkeuXU+yKlPGRjfPx4/s4488pBItGx5FAtD9mqGZiiWOmvOMi9XEbMmBzwOF7
         njfJGAWDt1f1x4va8++DcRRr0qUzdpeLaozyqHtys1yNclkaPUJDON11m7wtyco9zpPJ
         iHoKPtxh96iozsimKQ1Q1WSTieVPvMn7VdEavPKjmrAEMAr86pTrhCUg7SgBC48FEz+I
         wrXceotnDLYlIezgOUSSTWNWhrGtEATLe9PucDX+ByLPqrPLBCD/fDizQ19/VS4hB7uh
         y0B/bUVD+mUReUm2PskngAO/Ycp44UPSsaex3j/nKCdLGeQ/auOGtpZX0gBJOkBCgZu9
         rI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730286100; x=1730890900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4zIqqwXla8XXFQks2xCDUhtmqZI6NDOV+FlaKIa//Ps=;
        b=sANCnzHj0P/Heu+kPJahEzDKxwGIS/0aBfG6Tl923fGQQzOmq6lXVDibDy0w5pwaXF
         MN5EHUuV8ezMFtIO0CrWnW20gDq8oevN/HmYXmpBPr9BRp6qz7rhktZnqFwSqTSsjPWc
         hZl1PfxgflofIiZEumWaS0/JK04+A+MavnOjUJRhQQxr6ICBBHLRyTjAp4LgJlWVD57D
         3hIZG6qXsnM0l9uV0SpSTwccyot285H60qmz98u4ZgbN5n/nWqhpOUjQYVsDt2F98JVv
         Ddgr2TGACp+MZBA4sK6DXshLWywZ5lrC9a9jDR0uEGlhNiKIJ7rC0dzjAK4vdE8yaR9Q
         CwFw==
X-Forwarded-Encrypted: i=1; AJvYcCXlR9CSl27mhAh26XoSQ7VSOmzs3O/oNrgDG8gGtrM2GKhyxS2qWMw5PYNscsjO0ZzHPA2fFPH3kIAn@vger.kernel.org
X-Gm-Message-State: AOJu0YxvdpBnuDWiasZaOJjpYsAjNKVKl0u8Ah6xYbl8guZTiqFw4fbC
	UEvAGFAJdY5rsNhzCrGRwpBMK4+YxeLnBHhzv6IabCJuBxef3TFhYX+tvR8tBjc=
X-Google-Smtp-Source: AGHT+IEzFYp8eHXbfgCK6D2romhGEawaY5yFHitwbM0KqZrPl9MhxCwPdoh5AirYsRT0AM+eT9M2fw==
X-Received: by 2002:a05:600c:3b16:b0:431:58bc:ad5e with SMTP id 5b1f17b1804b1-4319ad0b8a9mr120556035e9.28.1730286100253;
        Wed, 30 Oct 2024 04:01:40 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd99edebsm17956935e9.45.2024.10.30.04.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 04:01:39 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v5 02/10] clk: linux/clk-provider.h: Add devm_clk_hw_register_gate_parent_hw()
Date: Wed, 30 Oct 2024 13:01:12 +0200
Message-Id: <20241030110120.332802-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241030110120.332802-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241030110120.332802-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add devm_clk_hw_register_gate_parent_hw() macro to allow registering
devres managed gate clocks providing struct clk_hw object as parent.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- collected tags

Changes in v3:
- none; this patch is new

 include/linux/clk-provider.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 75444e250a78..a49859ef3304 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -622,6 +622,24 @@ struct clk *clk_register_gate(struct device *dev, const char *name,
 	__devm_clk_hw_register_gate((dev), NULL, (name), (parent_name), NULL, \
 			       NULL, (flags), (reg), (bit_idx),		      \
 			       (clk_gate_flags), (lock))
+/**
+ * devm_clk_hw_register_gate_parent_hw - register a gate clock with the clock
+ * framework
+ * @dev: device that is registering this clock
+ * @name: name of this clock
+ * @parent_hw: pointer to parent clk
+ * @flags: framework-specific flags for this clock
+ * @reg: register address to control gating of this clock
+ * @bit_idx: which bit in the register controls gating of this clock
+ * @clk_gate_flags: gate-specific flags for this clock
+ * @lock: shared register lock for this clock
+ */
+#define devm_clk_hw_register_gate_parent_hw(dev, name, parent_hw, flags,      \
+					    reg, bit_idx, clk_gate_flags,     \
+					    lock)			      \
+	__devm_clk_hw_register_gate((dev), NULL, (name), NULL, (parent_hw),   \
+				    NULL, (flags), (reg), (bit_idx),	      \
+				    (clk_gate_flags), (lock))
 /**
  * devm_clk_hw_register_gate_parent_data - register a gate clock with the
  * clock framework
-- 
2.39.2


