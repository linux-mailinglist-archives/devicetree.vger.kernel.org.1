Return-Path: <devicetree+bounces-182663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B69F9ACD97E
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 10:19:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD0F71886F58
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7789E28C004;
	Wed,  4 Jun 2025 08:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uw26yLVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B6D24677D
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 08:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749025146; cv=none; b=luR1Z4fO3FFtOfstgDUA9JpiUxcmQeJ6A6rDoEwMla/J7j4OVAwtaDvuNJwbsLdJSks05+fQ9sl8+WCvSQW+1oRt7isdy6RMa/GHNvqerdhOae7wnM7Y1jrudpPEsJ9i3SOpxrWrvYEXu6iaIoHcvpsMXmNtjeqFve/9afUyJZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749025146; c=relaxed/simple;
	bh=fnrklUc1GaQcP7+Y33nwx3V12HO8N9hvE2hC2nnr3vM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nbzAfOppnfvBAP5Di2pydHQ4UFwwGm/D0vthsji1po9Y/drdrfeciVCT+COZiHIAq7uLjRxD0/OPn2gwvrYr8xhiwPncEwKbmjqcFzdg/jzJnAgmdb1UVyNwgL2I2vws/n4Jt37xNpsNzA+MwW9FGxFvMUBU55XTSPigXFh8pF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uw26yLVI; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a4f7865b22so721541f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 01:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749025142; x=1749629942; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M1A7uqqIlkBgkBqfkGTob+CBHXu+b8vRBZxoe7xNTFY=;
        b=Uw26yLVI0Pyv3LvXvbqh+s/ozzd9y52yqw/aJifsXcgWB+Am+uOLu3FcBWbj+eFYIp
         1rUtd17dLoTdEhzu17489qb6Og1I6uVQSQFFdAwd5IkkGFoi2tyL+RGaMr4vCPjdR5SV
         GPIyjX9dtmGgSWVCzUiIjnLt9mKJpJlOwahdBVuHV2JAbAwf/TYKHjoQsHzIx2iC4lwV
         XU8dcmpqSmfVOo682aKwpMGGBMFjjFAqk7KSR1pyp4gDPkvS4BTMbfZuXOCqBfQ6dNjR
         lfFihSVBzWPoCPI9keGya9EpDOGe3nH5D10g5mW+Tepq8p24PMTZcGHKAKKphCkVOcRI
         TbzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749025142; x=1749629942;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M1A7uqqIlkBgkBqfkGTob+CBHXu+b8vRBZxoe7xNTFY=;
        b=TkJZKrFyXy7EwMImXZck132BMh+e8MWZ+MBafzP9dpcHBSIIlvaygPkeK1JhUu2BBg
         txT4NNLYGne8laAV+bjMJuz7Bx62cUdrtGcVP2uB6LcX47sBFq/wdIA9+9KXtnlzEluf
         VE1Gxk97NQh37eHhMEtGoeLz3+8l08I70ImfTrDy/1KipSrBp6i+RDIFp/QoeLDIZ4dp
         5/qQx9tviaw0XxQXXd7cUHVsDacXJm6MgO5A4HLer3rbe8sjm1N4t8XKl/0b4436pWlp
         simpAfLsS6rore+gdzV1aGUe4Q5DCxOqwtl5COvmtCO++laA9f7heTl8Nn3rWRj6JuL6
         8IJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIYBa3LOabjZDhrimPt56JAE8kj3JRATv/qSOEaOKZrRvi8dhCfakvsk5+HwwhD0AxcUjrbzlowpZk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4IRdjh4ktbFDo9Tghc5NM1jCGIZP3ngrjfY5jrzq8Ofvgmg8b
	lDE2lI3aED8r0exmtIHcb+elsyMFJU5sKJNXn8fYeAq21PbEFO8jk+HA7Kb/k175/JA=
X-Gm-Gg: ASbGnctnnK16Xt8E0IoTNABYy8Jkt2iyGnzJ9pyfuAFKDa10JrFWSbZDQ6KhXMmstBY
	t/co35PjaICNLoFCMARs9GHcK/E0i5PXF6eODE3BAjFr1RdS9tjqXVavFFum+p2IagJhwOkugOt
	BLNFITlWx/3f1/WP8DwZxQoIWrtaWH2JSnqMpZ68cvpp0shskjjdu5SbZyf7iKBx7oa3ltn1WvT
	ybX6/51QwzRgCfKI4U9aRIuBdI9cN3KueibPXmVGkdGKAqNjzEyIn+eVrRz8V0GzRpZOc/hS6ut
	rQATLLs75IOdy8FZuSqg/vs/3nGct1/BvoD9xhCbNHbTxu72o0Of/fmweFGFlgZsMRiqLHEq543
	vP+IzACq7ZTMOoRmnlaX+cdigXQYsKc2g
