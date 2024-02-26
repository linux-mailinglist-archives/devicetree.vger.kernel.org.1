Return-Path: <devicetree+bounces-45926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AE88674F0
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 13:30:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2791287CF2
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E96605D0;
	Mon, 26 Feb 2024 12:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zvxlmbc1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA7A605A4
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 12:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708950581; cv=none; b=fhMHkbG4yCh7dR+W7ASt0oFMEHCoIzlRcZ+kJhBy/a8cU163H0rjYnwnpphX3chl9GfNVMSAqiRjZUPDflFN8POAcZMQqUNbPtGX6elMs2wqMpP3j8/R/hR2K2QHDO1TulqpplyU/YxxgQgCg+l+KLgrjt90AQ+JnZdLj3Ned3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708950581; c=relaxed/simple;
	bh=/yIz5oyLBfSA++ON1dY6EPVob2yea5MQlWsNhAmfIVc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YEUVwHUzKqfYKN/JXd3RGgZlegsez+MYsB3g262FhR3dAEvuj3Or78CehhPhoyFKsYbmFSzOvJI0sbMXfUFxVhMWCKtveB0lDLwSixX2+yvmzRXwtDfGKa60w+WnL9jJpPqp79WyRCSpg+at6L7PDf8+59H1CmX28bI2VKuSJhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zvxlmbc1; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-563b7b3e3ecso4144747a12.0
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 04:29:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708950578; x=1709555378; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SUO6wmBtkv4ffo/uxOeQsK49ucl/5uSltaqOCTDJPag=;
        b=zvxlmbc1hoLmUsYE3vC2ANVf9Ser6/fe32yCoRTtB1xN43g9yN8TNVacuv4No4SzO9
         qcT+aZaV4ZiKvw6kqI1jPhynrkMDjfuUwwySb2bglXUU2hZT3km4K/rTG7ovaKuU2y/H
         mZDgRhX2rW82Gf0z8NUQeUv0vO+v688WX5I2tI1hxLsD6McTeApY4+5jbrHbKcJoVAcB
         LiOS6Kd40bzld+sf5sjtDIuTrQ2e02JRmsBbNLiJZEHkH75vPcju8Kv2kPJFzT/eU02R
         HHPhGXG+McoYDTsEwuUOz6uVlqWhmjmSAkwwbKXfqI8/DMUKmaT+lwSPqdmpnsYQPTSf
         SyBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708950578; x=1709555378;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SUO6wmBtkv4ffo/uxOeQsK49ucl/5uSltaqOCTDJPag=;
        b=J84nBf3JsYZKy0FkZ6MTzoLHAA8+7oE0GE6klNCUViZisfnBiy5xLSm3bJe0H7Xp54
         upmNJJ0m96EFlTRNkDUkA5o5cMK+VZOmIjjNlII85NiWk/BhqHsvGfn8stRd1kyUOh5g
         Rf9tszbMblni/TDltK9+PQ4IkBNAteCjUDCHyhazCctrsZEdxz7JyRTaxZyP/8Vpq1FN
         agiCAB/uFiYCHA0yN+wU26YBuUIfa/BHx0bGPwq5ED9LBjMzLaJ7IQNkPVqRH3j+ccTR
         cbhpJFSfIoAINZL4vT2OfFYMnZQLNNQPNo22BLioZ1xgAqNoidvZvrX7nPBN89DmrB/Y
         DebA==
X-Forwarded-Encrypted: i=1; AJvYcCXkliabp67yqRimX256lmb0dV4xvLU/1bajLKI3p1ojTQV+Sj2yzmItPGEO0v+JFKKb/B3vdw2d50vOUMU5vs9//TdDYBeLqYg71A==
X-Gm-Message-State: AOJu0YxSmFByCySqHboH7IB47eRE2r/VxHcH9Ov4TvCTaJdDZ0fVZ1M7
	FigEwbm+easJ2XX3ygbVkpjjqjKk4Q9mAMlFqQPL904slA3gzAeBZ29AJcjtkS8=
X-Google-Smtp-Source: AGHT+IEG45l2x++PIZXi1hnUpUUkA/1s8de6YMCGRZc2XdUxmEusGFOlqs4MacdMEgFnjeNKBj1UZQ==
X-Received: by 2002:a50:ef08:0:b0:566:ee8:8b1d with SMTP id m8-20020a50ef08000000b005660ee88b1dmr869351eds.24.1708950577837;
        Mon, 26 Feb 2024 04:29:37 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id s17-20020a50ab11000000b0055f0b3ec5d8sm2422683edc.36.2024.02.26.04.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 04:29:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Hans de Goede <hdegoede@redhat.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: input: allwinner,sun4i-a10-lrad: drop redundant type from label
Date: Mon, 26 Feb 2024 13:29:34 +0100
Message-Id: <20240226122934.89257-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dtschema defines label as string, so $ref in other bindings is
redundant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/input/allwinner,sun4i-a10-lradc-keys.yaml           | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml b/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
index 5efceb313879..c384bf0bb25d 100644
--- a/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
+++ b/Documentation/devicetree/bindings/input/allwinner,sun4i-a10-lradc-keys.yaml
@@ -49,7 +49,6 @@ patternProperties:
     $ref: input.yaml#
     properties:
       label:
-        $ref: /schemas/types.yaml#/definitions/string
         description: Descriptive name of the key
 
       linux,code: true
-- 
2.34.1


