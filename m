Return-Path: <devicetree+bounces-45509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 555CA862416
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 11:16:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C11F41F21F9B
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 10:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE24C3A1A6;
	Sat, 24 Feb 2024 10:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YKCVCh5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036812E3FD
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 10:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708769720; cv=none; b=jsS4tZqVqm0RfcIvykuVEvbbR31UJtL3v7d4DnoKxDOyv3FYRl9vc5fm4sTk19MSkjxkXyoxG7Jzfr+H4jjTk1KrPkXbWofaJW0POIPPFQV/qT4NUV3Ywt4LLvR6l3tCFTjlH31ujLu2JM6xyri/nMGqcfx1YzEbx+jRhvVEyEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708769720; c=relaxed/simple;
	bh=aD83uepM0Darh5WwNGaHTFt9aEgQZZROelPmA55Mti4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MnujJ8KleGghkUG0MMODdFp6gcrnJasXr5K94UKicNHXTCpbQv9y8uIZcgtJb7+x8ey1K/omDqnAnqUvrMDbpuQEYDIOuKmSwJyRmi3wcVErPp99X/LliEMitgM2zYDCrqYdn1FxRPYWFBzZ1aHrODI0oyge4iGdLRKf3fEhi+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YKCVCh5g; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-563c595f968so2082163a12.0
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 02:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708769717; x=1709374517; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CzTFvA5VYY95036xye7AAeQU1pMkC2skTCxswO20aS0=;
        b=YKCVCh5g+jnQgg4V83zhy0Yz44sawZswlbpY+59U5BYVngnSKD+fm0FgvcZuNYHJUC
         1Z2tPWPUcOvd7qWF4hDt8ALOInrV0EJdIl1FXDHkGH5+ybWiwjF3Sbs3H+Gw7k2ppfLy
         jMzvYA6dhoj08DZvu5BbyhDUeRNTVlmLh7r1XEsXOnqyNOwBItD6HcmxJAXJeA+LhLnv
         WIXLsm8PUghWYsAFP7+x3S4cF0iCruLs3KwrQgtVpVTuUig8b06NmHyAWvvGKtN1682S
         GTkf8yTz0TAIlFET6dXubSyZJNbb4QbN77Aq9dN8LJtX+NKy4IXInTxRL8NV73F/ZNPE
         g8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708769717; x=1709374517;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CzTFvA5VYY95036xye7AAeQU1pMkC2skTCxswO20aS0=;
        b=vQy1eTHQrbFJUPIVaKx8a8I7TC2bJbpHl1lS8g3bFmIPglPV9vBPi1Cvt/7YwqEFRY
         DlMQmN4/dXk9RuDl1qL2Tvzn5W52TUNCATjLT0687Yqth8fAmJZDSGcLRNqaLtk6oCHs
         lkwu5UggDWRL9DgnnhZ9L1f9laawxbJwOaASJWJnJTsOh+giCnrL8s72pVvj8ujI8UJR
         GwW2rHgQOOXocahP6HNohyDNW8ymM3ECDR/81CBhmbLT9lZ80usBivwpkkmmGSI3S+1K
         7jCfDv52VU+NuW/O4Bi+A79XNHbJH4LBrrSceknsRPJ/l+0OZlm59IHezIk8yTiin4+C
         QkyA==
X-Forwarded-Encrypted: i=1; AJvYcCV7csx0D1e08g45aTfwNC3lrTP1It8wnYk+LO9ar+LhHe3iqJAsQgwycunbogd8wtfRps8qyAJEVrU6ygvwgtUDCz3wZRSLK+B9zA==
X-Gm-Message-State: AOJu0Yw2C2yaNZWDcDbQLROFnNWbqySH2W+Q2JWpisebDwCX7R3Z8l0+
	2gSxSps0XWjagwqX0OghPxo73zwp1EYeKojHjrCt4SlNA9M+BwFehkyJWhHMNGE=
