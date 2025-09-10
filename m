Return-Path: <devicetree+bounces-215479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DF183B518B8
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E9A17A6124
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFFF13218DF;
	Wed, 10 Sep 2025 14:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RjC4WqNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417331691B
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 14:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757513006; cv=none; b=hTZjGTGZ7tyocHnYJU2K5h6rk2aQFlYTaUxvhdOY4X7EwSgUFWp+g3fpz+Q4VLaGkLGdhhuuhCt6I+zXctA11i9ZY00PEHEjVoRCWvd/Q2HiXlw9vLLqqnr9KWPf83VlbgUm/G5SFAoo70n9FkDyOcpLexcFwKn5GY3ymRhj8Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757513006; c=relaxed/simple;
	bh=mIES78B6726Znvf8L6XTq1c7dfrUiohkxj+gjIIj/0I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LimMkN2rx9NP8aKr7reo7WtVCzo8hhEerg12AFzIpoXnzaya1hHk6blWrtdvmdU6yTF2pQyUiRZj/HEzUUTGvzIwMQxzqfH9K6Y6J4oOXOMEYZHanEA48N4buFX7fENMWN5xYVsZ/xL8JfS/xjIG0nZf8Lp7lwtk3f0kwznHxao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RjC4WqNI; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45dd505a1dfso43732595e9.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513003; x=1758117803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/VRRoBJDxUtuCClVOWAtoorGRAjTpvhk+jM3BYoUxN8=;
        b=RjC4WqNIESNPp4dqszRZR95oQCaMhUL5drrffpgkfmVxkN0y72k8naR+jotCgZMEif
         4sMAZFgsKNnDOpKR/UoK/cuv49WbLvrXdAdeAWxuXM6aYka2EK5+lpYv2hU5R69sSENx
         rxXMYT2eUCVz1kRBwQFj6bd3uqExJbfoGu388MNUbRXoSzl+IxNhW6bkPuydso8oghM9
         VUePHir0UD2CkEROJIrHAuM7ZoscKYc7bp19cO4WxtoSV9T58PWB/NMbPIdA0fFQgAa5
         Knt3gQ+nzSc2fq3CGd97aisPRcMdcj/F/qQMK6sRTLiRXdoHfFumKTGf0u+skX1lBNSZ
         z/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513003; x=1758117803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/VRRoBJDxUtuCClVOWAtoorGRAjTpvhk+jM3BYoUxN8=;
        b=UfPfKaiKo4DC1ELmMo/OJJgEe/k0s34AWHowT3lrtJBkzFk9r18rijESbkG6lm6lIZ
         6zYITG/9xLXcYQfS/L4hlfQ+TZX+i/n5gaNGrm9NkVqfc99oRAwQXK6ZVL/Yjk7CAb14
         BDf8x3l8XNeCWovaIddNPde7W2cD0YkSZrEOg2RNVrWx3hV1X+JUy8xB9uU7Kavqg3Ul
         HqA4Tu4s9qYfxPpj4bOLVnuX2r9ZGiZzsk12Tr0Xpa5+sgUtqowv9D8STwrBvv5OHh9y
         bw8qx95zHNmCSS6ldcgNRHhRrpZmrbnA65qUVEw2q5Zee6gOjyAc0sDWhokbszU6wlTO
         v6KQ==
X-Forwarded-Encrypted: i=1; AJvYcCU10FSR8mY4vA3TC09TqmeQad2FWVLK1KQ7fx9yLyCEipA+6+pGtJ0ZogwizK+bN6a4h6BDKvjlmAXL@vger.kernel.org
X-Gm-Message-State: AOJu0YxaHtGrxvDWoxBSkMkUm7O7iHkFXLuif67s5wtpTfPpaaCbmypf
	dCLzKRRRsOHvdTDJPsvLaqLgW0LCDuUomu2i1Xe73K227wPQcpJxNfZOm5/LWewzXYg=
X-Gm-Gg: ASbGncseKe2rwyJ//zyAlmr8wn0hg5D8bHwB2wIkVzwctEfeOVHNYnRASP/2658D+2Z
	t9BQzb1AR0ZKp5xntfWTxfAGWU/k4t5VAMa0OYgx39TtF3sVhqFNstv7bXVJIYwrytD0w5TJnbq
	y6HRGiBwBW9Ods4RIoW+awqOYyVGcf4wpRw9ozayn1vcDkG3NQ2k3soSdtQwyB3REAHHvjk53rk
	ZD7phOX8mon91+skGFhbo33WpR1YMjJsuiEziUigFHo2tS+Ip/B3IGWL7gvrra6KHd2+gWaF6oC
	gX+m/WgDK9JFEFTg+PrlIWb52If+FjBmxYozTgQZ3/CGfbctJP/jMQOD56Vz+K/Xc8uzbgrFj2r
	8DYxCpnvfsZiKvyDUy94H/jK3RgOcogQtia6kYOtpmEpfG2ik8cBt
X-Google-Smtp-Source: AGHT+IHhfcHfzteNbpb670GfMcFeMNBt1xhdYwJHk1+Sw0KbXw/4z1Sr9oNd9yxGkx0R5Z7OW1OtIw==
X-Received: by 2002:a05:600c:840f:b0:45b:6365:794e with SMTP id 5b1f17b1804b1-45dddecdacemr152293835e9.24.1757513003366;
        Wed, 10 Sep 2025 07:03:23 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:22 -0700 (PDT)
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
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v6 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Wed, 10 Sep 2025 17:02:59 +0300
Message-ID: <20250910140305.541961-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
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
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v6:
- collected tags

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
index 179cb4bfc424..2bbec8702a1e 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -118,6 +118,7 @@ allOf:
           contains:
             enum:
               - renesas,usb2-phy-r9a09g057
+              - renesas,usb2-phy-r9a08g045
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


