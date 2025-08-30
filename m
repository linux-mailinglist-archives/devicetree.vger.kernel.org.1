Return-Path: <devicetree+bounces-210743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF498B3CA99
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:33:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F7B33B36BA
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 042DF26FA56;
	Sat, 30 Aug 2025 11:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rssioEC9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F982676DE
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 11:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756553580; cv=none; b=p8dQWk/B+dVzna2/lM3/0YLH1/PF25DjSMIA9jtAGTCJH5tRr9RNMoJwWxWNvs9QV6QFuIlnyzRmdoI6ETl9Fm6+jt5+gUpfyWbVhfCKqcdmzU4KUQom72uczNy+l6hOOgE7h9eGnFHymWX1DZ1JK6jiXth4V5N+24YM/nqqitI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756553580; c=relaxed/simple;
	bh=kXo25ot71PKao96MF4jC5Q47IZVAt+tdcJDhDLvaoXg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CU9a1sJR6rLyzSv2QufrmzYgCQKoSIwMqzlMCZtWR1gwWcccUSBoaM+tAPOX5zJzkhysiY2FgS6X39G1IVpvsFsJNm65pz2pIHZbWbfZC7iSiq/o5Xk+Lz6gyQekmXcGiLL2TuRnBQGSbVNQN4alK+IXmvrQma2GTWNrOsgc5Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rssioEC9; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3cea1388486so146262f8f.1
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 04:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756553577; x=1757158377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vFmqnQTGqXxn55WYLK2556v68/MA/H1ggbgVwEpgWEg=;
        b=rssioEC9YMKIMphTqwLo/INDSk88mw57WswR9Ov3925dr+gljefdPhkKuISUsxEwLW
         EwgTdlqWO5ErF+l00y2D2Ko2DAqBsAKPgglniOejRNHw46Xum73R2ULLBIkyBfycv+Oz
         srXJmRfw23kEImEzzPVyWPYTSMHGQHPcB25/YsbybQk/lMhqkUZBcLI6gILU+toRkD2U
         g10PUQNhPnBSUfRYSrI6AGD8X3fWd3UNww5dbPZ/jPmY5p6U7st8eLCu5OjUF77gNMCl
         6/kix/HKftJrbTe661h7FjUp/H+CVeU7Xhnvi2T/6zfOcAhPDImbywC4pnOUZNluc/Lv
         4oew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756553577; x=1757158377;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vFmqnQTGqXxn55WYLK2556v68/MA/H1ggbgVwEpgWEg=;
        b=EPtwAjMZnd4uaSJucrb70sP4a1K5NcExG8974kdVK7turWo8AtgzmDBqE3C9FaBSZw
         tX94GwMiJ2c0Vg2R7pD3wPZwNTz5MmGbVEcSOUBySvYGUrTkKaOV3J8YitQJU3u5KLKE
         8UZFPi9cVQnJy7xQpyUrm2HhQ99ZmWgzAN72QVq+9eYGJZQ2VOlmbw9WlNz0YLdqcnxC
         FFyJOvfwcK4sWPhpRFCyeL3iTJz3SyzDGJAUT1/2IlkvdaLWbBPsA2FESHHXmh75A1Bg
         bmA1auEOzcRZUV5DKD/Gsk+GPw+NnzypotFzyBhxQHP2/i71Q4nLlE6O8qwndgWpGvCf
         ezmA==
X-Forwarded-Encrypted: i=1; AJvYcCXdl9m1GKiAKdWaMlGhIYePGl9sziBdDkt7xQeFHLxkCOZUeuyqX3b01t9cyyVgC2noKddZvWSKMLhG@vger.kernel.org
X-Gm-Message-State: AOJu0YwUrBLRHfi+TVSOXY+1hcL9degbIwdGcSdYslSZNIlu7ZG67Gkk
	0uY9B0f45wgW3Adm06PZHPyhstEZyxuUtiuYTLycwyRc4jehLhfpztz6MeKISccKLQk=
