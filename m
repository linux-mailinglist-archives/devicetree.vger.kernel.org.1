Return-Path: <devicetree+bounces-46715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0730986AA13
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 09:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 836CC289894
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 08:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E415B3716D;
	Wed, 28 Feb 2024 08:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="mCqO27KJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870F136139
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 08:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709109206; cv=none; b=SGal3db0EFkFcKJuJdGjvFn0tufJl0KkugyH3nHwZnVRNyXlhht4hFUT6q29ZBF74Yzbh6Rtg5NqU2o0iiINePMVQLvGXbzN/PvX5MuMlEBoksNHberbb7cwy7NOvR4gsmYPBjSVSvNMULKW498oSfhNlvaa1QWVNl6uwIHS/JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709109206; c=relaxed/simple;
	bh=zMATGWmbhje5tfDxfaCFVw5MU9tqi71sQIaQ5Z5dkgc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ragRWnA5ekLDgE0h3WMVd59y5++WtWUnPFYQwU6MS8N7eFVqraqHgiGr1VBdB/YD/DlqN1MxCk9+oazmPQljAGgMhEc7/Z3xK5nh8OPM6CGkvdH2sliuDeRhlBneYDAqFjWpYHJ1Dryy9RDewkyVa5e3wZXTcysiRS/97G6Fd20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=mCqO27KJ; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a3ddc13bbb3so103197866b.0
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 00:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1709109203; x=1709714003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N2oYKm4kbcjnrzOPJaN5bBfK4oadekuOvRl8x7PJBXU=;
        b=mCqO27KJ0IiF9CFQu6XrmeICFGNZ30/aPnUv9BS40YIcd6qlC1XDQSDJd4lr8m9GEM
         XAEc9Y8q4oHPN9b8Dll/ZgqKE5ESH6LMDFr3WIengVrh2DYsdOeWAqZsfb4ufxAvx2Sg
         h2QRn0sK/U2mA9N2myAnskINHSKuXzvIm/xw9vdx4a+YoEN3Z/Isb640V4m0dE0AbM5X
         l6LY26vqaaCVC3SPnUf16bxUpATGVC9XYMwASEs5wWgBpsgyHk/B7C2im1OJ6UymV1hp
         IJ9nrwqLRlNYXRV1hDMM3aZlH1HQusOLq61+qXM8rfcqTKDp54MC59eoXYdc6D/cdzPj
         lXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709109203; x=1709714003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N2oYKm4kbcjnrzOPJaN5bBfK4oadekuOvRl8x7PJBXU=;
        b=J3Y314ldPeb77qypGs5uFtJTf+Z+yDAwM2fgbHf0sUVUPp/bASfNBkhSmWqHRQRE7p
         NeRN2is8K4dkWTgZQswp4c44skSbBsBZuEUVv+NrwWkoOp403RsNook28OakG6Wt9K1b
         poNdrWpc+RQ8vbJnTFMWLqoLcpVbgf8XpymRW+XkDJwIUF+VeFGM9ys1TX1VfY/PP1MU
         hlIgtpT7rKOjePSqkZRJgl6AoSh7hTobCZlECg/PJRPOqTCLggoTXk5CMrp2Xx2f5eEI
         QAjrFRatTWVBxO4yQqtroThg0TZG/WiYIeZ9rzG0QXRBhS4rlHR/VEJ7PFjEL3pAXDQt
         PCyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbi9JTmyd5QUhvhWdyVym/MAcC2WowHjt5Kmss1UhW/5b7BmUR/hmSe+fn/1N5x1VfmLrZzfeJDtoS1zPrlwktwbiifNx6O2ZQdQ==
X-Gm-Message-State: AOJu0YycVmadoWuUOo3NrRZC9Oh3FSeUD62EK4XJNp9yxjigsONA5DIY
	O9k5bO0z1gehrWjAfz/QjbuQbvf6O0ufbvR0fizMfUx01tIxhLsam3cQAOwCuzI=
X-Google-Smtp-Source: AGHT+IHWT4JKXlbefsOIPhleJGJAyUfh4CxJTrOJtgcNtOqQK5q23DCeCx1kQjIOJlb4LzJVzs+4cw==
X-Received: by 2002:a17:906:f357:b0:a44:591:a3d8 with SMTP id hg23-20020a170906f35700b00a440591a3d8mr669369ejb.31.1709109203006;
        Wed, 28 Feb 2024 00:33:23 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id qh16-20020a170906ecb000b00a432777eb77sm1593987ejb.60.2024.02.28.00.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 00:33:22 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v8 06/10] watchdog: rzg2l_wdt: Remove comparison with zero
Date: Wed, 28 Feb 2024 10:32:49 +0200
Message-Id: <20240228083253.2640997-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240228083253.2640997-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240228083253.2640997-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

devm_add_action_or_reset() could return -ENOMEM or zero. Thus, remove
comparison with zero of the returning value to make code simpler.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- none

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none

Changes in v2:
- none


 drivers/watchdog/rzg2l_wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
index 93a49fd0c7aa..29eb47bcf984 100644
--- a/drivers/watchdog/rzg2l_wdt.c
+++ b/drivers/watchdog/rzg2l_wdt.c
@@ -316,7 +316,7 @@ static int rzg2l_wdt_probe(struct platform_device *pdev)
 
 	watchdog_set_drvdata(&priv->wdev, priv);
 	ret = devm_add_action_or_reset(&pdev->dev, rzg2l_wdt_pm_disable, &priv->wdev);
-	if (ret < 0)
+	if (ret)
 		return ret;
 
 	watchdog_set_nowayout(&priv->wdev, nowayout);
-- 
2.39.2


