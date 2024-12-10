Return-Path: <devicetree+bounces-129397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE829EB7C3
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 18:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06954188441F
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 17:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D1A1232367;
	Tue, 10 Dec 2024 17:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VqH3JmWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC5622FAE4
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 17:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850642; cv=none; b=GD1Tjjh0EpNI/4bHXSaKRTlRYs7Hptj2kS33ovNYSPOKzdQ0lnVPxCd3AHzA4oSNayMVGq30z9E9UKNebSGcuC74ZrmWct2vuntowj5NHHSbIoioli+xiqbjM8RvoeemrAPoqlQSEUtMvmwttuVaHxyThs8IXAPdrYnQLoDYZ+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850642; c=relaxed/simple;
	bh=cB+Bpu7l1dV+zM88HO7Ze3t/5fdXwi7jPTuxAvUk+U8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HXKbjlBHTVxjSlovWYk9mM75iokNUTDlQs2nqUkR/R9hgUA1nl9mjyxvb6c8SHkgteWqzHSnZMTUR/QTmj3oAzT+KQLkFqYXaAw4zw/7P/JDoJIkXmADA9CE5vm653vsjW+pQfHKZoGaEO9tfddSIgh3VUrLjsrWdnhmKstv+iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VqH3JmWO; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5d3bdccba49so7278999a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 09:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733850638; x=1734455438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z6Hy/pRodMw2d91URONzNaEgR8YWtQs7fLTqCwO7+FQ=;
        b=VqH3JmWO8a/dlBZKwdVROvo/+MKWvN5DXmrbLUo5A39E3UaP444kOfHcntyoanVGjg
         5vyCowgmh/B2NTIEPfRrqdv0rMnEf53eif3FLFzpyLecp4R3kKQg69iHg1sFQCWSBeqM
         HJ8Ui6I6oZMTPq6JmgABmhUfAZP7iJddfzI+mHWvTGonyc819SJ4HtBssjejTKjz7c2z
         m4puIilvI35SmSnQDwsF/8cyKd+rs81QLiYLKWa7XfKVGFrSQW6YweovrzD/7hrFpmNv
         zGHqHUvL/jxvurpIGALUpBWfFaERvJ0HBkM9GM/FX8ruLg8wCe3SfYiquALvGyB7mhqC
         5f1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733850638; x=1734455438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z6Hy/pRodMw2d91URONzNaEgR8YWtQs7fLTqCwO7+FQ=;
        b=aKWljjU2Nw5IEywNwoduiHa0lOEiX0IbjgoLBYm5UGBdweniZh3Nm3wMkqfIt4Qc+9
         HqLNJf1IUsRkOZtsykt6rhgl2fdMq38PPxVer5ATKayY0ptmvtRO9BiDnRW3+mTbScbt
         J2cw/bl+tkjqXrlp+PjoV8XEfwxMFxtG4dVRYvwTbGxdSESsMHJoou08Jw1vlXv4LHpY
         xhkVOs2+emhT8gknmh9w0IqXrr7Nety/j7s9s3RakTyR8Xph3gbVYEllIndQqSOZqmPx
         LR7qL5PaIApJNHAOiKO7QENDonjCgehfYzs32iYeiLfczy/chsawwLuqCic59HJ73ap4
         PB6A==
X-Forwarded-Encrypted: i=1; AJvYcCWKFAnE0DaheNi54Gxqu8k0CWWvhVk7294hDa5Oxfsuwxb3EmFpEd6C/CTnNgitV2Pyw/DbHwhbhXB6@vger.kernel.org
X-Gm-Message-State: AOJu0YygjLY474VhOmRBANvwbudmDkI9o1Z6ssXLBkzf6h4KaonTf3mM
	WmABhMaUUjM0S/2zMIO7Gf9URYYVG/4Ch4MikdJ6bzCYX8J/+Tj7Zq5kFh/4jCQ=
X-Gm-Gg: ASbGncvZarHW97jDIPeCUOHpaFFHklaInw9gxJ6J6VLDcYOeVaXxFbh0tcuamFIAgYo
	zIlQHd/O+WQUDOHJgd7dXsggy5H6/gc4l5SgGdJItNt6g3vsT9IRX6VOz5vjpWiYWyl9xIDsK/t
	9doP1o3u7rjd2+ty9UdUGo1oXAgO+92OOFin6ckHIAj6/BH+Si6JwpB5n9Jbe/Iio6yzWRxQ4kt
	nfhd8DXmuA5iXw0YFedweOdsEaJQkJAHV9D66kDGf6YAwa96j4U7UVUHmUW01K2dKeg10AZIBfk
	FggbXOMrjkk=
X-Google-Smtp-Source: AGHT+IGqcJ6bqhwIIKJrt+yeOZgP79f+Ka5SbVUv4mcFJwjMu+9gX00sz7DE8koWILZTW546alVDvg==
X-Received: by 2002:a05:6402:1f10:b0:5d0:b4ea:9743 with SMTP id 4fb4d7f45d1cf-5d3be67e142mr17354125a12.8.1733850638421;
        Tue, 10 Dec 2024 09:10:38 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm4853124a12.56.2024.12.10.09.10.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 09:10:37 -0800 (PST)
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
Subject: [PATCH v4 14/24] ASoC: renesas: rz-ssi: Enable runtime PM autosuspend support
Date: Tue, 10 Dec 2024 19:09:43 +0200
Message-Id: <20241210170953.2936724-15-claudiu.beznea.uj@bp.renesas.com>
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

Enable runtime PM autosuspend support. The chosen autosuspend delay is
zero for immediate autosuspend. In case there are users that need a
different autosuspend delay, it can be adjusted through sysfs.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- s/sh/renesas in patch title

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index 878158344f88..eebf2d647ef2 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -1140,6 +1140,9 @@ static int rz_ssi_probe(struct platform_device *pdev)
 	}
 
 	reset_control_deassert(ssi->rstc);
+	/* Default 0 for power saving. Can be overridden via sysfs. */
+	pm_runtime_set_autosuspend_delay(dev, 0);
+	pm_runtime_use_autosuspend(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret < 0) {
 		dev_err(dev, "Failed to enable runtime PM!\n");
-- 
2.39.2


