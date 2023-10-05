Return-Path: <devicetree+bounces-6232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7337BA49F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:09:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B0C8628138D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68BB5341B3;
	Thu,  5 Oct 2023 16:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G8PgANzy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38A7339A1
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 16:09:41 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67986A250;
	Thu,  5 Oct 2023 09:09:38 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c17de836fbso14134071fa.1;
        Thu, 05 Oct 2023 09:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696522176; x=1697126976; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WIPUtpgijMmDn9tQCeaAXK1QL2D5dmaPFM04rK5dMRI=;
        b=G8PgANzy5LX7P9glIoxaRaMo4/uj7JFvaA3bjDNLwzN453U5ruH3Pd+5G84jwwWlCV
         Y1SZtKKyhjEekNyvQfC2BuL+IkDmPokghWhClRiCYdVa9XQkAt9DBbuSVF3aQnFG2LE3
         lMoTVpVPW70JB1Lu6A3Xa8lQLoHg/hXU0HHhC7Wg5GGKCjdIA8aUDAZyQNWrkjKz6kAe
         YnPm5Vd1NlXUvlFkhoeYOxL1YBCk8fRsDEsXHAaEUNTC2CE2bPPRn6bQM+25TXTdz1Ta
         n0+ImAXyaDobkehyVO99gVE2HTYcLq4Jpyb6o2LOGxnj9aslK398CxSzd2k5FoG/nSdo
         m97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696522176; x=1697126976;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WIPUtpgijMmDn9tQCeaAXK1QL2D5dmaPFM04rK5dMRI=;
        b=EMBSqXz3V49yZPIOmoY80ImXvhCbgfEYvfWtQiGrXbyqB930mC/Onel5/z0Ytlan2B
         oEpNwmdq0Hilai9wm6lGxhDNsfGLo18Bke9zpvBwzetmmqoKTITXGMVzy68di/v3IHhc
         tm5Uo1VFO/ZzAqP/ebK58ndpdgrODF00oSLu4qyaKuiS7oa1OhS44ea48tzXDkHucK97
         V6ssy/wezLhcO59D0SzWW3JZf5WhKkXifmREqa2kQJFsf7BVNwRt4MZ3YOmESgV8wDR4
         DMacfItbRto0P74GFEUis8NTTYuSFLw7GzS491Ta/jdmRuAkvwz45mEKHadNFmAsj7Ac
         pJTA==
X-Gm-Message-State: AOJu0Yy09UxxQ7oqNUGsSFU+c386voW23OouTH1HfymFF1KTbNJL2Aj3
	ceGy9pQGs/VHI6X6ZSNu2pY=
X-Google-Smtp-Source: AGHT+IEVeqLEn/ZyaGvOxctwgur9v2I5LYeqoVRpMqTO36LSn7wKOND6cXpJUefw8kRdOf3rs40Mpw==
X-Received: by 2002:a05:6512:203a:b0:504:33da:b659 with SMTP id s26-20020a056512203a00b0050433dab659mr4708583lfs.57.1696522175118;
        Thu, 05 Oct 2023 09:09:35 -0700 (PDT)
Received: from localhost.localdomain ([46.31.31.132])
        by smtp.googlemail.com with ESMTPSA id r16-20020ac24d10000000b00502ae64f46asm349088lfi.126.2023.10.05.09.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 09:09:34 -0700 (PDT)
From: Ivan Mikhaylov <fr0st61te@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Ivan Mikhaylov <fr0st61te@gmail.com>
Subject: [PATCH v3 0/2] Add maxim max34408/34409 ADC driver and yaml
Date: Thu,  5 Oct 2023 19:09:28 +0300
Message-ID: <20231005160930.14665-1-fr0st61te@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add Maxim max34408/34409 ADC driver and yaml for it. Until now it
supports only current monitioring function without overcurrent
threshold/delay, shutdown delay configuration, alert interrupt.

Changes from v1:
   - minor changes from Rob's comments for yaml
   - add ena, shtdn and make 4 inputs for R sense from Jonathan's comments for yaml
   - add _REG suffix and make prefix for bitmasks and statuses
   - add SCALE/OFFSET instead of AVG/PROCESSED from Jonathan and
     Lars-Peter comments
   - add chip data from Jonathan and Lars-Peter comments
   - minor changes from Lars-Peter and Jonathan comments for driver

Changes from v2:
   - add channels into hardware description into yaml
   - add rsense property per channel
   - rename pins for shtdn and ena pins
   - make one array for input_rsense values

Ivan Mikhaylov (2):
  dt-bindings: adc: provide max34408/9 device tree binding document
  iio: adc: Add driver support for MAX34408/9

 .../bindings/iio/adc/maxim,max34408.yaml      | 137 +++++++++
 drivers/iio/adc/Kconfig                       |  11 +
 drivers/iio/adc/Makefile                      |   1 +
 drivers/iio/adc/max34408.c                    | 270 ++++++++++++++++++
 4 files changed, 419 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
 create mode 100644 drivers/iio/adc/max34408.c

-- 
2.42.0


