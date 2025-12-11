Return-Path: <devicetree+bounces-245702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C6FCB4787
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 02:49:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 426B9302719F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7AA326A1B9;
	Thu, 11 Dec 2025 01:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hqh4jXO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6C126D4C3
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765417716; cv=none; b=FeAZ17i6jaEPoa0/BY+4gFrQg1Lqr57S3b1C72rjz9uKDin4CPKfnVqDEPyflbvTVfrp1rOVtx66FKOmnxR+5qgTMD+nbj+gOWbLBEljAgtAbh2+qPuexaf7prW33RMlWsF4P+sw1jq8uMdq7TaB4ILpxh1VQ8LSOV6DJuKZ7Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765417716; c=relaxed/simple;
	bh=W7itVJ+K14uYFBw/EUtnTnjPguwCYou1lMyufwwD4OA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BgLnjdqRsnHRUajbGLSxxxKTO1FLJjcVyukiCzfafs9VdaUYpq/QClS0Sw0R6DonJHsWH6Li631jNjFoJerCxs07E6ovz1ugUdczVWBldVRakRD+UgmFuXVDyftiGdkLy2uyFJgBAmfztZ/FebFpcISTUyeBgeNgelfY0iiFIXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hqh4jXO+; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8ba3ffd54dbso77012885a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765417713; x=1766022513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xorHG1t1xysFuaNwpnhl3h/uUznlPWobnDCKy8/sHEM=;
        b=Hqh4jXO+JFx5fUN1ooPNvLEM1eQIfrcW53Zn8eyIi05/WHB3enpUB0Dg8S6PnuLoj1
         vk9ipCdM4U3W540daMm0vT07DfSXagH+cNdli/9EqXXdU9+fCWVgs58WHcHXkUtrVXFw
         X+UJGZ4KE8zcU53/uYii5ob5I5TwWUo3SX9tPgOBzZh7XKcOTjSbh5KmIuI3Kt4pc/Kt
         nyyzD65Xp2UyCWuWdA7kIGdfJRLjC+ZH7xQ4YjZQflAtvJIa/f504aU/HtQ+SdRI1+78
         BOlQCctXcvdPJJ2BqSqJMxJMoNr+wEybXTByR5LHUpgfC7XzK6Zuv/WpMCa9oFaq7z2m
         KtEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765417713; x=1766022513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xorHG1t1xysFuaNwpnhl3h/uUznlPWobnDCKy8/sHEM=;
        b=lSpWBrPlmRSw2ZOV3IgupoWhrwg+MqCHv555aUHhHGVqbzsuwL+XoBqzZSAtsUWawY
         4cUdiOW7lXAps8FI3hV6nCOavPI/Z99RgnD2JOp/I5BNjngBBf+nUr+y9StwbqprMGrF
         sMK8ADMNqdCmwCokxe6gWbdNxlCHQsKLWGPGz93tWEX/rhk9iFECV3xgZHzbrWLebSyY
         yN5ulADXrr/jHoqx4F1w3PHttBbM+OdRaRyBSaxLv7F1i8+LepVX1w5Py65c1hdmAHye
         e+U8sg8VP1CDqV0EWBrUpzFUPQyresESKwjHNXbA1mmYdyIAe0JSCAcgkLpuW+Sbp7GD
         LySg==
X-Forwarded-Encrypted: i=1; AJvYcCUykbd6CQbN/Xw8fFJCCVyQX5lI1Ji7eB9K2cljZC5VNkWno8WbrnGusR6OxI1X02xHSLBeq0nSRVts@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9yXJ01hiymC5AmInRq52k/E3V8yyLepvMIBJbOZV8sh0KGDoq
	AJv27NU1dfP7GGwrCi2821X4h2LEB6cLR5OyesIlHSY8Je527eTdhBLT
