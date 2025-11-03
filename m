Return-Path: <devicetree+bounces-234487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 562C5C2DD0F
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 20:14:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 35C3C4EBAF6
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 19:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC0731A579;
	Mon,  3 Nov 2025 19:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uHcHng2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95D2296BD3
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 19:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197287; cv=none; b=WeenkJVgySFi2iL3adJfyLWnNgyFUGW80l7M8mSAYzQdnuZ45WTeHjcyrhFBOk70Rxi7Q5hta60HiuQFkN9nJdCQc59Jg8Cauv+BZiuHTOCQ1cRK01RXNpqMZLlXkf+GJgBk6YRzZfIFGnw7j36oUW3Ti5iruDPVnHkZQ6DSG5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197287; c=relaxed/simple;
	bh=ejj9kJsYojTy8kY0emUovee3HgANnA/sFYcyWzPbjL8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OZpElRBigPIyBooeHRc+Y7jQVx4H6cUKTgRbvwuAz81veGa/rYMMgYbGNXLaSED07s1H392kLaDehvEfJRZQ359Feac11hb2TdX/6MB4qAmdFWYQU69YnnaIn9E51jrkaxmqsKAMqa/WwpPlyaDU/6MBVO1AcNO1e6aQGcM09BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uHcHng2Q; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b719ca8cb8dso65400766b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762197284; x=1762802084; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DAD+8NeyQVmzpy451OsrQR3u3cBqGgc3vr3oTrRtuug=;
        b=uHcHng2QWSK+Z2p/UtkA7xpbHwoq5fAIaerhq4SwEb0/jepxhldfL5dVvQnp/18ou8
         H9hwbwD4uTBx1MynJHrlbOn1MI6u5554IKbVymh1QWQ//nhxy7HOISVRUVHZa6kNvrqD
         Gx4lSHh4EV1w5NrsjszbQyNZ0j0E/8FVDDAQGx6waNkHybbBHiRJFEVjsmaF5ZxUh51o
         UoJfr5PuF+xN6VzZWnwLU9oJwJdW6SRllhILl5tqpZrI+MIQG4L9pJent7xzl5XPRJRB
         KB+XmtJWutrNeS5GZmj7ExanfF4J2kQjv8JgHbOQobhGJQ259NrQ5cYuvKAPA9/ey6lv
         UH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762197284; x=1762802084;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DAD+8NeyQVmzpy451OsrQR3u3cBqGgc3vr3oTrRtuug=;
        b=NpSBQWp1/wn3qWdJI+aapibFYhNpc24cFjFgvo8JgsFLJvQ5JtXVxh3MaKiaufMvDq
         NRDeMls/W4u6u3n+O8cXT7vwBzBvfm46yEhqLDmyfLBk+WEY648pgBK5BJX+wQw1TNeW
         p39D6ZYMhVMKx+ZUCCeEfYNiyEpTjQbJkTqOvH/VTtwFpQKnw37sCBTWcRfi5KyRxKhF
         6j+kJGE8ixseLSbN3i3LjwIK+NtkndnmY8KxJfErr/xn+u20fZ879sYqnfBNjr/k8VTu
         9nC1f9vWN5un0+LLfDXVsfMTLiZVIA6bLHBLL1rd5PsTtdq1hfHhwTAyQ8Pn8Wh/nH61
         R/5g==
X-Forwarded-Encrypted: i=1; AJvYcCWQLcf9lkSUST7sY0oWwAEpgTj208IleWqNUvo66nrTqPNXrkkodkdIz+Rd68V5O4IzJGbWX70IR/lG@vger.kernel.org
X-Gm-Message-State: AOJu0YzkLgvnT6zdAsS+WCC72w9fh3W2rtV6Dg1JWzNPHZWHhGcgd8J5
	RasPExakSf3f8fZFJ1klALe3itt37aQSpffocHGJvvwCS+j6CbQiG/o8p6knWVZ7dDY=
X-Gm-Gg: ASbGncuWW4uM+hemynphfhINEgBqCYyeGBxDMJbWcP7Hvp9LWtp/Z7bp0c2gVo21NlX
	2tcLYdlN+DpP9an2bxs7GtKHw0QscIYHjq2XchaMQY0aQZgAaPNM+AdnL0fwoDPVuJ0Sxdv7AtD
	M6oPXb/TbE9NRi7ZUbNylIGc6X9OczRlWqDJzcNUmk5FuZTM0jRQtxFRbVamoPEZW3mBpvWKY+X
	e2v5FmAnseN7FoxPSa4N+uGy5TtxkAe/xhK2pq2tamALE2ImKb7I9WVsLLMVn0bM9cWydNr4Rzf
	mGKeJCIgbItXDqGLkF71ha+UzrL3mzClPPgMnCArHfQ4KAzmGi2XchgPpPexGkdRubkGueKvlEI
	Bnam8RvE2DKRgSJpqnOICWLK9/PlRZ5j5Dc9gc1CMXEz4BeFa7jsKBzbhWvW8Jon/Y7DNk9pKfq
	izR3XSH9yO/0QuQg7A0HYrwvbgDMBZfNecV3figya2sOb/e4++0XN+cK7DsnIuBZJFFZGH3Hg=
X-Google-Smtp-Source: AGHT+IH1Jz8fqW76WNvYz44wUTW1tTql//vRV5mtFjB41+gy5qQDi25+8ZqrUFo6A5byoIUzomDssQ==
X-Received: by 2002:a17:907:5ce:b0:b6d:5c4e:b0b8 with SMTP id a640c23a62f3a-b70700ad41dmr1309354266b.8.1762197283933;
        Mon, 03 Nov 2025 11:14:43 -0800 (PST)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b9f29c8asm466765066b.8.2025.11.03.11.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 11:14:43 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 03 Nov 2025 19:14:40 +0000
Subject: [PATCH v3 01/20] dt-bindings: firmware: google,gs101-acpm-ipc:
 convert regulators to lowercase
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251103-s2mpg1x-regulators-v3-1-b8b96b79e058@linaro.org>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
In-Reply-To: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Using lowercase for the buck and ldo nodenames is preferred, as
evidenced e.g. in [1].

Convert the example here to lowercase before we add any bindings
describing the s2mpg1x regulators that will enforce the spelling.

Link: https://lore.kernel.org/all/20250223-mysterious-infrared-civet-e5bcbf@krzk-bin/ [1]
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index d3bca6088d128485618bb2b538ed8596b4ba14f0..4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -75,7 +75,7 @@ examples:
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
             regulators {
-                LDO1 {
+                ldo1m {
                     regulator-name = "vdd_ldo1";
                     regulator-min-microvolt = <700000>;
                     regulator-max-microvolt = <1300000>;
@@ -84,7 +84,7 @@ examples:
 
                 // ...
 
-                BUCK1 {
+                buck8m {
                     regulator-name = "vdd_mif";
                     regulator-min-microvolt = <450000>;
                     regulator-max-microvolt = <1300000>;

-- 
2.51.2.997.g839fc31de9-goog


