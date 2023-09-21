Return-Path: <devicetree+bounces-2009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0CB7A9731
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C807F1C20CF6
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF1616411;
	Thu, 21 Sep 2023 17:05:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6D71173D
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:05:17 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B3D4421C
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:05:13 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50325ce89e9so2018281e87.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695315818; x=1695920618; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NDg1sZsypbtmVZl9501Jvjfjp7cqgNO2wWu9eDz+bAo=;
        b=xFoTDyPKx3hrCnQWjeUN6IEoHKDlq19vNt7b8yXJFppnLCSToeBi3ELq2u2ydjzjnt
         RwPJvhYGDCbVkgNIZeQTTRSuRdfVy75jb0Ft7u+Jkt9R8UvdMCSw4P+qEnCPs0CRYCPu
         92yjErbBhhhDIl5YxzraiHC26U2ZXEVSbzhXketxC/Y3nPnNml95Vygpmmh9XHQ5t+z3
         VoXglkUdcBGOqEeGCT+ddSjq15KbMvhbFJjnOY3DafOJ8LxHVsiizpU2k2os9NUcCNWS
         AeyrthHQIY3WSAqWKK8XEU3YV3FUW8FiPsbeVkc3IyIxul700FQ9geHt2mYSyGo+NJig
         WBrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695315818; x=1695920618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDg1sZsypbtmVZl9501Jvjfjp7cqgNO2wWu9eDz+bAo=;
        b=i0KSXu+r56vyO9PlQAAwZPHYOiBlgp51o9ItAJJ0qAfw5mGb7ioxB4mYgdE/ha8s/p
         Ny0nmGBuvziROuwGGAdHJ5i/WRDMTHEui2wEhIUyA4s5UYOid9V6FGGSavWSv0t19EPv
         vDL/B6dbWVXvv64Xtu5fXKZ5ns6H4rgpNTOWG9T0Lo48A0I8HjFE4q2m6nv2Au8Y1DM7
         QxeQJXwLBVmZYP8AywaGS7QozwG32QaTzhxALismjfuWRDsDXbkp7DorK8N4fCFo9Iqv
         rX5y8+fZRrTJw6aFvuJ+pRDjBr31WBEmG+ffUz4aph94lpICAxfVbkUoQnz2fHf+CFmn
         8kZQ==
X-Gm-Message-State: AOJu0YwsOmC/s+RsG9GZ82vGwGNVQ5J0asB4lRWwgDoLRLu+fJkczrZ4
	YJ9ZGB6gIzx8zrDiPPxFbVTg6P5ki9Jmmd3GFVI/G+CG
X-Google-Smtp-Source: AGHT+IGgYCYV4RIyluC952QS15xlxGsYiHuw3JJvkpeLNvHhq4UFPDC/C6dReCQO1m30NxXKsPt5kw==
X-Received: by 2002:a5d:4c85:0:b0:31f:a259:733 with SMTP id z5-20020a5d4c85000000b0031fa2590733mr5275304wrs.20.1695306161138;
        Thu, 21 Sep 2023 07:22:41 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1901426wrt.22.2023.09.21.07.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:22:40 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	David Lechner <dlechner@baylibre.com>
Subject: [v2 10/19] staging: iio: resolver: ad2s1210: add debugfs reg access
Date: Thu, 21 Sep 2023 09:19:38 -0500
Message-Id: <20230921141947.57784-13-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921141947.57784-1-dlechner@baylibre.com>
References: <20230921141947.57784-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This add an implementation of debugfs_reg_access for the AD2S1210
driver.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 3c81ee61b897..b99928394e3f 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -606,9 +606,29 @@ static int ad2s1210_initial(struct ad2s1210_state *st)
 	return ret;
 }
 
+static int ad2s1210_debugfs_reg_access(struct iio_dev *indio_dev,
+				       unsigned int reg, unsigned int writeval,
+				       unsigned int *readval)
+{
+	struct ad2s1210_state *st = iio_priv(indio_dev);
+	int ret;
+
+	mutex_lock(&st->lock);
+
+	if (readval)
+		ret = regmap_read(st->regmap, reg, readval);
+	else
+		ret = regmap_write(st->regmap, reg, writeval);
+
+	mutex_unlock(&st->lock);
+
+	return ret;
+}
+
 static const struct iio_info ad2s1210_info = {
 	.read_raw = ad2s1210_read_raw,
 	.attrs = &ad2s1210_attribute_group,
+	.debugfs_reg_access = &ad2s1210_debugfs_reg_access,
 };
 
 static int ad2s1210_setup_clocks(struct ad2s1210_state *st)
-- 
2.34.1


