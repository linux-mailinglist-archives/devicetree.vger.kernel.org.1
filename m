Return-Path: <devicetree+bounces-206111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A029B2B8D5
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:42:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98C0B19635A0
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A62D33101B4;
	Tue, 19 Aug 2025 05:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Oe0prtvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF4330FF06
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755582141; cv=none; b=A5pi4e/uT4NanOersLbn+c4xcTOFlHlEkOF+Yh1FZKuQ2tLVDtnMTbyvpgrwRDbScgoNlJ4WWqjtDiJrNyGdoTrTta3/ahFEPHg1rF5BF+j3TXjgUfPN7rMjZjqEa6Z1kd8AC2ErXe97qXaI4j6OdTd8jd5f8IQIdHgqv6HIcY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755582141; c=relaxed/simple;
	bh=t28rDaWGzjDZuXhZQyfhA3GzdnP9Mw+dEqE0Qk+DERI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ISyF+NNGctT5oX9sR61kivI5ZrrThlNSUioco0lXVOI+FslBH0f46mWzK/Hc4HLRmxwrUYasKdncwPGxdPa+6xRzYw/qaEg7vFt8P2NRBw4Uh3MGqAXMBwjMK+DWyiaj96AME66VBBQ8bE1DGbeWduBxtye8aNaoOPdPSc6fSyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Oe0prtvr; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45a286135c8so11357415e9.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 22:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582138; x=1756186938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iVVSbvDZnii6bdSECwyy4dO1N94UmOnjL3r7C2ZllGQ=;
        b=Oe0prtvrs+pX9P9U/ISsq40mfcw1JOW8+t4o01F+KABLSph2ygYp5pvXKQlT2avaWo
         M7E0mJV2OmAroKML7HAYpQwXzU+Ol0Gr/RFFPKBpPzoIIRZ/rIsWA9aVr2jSil5ZYa9s
         EkuOKlJg8DiVAqsf3qt8zjhqlEPzSNI2DT6lD5fQTz79sfgLjMRcysxztYABLwNW1Ao/
         nkg7v0BXYnCVZuM6BA3e6qFKxReSUw+YJrY5ohsC4fGWgiz39rgB1F5K4RCdMKKrEtq9
         bLaR2sTaWUWqrf2BFvEcKAsM/ZReS7xLIhux6ifqgPPCtYQq6Px/lkF5DYC54Q46XSPh
         E7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582138; x=1756186938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iVVSbvDZnii6bdSECwyy4dO1N94UmOnjL3r7C2ZllGQ=;
        b=FyzbQ6x6LlW7vwyWe6Rp2fh0APhonOM6s6EqCYZzRVtpofXxBhNVQX6S8/WLahpH46
         6a1aRQr1PZhQxcoBGszHKS97uy0Qwc/Jxb9a8AAR/G0+JB67KMBAA31gSlWKhf+wBJDm
         /n7x+WRh5m3xdv5ym4v7yn1GIbXJS25qGW2OngTK7Yhn4rN8q7PdzWEOqnKNE6gFz2Jq
         qb9ZzNPlO5pnqpiuKUOhatUZ2bzkr6RPhod9FPHGFwCBZ+w2FtNfjRiH5Q29X8VwAvLa
         EF6ybsQ6LvthDaZ+20vaPcphJanmOnjjjQcXC4PntzDPRE7asYDKzWOXSmpGbE7KvAdI
         2RkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbyXtLh7VtKlzczRIfvTwgfuBvr4C9aR1nlzF//lpyTAn4u80CZykh7lBExkryOeRKWfzzeWKsrEIt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8geW63GpZ6iVlC1khgpr8PqXqST2rcIeQkRvC+Q6ROS7j/ezF
	LqwnZmZusi1m9787Bu6ZXUvW9TOKR9NMt3ZtD7VF1occ8ef40in5jTjGoOLRbahnS24=
X-Gm-Gg: ASbGnctjD0odHcH24hKVoFx8QJvQ9ojFCvtQm1v52Xac0AJy1q29psQQ9qD2OzT+ooV
	cwyJdHW/McxbJHzqBY1eWBXxKA9PblOFIVK5i3T2ywxVFfkZ2lPxydeN+C6luJSNv8xKTjqXAvD
	ofZn7dh/4uN8et8MFuoU9ZuXXX3sS5JVvf23qGvRQu+kQl1sEb0u/AO/nekpwH6RoyneBgVUBR4
	KtnILYLFo2mrT+Jbl3vACRsuMiBp88DBbE4Ol2OPHLvlCi+rzyXo+Cw7pGcd7133j2OTH24bqx7
	J5/JfS0TcYsqbqtpA2HBMMGqO8JbiI5riUTBslIbiafxSz2I+erAcuBsBho3rS9KaGaqISevkUP
	Z5ZEnuaROsRwKXgSRySVgVusfMCHYSdthO5JgZFIUB3UNPDDXf2ef97xKd80rEudK3N6vkosSOm
	c3M5cofR4=
X-Google-Smtp-Source: AGHT+IES5nhyLecC//rzL0myf1sxGPLvYHvc/2o3mQNfeX2wl3bWpFVtSwP/LJs1efnKIwVnA0xT3Q==
X-Received: by 2002:a05:600c:4f50:b0:458:b8b0:6338 with SMTP id 5b1f17b1804b1-45b4546ce02mr14595e9.6.1755582138106;
        Mon, 18 Aug 2025 22:42:18 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:17 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Tue, 19 Aug 2025 08:42:06 +0300
Message-ID: <20250819054212.486426-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags
- rebased on top of latest version of renesas,usb2-phy.yaml;
  Conor, Geert: I kept your tags; please let me know if you consider it
  otherwise

Changes in v2:
- none; this patch is new

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index f45c5f039ae8..52d777057281 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -112,6 +112,7 @@ allOf:
           contains:
             enum:
               - renesas,usb2-phy-r9a09g057
+              - renesas,usb2-phy-r9a08g045
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


