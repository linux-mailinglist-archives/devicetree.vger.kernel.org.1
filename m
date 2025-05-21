Return-Path: <devicetree+bounces-179301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EB0ABF771
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 16:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E32634E7900
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 14:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482C92836A5;
	Wed, 21 May 2025 14:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="J/vhghW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E2B19DF4C
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 14:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747836629; cv=none; b=s4bc96IJ1g2+Uy7XoEGnRcBD6A44Iw9oi1SikA4pap4bjmCfvXj2nludOAGNhKhGrJrmlWa837CEolrGqpAi9T+L/jgEJ1znvAm/FB7YKA45qZ71x6RiSYspUri244xihXqq6Cw7jRcBOQQ6WdmQT9TS1ZU/e+xU6K+nsAOwZdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747836629; c=relaxed/simple;
	bh=XODCdlQ9JYoDDsNnzBn69mhkXEts4CheV3BPuja6CXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q+q7h8izxQGn8a0YEtELQ2o0BTY2Xhu+2p2151ddQhmPiQzYK9JKzc04kW0ZRF173PnQ4hAn+azRiZRZ9lUKT7dQ4fynQOU5fg4WEGrO701dG0lEOGXBy2pSFFZHpjWmunE0S8w9XvUouzc7SlI4qeQd10CQj92PwHTluU9KlKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=J/vhghW/; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ad51ef2424bso1050952266b.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 07:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836624; x=1748441424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cl9iumKUHycZw2LuiJs/rBHFbGkhee2I0sRJSJxgwN8=;
        b=J/vhghW/UF1Gw6KIz1JoUQoBZuMOryawLqLRCMuqXVbNDDc42ZzyZiIRoz369/b/Vf
         yiR8Z98uNSy0kjcIX6KLJM/aqlMu2pOqvV3ccJLa57DsxpOQH0rDKrXcTt1uAtHO9hCl
         86s4cMwn76zKqsqigY7FwrC8jxLJClcbNqcd4t4mw2LrPLpGwaXV+Xw2DJCjtwT4jvAj
         M2NozWNz2r3ovpVV+x0EOB7tcAr1yp548TYLx523vFQqboSQIgdwavbNBmWuHRlaNmkx
         CdgvTES+PSnQU7uazx050JWdmkAfyjzjD+OsY/NXvY+zbjFXog8Vx2pGpHBaNXMrCSi/
         Ed7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836624; x=1748441424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cl9iumKUHycZw2LuiJs/rBHFbGkhee2I0sRJSJxgwN8=;
        b=iEjns4fcGyy24miuKe2j+5/wvxazbVzRr0u0PK8NYQL7eK+lYnLvklkLbpUMDp0Biv
         VI04DXCvpA5s+i3m7CG2Et+cqHlxgaDQkShORmJTikxItoLbaP+ubj+gHDg+xJQCB3Lg
         v7HE4NQx2ql5Pm6oxrSxv8siVrKfziWnA3c470l1E05X/dSkwfgsjnsrxwLriWNSejtB
         M5pc83dCpF8Up0tmwl00q5NM8xCtiTPYu3DNSkNfHVDEVq6jwc3eXFpkkJxCpUQtzZwN
         4lcX55NBPegZhwJGEbMyfeJAr3pH2pbUISov0iKzw5uDBv9kvJCc1IRXw+U3DcFOMZM6
         +S/g==
X-Forwarded-Encrypted: i=1; AJvYcCXD2DH7dBrXFbnn6Q3lsVsFu8CT5TVjKfO8TMZ91R4IlXg+/gbypDCGupEaefGLyu52cB+eqfQtA7No@vger.kernel.org
X-Gm-Message-State: AOJu0YyLX4wBPLq64iUH1oX/yPWXjtBvVNy+rD/bKXKPcXjwkCvT4p7i
	Bk/RcVddy+JTUGBNB4cdOIvBLT1E6AUod7tRBW/rOBRZj0//SAMjZD+n7VKP0EZlvZE5AZlvgPy
	b/Jr+
X-Gm-Gg: ASbGncun/nKreH9YnRcarjQA1S/yOX9nRhnVODNdawPlI7K6ieCo1QlaUX2Yqkk8hZP
	uAglGBSiEYfuJLG5WLH40n5F36P4rRQtnQLT37JSy80TcWXIomSlXp904iRIAFjpu1mFgOCBUEW
	4YE/lCrjNqAStFYsPMhgUGabK3iVQiE7fxzkAQ/kmhzcZOKVAepvxk30lORRdgpGprCE2vGa0jf
	w034kv/jtKsRwFmtbnNII6ZVXPiToc26Ut/KT4Pcdc2XSzBlSuBMHSL4sLHqhZ08EVydlewYjoo
	2UQWzqLRsiDslAkk5rmbM86AIBLYJwJIeANze4cn426gpQxaX6ojCmsRYqf4T2hh2LdVW9XoUi5
	AWSJ8
X-Google-Smtp-Source: AGHT+IGD2TFDUAmZSCVXr+Ck8MJMzjDFoIU+oJlf9NZINhEoKVsrTuMXHWv6l6Kj+MwSbuL8IYJrfQ==
X-Received: by 2002:a17:907:968f:b0:ad2:53fc:a884 with SMTP id a640c23a62f3a-ad52d549101mr2012530866b.29.1747836601240;
        Wed, 21 May 2025 07:10:01 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:00 -0700 (PDT)
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
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 04/12] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Wed, 21 May 2025 17:09:35 +0300
Message-ID: <20250521140943.3830195-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
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
index 2822dce8d9f4..12f8d5d8af55 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -108,6 +108,7 @@ allOf:
           contains:
             enum:
               - renesas,usb2-phy-r9a09g057
+              - renesas,usb2-phy-r9a08g045
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


