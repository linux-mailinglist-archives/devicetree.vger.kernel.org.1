Return-Path: <devicetree+bounces-182664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E62ACD97B
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 10:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 891C1170915
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:19:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8331F28C036;
	Wed,  4 Jun 2025 08:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X0oCrcmE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3A228B7DB
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 08:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749025147; cv=none; b=mTLgJieXzJROp7ZwwJ/sLlcZotbzR+0E9qFNt4FyRhpEELmmJ4DN2sMwJZC4jQttQIe+9j88aluJkwKQX5TUPCsFyysL1O6i3mMglab1z+qLms218+2eHKKt1pL8d2cF4ZFumwzqCVLiBwsD1rrNzU3IhWz0PPXV4fuyr9ZACV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749025147; c=relaxed/simple;
	bh=IFPSQadsyVuWCW6Z7V8p02U+SDBLDJJCiSS1/YNnx0w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=myFnFFLhFGHyUXdTfCkWXWRT1PYPoaC3TMerGVuBcUKt/NJCzuhrRybv7FNgS5rAZYk1txm3lhfow8kNNJaLAGHdFVyzY8ngnmQ9pqsmjR8svSev9ZC9haR47wv0e+NFXUUbKmew7LyZ2SZ+EFENhSB9YqK3EQ59jqileT0jfDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X0oCrcmE; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a4e57d018cso1036610f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 01:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749025144; x=1749629944; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nReq3x3mLzJIoYpqfUUoq+5kM01IVYNH/nG0bWa6R4A=;
        b=X0oCrcmEPVZUAJHlrLrL0uVWrdpd7zuI9i/sTWHWrogW/gV+zbeg/ScWPeavMO44Wr
         4GpBbhExUJ/CFMJThQ3HZ8Gj0CjHpKLPhpi9odjxM+x597cbpahqtDREtH414bz59/KK
         jew3L/nnUbWugM5i1rK8q1/kpl9nKue19KOAJnc82H/ngswsIKj0Z4vEDhpRtJufu1yR
         NZpLSontTWca8tYWpcDcAdn/8JE8eH1syxn2XHySgzzjdF+Tf9hNB1sHKRgpkKKEZL1c
         R8354tbaUL6CT0loc/GYaT6z7JQXAqOZSH799z0Ib2mdwzyMkrGaPm7KQjkfTFnN8x8E
         RbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749025144; x=1749629944;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nReq3x3mLzJIoYpqfUUoq+5kM01IVYNH/nG0bWa6R4A=;
        b=kNMQLnvgFXT25srbIIo2210VM/OwnClcYaXXpiNJFGFq8cRxcCmb9luHaQ0soYsX/W
         wUyTa96prZ/0vwTYBOD7nWk8aYA6ucspmIFJH8Elj4JGBILGZH4cn4Fhwyew8WS7/Xrl
         qFZqvlQJuG3BX81vcPdsXM5SmnXls6/DTDdVPtmri410aOOiAQpxJcQfQfnrV6Y5NsQh
         T1RCpdKEf/Q/ZEagfeyj22DnCT9YZqiSZl0yn0owlgXJcDzPWoZEeEM5ZucOQw5lmz5f
         CscbzYBUQ3AaRPEnnEbCgOsEK/jFBpRtCfgCzheTY/pid4HisEUg1eGwi8yzS69Tl3/D
         NyrQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7wOazi6nwCuy9kQ/9zl/icBkpcWuwtn9Z93N2keRZkdcScTw2/Xsj1G2pBvTJ/EGAq8t8y+IvlyGV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpx46Id9OtxTV4Dirn1b8TCCzfVlmJBSfVFzf/Jrdpec9z/Oo0
	dxwb3+NwyCfV5tNqXIYVhcTSbmfsaQjx9YopqdTWQi2z4tToyYPFC42mKrjKNE0u0gQ=
X-Gm-Gg: ASbGnctRwk2h5hiSnixqlopMt3vTutmEYSx5c7GSoqg2Vd/F82R2HrEAlcMQZFAiI6s
	G6XcYQy4lfaudKk9yaXmN3VjFP/kU/Za3l4ZUTL8aZm5K151LGpHNhr/WpJ/TfmynwZKeaXtMWj
	3vlWACDgjirdIctP4JQg15UWFQNeet/YoKY3QfJqEQs9hgd3E4nOvaW+zT0rmTrQtpdIGiLJE2H
	QpBldoIWf4UGZmia65FU9O/KJq3rQEXHSRwJcdzTPis8JJCi/qhkMeBfI8XCsqmJW9MIdg4Zhx6
	hsATlonE/8UiY0sCVJgt+/YTW6/8Wc2xR5Dfqq3/Hk9eZqtF1mZLYxkQhgCe3e9bHgdW8rEvPQA
	Lxg+7OiFPkxlIN5W5xRfb2Q==