X-Gm-Gg: ASbGncubtdzvLFCZ5X/tTvhfHg2OoUCKQ9Wf6ZXq6pSwXzdL3eBV5K/zAfoIepG1/8G
	aXn77SmB2Antf8hbYoygq+s6qtWKeZcYFp5u05ybqQpCkH/7BX+kBN1m7yWI/6QFSZgH27AEwPP
	/UySCvUJx+nf/C7tIBI9hCo6TQ+5FNpid+Tz9faIpLzz+TTCCxmKkH3hZhuaKCTIlXnL3wdPOJv
	CNpG8M66uQJUjsOZMfX1s7HDTW7t1s3t1TbiMo72pb0Eish4Yc9QJYEMG0iTV49Xp0/ef/etqEs
	hF8uv0Os13iOBdqRmQAChakToSieO54WOkIKDrFfcbUZPqKzyHKEExR8CDx9wqE16Q2iIHSaYY8
	Xa154w3EGZ7uM9Qj8GjfwLWYiQ3CneoMTmr+3o/jDWd0LJJzVtAuaV1M6QTj9bV1938rGJiaNkf
	vsfcqsQCobRs7xxw==
X-Google-Smtp-Source: AGHT+IEFRhR/wmzVTpBzyyVmjBrTDUOZN3dcOw/2LuUaDfS8IFMUqc329O7ZcHcPKQxmBIuolezEqQ==
X-Received: by 2002:a05:620a:170e:b0:88f:561:d956 with SMTP id af79cd13be357-8ba38a75a85mr597748885a.13.1765417713620;
        Wed, 10 Dec 2025 17:48:33 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4cd34sm91518285a.47.2025.12.10.17.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 17:48:33 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v4 0/5] media: i2c: IMX355 for the Pixel 3a
Date: Wed, 10 Dec 2025 20:48:41 -0500
Message-ID: <20251211014846.16602-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds support for the IMX355 in devicetree and adds support for the
Pixel 3a front camera.

Changes since v3 (https://lore.kernel.org/r/20250905215516.289998-6-mailingradian@gmail.com):
- separate camera mclk pins and move to different patch (4/5, 5/5)
- remove polarity from rear camera pin (5/5)
- remove output-low from front camera pins (5/5)
- mention effects of dcf6fb89e6f7 ("media: qcom: camss: remove a check for unavailable CAMSS endpoint") (3/5)
- specify single clock-name without items nesting (1/5)
- rebase on 49c6ac166cf7 ("media: i2c: imx355: Replace client->dev
  usage") and eaa7d46d9654 ("media: i2c: imx335: Use V4L2 sensor clock
  helper") (2/5)
- do not use of_match_ptr for OF match table (2/5)
- remove redundant GPIO validity checks (2/5)
- describe endpoint data-lanes (1/5)

Changes since v2 (https://lore.kernel.org/r/20250714210227.714841-6-mailingradian@gmail.com):
- use devm_v4l2_sensor_clk_get (2/4)
- require supplies and clock-names (1/4)
- move unevaluatedProperties down (1/4)
- disable clocks as last power-off action (2/4)
- use 0 in gpio pin power-supply (4/4)

Changes since v1 (https://lore.kernel.org/r/20250630225944.320755-7-mailingradian@gmail.com):
- too much to have a complete list (1-4/4)
- squash camera orientation patch (4/4, previously 5/5)
- squash driver changes (2/4, previously 3/5)
- remove labelled endpoint node in sdm670.dtsi (3/4, 4/4)
- change init sequence to match other similar drivers (2/4)
- retrieve clock frequency from devicetree-defined clock (4/4)
- remove clock-frequency from dt-bindings (1/4)
- remove redundant descriptions of child nodes (1/4)
- switch initial drive of the reset GPIO to low (2/4)
- set mclk frequency to 19.2 MHz (4/4)
- add vdda-pll supply for camss (4/4)
- use common power on and off functions (2/4)
- use devm_clk_get_optional (2/4)
- remove extra layer when describing mclk pin (4/4)
- rename regulators (1/4, 2/4, 4/4)

Richard Acayan (5):
  dt-bindings: media: i2c: Add Sony IMX355
  media: i2c: imx355: Support devicetree and power management
  arm64: dts: qcom: sdm670: remove camss endpoint nodes
  arm64: dts: qcom: sdm670: add camera mclk pins
  arm64: dts: qcom: sdm670-google-sargo: add imx355 front camera

 .../bindings/media/i2c/sony,imx355.yaml       | 119 ++++++++++++++++++
 .../boot/dts/qcom/sdm670-google-sargo.dts     | 107 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm670.dtsi          |  33 +++--
 drivers/media/i2c/imx355.c                    | 118 +++++++++++++++--
 4 files changed, 357 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml

-- 
2.52.0


