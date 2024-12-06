Return-Path: <devicetree+bounces-127960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C18F9E6CFA
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CB9A2827F3
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768E420103B;
	Fri,  6 Dec 2024 11:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pgN8r8/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4C91F03F6
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483651; cv=none; b=mVeZj0bDAIlBbSN7dc5+XzwGis79+QpKhd0NV77cJf57a1iNLrlrqYRR5YWANzywbBRPvOU11ByMlTxZbhnLd7s+nrNLMaF8s5JsqHDk1UEtoyTcXdzTmAhzsHkigTWWVHQWkbTWyvFtf5PWrhv69lVXHVdoNtDlkTf3tROdqoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483651; c=relaxed/simple;
	bh=a0X4aOYvG3pTfNgIEESajz8KrdCPF4/aLinqArXPrIM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lsyX7wiN28HZ+d7nSKKTDLkTdLxa04jzDbuB9Q6U2dmGZH4Ngt1Gr6cvIpI1VFBrhfdZVZ4TuGqPpUdoc8r8egD1+Dtj8Wp/r7mn8X5LQrxMGpCnchJkve3FithvSbrUHNZwo8FDOzruKhVGxc3VuSydy99rXy1LiHmwjqIKrGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pgN8r8/z; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa5500f7a75so259751966b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733483648; x=1734088448; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JcFmoPRqWug/wF9N6rxPklzROiRzJUhH8R20dFRmNrI=;
        b=pgN8r8/zwM6QCbeVS/nKYXVqlIWc4HYobrPKAgRlsRchnq65qWHTmAfRn1gkIKgNQz
         YYPRUg/BmEcW0yfhOzPghaZ8BvOSjz14VaiKumjXY+1m/I5U/G3ulCSFZVmtrj9WDwJr
         A2uAkoZA6MrJTt/KnGwJNmpz35QCk3Azc2KdY1/xUW0Kq7KHbVjZp31yUgLZO0TsHdcj
         7IrjROxweNebSkQOibunqR2EFmQnpvfH53BXDd/G+ssXqPegTdQBHeTXiOVcTUyjeWqF
         8DxCYvdDaFsu4+bZaru6XgqVsDVdsKLVGKtgygyDB2l/jdC1wR6mFL7BdxZXebuL5rHh
         zV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733483648; x=1734088448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JcFmoPRqWug/wF9N6rxPklzROiRzJUhH8R20dFRmNrI=;
        b=nH5cRFnnWTh3HLzIe/tPDhjA6vL0DSbsXnvUMgZrknKF0MJUbsESrNLjf8TsROrvkJ
         xf7xEzwJ2yZF40Pa7VIbtKAft6UUVSnsPtV/xE4I46+YQ+i2hIPey06S7HoWnISmsnU4
         kmB+j2BsBhxPzsAK5LhtRBzlLnpPLnXPrfLo8//k8CsKT6Lt8qQdPxITQ2KCU2Hj0RoC
         V0/UvNyheqcKpkgF+VHqA80+WQgJpF9/9qFYR9UA7keWRB0EmM4Jv9HGH+K+OahBWsfw
         xN0gx9xDOW0Qt7VtybcxXMwZGGvdRV6D/fYcb7XhWP+unxlUKxoO0CqIDOWvkWGhPxB0
         MXzg==
X-Forwarded-Encrypted: i=1; AJvYcCXJxv2Ewn6jb5SyII5Ce3yXY4IUv2/3BnIgTGGI83K3zFM3gtZHOWBjl5iJaiTvoIUenPB8G5whaqcn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr+2hsMUYABy5vwP2/I4+FkfVwRx8rmYh/8c/Nv3LCC1Y+c2Je
	IU7SCBHF0djUTpUoQLG9yrijFF2ikvVuwOMtBTYez8R3LETyVJ1CW5DpzRrW86Y=
X-Gm-Gg: ASbGncuwmF8ET1LshQMUWOt0NPO0LlBaZ/guN43UISmPsIEM238lvERqZcWVO9H6jMA
	D22IpX1/wDQLLWi7jb1L0+BekUzKq+MN9HiRQzBwZoa4YeC9C4cXuWMnewQT5VdFTs/ObsGO/bL
	btdYOK4DutA7qRvC478PXS52GWMB05HKpEfFKxOz/vX+gPhnWWTFTQiFNA8FB3TggJQvNtpo/qS
	s+41Yi5sWLi48nj1khvPexlgl0v5U1mqvEr32L1Q8RTB7BVUBYAt9gJeoXH+egUOIBt2E5n4RQd
	uOOK
X-Google-Smtp-Source: AGHT+IHiSsJnrO9WOBGpjGpJxD2jcZJI3sgccO1J+MWdvjykKFu0VlpAlkqINSQOhBcrCp7fpOjTGQ==
X-Received: by 2002:a17:907:6194:b0:aa6:3e97:f9d8 with SMTP id a640c23a62f3a-aa63e9814ffmr105149766b.54.1733483647971;
        Fri, 06 Dec 2024 03:14:07 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eee2a6sm226877866b.90.2024.12.06.03.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:14:07 -0800 (PST)
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
Subject: [PATCH v2 08/15] iio: adc: rzg2l_adc: Enable runtime PM autosuspend support
Date: Fri,  6 Dec 2024 13:13:30 +0200
Message-Id: <20241206111337.726244-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241206111337.726244-1-claudiu.beznea.uj@bp.renesas.com>
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
runtime PM suspend/resume cycles, thereby saving CPU cycles.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- used a non-zero default autosusped delay
- adjusted the patch description to reflect that the default autosuspend
  delay has been changed

 drivers/iio/adc/rzg2l_adc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index 953511191eac..c3f9f95cdbba 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -208,7 +208,8 @@ static int rzg2l_adc_conversion(struct iio_dev *indio_dev, struct rzg2l_adc *adc
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
 
@@ -410,6 +412,8 @@ static int rzg2l_adc_probe(struct platform_device *pdev)
 				     "failed to get/deassert presetn\n");
 	}
 
+	pm_runtime_set_autosuspend_delay(dev, 300);
+	pm_runtime_use_autosuspend(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		return ret;
-- 
2.39.2


