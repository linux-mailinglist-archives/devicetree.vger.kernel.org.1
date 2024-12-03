Return-Path: <devicetree+bounces-126552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8ED39E1A96
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88391283224
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF39C1E8856;
	Tue,  3 Dec 2024 11:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fW428MSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5871E765A
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733224431; cv=none; b=NGykKtJThLfzTFIk3YM0NazotVTdf4CcEzJ9uhImoWfgx3ZNXb9dpqyi5JwXw3jPowGq6UL7cjyougBLCDekF8AT5ZzPKb7BFZhK/WCu0utHWfQlEetFJav+uIKsn9mWCwGHIoc4qz+woxiw3ads2DovishhSVMse9lOho2Zytg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733224431; c=relaxed/simple;
	bh=Y69irwvA9nAdEISeaSugtmkBncmO2msbevmdeed4uNU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FVFwaZtJd/nWAj/OyK3pAvIZlxCBcVBIwU5Ql/or/1GrIYfX8HuG1Q76mLSSjeJzRnMPqF+B4Mi/pBkEbwqhmBHVjIqGPkFXV6PUhO1N4icEkr4CW/1KjKvfnUhR4n9c6NYqbztyiMWQuLmoXNqIeIjKvyJEJuRCfb2O37L96jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fW428MSd; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385e1f12c82so3560522f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733224428; x=1733829228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yY1awRQa+zyuro3jiB3ITZ27W2RkjLLr6d38wv0V3dg=;
        b=fW428MSdA0eNsKRq0KSPQVgU+Sy0KRs9d3NcJjm4eMygeSGLbvMJOPtfV3254a7sF8
         qTGb1urJwgTYoTXdryABfoKjjYdgBmuBN2f2tfz8Q77ZKy5kzvrOT/9oF+YB4K2VZ/3M
         Bg4vU+ZhF8ik9iIzxj26/NG+Xgtau+FY+Jkk8CsPDf8ngacRGXdmvofm/06WJlOKGKn6
         87emAInSFQBpNxPK0fmOYDoHt8s3YXhT9fKiydDLGXp6IvAd05tf/VB58GCVmAeMEITB
         EGbnCRdiIveDGYQsjJ22/xbbiGlEtJVmFzMsUeQoBM7iJKpczkZ5Xyrx8l90GHB5Smy7
         9MBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733224428; x=1733829228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yY1awRQa+zyuro3jiB3ITZ27W2RkjLLr6d38wv0V3dg=;
        b=ZQMy8HglmkN0b+cfceYd/UEaY8sQgIXBC5U5qbd/4E9kkgqLuhYi0jIEdHGKHSoLbZ
         zXq8qL4pznNqk1RKa81w/OhY3VHfGh1zJhO1/GpQWK78O3enVG77yTiHIKG4pIYoRKJe
         5fHC1UTyJ2pqaGYSy9dq3wOtHN+w6wMwwMd+Fq7CssqLh1hO0JBU2Otjg7Cc2Eq0swD8
         Pz9RVCP48aur8PEkRz/BBVSAKRW2k03MmdKdlKAwt9dzpDrJcNi0sQPJjeedz5Qytp3z
         Hqbv6EGtEVMpTMxDY0+rNpLe/+1woSWbW23EiZXXhhrmeaxgYkgNpIooEy5Vw6FpNiHu
         askg==
X-Forwarded-Encrypted: i=1; AJvYcCXBlutsLHlKqPkzXqgwN1hk5CS0FkwA/SNR48CK2I4bOKsvC5nGHZkxn/yvLTZF7mzh7FuIS1gA/sVq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwbj6Qzllc+PEik/Y5Doy8FYBVI3P7Lq5EOb+OrEgQMv+ogqyv
	lI0xW5dRfsLj+q2YWF9YrpKj72ZUE4DFpGkV+PDlL8oP09INvig0Ae9PU7M54xw=
X-Gm-Gg: ASbGncusdsqmlzopc4pjv+yvJPZ3Emmq9W5UwJKlXbqWVmUxv0awnVVOBpdhP70um0I
	faPMM5/2RG+adAu2O+RnEtS4v1ULsVRZRwxZqJHER866UhChWhxOhd2k3tjaSyipk9we3/S6BO2
	Q5ke6qp5Asn4Hh5HtlljyN1BUqXh3mxJL3Tf1hbBQVbnwHMgyWClyNW8X51MG28n/Yxv6S0SxJa
	9XIqcicEPBQ0fQX/4qCiHRXd1TKBGxY5wT/PoK1T/u5x3J4d/hDnRiDzHKNXWTc+qjy40Wp8YJc
	/G6E
