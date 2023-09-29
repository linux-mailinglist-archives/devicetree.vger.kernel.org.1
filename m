Return-Path: <devicetree+bounces-4717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6BB7B38A0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 66F0C282981
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD70D658A8;
	Fri, 29 Sep 2023 17:25:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2874751B88
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:25:51 +0000 (UTC)
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4820B1B9
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:49 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-57b68556d6dso6707749eaf.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008348; x=1696613148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JKHIiAEIE2mVS9nRK2qrqb6L2W/l1AsQzObZva2M/Qk=;
        b=j4PQqsf2TA8TkYJ+C8KvefTKjDPFlZvpI1lokxnsLrQs4lzDlByW6WJVdZZAqgEAOs
         1r08PgUMG2N/OU4W5TBEnGYs4OInjBn8CvnXFowv2wCITrH5pSS1FjVS/fzllZaU+dUN
         kp+CTnbscvLpBFg0zFokBWDaIeJ4q/KpLhDeK+F3lFtxS0qresUnOsefaterSltQZNwH
         KcWNaW6/eyy14kHOGExsveguQy/WeFKmexiO7OtGw+o7CkP/3wsNhMSdpEuy655gDA/e
         ABCESi/JjxeNxiJoT8dYaZ8oF5f4/e8eF4ZKj1tPTOa8ya3UyA6qf5gL7EqD1yg+N+ma
         QlHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008348; x=1696613148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JKHIiAEIE2mVS9nRK2qrqb6L2W/l1AsQzObZva2M/Qk=;
        b=Vy22QCfu7C3xXSk3vOiA5BPuplNa2Q+ieCtbA10N69TOu85JgG90QtNtYqiTLr4+vp
         BtHT+E/CG7WycNnr25B+osutfEHWKKuFiXHbpOAjdTbpLNIwfP0Yhe10kIPztSuVsQ1T
         Z/jQgermeICUbsUCZc52hY+uQGrLrcUolrUpn9u8aR2J7pGpHZ9hsRpQwok8HNDcL6cB
         xhBFA7bPaUerCYpawxBFCckBKFKheq9djKNYpK5l8syS2qoE35dm5yo0oRLRKE4uAKY0
         5pYFIXghdvtEWVtrogwq8ADiSTfxZmHYuVGtKu3iQN1hVrHlK3jzPY/H3E38ILdFAndu
         qLkw==
X-Gm-Message-State: AOJu0Yy+ynskEqODhcetcn4FgJqNy3qIlGJCo0j9wQ6tFKDrd+aqsvRd
	vtkuDO/l4y+wtfF23Gvhlag4Bw==
X-Google-Smtp-Source: AGHT+IFylFVlQBDPI884Fz3s36mtqtFzBQzs0lhqAdNGptX/DuoiScazX4S3FyYmEUS2TjtVMukB/A==
X-Received: by 2002:a4a:6f49:0:b0:57b:5e98:f733 with SMTP id i9-20020a4a6f49000000b0057b5e98f733mr4812423oof.3.1696008348476;
        Fri, 29 Sep 2023 10:25:48 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:25:48 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	linux-kernel@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 02/27] staging: iio: resolver: ad2s1210: fix use before initialization
Date: Fri, 29 Sep 2023 12:23:07 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-2-fa4364281745@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.3
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: David Lechner <david@lechnology.com>

From: David Lechner <dlechner@baylibre.com>

This fixes a use before initialization in ad2s1210_probe(). The
ad2s1210_setup_gpios() function uses st->sdev but it was being called
before this field was initialized.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* This is a new patch split out from "staging: iio: resolver: ad2s1210:
 fix probe"

 drivers/staging/iio/resolver/ad2s1210.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index f695ca0547e4..3f08b59f4e19 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -658,9 +658,6 @@ static int ad2s1210_probe(struct spi_device *spi)
 	if (!indio_dev)
 		return -ENOMEM;
 	st = iio_priv(indio_dev);
-	ret = ad2s1210_setup_gpios(st);
-	if (ret < 0)
-		return ret;
 
 	spi_set_drvdata(spi, indio_dev);
 
@@ -671,6 +668,10 @@ static int ad2s1210_probe(struct spi_device *spi)
 	st->resolution = 12;
 	st->fexcit = AD2S1210_DEF_EXCIT;
 
+	ret = ad2s1210_setup_gpios(st);
+	if (ret < 0)
+		return ret;
+
 	indio_dev->info = &ad2s1210_info;
 	indio_dev->modes = INDIO_DIRECT_MODE;
 	indio_dev->channels = ad2s1210_channels;

-- 
2.42.0


