Return-Path: <devicetree+bounces-182665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFDCACD982
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 10:20:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 153E3189446B
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 648DA2874EA;
	Wed,  4 Jun 2025 08:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qc+ILPPR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7111628C2A8
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 08:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749025150; cv=none; b=AoXj0aVRyRWbijS5vYmUJglDaLS66EAn8rArrWmBFsAEajobgXQsd1vT9PoQnIM3fsWcjEMcbcby67KaXRUWQ+Kl+KamRxsiYrmEqa3uYI/vI84lCQ9U/OGifhFfrZER/WFtFYjyxguNjsrxHMa5fgYUrHK7PtBDFz0L+Ygbse4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749025150; c=relaxed/simple;
	bh=DRCW62SWNyHDxET2rFNq/PrtoM5W1wDR8OS8EcSqkBo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BJ/CV/Z6sei/9KX1CdhxksQpjaYnd5l9wJS3SfqsTxandghk91LB76t4xHiSg1C3HFjBhQApmlLxpyEpkq+LesaIJqoLM5/PqWKRCqnFtEOULRjgf4f639b7DpSix2d4VqIOMl4tIU9vtDQtbweeA2Q8oMyJMQUtu0hdpyO7zlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qc+ILPPR; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43f106a3591so4517045e9.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 01:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749025147; x=1749629947; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ktjNH4EI2pmLPKIOf3AQOMvDxxrVNBtl13gKtpvYvc=;
        b=Qc+ILPPRs4ChZECCDSkNvit5vJp0sqLRdNHWSsMOEO7MlqFiaHnEw20VAut756Nvp+
         B+gtRP+KElCykPfpumYt0i7TA8sp8/zFfUFQGQ4NTFWDR/gpS+ny6N7THK4Brciqjgoc
         GfFEQ0bZ1YIK7hqt764yV0Gq8FxsLizMk5RRy3DbsFlrULMSFpd0M1gsbatyHZdYgEG6
         Ijzd5ouGEWquF+LOX1MNDaDY8G1JprEhrp9witK5nXzoeW/n93X7LVsW8Ht0oEbiHs+H
         2Gdd/kZ35F3L5jLkK2ENFHrwThRUCFgTLFIREZBu3Hn4enVEdX/Jf+nbUMi/W18s9K64
         FwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749025147; x=1749629947;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ktjNH4EI2pmLPKIOf3AQOMvDxxrVNBtl13gKtpvYvc=;
        b=VBekGKoBzMpysxEH9IKvnIddrw7yWq9TidPf0R3nbXaSs+TpQ8UpbxLaXQsgPn8ERQ
         7EZd2DPXFkmYXgyPPswu1IjZnGakRV+GmXyD26DbTZnpctKepv3VXHQtuwLEWVVhIpW1
         5//nU+hFGPDNTFyEjhbPwURVPmxvLBRRepC8HkHkY4P8BPz29gbpjhW3VpPtW+3G+BIt
         hEnljquwT/mXM/1XkXj88WxEadpcOxnai4ba4mmgUuOsXU6+aCV/UM+aQL3fJJ5tDKc9
         y900dGkGtZ5ZAlR+K7GQKyEFNCY7VctOYRkhsSJKMyMp6c8x7Mr4LS2eMj6LM168BKq+
         A3wQ==
X-Forwarded-Encrypted: i=1; AJvYcCWh6rhUAJZsPJh0MsgzSAOYNL7rBTD6t2aipTcxzMiMPJ912OC5vVkLvs2X0NdLOYsrbZ9/ocKnj0im@vger.kernel.org
X-Gm-Message-State: AOJu0YyKoQhxV+GL0Xa9ptpwjSbEGn0mZHezxowmQPxEX+xjGix9/jZ9
	lymXJ2rqoMPgjlsXzfaLEk03o/Z+Iqf6mj3Y+F4ud8CEW2d5KfA7IweR84RaH6YgW8w=
X-Gm-Gg: ASbGncs484venGQ9odDJnUmV383hoIArMIvtHxTY3v8nfVkNMt1qUHKRsmZMmEVXrTj
	/cpOXqNUu99huKfK9e2sFLxy00sCOTcOK9oEe8Wm73vSP1cvZEaMlwwVL0d0WgpxG1AYv0Ttres
	FOXK74gN2ePOB/A9zA6BDamDfX+qeD5NylggtHIThaUA3K3ZXe8R8Hj3t72Nte/ZF2KZRngT8tl
	hJeCU+qY+QP1n+0v6K7MCJ6gmmF0pckhvW2pl9fC6niHtvPo4uJoyG1pEGjS+uzRXn7GoZeLjFj
	QHfsiQYDTlXMPXifvpcazgMquSzP7eeLkrYBjd+sESZ4QANw/RhqE7TENfs3XgIS36sIzyPKbU7
	WiK5L5ZWH7K+J9PFJb2ho71tsIY1e8SzS