X-Google-Smtp-Source: AGHT+IFl33lAuq8bykcXiyMLR4zVxs+LFHLZOCJVFEunT1CeWHb9HuZlkT32/YbozDTOSHCpdWPtlA==
X-Received: by 2002:a05:6000:22c2:b0:3a3:61ab:86c2 with SMTP id ffacd0b85a97d-3a51d91f3abmr475998f8f.7.1749025141844;
        Wed, 04 Jun 2025 01:19:01 -0700 (PDT)
Received: from [172.16.23.13] (adsl-84-227-104-5.adslplus.ch. [84.227.104.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d80065e0sm198301215e9.29.2025.06.04.01.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 01:19:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 04 Jun 2025 10:18:21 +0200
Subject: [PATCH 1/6] dt-bindings: power: supply: bq2515x: Add missing
 power-supply ref
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-dt-bindings-psy-monitored-battery-v1-1-7f755ff75218@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1177;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=fnrklUc1GaQcP7+Y33nwx3V12HO8N9hvE2hC2nnr3vM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoQAFsK2uJDwRKj866MbW2yisjVH6lHSeXmCQYS
 ZBz/S6G+lqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEABbAAKCRDBN2bmhouD
 18duD/0cianVCYGb6f9fdarbJZrqFdXP5NHc/A5nhJxoGSv9cRRwWUutOI9ngdsz8HHb/k+w4/Q
 xIrkkcgQDfAU2l5J5RCM1GrxMMFOMRgaTwkvF+3TOoLCOxKwDUSiNtrTKeIIKug0XuD0Z4Ft1R7
 FvKJZ09QLCJKVtM/JoJx8QEjn290zJ2G9BNsbUoHb3f8gaKO0X2LdoTlu+dajzDrZi6fzS3Dg5l
 jI+NNz2sSv3cJMYGtoonVh26Ch9thdEqDxrv91+02A+EUiip1eVZ7xjIubyUH6NvnOHnM/REgnb
 vAZbvTZd5RJ4REx3pdWJKOA1uqmljRqWrwG5LUuIpZQvhNfd8tJxoIfbJkz4S5d1KFyMlpIeVmh
 XwQ7K4QHfbwzpxLPcoiqIvl6UAXx26iOEQrx54Z+XpQ2fVxA0vA0g4fcMOlKAWLq4VcBIQC6tYd
 UJ/qaOPlfI6Dh3GRzxocW+C3HpAbmYpAUORwHMaU+eTQ0PC7xUQIHhVSgX1KuBiT0CGXiwEbI1W
 8MshO5bLgbwG5Wp6Ij9MzVucrEnsiBk1T/OBT0w799AyJoEU3HiNSnQdInFojN7qmY6ff89CWpq
 y2wbQQxcPPWlSuHkUft6MMieqlynbc6TntB3FodMasnuVh+9UJyEOzdUNYwD477FCy8CwWmgez0
 XS1VPaClRVQ/8CQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference the common power supply schema to bring the definition of
monitored-battery property.  Drop also the obvious description because
it is duplicating what is in power-supply.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/power/supply/bq2515x.yaml | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/bq2515x.yaml b/Documentation/devicetree/bindings/power/supply/bq2515x.yaml
index 845822c87f2a4616c44907a5abaa1cc785be78ea..0e99a218e662b8400a15252fe601234bb51cd12c 100644
--- a/Documentation/devicetree/bindings/power/supply/bq2515x.yaml
+++ b/Documentation/devicetree/bindings/power/supply/bq2515x.yaml
@@ -53,15 +53,16 @@ properties:
     minimum: 50000
     maximum: 500000
 
-  monitored-battery:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description: phandle to the battery node being monitored
+  monitored-battery: true
 
 required:
   - compatible
   - reg
   - monitored-battery
 
+allOf:
+  - $ref: power-supply.yaml#
+
 additionalProperties: false
 
 examples:

-- 
2.45.2


