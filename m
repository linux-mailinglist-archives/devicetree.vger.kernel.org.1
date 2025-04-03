Return-Path: <devicetree+bounces-162829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA724A79EDF
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C2033B4266
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73AE3243951;
	Thu,  3 Apr 2025 08:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zMfY6vZo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4485241CBA
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670744; cv=none; b=kzmXQ0gkAa/0C5L53j/OFrXTKQUaFFeEnlcW+1t6L+KNLJS1a1fV0DNUz56boiMWlfG10BLFyDm/pdxwuwbups7YWeBY+9ruMcknUiPzLz3MHhCjcNGyolWHUiNr1TlkSUQtbg9PV4+pCx8xTqprGmMA/uooO9a44CWhpsVAoAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670744; c=relaxed/simple;
	bh=GY5aflUP8HyQZVCvYH781i7uGwHWsWCKLpX/UgZ7jiM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lP1nWQv512VWAVg3IDGDmRCXA9iqubBH9UhRc7jrcH+hB5jblLp12ZISJPPHhVMLRPubgDHcHkFXV7cvndMEps/t7ukeqGXHcQNSVK/qQprUmcCtei4giiHU2MOHLcDC5Zm/HwWu50m+Ho3l+It66Jr1iJZFp/Yu9spOmb4QpYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zMfY6vZo; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5eb92df4fcbso1266615a12.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670740; x=1744275540; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r/wEh4QmLnuluQvbcZ6Yqq9yXOMvoeHgrUwhyH2g5L8=;
        b=zMfY6vZoeD+0C+rJjnkjVt3bDkOAdTXIiZAFKxQECBujQ8CEzEwgH5lM0KDR1GVhg4
         IB6RmNOQnmB1sPJrzkIm90OxheOn1KBdZW4O6gcT9IQRszdJq3QbhfSPRb+w197+l3Iu
         a3hy4Hc+uX9th4a1/y+FVGMUQhI9w99XhPdBkO/osh+phqb+VxYZZm5Pxj98h/nAOCvO
         OaORvxhY3mmS/EX4ipCng5roXPVOyd1MQo9IEy4a4tWLFe2l1ghafJF/fQDb6XKhroYC
         jFPC4YbidkKnscT7zB4iO/RfH868ambV3SjiY0o8GTdLWFeeJQwn0ZZku+rhwcPoLpSy
         fzwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670740; x=1744275540;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r/wEh4QmLnuluQvbcZ6Yqq9yXOMvoeHgrUwhyH2g5L8=;
        b=b1NtBMkb+jCSJRViQtSmtAS41zXy56agi+dOfm7+ERHVjQHXE7cELRguL5H7O/8+yB
         WyZntjz2JlvgNEn+BAH3Ig0XLwomLuIwvbs/6rfK05Au/wdD2gFB/0RPfxUs3PZx8Tuz
         9KRTxnjeeesZLt6aqeLFbs9eSssa30nOoO5MfUhB1Mw1C/6ewo7kvI5MQ88g0yYqW2oK
         EZ1nOMO9l/8A9D1sbquxWcOwxWxrHszOZCWagHamQSWz9KrM5r23MlaGqdRGYvjnAjOs
         ypGgzB5YQSjja5JexDtX5CNHHiQ18s7z0HbGdg0PM+eDWwxEIiX6Qct4GpeMn8hAhpdn
         fI+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXVJEnqU5u9gl/BdKoY2Rk/MiahE2y4Pd/MIYX5syqIlJ4jRMFpcpyJeENM7+ETc+dgiQysJadQDiQT@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ0r6GGDn/+CK5pZlmLwdSxHp178O/OoAs5/RkI9zmrwHKZeGw
	z7WgnPxe3qOTKwEZ8gMQMy4l1x7jTLMChktx6EWAYZ7nYY3PNf+D7F6jN+v1Vi8=
X-Gm-Gg: ASbGncvfFpWoSAQI2tnIEi3Y9yjFTE3H7P2EoS6aVCa2qW8ZUM94ebmAsg6cLGST+F7
	4kNm4UPqIghEhNnrOHvMw3aWI02i8gq+ekefWO0iUKxLyR6vS7jMp2hCsfGrT5oUA8qXOG4D6Fo
	xLDWac7uUpzHu7IZjVzoO3acrYw2BszsCY9CMW7ZZvq4cZShdKmTko61s3WwleOMn4jRKgYo75M
	K8c7/bplqJz7cJqe+UnrbkToPnMjsca5r6lT94Bup5Gn+WKTBSZDfTioj4ZAWR0usKntlKQgbjX
	RF1KE7/6WNM0+R1BbF2teUp5+NJAlcS4WeQcX5ntcVO5HBtx2S5WbrQuj9s6xtZ1KIjMU+gwlxp
	MmYxvUxY2nGCR1J6FOGNuZnHjM7WW
X-Google-Smtp-Source: AGHT+IFpNCgTUy3yn5kNBStSgNtkMlYeVkvi4R54YROwAonbhkdXCkRSsgfQeF745WZBnvMJR3nP5A==
X-Received: by 2002:a05:6402:27cf:b0:5ec:958b:6f5a with SMTP id 4fb4d7f45d1cf-5f08726ef19mr1525065a12.28.1743670739930;
        Thu, 03 Apr 2025 01:58:59 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:58:59 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:58:54 +0100
Subject: [PATCH v3 02/32] dt-bindings: clock: samsung,s2mps11: add s2mpg10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-2-b542b3505e68@linaro.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
In-Reply-To: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The Samsung S2MPG10 clock controller is similar to the existing clock
controllers supported by this binding. Register offsets / layout are
slightly different, so it needs its own compatible.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
index d5296e6053a1881650b8e8ff2524ea01689b7395..91d455155a606a60ed2006e57709466ae8d72664 100644
--- a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
@@ -25,6 +25,7 @@ description: |
 properties:
   compatible:
     enum:
+      - samsung,s2mpg10-clk
       - samsung,s2mps11-clk
       - samsung,s2mps13-clk # S2MPS13 and S2MPS15
       - samsung,s2mps14-clk

-- 
2.49.0.472.ge94155a9ec-goog


