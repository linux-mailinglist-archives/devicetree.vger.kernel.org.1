Return-Path: <devicetree+bounces-231100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 538E1C0A601
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 11:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 952F7189D2A4
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 10:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C3A419F115;
	Sun, 26 Oct 2025 10:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nn/AIRt/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746F828E9
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 10:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761473870; cv=none; b=HiAO159pTEfmnG4D4O2ISOxBV9oP/mup6SHlnYTAU9YIbBk9l1DwsZ5hlnxGVM2qXu7/N0yKwQH7cjBvSdz1kZATfnXg5B90OqGk1zdYK+wOLjabr+NK6r/NGaiYjIHXq8mOMdydf7DEt7ADZXGZsrw3DU76WAUab8daT6MLbqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761473870; c=relaxed/simple;
	bh=4eLCy6jFlv6ArS0sNZED+k9sPfJdSXkKtHIG4LleXkI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kfLIXaQgmqvQVw6l23W5HnO47V/E9dg9lJr8NDUc+bRukHlB16ZIMiVcPcJ3vXBiDuEy9XjBYrqG6emV/MflzX3zA90s79/d9KqiRQx1FwHKoGpwRy9dlaEpI8dWh0C8ZlwHDRSxqvnyEZG2vsXko8uhJ+rbUTt75jZLkp1og4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nn/AIRt/; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-4271234b49cso572949f8f.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 03:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761473867; x=1762078667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IZq/s0DjJJahu5RTJBwLJxq2XEK/C2uaMOs7qh3NCts=;
        b=nn/AIRt/HzybdUwLneYA3E0SbMyk3OQ2GdNs7s7OdHrp3gjg/wahGNS0nRNqdFyn4k
         7qZ5JJDVO8PskDV2YMYe9PNmw01dZrgY3l0fSDxodWtxDatYLKk7mUlmEzzv89uiYrhR
         JxZ4maY41/mYwsIZ3mfbHoyicBOldP2RmB7IA2YWF8IWZDHvwO4+SDLEiF0oYpMK1KAE
         9GvzhKVsXuqAW0QkX720CYPBaQPK051MtaE5E4CNvI65tEJpOnNLHyHY4kBitLb9t+uL
         K/TjRW8rA+usIqNiLj8hvUiYcJYg8E2aGmzrLPtuHpBR0Zeya7PbOgQ3ctAmtXmLB2tR
         0/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761473867; x=1762078667;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IZq/s0DjJJahu5RTJBwLJxq2XEK/C2uaMOs7qh3NCts=;
        b=Gp6NRuHW5Oj06C3xTtN/jgpoJbc3We+X/VlGEQJ1QWjuNu/HCchFUPz6r1OM5D6C3K
         JpVoS89uOEqHr7WJV2BlhTVr8kia2kDMTfPJoV5bx87hCmGqkmbDf1fmf5vGCT7+eLHa
         PNK1u1zEh1ygF9LmPUB37Ua8FVUcHbHIBkT7gV01E5ZaWITrYqcV48hU9/npJOgvZWsn
         aunJE4B5Q7oke8HxKRNXoJWWWVNAfhAgrjozpKFhUJc3+3S3/EmuhhzOL/JJ+XRw+58y
         NgSG8KxCzlNp0hN/0826uH4YCCakIaU1cYmZ+pgG3tVPD7NOgW5n2XrDl5uaQGam72X7
         kF1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWA5w7IcBNb4p/IeoUPV7zFfI4j4v2fAyVtr23QvgJOmixcAAgLx/dc2TqVuZaj5nJBiYoEc6CUOrd9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/mlN28xJ+dM8KlqszBJl2RQrZCz5PJxn2AxY/3Vrpuz+q3NZL
	ruJOxEiKoGmMDa8paNKF37cXv24rHPBm+ELFg8pb97er5rr8lkkLkPwQluCSDm7pEZg=
X-Gm-Gg: ASbGncvNpZSp9BjaA+kpBj0ATd+lMfjeU4G7xy/9OSJhVDh2E0qAdcgZmJdaCjLbqlu
	MQ2ZwGoMK/6dVTUQvMy/uNq+HXEqZIIWqFMZ7Rha2eOWPXiyeRt2Oaiy6nNrmL71eqerREOSO+u
	NmI7j3YrgWk0s0R0BQ2zO8zBLeQgwU4cJC2AQkMlcORRra9DwmCCpQy+GwuB8f2g71lbdY+Zy9k
	a4ucks2UkJhH3Pmzd7uV8hHqktnjQvu7igdCdk0Vcm3aXX4jHEcZx343GRHRoMhTgogFGXKo7Uf
	bZLMNhFJDf+HLatUwwyvTd2wUkaZgakuRNUHyEtcAcYIlOfZ2Z6g9F2qWxTXFKp9zYLt056bzbw
	kA/ualGdk2bER4RZZ6kpeydCmu/IpLmVF2HK1+N2hLBTIrpFLqnHa6Cc2Q+WIcy6k/pGVMK54q3
	hi6uuV7MQT4W4=
X-Google-Smtp-Source: AGHT+IFLV+eNu2OSqeI3IjKQUumE2rjQrLB05yL6GBy5AvpUTXb5dLnZv8q1GKaxjIshEGpVcuT/KQ==
X-Received: by 2002:a05:6000:220b:b0:429:8d46:fc5e with SMTP id ffacd0b85a97d-4298d46fdffmr4538761f8f.4.1761473866761;
        Sun, 26 Oct 2025 03:17:46 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952db9d1sm7966166f8f.35.2025.10.26.03.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 03:17:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Robert Marko <robert.marko@sartura.hr>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH net v2] dt-bindings: net: sparx5: Narrow properly LAN969x register space windows
Date: Sun, 26 Oct 2025 11:17:42 +0100
Message-ID: <20251026101741.20507-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 267bca002c50 ("dt-bindings: net: sparx5: correct LAN969x register
space windows") said that LAN969x has exactly two address spaces ("reg"
property) but implemented it as 2 or more.  Narrow the constraint to
properly express that only two items are allowed, which also matches
Linux driver.

Fixes: 267bca002c50 ("dt-bindings: net: sparx5: correct LAN969x register space windows")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

No in-kernel DTS using it.

Changes in v2:
1. Fix typo in commit msg.
---
 .../devicetree/bindings/net/microchip,sparx5-switch.yaml      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml b/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
index 5caa3779660d..5491d0775ede 100644
--- a/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
+++ b/Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
@@ -180,9 +180,9 @@ allOf:
     then:
       properties:
         reg:
-          minItems: 2
+          maxItems: 2
         reg-names:
-          minItems: 2
+          maxItems: 2
     else:
       properties:
         reg:
-- 
2.48.1