X-Google-Smtp-Source: AGHT+IHWm1t7JTduLCpEoovyXlPtAsvMlQvSAMC4g4tbCLcRWUMOIPSIrFdKmi3brpTFPumrCqI1UA==
X-Received: by 2002:a05:600c:4f95:b0:43b:bbb9:e25f with SMTP id 5b1f17b1804b1-451f0b2a98fmr5259025e9.6.1749025146624;
        Wed, 04 Jun 2025 01:19:06 -0700 (PDT)
Received: from [172.16.23.13] (adsl-84-227-104-5.adslplus.ch. [84.227.104.5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d80065e0sm198301215e9.29.2025.06.04.01.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 01:19:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 04 Jun 2025 10:18:23 +0200
Subject: [PATCH 3/6] dt-bindings: power: supply: qcom,pmi8998: Add missing
 power-supply ref
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-dt-bindings-psy-monitored-battery-v1-3-7f755ff75218@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1274;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=DRCW62SWNyHDxET2rFNq/PrtoM5W1wDR8OS8EcSqkBo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoQAFuPmVgnuMmnev9C1JSBsF8VSMqeNc7xtVnS
 fpipQ7xoU2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEABbgAKCRDBN2bmhouD
 12azD/4iAT6oNIAIzb6/VKQxJCe6lad3LVoCw0neiAfXBAGTnPfN13L+Tfu3yLSVdB0SA4pfaQP
 2Vx8uWbRCAA1qK5WJapiYh5ThU1jTWqfy0CvHt7ouDaUU5OHOioIabiNhf9blOpSEjgzYcE7Kj/
 gBOa3P4B38K/c1D0v4beEm1aiD4OIn5YOHMvvUPZaR5XqNltd8WttUaBtXawS0Sk2uCm9OM895q
 IPfHWvepoVVB0o7qKyb6WVr2w7G2Et+cuoKIMlVjEIAXa4N6koEbbjOM6awFWvskkoEcrnjXX13
 6OsqjkOCz735ncp3PQtLKxa9ojG523pF0pDuZOgbkGafQwtfMv4re1Kphg/MWsLwaHkYnn/n9LK
 Gl4ek3iGTkOp95BnlNH5XKIMwGwH3dBQi3no+xHXbvf96TH9XoNklTGAcNqavw157ddD+jVqG9h
 gFuAENcmWgUH5WLivB0P/0tbL28bqDbRfaul5HgrqJC9SnKU9DvVtCyH/sxGL+bEDtE/x3cp/5z
 MNg0AEpe//PLiwPyX43Ne6/HlWLnrLPJ2wXn2phUBTzEV2eRw+owaxrM8F3QuIcX+/836H+7FA7
 kvZMBJYNmtwgGYscz4+AOOSp8OIWfh9y0mf3o//+RPogkAEFihUpTE1ZOzQ3/f1F0WEEtY059KP
 wU/htQ9+PLCGBnw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference the common power supply schema to bring the definition of
monitored-battery property.  Drop also the obvious description because
it is duplicating what is in power-supply.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/power/supply/qcom,pmi8998-charger.yaml     | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/supply/qcom,pmi8998-charger.yaml b/Documentation/devicetree/bindings/power/supply/qcom,pmi8998-charger.yaml
index 90c7dc7632c58dc5cbfb3abcde8e730882bfd936..70f5cd6eaeabe822babf567d92b1d7f9124f3680 100644
--- a/Documentation/devicetree/bindings/power/supply/qcom,pmi8998-charger.yaml
+++ b/Documentation/devicetree/bindings/power/supply/qcom,pmi8998-charger.yaml
@@ -38,9 +38,7 @@ properties:
       - const: usbin_i
       - const: usbin_v
 
-  monitored-battery:
-    description: phandle to the simple-battery node
-    $ref: /schemas/types.yaml#/definitions/phandle
+  monitored-battery: true
 
 required:
   - compatible
@@ -51,6 +49,9 @@ required:
   - io-channel-names
   - monitored-battery
 
+allOf:
+  - $ref: power-supply.yaml#
+
 additionalProperties: false
 
 examples:

-- 
2.45.2