X-Gm-Gg: ASbGnctZS0CB7YD+p7g11SANPmEBeVfeNJpfmkYbk9xbZcPCYBvhT74/TdqkRl6T/Vw
	ZROc+ZuzwwBNzO7fPKjdHZ+qrXWymms3CHdT/yhX+1xCs6bJ1I3sR2hgT7qlIRzCu30vAuKpsDf
	O+FaFfMJuwWWsEExQxllAXCusCiP09P3Bf1Ldu3CeHJM5LVRe8hG6o1ksIgvtIRmZ1gtJpqtjtD
	FKxybVaihO/cn4FuLUbn7EfLlKdoUWGXm9oh97MWcFY7qYDTchyf6Hd9/n/N/oPA/L4A3dW6AlW
	RMLRv3vQqlMTpGPZisPHpOH06BImxEvNzxY4I7ZmYTkT8ab5udA0JTZ+bV2AbcN6zw0qxPc3qVl
	Lz2v28dOHIKiRF2Qs3W3G4RJU/BI5omsQ1yDcZnNsMyee
X-Google-Smtp-Source: AGHT+IGKK/qSnUCxIDpMGOBRaCQakj8d6VMwSyKMl0I+FHgNN+kuVHKO2/oVKVJVRl6z/fpK5Ky5LA==
X-Received: by 2002:a05:600c:37ce:b0:450:d5ed:3c20 with SMTP id 5b1f17b1804b1-45b81f23e6cmr21995105e9.6.1756553577525;
        Sat, 30 Aug 2025 04:32:57 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e7d2393sm75468505e9.3.2025.08.30.04.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 04:32:57 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: arm: samsung: Drop S3C2416
Date: Sat, 30 Aug 2025 13:32:54 +0200
Message-ID: <20250830113253.131974-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1099; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=kXo25ot71PKao96MF4jC5Q47IZVAt+tdcJDhDLvaoXg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBosuFljxKGu3v2hhBhALiaOsXxtFwZ1tXYGnBn3
 xTfxiSjsCCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLLhZQAKCRDBN2bmhouD
 10PLEACNZW39Nn75JA5RBUdU7uRFLAFlwQAQ6FGdpKDD+l8AbufT6YOx7/PBxVjhYlDta48gbu4
 UlLeAl7EQ32fF1mfnZMHRrJ7Js47GliPkqqQRTkbRLSfheo7JYwa5piEB3nT0vxvz95pOIC3jIK
 6Dka65RxK1r/EtTHQga1a2NsL+kwEHNuoIFqwa5QX/8C86fG4RGPsjdlzEsDmRpRgDMPq/swWCP
 Q15I/hWTJNEiHzQRZhGaUuslwpxoxbAC1RBrcf9g5WDcqIzzUAvkWMf8ARez2KIpVTtxIxyBM2i
 AQ4ZL7Jhv9AA7o8r8h0hpqIq+j/WGf/BdVuHVwEmRbn0BaWgMeVYH5UVPhuh3UHvhPoEDogh6M9
 qYnu/EdxJSf/x0pgfx1GD17M/b09DYVf9Lh8RQFClQEW6/xubuuUhK5XvROErwBz31uzaFl9SHj
 svhojbfHpUUWZc4GGQYBLkucUZkWTJL5gVEdYzf34i4z0UbtTe4W5mDQI9u2a6qr2TcjvbTcSYY
 9h0e6+gaxnxSFkf1PfrOoygwuPKXGEwYa/O9hL0MuiFF2Bf++4AywoeM7Itvv8sKFrXC+ZFZmlO
 v0h/yglPvU51VaoQRAwrfqwNxKIW15+JK7G1vCreJxRDhUujE3slFTTC3dkQIr2oq2sq5H+3/wn i+Z6nZNekhuYSJg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Samsung S3C24xx family of SoCs was removed from the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of remaining S3C24xx compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/arm/samsung/samsung-boards.yaml     | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index 26fe899badc5..f8e20e602c20 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -14,12 +14,6 @@ properties:
     const: '/'
   compatible:
     oneOf:
-      - description: S3C2416 based boards
-        items:
-          - enum:
-              - samsung,smdk2416                # Samsung SMDK2416
-          - const: samsung,s3c2416
-
       - description: S3C6410 based boards
         items:
           - enum:
-- 
2.48.1


