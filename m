Return-Path: <devicetree+bounces-20009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D49EC7FD855
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:40:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 115881C20BFE
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31650208C6;
	Wed, 29 Nov 2023 13:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I+ruoS2R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7F5AC9
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 05:40:31 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40b4746ae3bso22119405e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 05:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701265230; x=1701870030; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q+Pbp6mZjXY9AOVHyk09IUOp31RXPk8rQUCNdGc1tCY=;
        b=I+ruoS2RkHPoR0e1MzjmbnUvQ05fn4YS9FyrhZF6jxhEKz1XMqCDd7VQ2gor+hVCE4
         8wUsnB26Zq2oMbWB4ljyh7X8MM3w0zBIhB9eEDOI2NBNdBwY/gDwOS8wvBJo4c9iIzt8
         Sc/o0x0HGFMcRIEqTaX/VcoIEa1+mMbStTdgkBGS5tBF/0DfIXUQtJrig2DlWkv1gtyx
         5Wv3b1jOicPpjPFZjBqGK2wyVgzkBP6nsZal5UmWn9TlRo+i+7I15R30qk6Ya7gFR1lq
         leX+EXFVGd06iIwuZZBM2LO7FHlazshJkdpUVYeNS1wYQTb61+4mVs0NYYcWwkf+u9id
         F80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701265230; x=1701870030;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+Pbp6mZjXY9AOVHyk09IUOp31RXPk8rQUCNdGc1tCY=;
        b=TQLgLyA9DjnUVGnaQ7J34bm/hc10Lc+CLz96sum1ayjKsqrcqwv4V5TPHABZ8Dex+5
         ZOZNuLKmfMsXvlFfN8jK/0SwB5YX7SyckxeYJkIZHyEhH948y2TEnh6K9QS1JauLHVXP
         pGvYnqmaYseCpVycW69AAsulY2upRvsJHId1l4U0Nd5rs3i73sDtyPc4fdmcFr3hQU/p
         bRraYelc0235noGNUsJirhXN8yJItxUgv1RFPVPptSwdNiWYnhUL1Si6/mh3+t78N7Et
         k8jLhHqI/uJSVh+1yjJCcoFz+ZtLTLEs5RH8Mb1cH/KR647vcUz+TvojvAuzPXPKiSQ+
         otPg==
X-Gm-Message-State: AOJu0Yz3usPgAjz2Bvs9/Sv9TZKJlrA6lUW/85oYIS3iPLRraq7s0iGD
	5Aq9einiAsNuKlqofLJdcwAo0Q==
X-Google-Smtp-Source: AGHT+IFimkB/NvQ9JKpZdb8dhZJPKiL5MbqRL7v7mEG3FmxZZdYg2Q3Ku0T1nbZi2786+HnKOlRtrQ==
X-Received: by 2002:a05:600c:19ce:b0:40a:3750:46ff with SMTP id u14-20020a05600c19ce00b0040a375046ffmr13442144wmq.11.1701265230308;
        Wed, 29 Nov 2023 05:40:30 -0800 (PST)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:6101:5529:fe2d:d7eb])
        by smtp.googlemail.com with ESMTPSA id w17-20020a05600c475100b004080f0376a0sm2285860wmo.42.2023.11.29.05.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 05:40:29 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-pwm@vger.kernel.org,
	JunYi Zhao <junyi.zhao@amlogic.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH v3 0/4] pwm: meson: dt-bindings fixup
Date: Wed, 29 Nov 2023 14:39:56 +0100
Message-ID: <20231129134004.3642121-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

This patchset aims to:
* Fix the incorrect bindings for the s4 type of pwm that was introduced
  while converting the documentation from txt to yaml format.
* Introduce a new compatible for the existing PWMs to better describe the
  HW in DT, instead of describing driver settings.
* Make the introduction of a new pwm variant (s4) slightly easier.

Uwe,
Patches #3 and #4 conflict with patches #18 and #68 of your pwm rework [3]
I understand such wide rework are difficult to handle. I don't mind
handling the rebase of the amlogic patches you have proposed if this gets
in first. Just let me know :)

Changes since v2 [2]:
* Drop DTS changes. These will be re-submitted later on. Possibly after
  u-boot gets support for the new compatible to minimise conversion
  problems.
* Position deprecated property correctly in dt-bindings for the old
  meson8 type pwm bindings
* Reword commit description of patch #2 to make more obvious it does not
  introduce a new HW support but fixes a bad bindings.
* Dropped Rob's Reviewed-by on patch #2. It seemed appropriate considering
  the discussion on this change.

Changes since v1 [1]:
* Fix typo in the new binding compatible documentation
* Disallow clock-names for the new compatibles in the schema documenation

[1]: https://lore.kernel.org/linux-amlogic/20231106103259.703417-1-jbrunet@baylibre.com
[2]: https://lore.kernel.org/linux-amlogic/20231117125919.1696980-1-jbrunet@baylibre.com
[3]: https://lore.kernel.org/linux-amlogic/20231121134901.208535-1-u.kleine-koenig@pengutronix.de

Jerome Brunet (4):
  dt-bindings: pwm: amlogic: fix s4 bindings
  dt-bindings: pwm: amlogic: add new compatible for meson8 pwm type
  pwm: meson: prepare addition of new compatible types
  pwm: meson: add generic compatible for meson8 to sm1

 .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 113 ++++++-
 drivers/pwm/pwm-meson.c                       | 312 +++++++++++-------
 2 files changed, 291 insertions(+), 134 deletions(-)

-- 
2.42.0


