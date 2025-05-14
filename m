Return-Path: <devicetree+bounces-177229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E94AB6BCB
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 14:51:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC7AD16B18E
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 12:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 558CB27979A;
	Wed, 14 May 2025 12:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bdc6/miz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6564B278772
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 12:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747227109; cv=none; b=tVyzkPKx+/wYDILG5HjObZ7cmsdPu1InR+Mow7lU0conFgLGxGOl21uo0jeLkCdgmGsRM+l4m/VzKOgONOzLk5W/+A5BO6IVZ6eXshMkWNYphvM+imJjU70RKp86TG+B1qP8QAj71P849AcTAjBS6wXaBhHvnWbleX619QojifY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747227109; c=relaxed/simple;
	bh=qFzqK2fj1HCSeZvxxjuZEOJdMePJq2O0RxP7hWzNXos=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nZkTagNS1JG/GvshhHCMaSphDfpTpJJiq9rZUqYn/IYVHrrpU5Lh1sNd5EGpwVDQ3AqpHhSI/xuGGc2jwcFoPTxp+t+edjWVQK2lW3SUkdvCUsKfJqwuzwDfAv5GW0RVD4gh4kNZywqeEHZb0BLg4gS1Hqa+0iEfotQ3zbnanZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bdc6/miz; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-441c0d42233so6789355e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 05:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747227106; x=1747831906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G96WwZNOynjvqyGyKipx2eszkDBgYS84tw9/9TdkKxc=;
        b=bdc6/miz6LnbAOtDGMp+rti5xxxoYPUuocP4rtE7bDSXtGhFLC/DUGI23z6lPi+W7s
         IsElHn9MwESvX902ThEHbm6ClzVuvzA8RwhYYmVW9qG5I5uKmThRSLmHx3HeKwhLBhSS
         gjodoRR+31kPoTzK8CLASlHwBqf2MTrecPUeEq4ppHKQwXZDOjbOF2A+vbL8yqhHVp+x
         3OQlquL6JuEvlMpw0Ruo4Y+OY0BSM7oeIdvJ+4AQu1i/u2qU/AAczMvLnNUy0UW017F7
         7sCFleQR67cSXRX+0WIXvWJe6JXwMTqNKfrF1+62Gjjfv91+YP5qFo9SG0yC+k/NMGcn
         Ij3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747227106; x=1747831906;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G96WwZNOynjvqyGyKipx2eszkDBgYS84tw9/9TdkKxc=;
        b=Hkgm8h65RmBYk9ypDKtLpQtQwLkcVreRAmBqSoeMkqH6Hv53VZ2PgQKcfvXXwtrMPj
         O/aRZIHZIzKXAgCp6ApN1a8FwhLS+StCscs++m8p2AAR5ynPVVDBI8XAYQedCUJZVFrF
         5glizF0nrYj9mU9cKt3HO53pB7YN2AFR+xgZAPPt85m5cozBDBn44Uxusu1vt55ZXRYw
         hq1VkYXiHJtvpqTDeahZ/o3DgsmcDYTi1SrlRodvslSe58PPQbruX4a1sssB0ydCIrBa
         7wgqQJ3aPEYbo0h/kL6LTM4aO47/hv4SrvCDMAwt+HKsudpceX4UgWU4bIQsCJk/NKDC
         TGEw==
X-Forwarded-Encrypted: i=1; AJvYcCXl9DSfhY5KfqJU3br/VnqK02hj7lirgYRe/JrS5Ebn6tJxWVm4KdWCZx3vDEvcWYt3baXV5Jg2FoKy@vger.kernel.org
X-Gm-Message-State: AOJu0YxJK/MRbOBxTNcRJpsKFWAIM0hIU/D4zuwXTTu7BsEzkWXSBz2d
	QaLPorv85wfsjKTZZ7tYTJIh3ToGz4YFKCyG+JXCAPrLFkTajSzsyXtN2hbTLBs=
