Return-Path: <devicetree+bounces-4722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D9B7B38AA
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:25:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CB3581C20B09
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B910658A2;
	Fri, 29 Sep 2023 17:25:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCFD658AF
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:25:53 +0000 (UTC)
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3BD61B0
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:51 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-57b67c84999so7808741eaf.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008351; x=1696613151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b7PDmHSczFeqgAzbimbZilruGj50u/2gIL6ZrFf0Suo=;
        b=tPqTfgr7eS8w94njpeNR2mA4fJMEkZl4vcBfgDwqGnY7WAt/hyF+JYt41g+LD1pjG2
         +r2w+dszYB7Ks63dx5V6O9uP/HLESAEZOdXe3bPB7xfoCyVMUGmL6LAnMVoOr6a/vLLu
         0tH1hmGkaGedT4jHw6xjH1rCqCTiaa5m6k1kesaRIS8LwFBHHkV1hoS/2JrJETGrpm/9
         ae7ivzQNuhvmStWtZVFxFXzNQWpeQDi1v/91KqGis/OpFPby4ixe6H6TAwLM68div8mQ
         msVXMafiXTHV691q71BE/bfySAr8eZJW0dCA9tRr0M8Iyu5xpdfKMoyUsObaNa87qztZ
         jkJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008351; x=1696613151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b7PDmHSczFeqgAzbimbZilruGj50u/2gIL6ZrFf0Suo=;
        b=asxYyUKoGi27WntXv7VwjXJK675zjbKurKRgkLYVlLXh6/N1z/wjFJF1IO7pNo5eiU
         6Qf5sOE6nzDjRyd3VDNLvZREo5qL94puygT6YTE/3Z4Oz7Oc3hBaiuX1gyTbnhZNiTNr
         ikgwoFisW5Qz6L0kZslPzdjVtxEh+SPlIxUGoxnsANEHNc3xptuQrZTqbvMRd6d+fhXU
         XvissauJBIyeRwnJxC5OfnhsHyNU3X5BVpHuFE5OnCpUbJAzB6cKku5+XPIiRZpg6tTp
         lktg1KgpD6cJmXfwZEHuC2XIRxTul15eKswxmatx1PPKc0h0gQQ6odVr9MGY/W4CCDdA
         Ckdg==
X-Gm-Message-State: AOJu0YzcNOZnlavLz22F+yQjiN7TnS3svoXX55Fa1wAZEeq51Fiy+DLg
	/cYZbQpZWN/7JoMMQ6Fuz4x2eQ==
X-Google-Smtp-Source: AGHT+IHxogutDZ1XLOIzr9/nOTx5KhbYFs+7hKsrWe7PtJOi6WwkLjfxiyyCL5MSgpTSmN6+IIr3og==
X-Received: by 2002:a4a:7319:0:b0:57b:3a07:181c with SMTP id s25-20020a4a7319000000b0057b3a07181cmr4656794ooc.9.1696008351082;
        Fri, 29 Sep 2023 10:25:51 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:25:50 -0700 (PDT)
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
Subject: [PATCH v3 05/27] staging: iio: resolver: ad2s1210: remove spi_set_drvdata()
Date: Fri, 29 Sep 2023 12:23:10 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-5-fa4364281745@baylibre.com>
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

Since we never call spi_get_drvdata(), we can remove spi_set_drvdata().

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* This is a new patch split out from "staging: iio: resolver: ad2s1210:
 fix probe"

 drivers/staging/iio/resolver/ad2s1210.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index b5e071d7c5fd..28015322f562 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -659,8 +659,6 @@ static int ad2s1210_probe(struct spi_device *spi)
 		return -ENOMEM;
 	st = iio_priv(indio_dev);
 
-	spi_set_drvdata(spi, indio_dev);
-
 	mutex_init(&st->lock);
 	st->sdev = spi;
 	st->hysteresis = true;

-- 
2.42.0