X-Google-Smtp-Source: AGHT+IGk9ZwXh2lv3kqOYSslK9UCT/Vz0YqKSpfPIhAVOKw3r9ANzj/+Y6x2dQoPHDh+kHHLlBU9Rg==
X-Received: by 2002:a05:6000:1f85:b0:382:40ad:44b2 with SMTP id ffacd0b85a97d-385fd3f8c6amr1816729f8f.34.1733224428433;
        Tue, 03 Dec 2024 03:13:48 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e0117069sm11794315f8f.60.2024.12.03.03.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:13:47 -0800 (PST)
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
Subject: [PATCH 10/14] iio: adc: rzg2l_adc: Add suspend/resume support
Date: Tue,  3 Dec 2024 13:13:10 +0200
Message-Id: <20241203111314.2420473-11-claudiu.beznea.uj@bp.renesas.com>
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

The Renesas RZ/G3S SoC features a power-saving mode where power to most of
the SoC components is turned off, including the ADC IP.

Suspend/resume support has been added to the rzg2l_adc driver to restore
functionality after resuming from this power-saving mode. During suspend,
the ADC resets are asserted, and the ADC is powered down. On resume, the
ADC resets are de-asserted, the hardware is re-initialized, and the ADC
power is restored using the runtime PM APIs.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/iio/adc/rzg2l_adc.c | 70 +++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/iio/adc/rzg2l_adc.c b/drivers/iio/adc/rzg2l_adc.c
index f938b0f9a795..634073e7241f 100644
--- a/drivers/iio/adc/rzg2l_adc.c
+++ b/drivers/iio/adc/rzg2l_adc.c
@@ -86,6 +86,7 @@ struct rzg2l_adc {
 	u16 *last_val;
 	struct completion completion;
 	struct mutex lock;
+	bool was_rpm_active;
 };
 
 /**
@@ -550,8 +551,77 @@ static int rzg2l_adc_pm_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static int rzg2l_adc_suspend(struct device *dev)
+{
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
+	struct rzg2l_adc *adc = iio_priv(indio_dev);
+	struct reset_control_bulk_data resets[] = {
+		{ .rstc = adc->presetn },
+		{ .rstc = adc->adrstn },
+	};
+	int ret;
+
+	if (pm_runtime_suspended(dev)) {
+		adc->was_rpm_active = false;
+	} else {
+		ret = pm_runtime_force_suspend(dev);
+		if (ret)
+			return ret;
+		adc->was_rpm_active = true;
+	}
+
+	ret = reset_control_bulk_assert(ARRAY_SIZE(resets), resets);
+	if (ret)
+		goto rpm_restore;
+
+	return 0;
+
+rpm_restore:
+	if (adc->was_rpm_active)
+		pm_runtime_force_resume(dev);
+
+	return ret;
+}
+
+static int rzg2l_adc_resume(struct device *dev)
+{
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
+	struct rzg2l_adc *adc = iio_priv(indio_dev);
+	struct reset_control_bulk_data resets[] = {
+		{ .rstc = adc->adrstn },
+		{ .rstc = adc->presetn },
+	};
+	int ret;
+
+	ret = reset_control_bulk_deassert(ARRAY_SIZE(resets), resets);
+	if (ret)
+		return ret;
+
+	if (adc->was_rpm_active) {
+		ret = pm_runtime_force_resume(dev);
+		if (ret)
+			goto resets_restore;
+	}
+
+	ret = rzg2l_adc_hw_init(dev, adc);
+	if (ret)
+		goto rpm_restore;
+
+	return 0;
+
+rpm_restore:
+	if (adc->was_rpm_active) {
+		pm_runtime_mark_last_busy(dev);
+		pm_runtime_put_autosuspend(dev);
+	}
+resets_restore:
+	reset_control_bulk_assert(ARRAY_SIZE(resets), resets);
+	return ret;
+}
+
 static const struct dev_pm_ops rzg2l_adc_pm_ops = {
 	RUNTIME_PM_OPS(rzg2l_adc_pm_runtime_suspend, rzg2l_adc_pm_runtime_resume, NULL)
+	SYSTEM_SLEEP_PM_OPS(rzg2l_adc_suspend, rzg2l_adc_resume)
 };
 
 static struct platform_driver rzg2l_adc_driver = {
-- 
2.39.2