X-Gm-Gg: ASbGnctS8s2KNVqv+7wQJc5rNhWzBhFWgNPeDOkXMzolR2h2lyJBi6juTQ9HGTFLBDp
	8N4P8l6JVQ44jw7UTQpBlszckCCmVA4Ej+YJqu06Aea/8AqcxqxjM+HFAVnF0hb0EdKxeo/Di2u
	gTkC4SxHcRdv1AJu8aWL6i07YtET+aT54M60IGAVyAcr7S4l5WR4gFMi5j5KDJIGazeZgenMB4G
	o8uGs1yWMcYw5lAKrVgqHlxJvSnLDEvN10labp6TYbxd287bacjHvwdOvrku1gsgv7PBvs3K3MF
	HzBDOUbEwjX5zH0Vbi/EI8yfSv0KTkBYn4RnnSBpjWthJh8eS56uk+Y/BBIedwY+/SDWRKN7aHw
	cfnEtqtuXmvD4GR+fq89Ni5RBQtmeAjYGxIzTe3w=
X-Google-Smtp-Source: AGHT+IFZIaPFeS+MCIGc/n0k7HQIiRGAtaHoEjEST/i2knk0UNX+vPMn1mIz7kEQxw5X9yopq23eiQ==
X-Received: by 2002:a05:6000:40ce:b0:3a0:6c12:237e with SMTP id ffacd0b85a97d-3a349966539mr949736f8f.16.1747227105716;
        Wed, 14 May 2025 05:51:45 -0700 (PDT)
Received: from kuoka.c.hoisthospitality.com (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a22ea7a53asm7745942f8f.23.2025.05.14.05.51.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 05:51:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: serial: 8250_omap: Drop redundant properties
Date: Wed, 14 May 2025 14:51:28 +0200
Message-ID: <20250514125127.56149-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1088; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=qFzqK2fj1HCSeZvxxjuZEOJdMePJq2O0RxP7hWzNXos=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoJJHPtqHSU1Qk8BxXvilLaKyVFgAjZk+a0lzio
 oXCt1bupleJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaCSRzwAKCRDBN2bmhouD
 14RpD/9BzBk88TJILONuQMPpVKrbk05NXBDJsbdZ0Q1iJwNlspfgM7/gV2ey6liewYj6+SzZ6Jq
 4xRE3jSOzfCWksHPpevKlQF5LBTCORR9nl+NER6hX4Rc/7u+7nSO43SSNp7O0hoAP1De6n0I9LY
 Zw81y/qGJ1dpGf42tTnx/GyyE1F1j2g4hxlGLI3+1UvJr093vBMLqX6Bw2KaCyTzlJQkuOngtjr
 3JsASV2TEnkDOCq/PkiYqDJi64KukEhbTW0rP0oLKLBUQNM2OuAL92gJ86E4XubIi3/iMKbwt7H
 v4lk4TBgbqs4JtY9luz6A/qwPHkmus+XgZXiqxC6kasPea3zp+FHrsousGJyVIcvZHd7eS37GEs
 HWfI7PlDvef6/RKUtuQfKCWupFkU1KZRsFoYqJTRYfniKwRCL4JJ0L1jHwsdsoIdPHoDhctieNq
 KqBffAUvwZlKSBJ8WCo2PHNwIGGzZxllwKvLpXLTzTsY/5Ayx31E52AW33whTFdXbdV+YU8XFZq
 G10Y0InpyOMrs0F3kERufANk6nvXozHSfCcAg8rbMmNMkjVgnovc3hUATZiOlkjaYivuaW+/iPV
 84vqTRU3nSqyDuAt3dHJ1pHMG5AoZxhFymXWYo5m2iXob4xB21Ra18+VRnfQmg6uTA6F9QZmQ+R t3E5quDi45zWwZA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The binding references in-kernel serial.yaml, so there is no need to
explicitly list its properties.  Note that rts-gpio is also redundant
because DTS should be simply converted to -gpios variants.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

There are two cases of 'rts-gpio' which I will fix in separate patchset.
---
 Documentation/devicetree/bindings/serial/8250_omap.yaml | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/8250_omap.yaml b/Documentation/devicetree/bindings/serial/8250_omap.yaml
index 4b78de6b46a2..1859f71297ff 100644
--- a/Documentation/devicetree/bindings/serial/8250_omap.yaml
+++ b/Documentation/devicetree/bindings/serial/8250_omap.yaml
@@ -64,14 +64,7 @@ properties:
   clock-names:
     const: fclk
 
-  rts-gpios: true
-  cts-gpios: true
-  dtr-gpios: true
-  dsr-gpios: true
-  rng-gpios: true
-  dcd-gpios: true
   rs485-rts-active-high: true
-  rts-gpio: true
   power-domains: true
   clock-frequency: true
   current-speed: true
-- 
2.45.2


