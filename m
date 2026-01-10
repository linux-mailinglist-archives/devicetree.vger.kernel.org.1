Return-Path: <devicetree+bounces-253517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7E7D0DD24
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 21:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2148D304D878
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 20:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A37C2C15A2;
	Sat, 10 Jan 2026 20:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="PA/llqiC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DD328852E
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 20:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768075494; cv=none; b=uz6wY8pO35uA+h1ud84wwXlksGgHTgYrbxDu2k4C+2lbbanX1mE71S62bmT2odG9aE1jU7Ficacm4KM53nrApdoVh2BCtCrkly+zoPqKYj9MsqZSW/+zPe8/awn6ZFRK7cySITwiKhMOyA77P6nXt/SE5GwtF4An6zdGh7+M5Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768075494; c=relaxed/simple;
	bh=oK8rntcA4Uv1D0eOoUKgRscvS/zcpHco5bsalhx19Tw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a1TAQid8NKW+myfm9UZ8TirBUndpPP0IOQpsdHcFwtN+85PEcloxD7Tl89eGvROlos7YG0o8SQUUujRgsWs3M+pd0hZTS1pXQQ0FRBDZATXHUWamCGnKdlAzyi1WI3PcV9EezjG1Hc1lgODy5biMiVDd+qk7Xeqy4/TrgGjoZgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=PA/llqiC; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b79e7112398so846214266b.3
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 12:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768075487; x=1768680287; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cAMBTRf7QytTB2jenrGs2RAk4m+Cjs0eBt15JACy/6w=;
        b=PA/llqiCDIXDMLyHMu5wSIZ0MUGeEviHtiwgInEBdyAdwU5a1PQ/DphtgrKHgCtD9t
         YZA/RBxuxF8sgXtIFNHOhq6slqXUACX1x/LGqu5DoRD24SsWvkIOGf+NDP+OtK4ZTFmL
         YApHCDuVl4YoNVE64cASAeYn5o6UoFYgpWRYGGNDS+BHU0zJ/f1evkG+2D6P/s8cNV2H
         tQ5CnLfve6RfkRfrn5NtO9gwsMx9rTwDVkwdGsI8LEywzwf+BxLfEo9DBzAPtIsUt5Qx
         l1q6bclowtMoJZMgjGqxCxVTxfS8Wm2H9dcXUWBRF4ApfxWroE3ZGmg23hTjcgtbCf7I
         PFsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768075487; x=1768680287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cAMBTRf7QytTB2jenrGs2RAk4m+Cjs0eBt15JACy/6w=;
        b=I4EOsy3W84qN6OdGm8qQj8fSjky0W8xpiavEuAjH5nu+FsQfL71FAlhD/gj98laGbz
         L9dktizEG9Cgjj5OTrRlcy1Ufdmye1zY1OkLTDdkzCufehNR0100G2HcbbV10JCC+ChH
         km9MbgPDX1sPVWV4P6J3CT/mZPCvHhf/7NkXS7o44uFTU61ROqbikSbURiU27XhOieom
         AxuYc6jq01AJQYzALz0r/SbU9rCsLUD7yIU23HI3BduDv9NVhdXXEWFLa3TugYU//J4h
         tsM28Vgf6ucmjCkPcFBUPYVudnGu1QWnyKvJMyfjQhhvgTw6i4PkIFsoNAjA7JHfOZOu
         bnGA==
X-Forwarded-Encrypted: i=1; AJvYcCXHNm762ixQk/qCcGPaxwUmKUoaW+Igq+yZPYhBFH7t8ywVvZEUDIzLqvUTf8P9oD8YNXARYMkhLOm+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwd3lXg8UYNswqCvR2M+xjRngSOB4GFesHXG2kspsEQOAg8l1m
	VatYBRb43C10+sbDF+BATrl3F4/VkwMJqAucYuLQBOUlmVGLPgYSo4Ri
X-Gm-Gg: AY/fxX4Oe4VFHQy9rHy1RnWUcXFtr7CLxN7Go8C2umrdY5KjArIF65DEyIInn8/uzwR
	V7K3nuiPpkWWbJpjabBEtcjNU/XYmys5dCAHCYF2FJVa66F9Ly/T591t1QNbPlq5GM4RPx5w37X
	IwN3l7uvCfj6wUmozBgG50t69T/g49ITlZsxRQVuRC9omxUuAYoVg9kkw2YxzEYK1sVLDQh6p5K
	7d71J1Q47kyAMzjZuyiu9qanyc0HKo6iA2dXn1QV7/y/7G+urHY5RmvMQUrpDJEecRNWiV8B0Ye
	3KdIeC5yHYTy/i5VzP/Eg497WG3ak9Pse28jUqTTnbN7KpV8bZrr70xwANGkGFpz+nvSpjDhStN
	cfnwx3B82/89OQicwGTvQDBJNR4zDFk5c4Y9dYYkymt15NHcNf3p3SZeAgM+gyYs16wsazCRhlZ
	dPZqHFV2xvmdvuhp0gUPY31QLPy5az9E5goORTFGkLnSFdHEUURxoBaJenGxw8OhUGRsJ2qgcPg
	CLK65dy4eB6UrqXPRgI/fqrqaDgObDlDPBvHl6Erl0=
X-Google-Smtp-Source: AGHT+IH8QgiCvKfoUTFqnQp4Bc8Dq9wI8Gv6dNGoTv+bs2r+emH/fKSyTd0Pag3ERo6pzcyuWxwXRg==
X-Received: by 2002:a17:907:94cd:b0:b84:27bf:c37 with SMTP id a640c23a62f3a-b844535ece1mr1447189266b.40.1768075487049;
        Sat, 10 Jan 2026 12:04:47 -0800 (PST)
Received: from blackbox (dynamic-2a02-3100-af95-6f00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:af95:6f00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b842a56c552sm1483591066b.68.2026.01.10.12.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jan 2026 12:04:45 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	adrian.larumbe@collabora.com,
	steven.price@arm.com,
	boris.brezillon@collabora.com,
	robh@kernel.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 1/3] dt-bindings: gpu: mali-bifrost: Add compatible for Amlogic Meson S4
Date: Sat, 10 Jan 2026 21:04:24 +0100
Message-ID: <20260110200426.1461575-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
References: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible string for the Mali-G31 GPU in the Amlogic Meson S4
SoC. It has two clock inputs (GPU clock and a bus clock) as well as two
resets (main GPU reset line and a GPU ABP reset line).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/gpu/arm,mali-bifrost.yaml        | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index db49b8ff8c74..85fae7753004 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - allwinner,sun50i-h616-mali
               - amlogic,meson-g12a-mali
+              - amlogic,meson-s4-mali
               - mediatek,mt8183-mali
               - mediatek,mt8183b-mali
               - mediatek,mt8186-mali
@@ -143,6 +144,25 @@ allOf:
         power-domain-names: false
       required:
         - resets
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: amlogic,meson-s4-mali
+    then:
+      properties:
+        power-domains:
+          maxItems: 1
+        power-domain-names: false
+        clocks:
+          minItems: 2
+        clock-names:
+          items:
+            - const: gpu
+            - const: bus
+      required:
+        - resets
+        - clock-names
   - if:
       properties:
         compatible:
-- 
2.52.0


