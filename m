Return-Path: <devicetree+bounces-95060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2D7957E4B
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 08:38:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F3201F23DE9
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 06:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F3871E212D;
	Tue, 20 Aug 2024 06:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="etg93A3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6B81E2113
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 06:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724135491; cv=none; b=IJNz8oOo4E8kgI1pCXrk9+oHy/XOw4wY57N1VW0SWPTU720taSQBHXk6OuQVMyG23WvKnX+Us6MHsuf2sRUi4Mkb/23XA2+2wb3RHfmAFbi6Yc1grCwkBaPdKk7/kN6TADzmEHqY/lAwTig0sd9WcRwzKDMo2BtiBUE9NgNidvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724135491; c=relaxed/simple;
	bh=sXqiiQ8My1UQHdF8XP8yxQIGVVpVwbUHO3wz0fBARec=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jxbUft6vL591Q853PSKG2HSBR9zwQQLHOkbaq4+XnvBJL5k+JdFSXL65aM/xmvme0PNQsxvL82oD+jHyNGONemvuFVAEQalFWLlaMy+F75jIviXA7vELV+8/WSadSYmq5jJAk9vCQZ1nvgx5wuB+vMl5HLsxxkKOxbqRKoUbuJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=etg93A3a; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-371a9bea8d4so1527155f8f.2
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 23:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724135488; x=1724740288; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uVW3Gyp1u8xh3tJP8cuhx0/w5djPTqbmXPb9/SDuAG8=;
        b=etg93A3a59N3e2GmFSnmOCBeIR2G96/NFEOSx3wvjqVsFwlZEORs+sKn4rAGqtD0VZ
         SzUwiX9fTAl0UFp8hYQXjioZDnmUcBosuKAA7EWg0KouIoUnG93GWGBmyp8IcXES9Efi
         24YlJeJ0xxok3rZJDyLHXHqhntO7vEgxN3eRs6+ksnH8YS0A2PMpxIWFtn1Qs4DqP/g1
         YA3VPdTz0UGI7fAii63r6oqvowRxAkhwgzb8jFUC2t/sVltSN3XyIxmQRIf7Ho6Mhph4
         P8DzfV1+axwyt9Cq4tnRJiX+PisE3x3FMZb3gK7S4zbceW74IuOQ/sNUCyJVgtDZukFT
         Td2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724135488; x=1724740288;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uVW3Gyp1u8xh3tJP8cuhx0/w5djPTqbmXPb9/SDuAG8=;
        b=KdDuNZGHFIxCcuA4E1hhv/2ZamB3va0IkR8In894OFv1pOiMjBEEHCp3up/xugx0p/
         awSAIxxW7gqXYT95kMmgVfllm2z9U6Cewm7LSeIXq2pBrvDmucxuReuxuL+uNU0Z7rFR
         0t87n7BgCE2evbSryoFuL8Rap1djtrEnS7+jYkuhN9A3YhzkiWlFdqBQvMeGHxzZw9J+
         s1Ih4iP73GcJx5j29YCq31Zv0unyA6qXV3R839Z4V+5CKBusIVHrxsVpw5MMFy8jG5PB
         XSkjT8xXZ3Hka6D+ebvQ+ItsJCc+I2JrbxtCHwkY00KP1N6YsLtcSeTF0+NiYOtb/ZqV
         mx+g==
X-Forwarded-Encrypted: i=1; AJvYcCX5Z0rWgB8sfHSLJ5Cjq7kcMqAGGeEmOCLFUAMkELpr6KVyBh6YM73evIGveQz9O3acXRWC0SGbugL6dhGuwl1AAz9wcLMYSwXUig==
X-Gm-Message-State: AOJu0YxssymbYgb8HH66b16ygPxXu3+qCqcJAtwIr1fVYr1zEykdSc4b
	t8/mcU3GdKh4HZFjTuErP8VS1n1Uw2pvtJ7lAKidykc2W36QJwOOrvSwNMxKO6w=
X-Google-Smtp-Source: AGHT+IGqSaOTtMAFkFfw+MY+BXXMyKz8R9RHIlqmZAA07Xvp7gk8CM/mI6HP1sjFsVSnwGZxMAECLg==
X-Received: by 2002:a05:6000:186:b0:368:669c:3bd3 with SMTP id ffacd0b85a97d-371946b1166mr8512834f8f.48.1724135487564;
        Mon, 19 Aug 2024 23:31:27 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-371a937a694sm7959432f8f.65.2024.08.19.23.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 23:31:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Loic Poulain <loic.poulain@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-i2c@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH] dt-bindings: i2c: qcom,i2c-cci: add missing clocks constraint in if:then:
Date: Tue, 20 Aug 2024 08:31:24 +0200
Message-ID: <20240820063124.9242-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Top level defines clocks as variable from 3 to 6 items, so each clause
in if:then: should narrow it further with explicit min and maxItems.
Without minItems, the constrain from top-level is being applied, thus
qcom,msm8996-cci allows between 3 and 4 clocks.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Older dtschema behaved differently and missing minItems was implied in
if:then:. However the preferred policy is to be explicit about such
schema - define strict constraints in if:then:.

Cc: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index c33ae7b63b84..7dab3852c7f8 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -130,6 +130,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 4
           maxItems: 4
         clock-names:
           items:
-- 
2.43.0