X-Google-Smtp-Source: AGHT+IEnpaG3oOnE5poQ7IhYHb4mJQYoQzycH8HVLkPkIolvUsneNNj+/e2xIJDxjFFpSDJlDnn4Yg==
X-Received: by 2002:a05:6000:22c2:b0:3a3:61ab:86c2 with SMTP id ffacd0b85a97d-3a51d91f3abmr476032f8f.7.1749025143751;
        Wed, 04 Jun 2025 01:19:03 -0700 (PDT)
Received: from [172.16.23.13] (adsl-84-227-104-5.adslplus.ch. [84.227.104.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d80065e0sm198301215e9.29.2025.06.04.01.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 01:19:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 04 Jun 2025 10:18:22 +0200
Subject: [PATCH 2/6] dt-bindings: power: supply: bq256xx: Add missing
 power-supply ref
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-dt-bindings-psy-monitored-battery-v1-2-7f755ff75218@linaro.org>
References: <20250604-dt-bindings-psy-monitored-battery-v1-0-7f755ff75218@linaro.org>
In-Reply-To: <20250604-dt-bindings-psy-monitored-battery-v1-0-7f755ff75218@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Jakob Hauser <jahau@rocketmail.com>, David Heidelberg <david@ixit.cz>, 
 Dmitry Osipenko <digetx@gmail.com>, Tobias Schrammm <t.schramm@manjaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Chen-Yu Tsai <wens@csie.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1203;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=IFPSQadsyVuWCW6Z7V8p02U+SDBLDJJCiSS1/YNnx0w=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoQAFt+N0m7bsLQZOmwggjQtogl4sB3RDEZ0sn3
 fGkgQYDMG6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEABbQAKCRDBN2bmhouD
 1yI5D/sGIwA3M2n3+O93qzfaEWgmsvbOlurGNsIa9pV3XL8/c1U5CK615Uy7BXilJWUzHkrxEhX
 oddQI78jJyL0SY6RyNSurUstOkjwo75i8z08q1mp0/G3+uIHp/rsByB0DjcxIg40ftCqwDlPDVg
 NdZqF5egykcSiBw9s93kuj4dgwfJnTiVu83UsSYPzeOhobXZojRwpDcN629DKTZyqGV0SXKz+Vw
 UrranoW6RM1EtBDqH31/TntkQ3+0QJvwoqB6wouPeVNPwAZHl48rD5t6RYXHROukrTFGJFhey1w
 faE88+sCcxhg0PcZ8XIQBwzMES9Gb/evF8cs8WmSgWIcCSCoSHQObWBqj8r2e+bwGg5uF+cO07D
 XwGhODz77Nkk95uJJS/VUrxnusOq8+JVgzMWA9/iYU8qx44AgeXfGWe7Ie0ZtbN42m/m8qE5Zx9
 KFaWDkP3ssuYwmmr0VogY3W3KtCCT0cwjRtW/YCFXuvxRdFfsmWY18JYcTjDhBhNZNhsnvr8gWt
 SXNv3x9N0btDGaBK/ghoWblHJyC6ZSm/TiBOI+IVz9OshtG5fyFIcvIzUJWJUdpaAxF2jNVUsO1
 BII256yDOrwQHK9pb2rKYf/APmB4I6VNzflscrIanY9YusdLqMCepO0l71eu/RJfB6eV1UQNIbL
 85o5hNP635Z+Y0A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference the common power supply schema to bring the definition of
monitored-battery property.  Drop also the obvious description because
it is duplicating what is in power-supply.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/power/supply/bq256xx.yaml | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/bq256xx.yaml b/Documentation/devicetree/bindings/power/supply/bq256xx.yaml
index a76afe3ca29922fe73da12126f9e107a4fef270d..8cee37b9879e2a7db9aa5514e9f065eb9a6a6ead 100644
--- a/Documentation/devicetree/bindings/power/supply/bq256xx.yaml
+++ b/Documentation/devicetree/bindings/power/supply/bq256xx.yaml
@@ -58,9 +58,7 @@ properties:
     minimum: 100000
     maximum: 3200000
 
-  monitored-battery:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description: phandle to the battery node being monitored
+  monitored-battery: true
 
   interrupts:
     maxItems: 1
@@ -78,6 +76,7 @@ required:
   - monitored-battery
 
 allOf:
+  - $ref: power-supply.yaml#
   - if:
       properties:
         compatible:

-- 
2.45.2


