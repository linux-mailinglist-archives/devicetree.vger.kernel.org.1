Return-Path: <devicetree+bounces-136147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0DDA04087
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:12:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8AA3160527
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65F2F1F0E31;
	Tue,  7 Jan 2025 13:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I0xh0AWz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98CA1F03D9
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 13:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736255478; cv=none; b=ZQRcbvoTfybls6hYLbBYpVWY/jwesSqdirVkMI0h14hI8Jx/EO/fG2s9IH93VAck5kUD7rOyg7HmyLEKNYE7meU4T4+tiDsR/+C7CPD1H2gY8sBYTa/0Q6m9UXAUA1pfGW6lHpcBouwVG1LPc6DS6nmywxeuuDQUxirEXUKvDA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736255478; c=relaxed/simple;
	bh=XeyO2kAWiFaaIrW3QgNJEf/zsHTmRcRnn7p9QU7v9kU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ilnNreXuXnb9r6dMUqc7IcSsGu0veu6Vb/weaz/mo0a87/4wyTfX9BkJsYz0kDb8YiGOcSd0f8r+412l5wdzvGSqOk9xdfAJt2e7B3EYdfHPFZMgBJq/UzXtjESdH6YPmYQPALNRkbAi069a9Zw/KOjA0fQDhXcuncxy7HF2kRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I0xh0AWz; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4363299010dso14979735e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 05:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736255474; x=1736860274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qe8CkPr6tPYiIpXFYhkvcpuefF3g9vhT5x/OdAUTZB0=;
        b=I0xh0AWz22UHj6PnI0q1prPBna8TR3qLhYaohxjCQW32nPGIt8rJrCe+kHueXLPDJS
         +GHD8mzgXLsm2NN1T4+6KB9Gu4yh5RKDUn19TiOCwZUizYclSzw/UdNAopt/XGnBFM49
         sqOKS0ntk/P/TIKwgH9WOGTzBNXAzhwYb1cS1+sKjzNhJIxhP371BWzHSqVN0rbBppxk
         oOnwQCaaofnGXL+EHw8wAbdeGeyj7YkIWF3TQbJRBAMnZxm6i9LVfOLL7kFwIOqg4eIh
         iKxphcwcTk0IWBNnJwhVH5PUg4kq1hQNSbcqWaZ6nz0mdRbDc6QsBNiiX12c8OxDQoC1
         YEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736255474; x=1736860274;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qe8CkPr6tPYiIpXFYhkvcpuefF3g9vhT5x/OdAUTZB0=;
        b=iLSzTmB1ziHEKRH5gYpYa/AfwITEyyCdTzcg0j8MEzlvwiTPhkAjBeEqVpmvTt788Y
         Im1sLA5C3INMau1PJtK1EFuoO1z1iXzcu9w6gBJdKo0L1GdIvkpogOfrYe4zMmoJfbt8
         WRR5xX5ZLy7g8Ur273QjY5n3JPsKb/UG66BsE5rhwUNkxT+hmUVSy6R+GXWQtfPgjdYT
         unsE4cwHNBVfPhkgMnPsjh/CfhsCXt9mAYCNvGXA3eIq2e3sgxtav7gZR0zoA/lmo5lk
         u5rLLfkJJc22SwOoQ2bBpgMk6tYHhf8z2nRgU1UE0039RK7+FA7mMu81GO49oHkwHj3R
         1vXQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0KvajK1vAjS7CdaUtgIdPLylfkHlBgFRAK9gn78TVs89/xCKv5pXzadOqJkFUkhxcOEjwA0MO/wbi@vger.kernel.org
X-Gm-Message-State: AOJu0YznKt/y+R78hBduSC5CyrOxo3s/zULUInfIdIgXSUtHqnZRXJ4b
	gGTY3ewCqs818Jqym5JrTbC/ym4VD34/xMSR+8Rl+HvW75VIka9WQkKrkf5qw8s=
X-Gm-Gg: ASbGncu6u7xjq2qhSPfcYqkfisUMuBJI7NEgXUpgsVP+vgPn7yjqhCkCGLnGpUacUfP
	elqs8pYr2cyX5BWtpSS0H0wQyGeZjorHO+b7RGRxKeD9aA+TlYhaE+s/tTYzwq8BGOGqB/4fPex
	OtwQsNwO4ZfAaZ+KCZ+MwcFoSKJansqYPqJUUmq4TboWv5/IM/FR8ITpZ69ar4Dl7mpsyYCraJy
	2XUXxAFh4/wgW392mXUgtzNEzhDql49i0bV/WclIp+SiDBfZQv38leQPWJ9ECtQTIcwKLc=
X-Google-Smtp-Source: AGHT+IE55L77VV12q2O+KkwrxZlSxaB4r7BHkCMGMlwj/kX4nF6lNnHoYwPdWlKzQG0+evPBpBsAwg==
X-Received: by 2002:a05:600c:45c6:b0:434:fecf:cb2f with SMTP id 5b1f17b1804b1-43668b5e06bmr200595205e9.5.1736255474160;
        Tue, 07 Jan 2025 05:11:14 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366120088esm595078655e9.13.2025.01.07.05.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 05:11:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: interrupt-controller: ti,omap4-wugen-mpu: Add file extension
Date: Tue,  7 Jan 2025 14:11:11 +0100
Message-ID: <20250107131111.246969-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add TXT file extension so the format of binding will be explicit (we
have also bindins in YAML).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../{ti,omap4-wugen-mpu => ti,omap4-wugen-mpu.txt}                | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/devicetree/bindings/interrupt-controller/{ti,omap4-wugen-mpu => ti,omap4-wugen-mpu.txt} (100%)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,omap4-wugen-mpu b/Documentation/devicetree/bindings/interrupt-controller/ti,omap4-wugen-mpu.txt
similarity index 100%
rename from Documentation/devicetree/bindings/interrupt-controller/ti,omap4-wugen-mpu
rename to Documentation/devicetree/bindings/interrupt-controller/ti,omap4-wugen-mpu.txt
-- 
2.43.0


