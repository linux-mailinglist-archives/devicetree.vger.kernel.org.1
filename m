Return-Path: <devicetree+bounces-127220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B41C89E4E8B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF076188072B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 07:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D0561B87D9;
	Thu,  5 Dec 2024 07:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cXLASvK+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F831AF4F6
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 07:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733383998; cv=none; b=aS9MrC7QNPZgA8mXi9TDMMeaYn3Tc4bQMRPbhzs1WJt4ayn5eyscHdX+ILgBybXkW+6/D0WhgSCVU1ZW3X9Cc/qjKOlchBSma4uVm6WvElZfUAa9oxp1hHqGEENuhqzmMqeHl1VF8SncyjPgohdk+bSjOw4g0lRW1Ls+6NBmOYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733383998; c=relaxed/simple;
	bh=Jp2ObEzqJQpaKbhTocAaM82TdjXKoBGT2+8/pE/oY9Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qvjm2TICCSXqu9jQ3JpVNfjshjZAVBvBlpsEYSw0Y9UHVIHGQzOUFjYthJCZbF7Py2KMrCZh/EHwE/1dTuPDs9QBGx3XPJ5zK/ZjEVmzvrcmA9tqSt4HbiMlSBM6RiMeYsVBs1UD84ClE+YI7qaKdDyxCUUqUu7DjhTP5UK6ZAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cXLASvK+; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a9f1d76dab1so110875066b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 23:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383994; x=1733988794; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PKgkddTbsb36SqzZl1dMALspeUepmvmFxGiaTIa2E3A=;
        b=cXLASvK+Km+N5kXgYqdRMahJFBxycETuH2gwM8NTOqkkpumbqpK4tcH3yspfMM7nEC
         sgPr0H1wXUzjLyMcVcyQlpTlePVU2LA8xwS2H9VpvyVwnnN181+7i7She3Kk+pbfG5/O
         z4ICU9Xj/qjDmsC1g0+munHBn2kDbIiKKatJPZUkWlt7ij9DmBYvH7ycFadVj8xkZP4d
         FJNxkFlOksBBYrcqPQ+ODsM/TR9OvWj3pTX8WOnwcloqEJtg4J/8KagljAvcBYi2jmTt
         PmhPhT+1VR6PH12FjhnmuhlVGIsg9vPtUyS96H0DdZza2Pw9Q+dIrWi9oEyBmUn4jsmu
         fIZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383994; x=1733988794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKgkddTbsb36SqzZl1dMALspeUepmvmFxGiaTIa2E3A=;
        b=fa6DbvuS1DfqYxY2uYDjQun+ii61gemNZ7UCU+8fKsw3po8C7J76tlhaqfJKqLtH0l
         k++h0tnFxzg9y7VEmp2m5ChRPnL59HcAgLgDrgfXv9308b/gQI0G9V+KA7eyda+9pC0V
         frWIAR8Lq/jv3JniucfpNC05vueBjgDSj38sFGTl1I7mdj+UHbubfNELwVlv963nBwRK
         1PIK/Rhku9wmSDhBS/OT9f27SWc1xUR8wHT2uUfw2MG1CzjIFEGLsE27+ayZSOR2HX3B
         5rEe4XMgeFsraKkrvsM/4nhkVsMkKqqUH0omCXSyjnWJDvNFyNTk/O3R4JWKyHUJeLgp
         XN4g==
X-Forwarded-Encrypted: i=1; AJvYcCX2TgwCel4bOTA/pqPI9vUveDIC6tWeOUNAJ9q86NEofv5bJPWVqXKiqu0RZy60w3IRlKFuyo2RSN+q@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0fJtRdMeGHuuDoq/jrY1moALW6krBsCqJzXmjD//Qej2/cbX8
	oWPZJwLrQnAaE73z24hc8Aq5IkHiYTm67Pwtu8El0tA+24bfgoX5f0NntYMuKaw=
X-Gm-Gg: ASbGncs5AEfYjiWl+tqV3dssgE4ClEuL3xXObgf7cxUZDbr1rLH1sA7pSeAfrXUxyUu
	jcgZdan5QDtQA03WubF2biNPD5g4Vcy45mXGWVsvzfWiQhHy2u5XcNOJKY341HZLLIoxDE+3Iqc
	vdlZwzjuKzj6CryniFOBmUouWKJ033OmGgwASD9FwIXMtIlq/5Ku8gCA11Weyes7HUDlKa3kZTb
	mPxhkyPR5+ffah/FlQOaVxeLiszCXuP3pZCuGZpEHZvG9Io1tDzdmDT5pdWltrxuJaU3lVCStDp
	+x7l3jyx6ihJUfIK5OCNNsHAiIzTeB4LgQ==
X-Google-Smtp-Source: AGHT+IGYmzZiBrRm65PFSu05U4htcrBOv9KSue7aaItOd1Hb+mwmtbhHeeF7rqrAtH/3fEru33bthw==
X-Received: by 2002:a17:906:3d22:b0:aa6:1917:42e7 with SMTP id a640c23a62f3a-aa6191743fdmr306308166b.22.1733383994490;
        Wed, 04 Dec 2024 23:33:14 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:14 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:13 +0000
Subject: [PATCH v3 2/8] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-2-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
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


