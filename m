Return-Path: <devicetree+bounces-2123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3FA7A9AFB
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:52:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36543281BF2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26DE941769;
	Thu, 21 Sep 2023 17:49:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0328718C13
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:21 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6E358AE00
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:41:01 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-501eec0a373so2222309e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695318060; x=1695922860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWszhBlTWMiwkXqgF1w4h8oNmYkV0xe9wPBMJvnXBgI=;
        b=ukYMYz0SKzKMciQoT0N9vRWi7o/jBREDfUDln6qCPs4aT1nlsgmtNgkRvgvW/EYUZg
         SASt0HTENlHOJiOINrcAeHpExxqjy7d1eCz51pM8UFIPrtWyXcK5s48aeNKPtT+UYpJ/
         d59IylY2DdwbtO6Xz4z1c0puzyv+LBzJMGwPfulvF1Va5YXmni3jpROnpE6DJCp1j1YA
         IU922/slm65La+QEP6BptiVnkzavkUk+VJx0rl4xbOQzC6b+/QnOxqa6cYnJrcWbQqhh
         r+9nFvPRq+29DvA8E5tMsWcbABRJpsy0tWLS+ig44VUwlyyAqm+V2vUBIq8ZuS+oRczd
         XDvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318060; x=1695922860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWszhBlTWMiwkXqgF1w4h8oNmYkV0xe9wPBMJvnXBgI=;
        b=wE6Dd2lakLeCjXup3zNTTr4V0rkYvwMPUxi8MQu81Rp5Zt4z7I91MoXJ7K/PKu5FOa
         df0cXvRxZE8Qqf+n7M6ugEnZwKK1xXYidYQFYXpbNDnuJkIhRqlbh3JPibc4Hp1ELZKh
         czE8deE6STGHkksHnxKsmMHnmMe0WEkHyzrd4NbKmwdCkPIMmz1DmnBXy1+ZlDLBDr6C
         vhp8ozBWh5msces7Un0C8u0321QPDqA0UwYDGTDozDQu3bBxt3sg/8VnDwZOoalP9Fh0
         8kheCK3bdqkUvO2WeWBgrP7rxeMZ6fbc/kDNNYv9OR2Ga187DnAuX16tJ/SWVDxWV9nd
         m56Q==
X-Gm-Message-State: AOJu0YyZPFQkZ+/8NNjA7K/7xJuhyOgesUIuGOfHq75gcxzveDEGqD+i
	6ZlRXpOCrN5fJ+egzM9uBKfFNIw+05u89UEvpWpJOsnX
X-Google-Smtp-Source: AGHT+IEbn5IMsdjtBHEkcUJjQZ6PeFE6mcT6qeW6zrirIQz8hU6m6170Q4EKzy7+2zTNsR6rNCEY9w==
X-Received: by 2002:a05:600c:ad4:b0:3f9:b430:199b with SMTP id c20-20020a05600c0ad400b003f9b430199bmr5382212wmr.15.1695307455234;
        Thu, 21 Sep 2023 07:44:15 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:14 -0700 (PDT)
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
Subject: [PATCH v2 03/19] staging: iio: resolver: ad2s1210: fix ad2s1210_show_fault
Date: Thu, 21 Sep 2023 09:43:44 -0500
Message-Id: <20230921144400.62380-4-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921144400.62380-1-dlechner@baylibre.com>
References: <20230921144400.62380-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

When reading the fault attribute, an empty string was printed if the
fault register value was non-zero.

This is fixed by checking that the return value is less than zero
instead of not zero.

Also always print two hex digits while we are touching this line.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 06de5823eb8e..84743e31261a 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -393,7 +393,7 @@ static ssize_t ad2s1210_show_fault(struct device *dev,
 	ret = ad2s1210_config_read(st, AD2S1210_REG_FAULT);
 	mutex_unlock(&st->lock);
 
-	return ret ? ret : sprintf(buf, "0x%x\n", ret);
+	return (ret < 0) ? ret : sprintf(buf, "0x%02x\n", ret);
 }
 
 static ssize_t ad2s1210_clear_fault(struct device *dev,
-- 
2.34.1


