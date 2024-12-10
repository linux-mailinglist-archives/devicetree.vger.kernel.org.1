Return-Path: <devicetree+bounces-129396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B48CC9EB7BA
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:13:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CAB9282C2F
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2545522FAE8;
	Tue, 10 Dec 2024 17:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="MAZVe3e8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E2E21420D
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850640; cv=none; b=mSTle2oimxC61kg8zhI2SaXYEDwhHy8BwZGbBrN7OAbBpWgiWxKa/sB2ZSw2DAFM5RL2MLgcuC0dFs6w6VauFnhAKAbEg9Tjb0rfxTuxRyL3UcPwAQKDar27tkbDFvRaXt5rAzTYo7u0OFsL1nhue+DNeyxnI6P4uqKPyRwyNkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850640; c=relaxed/simple;
	bh=Yz055MkA+pxfsMjRAkbTxtMOq7knGNv3D+SNR/Ylrow=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oBKGcjFvogXg0XTokXMzk4kK6Ri917RNzVHgzM1IlRV+vcfoqHX4OUvXRbT2e6gjO4R9BYlNntn7Z+eAbLeTrRC18s2EP+bjo4Jh9RbZhRl8eyy3wGRZwjjbqLDjK1LQGRz1Kt//vWcM3fMBVRm+j0PJUJFO5Rmb+4dY3jukSNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=MAZVe3e8; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5d3bdccba49so7278929a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850636; x=1734455436; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGFKtP/kqhSYwKWsXVqygeaqizf9KcZRKhKS1yEgkJI=;
        b=MAZVe3e8PZ9TTx9ehV1VXTuqvgGeoAxTuyx9+A38aNUVRkXEKeLwn9Ymx8AlYr7KEA
         XzfhBuBq0J82ZudgH2v0irugxF7G8Sp5KHxi3oJ+SVDxdIJkODXb+sosZfCyJVETG8cr
         m6RgsIiCkPfi3WDf6R89tMfTjzfoXW/bi/x2/UdJ+094drqSMGNYS/MHdxslkiu99U9y
         y78IP21BpxYyHQe3A480mWyYY7FAPrAsc4U1CgpBtvxo1h82JPvVOmfVbUcMrqjzv/zB
         xbCsj8tbDx/7y/RYIFSsIlDTFapOTNpr94fzJXcss63Sn7FoYv65qKP5d6PuKM89CRJv
         KuCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850636; x=1734455436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kGFKtP/kqhSYwKWsXVqygeaqizf9KcZRKhKS1yEgkJI=;
        b=Q2cgytKWDNaeF8Y1pdcxRHc6a+jQWbbilPB0ImuCSORDC2QxiYSEGtePTiQzVsB5i5
         Cxbu9Orfakxr2MwP9E3bKbHuIcEx6resncRro03TN7O5MpDmp3LCyzNro5Lmq3G0TN8u
         ZJR+4x2PBxwW6zVx4RylxSnrEqWNtt0hS3dSvBjoKoKUgrUReDz4tBk333THATYV2Zmf
         lvlgZw2wolAX4gIUd8IQ4BLCoak2W3N6k1FH5Ga/jmDUIOo6y4eV+AYxsarmPehDCRvl
         ZqcuTyG414ViQkZFa5Hg55rFB3zbCWcn6rgTFgIYthC+8lBI1AccLmhclLaiPStTMmuu
         BQ4w==
X-Forwarded-Encrypted: i=1; AJvYcCW4bXNLr8nKnTLBAHzfjp7CaistHu4BRNflgHblrw+gvqoQwF3UA4yPFl1xd+HqSMRVrYsSMJsTbNKP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0xn6vco6rkcH2AQ6KYzAyWJtvuArPHoS+LcxQK2GLdFzYQ5hT
	tJl5ZlQVTE/iId40P6H/nXjN+KH5nihvbMw1P600+4veL/aHJqm/fZTrmbanfok=
X-Gm-Gg: ASbGnctx/M1hQAS3j5UzFCjRgNgD4/JY+2t6+0jBFcX8KIoaYgbU+iBVA9KGTHk9Ocu
	q1FRGEpnH1yv7mtdSG8mtkqMZGpL+vIOVjinDJ3vBaIY95euQu9C/U8lqblVYd4WNpOwhZ7eT0o
	NfipW7PSnPsljhScxdiPhTNrCLw+F4Vi+VWGMwXJ6vkIXYJRy51Swlk3Fs1QFra9fxLX/10BOal
	L+HfcnkB94XzmQZkhL5qzzdwzyvJrPl6fxF1xnBdV84+nWluvT4v24kLNmqdWGQk2qXyMSpV/jI
	ygsdwZFU
X-Google-Smtp-Source: AGHT+IEC55JYbSGMCcanrVtAVCn++NmOM5lxtdpdi4NfwxaJizcleFUS/sRGsmrPp5CnJom5vv0rQw==
X-Received: by 2002:a05:6402:43c5:b0:5d0:b51c:8479 with SMTP id 4fb4d7f45d1cf-5d3be680125mr18546630a12.10.1733850636238;
        Tue, 10 Dec 2024 09:10:36 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:34 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 13/24] ASoC: renesas: rz-ssi: Rely on the ASoC subsystem to runtime resume/suspend the SSI
Date: Tue, 10 Dec 2024 19:09:42 +0200
Message-Id: <20241210170953.2936724-14-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The ASoC subsystem takes care of runtime resume/suspend the audio
devices when needed. Just enable the runtime PM on the SSI driver and
let the subsystem runtime resume/suspend it. While at it use directly
the devm_pm_runtime_enable().

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 209b5b8827e5..878158344f88 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -1140,11 +1140,10 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	}
 
 	reset_control_deassert(ssi->rstc);
-	pm_runtime_enable(dev);
-	ret = pm_runtime_resume_and_get(dev);
+	ret = devm_pm_runtime_enable(dev);
 	if (ret < 0) {
-		dev_err(dev, "pm_runtime_resume_and_get failed\n");
-		goto err_pm;
+		dev_err(dev, "Failed to enable runtime PM!\n");
+		goto err_reset;
 	}
 
 	ret = devm_snd_soc_register_component(dev, &rz_ssi_soc_component,
@@ -1152,15 +1151,12 @@ static int rz_ssi_probe(struct platform_device *pdev)
 					      ARRAY_SIZE(rz_ssi_soc_dai));
 	if (ret < 0) {
 		dev_err(dev, "failed to register snd component\n");
-		goto err_pm_put;
+		goto err_reset;
 	}
 
 	return 0;
 
-err_pm_put:
-	pm_runtime_put(dev);
-err_pm:
-	pm_runtime_disable(dev);
+err_reset:
 	reset_control_assert(ssi->rstc);
 err_release_dma_chs:
 	rz_ssi_release_dma_channels(ssi);
@@ -1174,8 +1170,6 @@ static void rz_ssi_remove(struct platform_device *pdev)
 
 	rz_ssi_release_dma_channels(ssi);
 
-	pm_runtime_put(ssi->dev);
-	pm_runtime_disable(ssi->dev);
 	reset_control_assert(ssi->rstc);
 }
 
-- 
2.39.2


