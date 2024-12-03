Return-Path: <devicetree+bounces-126566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 213DE9E1D53
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 14:17:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03B16B29FA3
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFE011E571C;
	Tue,  3 Dec 2024 12:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bdO4b7BN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE5A1E492C
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733228035; cv=none; b=CTQq/fFbjAPIzRHQ7ew/fjjelb0v7/ANqORhHbXbQlUe2lLvslxtL45GCpxOY9o9qHex7iPstap/qBOxtrHKUd7cAdFJCpw95khOFaKRTybPGLA/Gf093LQW6oSgZjzdW5eYkPOVaIXTCUSYjwyQk+vEHc0z8O3eHvKwJyIIxyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733228035; c=relaxed/simple;
	bh=W+szB8DHIS9wuynuF+WKAS1RRUY0K1c/z545AfxmLt0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o0k8cuY9bDZpJqWqIw664adc3jaaLr+2NXfkHuW7HGyksmnDPIVmMJlaUKnUNXYr3EQprYL3QVpST/c+Zsvupnd7VZpBplP3IVNTEuyi2z5afB5uzD7552cqF/UxwSCs99QxKs3f4/1Qb227hJvazh6JQit4NPA1l/YgWf2FmQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bdO4b7BN; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa5302a0901so660570066b.0
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228032; x=1733832832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mWpaKqqVYEb45LFrVAOE9nPtLWbHCab8i1TbI6jQ3+I=;
        b=bdO4b7BNGjxldtopbXr3OfpwxBtDEw0rKeVkOWfFxQDEb2wF2fvj/KbiAlAYChZxTC
         LVRDR+1uzgHK9m/Eg1m96b+cfTTyASByYv8gx25Cl4pSLS+6KpFsCctZo8T/M8VAa9ul
         f4rahCfDVUEtmiX97cPliYTUCHZEwCUTYM5/zN6p5In9V+Prf3ohUQLv/skHm4MKVamh
         Cv9V3Kt1Rx/NtB39GOgCJvheJb9J8Yh4n98Mk3WyDPwWpoyQHLzTzsT827vl6Qmxmr9t
         7R5cpra948Z58253O18oTyT9XKcM9QAwU8aWsJShG4STPTDAiByLfZ6lQOVk8H9iKoqi
         v/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228032; x=1733832832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWpaKqqVYEb45LFrVAOE9nPtLWbHCab8i1TbI6jQ3+I=;
        b=UhWhX1Dui1qiy+ncZMj8Mb+woslKgxap+WHXTJ/eiGcMG/7NBE5tQPxSO5EZ6rX2zp
         j7gORmjG10SbjbkP1TdvIucYs5UZnThFp2+keJ/FQNHpsgJLr6vA2QjEa8slejdoeSrt
         GbsLCADupxjLM0ET+RAMY1k9msCb8F2jyAqL7UAQNpDliqzlo9nPOgh2InnfDhxVrEBV
         V0kNsCAD9FXT8e5rHTxjPLuaougYgTsp/utAWmZcDZ4GMB2byurRqg0AyJMNwXo11mSt
         AIDhYR88DHD50Zec6oytlzR4+f+RhNE+mREzsqlbt2NCxsRa1nzpInrJ30iAbGCTKXRm
         3D/A==
X-Forwarded-Encrypted: i=1; AJvYcCUBgvHmtVqweT7VOV1bJg9gc2Y4AfpZpLSxPbEwMPTmIRRVCNs3HL8oB7XHfSAv30eLMRsgJyju/ULL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy31WlKwWQKq8aBmi0MSIgORyN0ZPZbrLCzKfWerXP9vE56tanp
	3fQvvqzcumL5c4jynN+POtQPZIV7kr8VP/6g8e7tyo1Me4MeoroLYnfBt6FF1tk=
X-Gm-Gg: ASbGnctJbCkNBnoMF/FvuRMMltJraLQWWEHnf30R61Uo9A4Zoewqk1evXfGoX3jUuNi
	epiT/xUwhXl+gX3Go5R8EKaAl5K5uxMW1sHbr/ZE7iO9C7mrTcJmAIlgrceI7DOsADs6qsCGATp
	gEzm5vzZvUFcN5+VA5YQyobr4L1i52QnJaOt1lGwcGQB6OFnn8zjm1CnhFV5FZFbfdlbG9OAZA9
	+0ftvM/9zCPKwkCSKP8a8uKXrhfJ9w8kHKxXvqQZA4bAB+ItvumrIT+YfIVD5tIe3r3Bj/sFMlM
	S587LT7FeviNI2x5BIuUEJCfMTaNvntapw==
X-Google-Smtp-Source: AGHT+IGn4eg/NfZJAVu0hqE9cK2q2j0R5oIme9rHukh+yJlN3vdSnhKD++AzSGAOtBHFlLtbaiKfNw==
X-Received: by 2002:a17:907:7632:b0:a9e:df65:3a81 with SMTP id a640c23a62f3a-aa5f7f4f3bfmr155819366b.59.1733228031882;
        Tue, 03 Dec 2024 04:13:51 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:51 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:50 +0000
Subject: [PATCH v2 2/8] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-2-40dcf1b7670d@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
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
v2:
* squash original patches #2 and #3
* actually disallow orientation-switch on !gs101 (not just optional) (Conor)
* update commit message to clarify that the intention for the driver is
  to work with old and new DTS (Conor)
* collect tags
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 1f8b35917b11..c1d16254aeec 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -51,6 +51,9 @@ properties:
   "#phy-cells":
     const: 1
 
+  orientation-switch:
+    $ref: /schemas/usb/usb-switch.yaml#/properties/orientation-switch
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description:
@@ -139,6 +142,8 @@ allOf:
 
       required:
         - reg-names
+        - orientation-switch
+        - port
         - pll-supply
         - dvdd-usb20-supply
         - vddh-usb20-supply
@@ -146,6 +151,10 @@ allOf:
         - vdda-usbdp-supply
         - vddh-usbdp-supply
 
+    else:
+      properties:
+        orientation-switch: false
+
   - if:
       properties:
         compatible:

-- 
2.47.0.338.g60cca15819-goog


