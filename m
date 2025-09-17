Return-Path: <devicetree+bounces-218441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 933A1B801BB
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:41:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FC284A4E83
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C539D2F4A1E;
	Wed, 17 Sep 2025 14:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GfyTGgYl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDF22F39C1
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758119984; cv=none; b=a/oH3fMAoBftz+Cq8PemoZpQhqSqvKfNbhbQlbFffpAKpUdCm+yl0YQR6qqaWWY3Yh6T94sWUeD3lK6WZXQx0K28MB4URyc4gbVIsVO/GHkVFA0sWlACe31HNDJjwvWk4jwtiCfrVA5i5l7F+D0/m9WIDb/cnk0tlxNlE69+ERg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758119984; c=relaxed/simple;
	bh=DC3rkPlmT4PS3kYRl8k4hFThmj/MELiF/Zcpwvs0sjc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qv0QcVhJ/h/wTzXEqF7xc/c7hXx9z+mtsjZm1yIV2wvlzcFqqiaK4YXlSb/7ZJj02QriVIqTk1R5rtW184sO6bN5JaKMRrY3sUt8J0egQRYZL1QfSvBzLPbin7FzGDfsr0W37rvsntWd2q1QHAVtWoeppfnM/Y1kH7rH6EWPSpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GfyTGgYl; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-62f277546abso8427212a12.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 07:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758119981; x=1758724781; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0s17kkTaZCcWVE6nRJp54qyDKjcfVsqKmHrTUTerXVQ=;
        b=GfyTGgYl9mykyvs0ekcBz8gtwf442OqETMtCyXqL2zt5d2N7as164YX2f0yFXtwYAc
         U8O1MEpheD4Aqgr+hFhSa757VtgLb/QO5dWaDICDILCaqvCkcQWN38giaXam//hhKMt1
         A3+95Q0P/hj+nzIjIl7Mfn9dQVl0fOO1ibtRaC7VAHAHUClvxtmtFgzGbLuWh9Cy3Ak2
         h3qSjY+TVwFyiMrxbOQqwUxtW7td3/cFpti2ebZobmJM22XZtZN8SDYyh1FBNy8tgjtN
         iKVz+ZsTHv7qipwgT1Cr0a4Fq/hBrPMbWUh8xQJBCtFn8KR0kEP2PZ8ymZgF++L1tvTI
         /i5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758119981; x=1758724781;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0s17kkTaZCcWVE6nRJp54qyDKjcfVsqKmHrTUTerXVQ=;
        b=DsHO3/Kz140FoAcad3f8pnDjfoY5DJI1L/MhSCVfrCAg0FbbNbT/jdwefMcgWmgyDO
         8S1rcJigivReEcSLnGzPKgORcuPup9ToSwaOZMsO95lp332hq6A57Zu0nWYirTmOKQQ5
         fjKB0xJ6UkJAQMI7GYMHrU+OZPd0bzxJDfz1eiyVITDAuawQBNlh58UtPe7KC+EYfNmW
         zWDlj+G4LvBShcxY5BxgnifVN9gozelpOkr8UTyYRNIFF8gPAxjIOZVQdCIL71c863Nw
         oDachhwFMTlgTf3wlXnda6y7W6K/aSWRorFQSZu0DYHLfNLVJ/DGw64SmX4lZH2in1Bc
         LmIA==
X-Forwarded-Encrypted: i=1; AJvYcCWY+PlKs0O13A9zrPgLM2e87rjLTfeSJYcZoo57XpuTNgIp2nwdnhK21dOMoZaKmM9g65IdascJ6h6E@vger.kernel.org
X-Gm-Message-State: AOJu0YyBjL6q/a6ZUb76lN7oJ6B1d9pyTqCdtGdkqIBeshckFqUPDjX9
	58NbHsiLt+aDWelmY85nF3IT6xesKL6n05UMDBS3OK3zw6X8LBdDCdhXJhvsMS+Ew98=
X-Gm-Gg: ASbGnctJDldhRNB+oz0Rz1+d/mgV+BfqO+v3ButGo5PFlZ+T0WXkSg4oo8vLagmqSb+
	KUetoM9bHOI3AcmDAOTzXSCAuyh8F0COuyXTKjpQOrRCco0DIF310o24TCssjkSoSF3YcByNYLs
	XlQH18vcEQWgFf/r4SuchVA+fgZXc4bxKTKft2ruC2GRSpV0LMXs7WgQOPvCFxftzc3yCvAlNu5
	mmMkCdNLh0gYNgHtWO+cqCTn9AikxGFLZLCgsYl7YfpRlWwwqgBVlMOGnZaP2KbTCaJQgPU8Y0O
	jrJ+7HN5u8MgFSWgf6LSlq2Qgj5C36MFk0sVnFn6N5mJJX0xvrgVl6zw5loJ36tkyl8IeT+GZD3
	NpqruBLR1wJ9ylkHwFqe1CpgehcLgC0l0nZ9K4gLFYI/N3YWKKxwsvYBjJggWe/n/bzMUQj5NgP
	vY97d+h/fl1hsx
X-Google-Smtp-Source: AGHT+IFXXbiZNTejLfG2Ic/gjctCmfZhP6Kg2iU0trw8lOnTpDVinvHQd4P0uv0W+EXh929oDvH+pQ==
X-Received: by 2002:a05:6402:42ca:b0:62f:4dbd:9b6 with SMTP id 4fb4d7f45d1cf-62f83a3c5e6mr2581137a12.14.1758119980663;
        Wed, 17 Sep 2025 07:39:40 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f317bf9f0sm7112464a12.49.2025.09.17.07.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 07:39:40 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 17 Sep 2025 15:39:32 +0100
Subject: [PATCH RESEND v5 1/2] dt-bindings: clock: samsung,s2mps11: add
 s2mpg10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250917-s2mpg10-v5-1-9f9c9c4a44d9@linaro.org>
References: <20250917-s2mpg10-v5-0-9f9c9c4a44d9@linaro.org>
In-Reply-To: <20250917-s2mpg10-v5-0-9f9c9c4a44d9@linaro.org>
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
2.51.0.384.g4c02a37b29-goog


