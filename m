Return-Path: <devicetree+bounces-126549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3924D9E1A8F
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:15:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2CA4283FFD
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452741E7653;
	Tue,  3 Dec 2024 11:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="A861IbJF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174E21E5739
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733224426; cv=none; b=Mv4OspNQjSGFXBHv28M7+QzPUqRJYFF1wpkJO9daikiFn4mGYqnKhO7OXh6Gd5jzmWoa92cMPKe/+Z2v6YnSTwMQ6Sv/nRoco0agRznmw+xsIGTBVxFsUyngYqut2hq1fOkv6scVb6en5I96lox2pd5N5E57caGJ0+n0zv4dYeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733224426; c=relaxed/simple;
	bh=xJ4dALnf5mNTVJSAEIwW3H4ATLoC4Hm1NI+znfsjunw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gjEstjct0nc2A/cc8+vTQA//ywk8sZGa2kbkhrKxll20bqr5FizURLUtPjlsPTIAvSErW/9e2WUjuDkFsHqTGK5haMIdTPcRw4DfE2ENVF967KtMwlSOFllXHvcGuHUEUUA9ctlNSWHv8cTNUyAaHK2ph0BaLTzPY3uYJvT+04w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=A861IbJF; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385df53e559so3004843f8f.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733224422; x=1733829222; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hbKn6tGUYWTywSMd7jgYmbuzMuj/ru2cA6G4h80SF4s=;
        b=A861IbJFvPqA0ouBOg6H/VFTbkVVUyfnDKvu2joAuZJxrouD6xfUJl/TLRH+NGhGMB
         7LkgwlXpWUqglpi9ncwFA+Gj6Z9Y9vMMyF19ydwDHh+TylqjmL455QNqRbeI982W7Kxj
         c5e2FmpJ/ORzqcZKc4DCG58GkClfNl5wxTZSG0Aqt2nMsX2zc/OkEaifBj3a6KVM49KD
         BoiJ1u94FdjpvesXHq8lx4D1SwTPka3YMz/wO9+KLBPkfrS50uVmFuXCgfiS+98olfVU
         EeorCt1y5XVfKhhU5IIcsZPBMIddEplRksqSQTGMUz3wxRdVjAEWg/PWTSKiQ/TieUua
         62kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733224422; x=1733829222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hbKn6tGUYWTywSMd7jgYmbuzMuj/ru2cA6G4h80SF4s=;
        b=oXXgTZ/Hjck929S1o5Si0om3sqJsuTlswWRCNoH62dn7jOdkfpKA1xeL7z8ZuJSNsu
         3/RLoj4oYK+iC/c39atSIz13I95WEE9u1jkBzk3TQRSpFvq7jLhWUTidN8rleKpblsyt
         8hHgMCz/hSuZf7l7gQLYhFAXtuzkhTcz8lNO2Qhzjk2n0UuxltiwTCfQKqsEgezrFnzs
         oN1ODJAJycHCLxh5skPpvBFb5hGhRueMhOc0x5rjptdK1X2OfkWwGHdNmAm5+/FVNwz3
         s4igfmjclg6PzzCCEYjd1JA9mhDfJ/XzsYEyCvUfPGTPIqfXR15wx5Anz0Qp97Ggo0Z0
         K9fQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVbqTFwa9QKhoqXJeOWieRMjitRrbm5z69FlB2PA2Crgjo1GMN0UREcl5M658j9HdjSnoMBYz+ZnYZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxIe5XNsCRYJxBFhPBbSEZK9XBGQwi3UFtGdHr4UABBk5dBUKjI
	HYA8Y/9vD4xE4eRfqpf+7+1e6fNLc1mnWly2XZT/K71p4uz9ysKV8Arjq5hXqTs=
X-Gm-Gg: ASbGncuxedCnuF++dVCM+DjN4LquoSWUB6cnbgiEg80sdMg/eLAv1YuKwfwr9MGDfYx
	YP+2XWqQInCIBq9fDRAUn6/98dQ3wjAyxQbXKiqkc6M07WrU1ghO1AsU40Ig7kisTtOV61SWRaJ
	ukl2C4jkHsdRKyjSkmq7vWRobuYAFrMVPUwBNFiwdhCJLOZkQ0+YUmhoeD0PxXpcfyOFD0AP2au
	LDv4FKUozcqkLUTbBh9CbPmeHFYOGLgoAbg0ZJwjCuqYpiLJrmh+VJfjTjRYVZ4hnFxIN25Yw/P
	octl
X-Google-Smtp-Source: AGHT+IEOrZno5uDxt9ZVOUtNbpTQHBOs2RWQccg81owHc2jnjCTJ+2WWar5weAlgmhDsBKHCTYxVnw==
X-Received: by 2002:a5d:5988:0:b0:385:fb56:5596 with SMTP id ffacd0b85a97d-385fd3cebdamr1638266f8f.19.1733224422476;
        Tue, 03 Dec 2024 03:13:42 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e0117069sm11794315f8f.60.2024.12.03.03.13.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:13:42 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 07/14] iio: adc: rzg2l_adc: Enable runtime PM autosuspend support
Date: Tue,  3 Dec 2024 13:13:07 +0200
Message-Id: <20241203111314.2420473-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable runtime PM autosuspend support for the rzg2l_adc driver. With this
change, consecutive conversion requests will no longer cause the device to
be runtime-enabled/disabled after each request. Instead, the device will
transition based on the delay configured by the user.

This approach reduces the frequency of hardware register access during
runtime PM suspend/resume cycles, thereby saving CPU cycles. The default
autosuspend delay is set to zero to maintain the previous driver behavior.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/iio/adc/rzg2l_adc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index eed2944bd98d..fda8b42ded81 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -207,7 +207,8 @@ static int rzg2l_adc_conversion(struct iio_dev *indio_dev, struct rzg2l_adc *adc
 	rzg2l_adc_start_stop(adc, false);
 
 rpm_put:
-	pm_runtime_put_sync(dev);
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
 	return ret;
 }
 
@@ -372,7 +373,8 @@ static int rzg2l_adc_hw_init(struct device *dev, struct rzg2l_adc *adc)
 	rzg2l_adc_writel(adc, RZG2L_ADM(3), reg);
 
 exit_hw_init:
-	pm_runtime_put_sync(dev);
+	pm_runtime_mark_last_busy(dev);
+	pm_runtime_put_autosuspend(dev);
 	return ret;
 }
 
@@ -412,6 +414,9 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 		return PTR_ERR(adc->presetn);
 	}
 
+	/* Default 0 for power saving. Can be overridden via sysfs. */
+	pm_runtime_set_autosuspend_delay(dev, 0);
+	pm_runtime_use_autosuspend(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		return ret;
-- 
2.39.2


