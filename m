Return-Path: <devicetree+bounces-212879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B59EDB43EAC
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:26:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CD0117BFFB
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA53B311953;
	Thu,  4 Sep 2025 14:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z4GiKnMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6687A30C639
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756995849; cv=none; b=LRRu3dMW8avtMpDKecVNqZKtZz0LoxRN/6XnCpctFHt8+Yjk/iTwyA6oY/KlZAR4NE0x9lF63AbQ5IanIn3GIS9yzgs8wDul+RAo2s3BydALi/EC4PSzkylIInfk/DtpuOngACEv2OpDCJf3vhaFUeTOT/yfhdfIkmw3QhrcLao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756995849; c=relaxed/simple;
	bh=rJbB3QOAsoTaxqo4Kd4lB6HXlcCx0S/pVRiVTjcef5E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K3F0bYIBZEK2a+R7MDzeMLuzldp0LzBC1UFeJKsIozwhfRFr4dxCE4CIhWbhROKee0wJNbxKOcPGxjqsO4FwAito0RPHGIgoShrndfFIcyk32ZxAB0dx47NEEzRqNMp1StaXKjI1RkT5sb7haqjASOEnuPWC+hvDss0f6XwvYR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z4GiKnMZ; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b046d1cd1fdso17845466b.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756995845; x=1757600645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nNrC/NOuBDqAGWreYEfGfKmUPRa1ls8wWMOF4jMHuN4=;
        b=z4GiKnMZMMu1zzObHvLfmCx1l4/xxGUcIAzJhBdFSaSGzQYmNIDGc0iNy6u/bORsCN
         /PrJ4tZ5Xbf5PVZVLfE/1O+SYXU1xSzxvGf3Jtd7p7BqYZAPCO8v0ELDwqE/fkFqWypY
         VjKnlbAqeY8+c1c19hno1YV1U65o/cLtcU0pCabl6WwgDXDbU7U8FFMzOkq8d7vaFQyG
         Cx80Y3ciY23YVlilYElxrjG8nOHnjhw2K5u6Cf8C8jvvFwPXbHakFpQxxu4AUMBE46lb
         9dXW/LgUYKWCTgl78bcql8C+nWdsUIT2Wq55pvFj2Fg9E6onDrngxKzT+KTSNU8N2QXo
         1MkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756995845; x=1757600645;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nNrC/NOuBDqAGWreYEfGfKmUPRa1ls8wWMOF4jMHuN4=;
        b=WJ/fVj0qPNgIbm2+zO2V20WfkgeSyYyl5Clo46LfOALOP2W6kyBO+6dlFU/js0MkXQ
         vqbAR9mEjpW2z5ehYszOR/d15tcNmWFAqmks7eIeBT/VpGbqmWAfZ4sN538Brq9oz17c
         Gxo7I25JdeBouvef3P0YXG8Ce2vZ/NkNgP53V8xyrVlg4e6qfoGy7Ld7vJv+H+GHtfHu
         V4knWikXUveUASDbvgDPimCzpQDgwC2Gdghuz20uNNJuDwKyfJSiitmfLTto/89dwdpq
         R9phQPHZ0YHwEzf4kE3W8QMjOs5BqFFHt0nK6Y+vV7ofxnWJxhpWKKiHQyw2g0hyk1s1
         lnWQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3nN4O/P1msDW2TIuQed7Jz5flnYAxjso03GYL/HV/LxSz209d4DDCCJP6JwQDHeQfPmdck40KS2+H@vger.kernel.org
X-Gm-Message-State: AOJu0YxlJLOvjVogUa22JoqBJ3ncReZTWWxQfMQHjj+SAQiKHUggZsF5
	Ci4Hiv4UmIWxNgZq9N7qiYF9iYFvqidZ3kELQpG7HylBhLRTQb6jLjIqS5ihAiYzSVA=
