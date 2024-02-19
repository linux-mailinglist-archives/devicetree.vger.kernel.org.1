Return-Path: <devicetree+bounces-43393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A525885A3EC
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 13:55:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D91C31C21D90
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 12:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76E0F2EB19;
	Mon, 19 Feb 2024 12:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oma2XsIY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1EA2E835
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 12:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708347300; cv=none; b=aR3SCDgAgllBxiKRs441CKtZgjAMYMOu3n0Kc62Tp0NFkGzXXNzGcXwDzl80K1QAlmxZq1EZstggxe93gHGXSZFNqXx5el05U1Qi7yXStkOQVwrranGtGjmFUf3bKjdgUjNZgJLRgiGuZvj4mdA54PHikACGOKeOyfYL0ndXMxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708347300; c=relaxed/simple;
	bh=hSBsjVnDq4V/SaD5QrTbaSrUiQ2o7wo0Gts4ho71hgw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=EtWKecbG2UMg9HH75h1ZtRIiEsTUssOP3D+WS07/Q+mIzUivcZYLQ1p8Nju2+GGbXqM4wR1PPjfKt9ZhjOIGmffqS3DlflddtPd4VubvBA5J0wQaqiMdh9W4PM/azFw0h4467k8apslbLGcCAaVirOhT2KWId0s+vOY1Al38VCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oma2XsIY; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41262eaa95aso8729555e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 04:54:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708347297; x=1708952097; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a6B2DruJerLZbkIuvRU8f0cBof8KbpMYUSV8dqn0q2g=;
        b=oma2XsIYTPEEH2cTCTebgFW0WNDwBs446XfKHcPOofp2PXTT4GXsLgpHNo98ZcwiPV
         VfSwNlpghors5DOpkoeNT77D4MboAFO4Y4vppu/aYN3dBTjxonC3+3N8d6zyqgiQ1zyI
         8v+iIu227pbSpeRYj9y5/MyLuSCW829spZKGc8kEvuekf44a0BfM5plO2XXPd0XH5rh2
         X6YqgLvBSFvNvvRBxyJlQDjW3ctTXpHqgJBExySUDPGlou5dxvN8To4abFVuHMlU57AH
         kZdBVWLRHB0LtKOtTjklATNnnfQHbY7Ftjino9knLysapgfsIrixrK3AbDKLuPKStepf
         qcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708347297; x=1708952097;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a6B2DruJerLZbkIuvRU8f0cBof8KbpMYUSV8dqn0q2g=;
        b=uqG5kDNwdbv7v0ofb8bxuuk+uhxJFUH7rEKD4roeKmRSNnqQjE5CzikuCaBzhayKcd
         Z4icPcXTHyXXY9sYgLZ8vSVA7aeBPieCRj6VXEaQYlsvu1VccFZZp2V1y9ZqSGHaRFnJ
         OLEsVcqi/drdfvnL0SOZPaOOO+Jv/pY2nIe1IAijunb71jCvDR6NG3cGT7n9l2W1ofJ0
         rTEqPivIUSbTbz15/slL6pHEocnj8rD7J0gFhJ2IMquD7olfwc3l6VQqJkFkvyXMhrAZ
         Et6zoL2zRXwOJZcL11y3IOwO0p8APJ52HOdrX1Dj5boiM3+wPvmEyPfLld803cMAshH2
         /71Q==
X-Forwarded-Encrypted: i=1; AJvYcCXirJQumMB91X357N2UeEJy/QUbDJ7LWGxQ8/jqM4gYFuR33Eg8VCOPVuAvWPqigBu5sq0K421mnYmxeX9HbDDF3ACl7zfgZ51uig==
X-Gm-Message-State: AOJu0YwuL4J/I8Hqi8795UVBsoGpRmeMWuW2AEqNZKI2IRDF4oBZXhjo
	e8JMzOAp9NDBkufF8dQoPeZxGU8qus6McQtfYdEHKhRNoTyGuW29jTkm2vK9N7k=
X-Google-Smtp-Source: AGHT+IEIv5BtZVO+FqLBERhY0mbMiI6B12HVtWh8EH0ZzyLDVS+rqzvTu7JiEtbiqXaNJAReIfKO2w==
X-Received: by 2002:a05:600c:3549:b0:411:ff38:aa13 with SMTP id i9-20020a05600c354900b00411ff38aa13mr9228779wmq.27.1708347297209;
        Mon, 19 Feb 2024 04:54:57 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id h5-20020a05600c350500b004124219a8c9sm11006918wmq.32.2024.02.19.04.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 04:54:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] MAINTAINERS: samsung: gs101: match patches touching Google Tensor SoC
Date: Mon, 19 Feb 2024 13:54:53 +0100
Message-Id: <20240219125453.103692-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Maintainers of Google Tensor SoC should be aware of all driver patches
having that name.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This allows to spot easier such weird drivers (weird because they claim they are
for hardware, but they omit entirely hardware part) like:
https://lore.kernel.org/all/20240219061008.1761102-3-pumahsu@google.com/
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 36fac6b3499a..69fb1ae94897 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9126,6 +9126,7 @@ F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	arch/arm64/boot/dts/exynos/google/
 F:	drivers/clk/samsung/clk-gs101.c
 F:	include/dt-bindings/clock/google,gs101.h
+K:	[gG]oogle.?[tT]ensor
 
 GPD POCKET FAN DRIVER
 M:	Hans de Goede <hdegoede@redhat.com>
-- 
2.34.1


