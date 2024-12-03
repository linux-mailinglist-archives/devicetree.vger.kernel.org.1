Return-Path: <devicetree+bounces-126554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 840FE9E1AA2
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:16:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A2332864AA
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A0321EBA16;
	Tue,  3 Dec 2024 11:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KxiOJtlL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5993E1E8848
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733224434; cv=none; b=kf4J/s4HOTauIQURAjChFWzjETOFqd1J43S1zRHNOCiK2pKvNGFXnWeufkKcNCxIXEK/e4mkZgU0Bm68M8aLIvVlj2OKjSoE9kkxeL2xdUsr8kkAunzZezG33fHoWzzc822iy88qorUqJXBbwJKD+OSIto8Su2BBIqeheLcba4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733224434; c=relaxed/simple;
	bh=0Xg5mKYCFN3B/HDWUQU/ZSVkSB67Sy7/5+wdEAjCrSk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=a4DDAPwaStl3A6WQcX5ttjZnmD/KPSs2DmENpOcpHxk3y6t4cyOTax62l9aNP/j5QLuU5qgADDPe044DVdTI98ljdxZQZ/66MJ1wJ2qhYe94GCOD+8t1LLVeMteUbkUS0k9hOV4luiPMy7TFRB8nj1FsUUFKEvzdcK9XuHrGRWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KxiOJtlL; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385dfb168cbso2579205f8f.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733224432; x=1733829232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IvFz9DjYjIp3me/Tgm2Fhi7Oa0TCrW8QzQ1Z7YJsdLs=;
        b=KxiOJtlLwDMoKrium6ef6e1IJsLH5H1zBUrwPVffCUoTaG1RMN/J9uW8FCjkQKr6c7
         zwQlWoko282fwbaUxgmPvBnIU3vorz47kP4xHNJjj+PP8NuXv3puMNdiB59KmzqmAYL3
         eDnDBaQuz+34nKRubZVJnSlBByyGYaj+m755qKqInKqaXWjz3R/7hM1ENdHbF6hw4Xcz
         df6JdDIsqH/ISGAhQhcV062LmrJ0AqhdkvIRT6gXSqqq+VQLzdznyUV41UCkBJrdSSc1
         cdZsRL0tQJFWyIiIyGO6ACYMhmR0ZT4OkBs9kaO3U5ermBuFEmOpKBOD7xksMdJQi6Vk
         zUug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733224432; x=1733829232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IvFz9DjYjIp3me/Tgm2Fhi7Oa0TCrW8QzQ1Z7YJsdLs=;
        b=aVu7DDMzKnkbTZ8v9d9I4HZH9ybRKzZdFvdH8ieZgLEQTKYecHAddktm9BSw2Q5PAp
         WCWM/2Y/tINQi7tUTuppDZVTUtiRx12z5AckTwneczpI/dakw3VCsrL7ikveMqxwNJhU
         f0gVFwqsTj7Uqz8Qw465g/If4jw86xBAnBmoKRvcF//l0iiqGNWKio4E0ejF0vmiHckm
         PjxBmi/jCdLmfdTfX8LEFUF4mWPP6cibw5nWDKvf+HjBFGp9IB4bmy+ylUG1iauu6CoZ
         u+NjiElka9AIe5bdgTKe6tpjbtJ70+7730cvNwKUO5Fw4hP6fqXENf9OabyHRAOlgYmh
         BRUg==
X-Forwarded-Encrypted: i=1; AJvYcCXY9Di/NiqRt+nMEx4abedxKv9jxt9owcWZsFP9Ycrk0bvMuoMMFDVQPdkRTlwofQTdCL5/I6ycCbQT@vger.kernel.org
X-Gm-Message-State: AOJu0YzY+nl+15458HxgX9UJ8YoGforOqb3DB0gAfvXrdubAc5OTiQOW
	Fd0LZ1OWa7qhvuNKEHDMwmzZeW9JjcHRbEeGugRXGGWYTdpfj63ZZnDQD1r+Iek=
X-Gm-Gg: ASbGncudQUwZBvO/yb984GGHjnT4tUGXp7IzirHfqAfqhW9KGf91OBMeyVc7Y+/n8RY
	zo7oyN8QWd8Ws/ibpbUkxgez+CfJBqJZLv9ukIiP+k4LqSCc1pYSA6asXgFH+qwBFCZicSkq8cb
	OrtMbjvJConyFd8y/JBGQR3hhqZXMiS6ymOujwH1l+W2jT1hgObGCB9DuURp0dtrxDFXJGrG7yz
	9eaKsJETh28hk44tVP8OxrweAubgu3qKICOjUtvyNWERdJ3azj0tiK5Vtbz+JKaoqB5j2P/n0tG
	4zs1
X-Google-Smtp-Source: AGHT+IGgDCTuXxyE1Ce9iuzVhaTM/jeSa87WbRODLSiXYZ5sQsvdyKc8VfhYoZmPD2oC0EiFlyZLeQ==
X-Received: by 2002:a05:6000:1566:b0:385:f840:e613 with SMTP id ffacd0b85a97d-385fd429c22mr1719988f8f.51.1733224431788;
        Tue, 03 Dec 2024 03:13:51 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e0117069sm11794315f8f.60.2024.12.03.03.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:13:51 -0800 (PST)
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
Subject: [PATCH 12/14] iio: adc: rzg2l_adc: Add support for Renesas RZ/G3S
Date: Tue,  3 Dec 2024 13:13:12 +0200
Message-Id: <20241203111314.2420473-13-claudiu.beznea.uj@bp.renesas.com>
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

Add ADC support for the Renesas RZ/G3S SoC. The key features of this IP
include:
- 9 channels, with one dedicated to reading the temperature reported by the
  Thermal Sensor Unit (TSU)
- A different default ADCMP value, which is written to the ADM3 register.
- Different default sampling rates
- ADM3.ADSMP field is 8 bits wide
- ADINT.INTEN field is 11 bits wide

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/iio/adc/rzg2l_adc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index 634073e7241f..dd2ef8203966 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -525,7 +525,16 @@ static const struct rzg2l_adc_hw_params rzg2l_hw_params = {
 	.adivc = true
 };
 
+static const struct rzg2l_adc_hw_params rzg3s_hw_params = {
+	.num_channels = 9,
+	.default_adcmp = 0x1d,
+	.default_adsmp = { 0x7f, 0xff },
+	.adsmp_mask = GENMASK(7, 0),
+	.adint_inten_mask = GENMASK(11, 0),
+};
+
 static const struct of_device_id rzg2l_adc_match[] = {
+	{ .compatible = "renesas,r9a08g045-adc", .data = &rzg3s_hw_params },
 	{ .compatible = "renesas,rzg2l-adc", .data = &rzg2l_hw_params },
 	{ /* sentinel */ }
 };
-- 
2.39.2


