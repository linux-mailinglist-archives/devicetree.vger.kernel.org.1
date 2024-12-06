Return-Path: <devicetree+bounces-128069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6885C9E75F8
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44BD316BFCF
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 386A21F37DA;
	Fri,  6 Dec 2024 16:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LZ5VoBHc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683B71F37B0
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 16:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733502666; cv=none; b=REnbVbwNCIlG0H3dnjiVBPkB+T+4Yok5zm7UyJlyUqxu2Flj67y0aV1f4b9SgoCUxmM31YOTzG29JwsQXUui9OG8t3TAuJ5P45nNOgDzo6ovjq7A62s1jtCZZPtYd6jWYAQafCvMclThKHrc4yLB3+TuxigR2YKzq9rzk8+Ob5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733502666; c=relaxed/simple;
	bh=Jp2ObEzqJQpaKbhTocAaM82TdjXKoBGT2+8/pE/oY9Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dXcOwPkDAtN66QyOkjvRWUaDhgMmoxDuI1+g3r7lpW/fElYzsV8gTqQyAK6Yno9e7kNDGSftIIUWQS9TFWI9PExZ0ICd1TbDYN9ZFQDwX1Tjt1uhqbPS9C+8/t6FMvPUM7peplzxP3vvo4CTz7qFBQzroe9TzM4zP4lrCSA34hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LZ5VoBHc; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a9f1d76dab1so68311066b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 08:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502663; x=1734107463; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PKgkddTbsb36SqzZl1dMALspeUepmvmFxGiaTIa2E3A=;
        b=LZ5VoBHcwLIPmXLWoqvoD5UnDX1YqYkRUe6j4i5j9Vo2vHFJ51MTseoZJAhbq/o6SF
         vYX2xeL7JAb1/dr5Atg73Paze+6cFyGPFCydRr6M8lwcxYu7qK0+Xc02G6WmPYbJI+Jm
         2COGbCLvSKXBOMKiPYhWQIRre3xyj/D8FLI86Skth7Y6qCWcMMQlZuv364xFayTf3rfm
         TOvSq7cSdAEeZjyFvLMdtJZXpqpJJIukrfBlGlQ7/PnOb/n42st6bAEf7t1IAAO7qOhA
         M+iMJ99/GkOG1bO0dT1vaNBEFAE0JP+dZWMLOwWWjvRNIQWU3Cw98EZPI3NycjwJU6IO
         1TLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502663; x=1734107463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKgkddTbsb36SqzZl1dMALspeUepmvmFxGiaTIa2E3A=;
        b=nCdHX20XaxF8OqHvp/nMX+Hq4/a7VauRLv+xcRqDhmX0m3BaLy7gFTM7gckx8Udq2x
         8QG+Pby7MjbCmGYdDvZlYh+nXGSOqUkkRVeaz80JSKI8AWyGEdTjnnLcnDWdWF2E0DaP
         CV2rQPsxj9VAUvzG2zNGqlQlFDVDPc6BiWChmWKp4u9RwxCnmQ+TMGmVaBi/H9gO7v8L
         O2MAr19RDiJkrXQPsZF4XVGUBrW125bCaAiIDUksjXL0qb20NTPKCMSAWSe1oszwuJCa
         DDRBM9gKmQg3aSDV7q8/FAgCQrmoX7cODWyjSSxWofr4ROWqCED8R6sFjuYw6BnlaN0r
         ObDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfIB5zIlUrY25dp+575iaNicHLdEw21iPOZMx2a0jazlbHAlLDJhwPi0n4vaeoR/mjOrc01Mq3hq7X@vger.kernel.org
X-Gm-Message-State: AOJu0YzkRr0Gl33t+V3MiMqkJh6h35snKyKMZbu76o8QzHHCTbFuSRSd
	MlEOTeDWX6kyso0vRXQ0ND4oxixnKgrhMv5sCZrRymf005o+ssXtFO/LMDtpbxE=
X-Gm-Gg: ASbGncsiJp4rEdrfLVBtzq06WupM5o0feDWJuAN4B3iFV+r0hHVyfgxm0uXz1m/1rEC
	HipFLOGo0qmrgRjdSZ5yhz34cUx2tj3lsly3/q2AJTZ04v/18GG57lchcHvQBOh1t/r0Ji+KyYA
	fkeq69TG5UZmTY9gD8u4K1SoDDVRIjktoxx/WAgcV6Rm5XbwP+i8ieZujIktEPohau5H/N1LQkU
	gRA5+AEnwoYf/PVu0ktngx/Fdu+Zo61CtChDloip6gx6ySfoghFuugebxuqQnJcq9gjy+JwwNIv
	fYm+oR6Tv40BVw8xoHhV6QSp7j3Mg05Bww==
X-Google-Smtp-Source: AGHT+IGRlX7BIbgKcq4E8LlKztNa00vBgQAERS4YEdJ5MYW+4Wqp/mGqY/4IqsX/I0DaInCg04SuNg==
X-Received: by 2002:a17:907:7841:b0:aa6:32c0:5d05 with SMTP id a640c23a62f3a-aa639febf00mr320394766b.13.1733502662697;
        Fri, 06 Dec 2024 08:31:02 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:02 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:02 +0000
Subject: [PATCH v4 2/7] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-2-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

orientation-switch is the standard declaration to inform the Type-C mux
layer that a remote-endpoint is capable of processing orientation
change messages.

The USB PHY on gs101 needs to be configured based on the orientation of
the connector. For that the DTS needs a link between the phy's port and
a TCPCi, and we'll need to inform the phy driver that it should handle
the orientation (register a handler).

Update the schema to enforce that by requiring the orientation-switch
and port properties on gs101 (only). We disallow orientation-switch on
all other supported platforms, since other versions of this phy (or its
system integration) don't currently support or even need it.

Even though this new required gs101 property is an ABI break, the
intention for the driver is to behave as before if it's missing
(meaning for gs101 it will work in SS mode in one orientation only).
Other platforms are not affected.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v3:
* update as per Rob's suggestion (I hope :-)

v2:
* squash original patches #2 and #3
* actually disallow orientation-switch on !gs101 (not just optional) (Conor)
* update commit message to clarify that the intention for the driver is
  to work with old and new DTS (Conor)
* collect tags

foo
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 1f8b35917b11..27295acbba76 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -114,6 +114,8 @@ allOf:
           contains:
             const: google,gs101-usb31drd-phy
     then:
+      $ref: /schemas/usb/usb-switch.yaml#
+
       properties:
         clocks:
           items:
@@ -139,6 +141,8 @@ allOf:
 
       required:
         - reg-names
+        - orientation-switch
+        - port
         - pll-supply
         - dvdd-usb20-supply
         - vddh-usb20-supply
@@ -198,7 +202,7 @@ allOf:
         reg-names:
           maxItems: 1
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.47.0.338.g60cca15819-goog