X-Google-Smtp-Source: AGHT+IHuHnxXW77Q82v5PHyOSddDwM2zvBrQWex+4T6D3oGXMA4jJqVAWeWRWOB6tkf/ibD0LH4EsA==
X-Received: by 2002:a17:906:d04c:b0:a3f:adcf:7f58 with SMTP id bo12-20020a170906d04c00b00a3fadcf7f58mr1271974ejb.21.1708769717451;
        Sat, 24 Feb 2024 02:15:17 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id p10-20020a170906140a00b00a3fb4d11809sm446545ejc.204.2024.02.24.02.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 02:15:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 24 Feb 2024 11:14:53 +0100
Subject: [PATCH v2 4/5] dt-bindings: hwmon: lltc,ltc4286: use common hwmon
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240224-dt-bindings-hwmon-common-v2-4-b446eecf5480@linaro.org>
References: <20240224-dt-bindings-hwmon-common-v2-0-b446eecf5480@linaro.org>
In-Reply-To: <20240224-dt-bindings-hwmon-common-v2-0-b446eecf5480@linaro.org>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Robert Marko <robert.marko@sartura.hr>, 
 Luka Perkov <luka.perkov@sartura.hr>, Zev Weiss <zev@bewilderbeest.net>, 
 Eric Tremblay <etremblay@distech-controls.com>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-i2c@vger.kernel.org, Michael Hennerich <michael.hennerich@analog.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1004;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=aD83uepM0Darh5WwNGaHTFt9aEgQZZROelPmA55Mti4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBl2cGnMHl7JvVmjVNpXVQbkA024o3WcnyxoDo7s
 lo6+7T2DHWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZdnBpwAKCRDBN2bmhouD
 1yUsEACZkgw116288idb0nBcbCgrzlAo9PqGWcTHRDqQXYPsHYf1Zs6n8t4+hwvHpRSbLVx+pWM
 TLYFoM326csLHXmawzl/9D6vfjdnxZhay5QGzCIjjkEHbeXrjXRcBz63G8zVtnuLWglGRBCAuO4
 zc+lRb0FwyDjLCfQZH4YpQreQ0E7NLIoH4zisTLElxB9FHDivEXkuYUQ81BWSwgtB143vh4wDOS
 sYsdbp4s9ssjMmzbmjCSMLk1iUPiPIncPA/EpC+zE/f6ByqNtOL7+q39uNLLx1lxH8RxIuUZBu5
 KPfHCAUbF7P+xNV8Tvs61bby1K9Zzm8empLCghDi0rmRjMEwjkMMPoGhU9JxlatXIj9Gzuu8Svm
 LJUWxLsfho/UGG/S9aplhBzI60W+G4BvufTiNR69KyP9nQU9bI0V7m1G1H3yYUxi/HUW1c+nYHt
 QxmOcFZcfNc72tl0Q1yvD6LslDUrfocLfRoGoWn7KMct0p+ORasiyF9ZX81rgZWQ9N2kKOaalx2
 x9JwHyE+vbp0JXiKfV6LdFbs158sVjqbc0MzvUstiQcAIdmuvipPt6lZt2cbFkfi9yUZWlVSGj5
 uRE0yvg7XO7BGTeW6uqZfK/F2Hc/yDyQxepnZAcRvPWj+YGbjKWOoJtTHrXs0m01rsBDRRSDHsN
 jYdbr9gI/tNlGQg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference common hwmon schema which allows to drop the
"shunt-resistor-micro-ohms" property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
- New patches
---
 Documentation/devicetree/bindings/hwmon/lltc,ltc4286.yaml | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/lltc,ltc4286.yaml b/Documentation/devicetree/bindings/hwmon/lltc,ltc4286.yaml
index 98ca163d3486..853df9fef6c8 100644
--- a/Documentation/devicetree/bindings/hwmon/lltc,ltc4286.yaml
+++ b/Documentation/devicetree/bindings/hwmon/lltc,ltc4286.yaml
@@ -25,15 +25,14 @@ properties:
       The default is 102.4 volts.
     type: boolean
 
-  shunt-resistor-micro-ohms:
-    description:
-      Resistor value micro-ohms.
-
 required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.34.1