X-Gm-Gg: ASbGncvP+w/wT60ORwfBEQHSMk6H9pHSddt2B+o9CiKlv9fS1xbTkY6RoEJB52TiqPm
	zuBzFHKkgPsVs4NRO2KBLkL93JYyea8oFRY9hdrL+U6GYzd5lc1pVbY4dVZ8qApDAXFAknP0HM1
	6/rN/S7RbD8nO88KP8cS7BUwoIprPkWTSnfhzbMifxkcTC8GLQ7vAKRhhLDmoglrHEZ0sZNOhRT
	GfxPfqwVhYanYA37SSTa3gNVKmUYPpokufeXG2NDXUO0xOFQRqCXe1kl0v2trwiHaAGefmTXAvz
	tnQfjXaF/I8FVq6a3Eo/OfusGAIquGWRYIt7SVX2/Zu09+2dlc7ga4av84clZLJzPNbt0EV3w+j
	2jS9ArUDv97ToRFARMGM9z748GxosxzuOag==
X-Google-Smtp-Source: AGHT+IGNV50jro7uMtgoJhjjvwjyznKhwM82NWrwa4sUItnPrV/V66x4nrLpTFqOJQAebi57nfUbBQ==
X-Received: by 2002:a17:907:2d8c:b0:b04:83f1:afaa with SMTP id a640c23a62f3a-b0483f1c682mr121328466b.6.1756995844599;
        Thu, 04 Sep 2025 07:24:04 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046f888b95sm347059866b.34.2025.09.04.07.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 07:24:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] docs: dt: writing-schema: Describe defining properties in top-level
Date: Thu,  4 Sep 2025 16:24:01 +0200
Message-ID: <20250904142400.179955-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1506; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=rJbB3QOAsoTaxqo4Kd4lB6HXlcCx0S/pVRiVTjcef5E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBouaEArq2qphlBSq9K0XZCXbcEVoS1cOy3asNZC
 zTHFKmK/CGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLmhAAAKCRDBN2bmhouD
 10EpEACA1X1JRpjg8VvtinjyTBdJez0NF64yxJwGekQgBE+wmrFBua4jQ83FWULPiQOOEZzAnyZ
 UnLA/RJC0jdL8OcfA2NtSAs9BzK6zS+y5bav820hZ/YWyDSZDhOgbaTOeTTD3m3Yqk3f89JY+WC
 MCNU/AN9Bq5oNys7xnX6EHCWDhairD1ALUQj9/i1Xg0CCdwCB6KwNEWSK0oP26tEBkqme9FkYrh
 KSy9nPhS9xF1OPc+D+YZSl1eVqaal8CttoxTr9RXb2Wh5jcWySC3sSYo6SOnv+2mfI+JxGszJWq
 Zwj77axeHWrOfEaeXZOQvxDIy1G0Nz+HyM40G7YeYYZh1KMDUZaj03uEiPgqTJ9WLCZsrDKvtCQ
 oQerSB6s0AJIc9LC97kqx3xUv85UGIcYm/BiB29utXUXiwq2Z68TOfv1fX4edcbatCf+BQBeOJb
 Ciqz3frq5zTxiF5kyY/RNapbkUAK1IjkTrR1kYVRCCpnilByXYn6LbIZeLfvO+wOwIJhAGgQeQY
 lqR+EC9o9TyO/QPeYd/FjSlA/U6BylXkCBA793Xft/rff/pNckD3g3u8Vd2TlNC/TL3eqDTrRpF
 VtK2Kc8+sjnN1Wb6z1FZz1LPMeOWA7Xw6K8cWCmYM8l3EC6GGrzteTxi3LtzeePvg5G/LNCS+Bf zR3t9h5T6Sgnf/Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Document established Devicetree bindings maintainers review practice:
Properties having differences per each device in the binding, e.g.
different constraints for lists or different allowed values, should
still be defined in top-level 'properties' section and only customized
in 'if:then:'.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/writing-schema.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index 470d1521fa17..e0859094575d 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -165,6 +165,14 @@ The YAML Devicetree format also makes all string values an array and scalar
 values a matrix (in order to define groupings) even when only a single value
 is present. Single entries in schemas are fixed up to match this encoding.
 
+When bindings cover multiple similar devices that differ in some properties,
+those properties should be constrained for each device. This usually means:
+
+ * In top level 'properties' define the property with the broadest constraints.
+ * In 'if:then:' blocks, further narrow the constraints for those properties.
+ * Do not define the properties within an 'if:then:' block (note that
+   'additionalItems' also won't allow that).
+
 Coding style
 ------------
 
-- 
2.48.1


