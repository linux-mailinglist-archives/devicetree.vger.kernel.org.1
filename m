Return-Path: <devicetree+bounces-111850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 247429A0256
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:22:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 568C71C2610A
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B48D1B393A;
	Wed, 16 Oct 2024 07:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WXwlQ+h9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71221B218C
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 07:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729063317; cv=none; b=nyDfr9ZK6siEs9KukgfdXvU6GS38ze+J5oHadyx1DlknmvcbP3bwh1a7ea5kxy/QSLXa/vJEcG10Y3vkjfHODrMUO3DT1UBPA9049eY1jMtzBMYkrNSXzyZ49tg4RMJO5lcKL6Bros+rmcSgFYhFeXHKYv5mrDOJ3xPCtSABlx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729063317; c=relaxed/simple;
	bh=fZX5uLXA4BeanITrl+JqJGbDkF3ehpMnwgrGdcS+aHM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=InFfupSBKyJxmeNQIaqAHPmw5/RIFPZ3QIJobT0X4z/gvDp2rwOzCnjq+no7QoFdl2OFuYoOGPrf+buDB58IEP7X8Pqa3us3aAvBY7Mc1pdqTGdf34YCY+/1F3ab1nl/VTmsHyBQhQTOg1UEb99JhRo/yv2TgxAl/fOiZV7SCfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WXwlQ+h9; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fb5be4381dso18274591fa.2
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 00:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729063314; x=1729668114; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bh1/o0DmTgXcHb4M3eK+ULBA1+u4qfeJ4X2c+J6/Fwc=;
        b=WXwlQ+h9s1wNHuKF+S/Q3Gi4b8Hx0F/CIQdPxsJMLSY6RSdojpeLVfC29G0UAqDRp3
         yqtlGGx9gw4kY7aaXyHQ5GdObIyznOxlqriYSvYrXA4SqFjc6d1NkbB1Ew1esgpfVaOG
         Qc2RLOsnyYnc3lCt7LjZ6xDdsOjr8QwNwgOi3T4BKZqVkVOmcSPFBgn/G4WywUY3lR1B
         /O/1ZkdMWKq6t+ZnVPr8H8LmrzpFYC7YUsZECxgXSex2R76dISBYkdH9rI1HDFkE+NnN
         NgHAcLPieLdJLESaFTj5pUA5Mz9C4RCCogKx3Cx0GHWwb43WWn25y9BVtc7+2BkJScLj
         ++XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729063314; x=1729668114;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bh1/o0DmTgXcHb4M3eK+ULBA1+u4qfeJ4X2c+J6/Fwc=;
        b=cU9Ns1JbTBS8YgocAU4SI6ViCoOnlM8lSDS3kf8py//o16+ZJaHqiKOc9pVjL61Od1
         0Uk6aECGO3xaqJ+yRvO92RfRLHjM7PO8AKz7DT7+sya7PSf8yIt4a8PVpk1zcP5Qvil7
         7Df8002kY7kS6y/DhVratC2+8zjvG70E7cq3IYcQ0FqK+bC1/zf5wVN3XvvK4z3O/ujb
         zCoK5uzJVUbcDq9f/GLv+7j30Ood6e8riyoBoO8yjwcbNKLAH3QsxgXmToyifzKsg+LR
         y50lec8XpAKMtGd1c7jPLePoaBmrQ9wVK+K3hYxaOfda48zG81YhaPgsxEgfYekX43+4
         ENHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTJ5souiJbPWLcaYRbtm3oP41AdVOm2rplKDjkWribTZLzha69VKcQtg6ft44iQXBVFe2oCr/JGEEU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5QEfynk/BWdy9HuLjW88e2aeZ03PGedOGArksMCkYCbOYouLv
	IQobFOzBY0iGwzNlYsnakr0bqdQGOO7nStWJIM8MTkkc3nrBGOXfJ3yw3HSgckI=
X-Google-Smtp-Source: AGHT+IGQYS2LTltQ0bfUJZ/Qv3S3Tz7UZp727vfFOxwkrNdzBmCn2taulYm/TU13WyOH8CGWvsZY2w==
X-Received: by 2002:a2e:a544:0:b0:2fa:bb65:801f with SMTP id 38308e7fff4ca-2fb61b45f86mr21564641fa.10.1729063313964;
        Wed, 16 Oct 2024 00:21:53 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb642a8fdesm1289761fa.5.2024.10.16.00.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 00:21:53 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 09:21:52 +0200
Subject: [PATCH 1/2] dt-bindings: gpio-mmio: Add ngpios property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-gpio-ngpios-v1-1-f16cf154f715@linaro.org>
References: <20241016-gpio-ngpios-v1-0-f16cf154f715@linaro.org>
In-Reply-To: <20241016-gpio-ngpios-v1-0-f16cf154f715@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds the ngpios property to MMIO GPIO. We restrict the
property to 1..63 since there is no point in 0 GPIO lines and
we support up to 64bits wide registers for now.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
index b394e058256e..87e986386f32 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
@@ -37,7 +37,8 @@ properties:
     description:
       A list of registers in the controller. The width of each register is
       determined by its size. All registers must have the same width. The number
-      of GPIOs is set by the width, with bit 0 corresponding to GPIO 0.
+      of GPIOs is set by the width, with bit 0 corresponding to GPIO 0, unless
+      the ngpios property further restricts the number of used lines.
     items:
       - description:
           Register to READ the value of the GPIO lines. If GPIO line is high,
@@ -74,6 +75,15 @@ properties:
 
   native-endian: true
 
+  ngpios:
+    minimum: 1
+    maximum: 63
+    description:
+      If this property is present the number of usable GPIO lines are restricted
+      to the first 0 .. ngpios lines. This is useful when the GPIO MMIO register
+      has 32 bits for GPIO but only the first 12 are actually connected to
+      real electronics, and then we set ngpios to 12.
+
   no-output:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
@@ -111,6 +121,7 @@ examples:
       compatible = "brcm,bcm6345-gpio";
       reg-names = "dirout", "dat";
       reg = <0xfffe0406 2>, <0xfffe040a 2>;
+      ngpios = <15>;
       native-endian;
       gpio-controller;
       #gpio-cells = <2>;

-- 
2.46.2


