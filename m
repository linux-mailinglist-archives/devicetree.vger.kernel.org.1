Return-Path: <devicetree+bounces-131404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EBC9F3126
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:07:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C4D8166FBE
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F6D8205ACE;
	Mon, 16 Dec 2024 13:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LwsrWjjO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCD72054E6
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734354391; cv=none; b=fHEz7M2xcfwkoJmyEB7pwhkRQKS0IEzjTnJ8fOBNeXnIiPqmb5vdeN6pZkESVStIsG1Nj8GrbAK0B12eSBfQU6u1R9p+GG+a2RzOQYDFtM5J+TviesDa3tzlg7lhc88BdK0+UvdW5+dGPZH+SXZCN7DTbxnQJWnjbyPIVyO5LlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734354391; c=relaxed/simple;
	bh=Svf/2mTvMUzm93AJ73j/lWNGd+x0CmjdkKQDOXkCs1s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G3notXEM5yhg9b0mEOKszg2PmYaNTeEPOkDlzQrs2tAEj+EvqctuPg+oPT11Nk3XRoWA09E0SYrqTn/m0jMCPqxymGjCswUB1VZfxs65Iad5IhyczeQtns5nujnb68hRorir7FOPhs7XqPAjdY9zD5vXQcAQGIKs0ATWwPl1b8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LwsrWjjO; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5d3e6274015so7117408a12.0
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 05:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734354387; x=1734959187; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Exe9dwySnGZoKQ0X6jvc3tMxyy8NWCLxusuFPVGkXUc=;
        b=LwsrWjjOTWs4+8a5LK6xrzZ6Lg5HUr5s6BsWYVFTm9j1d3IEjkqz0UfWE0JmIXS+Ow
         l7CJhyAaQYfZrr3nl3dqhbiBhCxPw3uRFNuK+5la200MHsjxUTgcErkLmTk5YSZsmXB6
         D1JDyMKMOGvASxbHHX73R6l/eZX3q7+AOJgZ7tR4uFFXmt7uYxgMvZUX/cdhFsA87O/k
         M5SqI2j6potMouVo4ze12cEisoSHX6BvOYwrH5sgu1Dn7hCnzDVAlmBK3WSKytFh724K
         T0OBgtoHKHH81W/jKDQy5lI7+6x3XYv+8fgzOeBODtSndrzYLPR5YRNN9d/N0fC/OH70
         NjAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734354387; x=1734959187;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Exe9dwySnGZoKQ0X6jvc3tMxyy8NWCLxusuFPVGkXUc=;
        b=OV7yjn4PsPPdyvfFWwt0CsMTfy3Hy2girVCYkhHvMaj+RJiU/Au4o5+koeenBMYFMh
         Um/IG53qHoudaJkEybEZKXQWdInBwMXqU6mwia7QX5SFTEPoPZzDPHg/M/2HaoO3pUD9
         lpqLEQ4fo/SqRJoVT4OLfS4etIZl5ypnfDH8M2dWzW3tzoyS7kdZLcw3q+/aNXitTg9q
         Wux0txesWVoSdWvHnewyHOOxW5rpPkJh5SJCv0Skbf2tVWRYg0ThSQ5GmNK1PaiqfM8V
         gN/REuhFRhn9qxXvl0vW9uuEfCM0qOMaQTjHpMwHpMr9CKUhYkuPqGtxE0ZH0B5nJ61D
         eimQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrvA3x6DtYCNyj6xRsQZHMhhkSLVIiRYoJfp5rWgayfqo0yp9OikS48Vaes1u9M/T2AcgBwH/DYF5B@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmmm6gvtVesXbDQVxuo1gDa5dplS09T9LmPI/to3GVz7e0dxKk
	RNGe1b5DY4ujnTt7e8Pew2n5OYkOHjJFMLwvR82H160wkYxoLudQKgVOc9e5uzo=
X-Gm-Gg: ASbGncvDW8hsDIUH4/v3wasvdwazZDw7eiv1ZPqukM9agKV8BxAeEdOJ55um222uCCu
	LRqa+OQIvJVDbEe6bYrNmU9y5HDEPcWvlh7RWgsfqagQsc6Jl2JRHfOYOIHpNGmpc6PF5QDpLNV
	HDU+P+bq5hrDaMurI0YH1ac6ydlIefzQy4l9vc+gjTBvhYzHvb8s9wVFny7dZXqUzwNj0fdhac0
	Kaf9NuijdXX9QtGRJ6ylncffVuHmMOU7ljeVpWHwRYcF6ERkkScBfvzGo9V8QSEqfCfAR/+3t4K
	15UfHUjKzLPLPQvzU7JE8o8pXo5nzeCe7cLMLRfl
X-Google-Smtp-Source: AGHT+IH7g2VjztEudNhKR5bGxsFAdjhgJPghCK5aQefPDo7GYqFTFAnMVFJ8tAQLM6OtNQ2IyoaP1Q==
X-Received: by 2002:a17:907:94cd:b0:aa6:8a1b:8b74 with SMTP id a640c23a62f3a-aab77ec424cmr986404166b.53.1734354386928;
        Mon, 16 Dec 2024 05:06:26 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab960681dbsm326648666b.52.2024.12.16.05.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 05:06:26 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 16 Dec 2024 13:06:26 +0000
Subject: [PATCH 1/4] dt-bindings: arm: google: add gs101-raven
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241216-gs101-simplefb-v1-1-8ccad1830281@linaro.org>
References: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
In-Reply-To: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Raven is Google's code name for Pixel 6 Pro. Since there are
differences compared to Pixel 6 (Oriole), we need to add a separate
compatible for it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/arm/google.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Documentation/devicetree/bindings/arm/google.yaml
index e20b5c9b16bc..99961e5282e5 100644
--- a/Documentation/devicetree/bindings/arm/google.yaml
+++ b/Documentation/devicetree/bindings/arm/google.yaml
@@ -34,10 +34,11 @@ properties:
     const: '/'
   compatible:
     oneOf:
-      - description: Google Pixel 6 / Oriole
+      - description: Google Pixel 6 or 6 Pro (Oriole or Raven)
         items:
           - enum:
               - google,gs101-oriole
+              - google,gs101-raven
           - const: google,gs101
 
   # Bootloader requires empty ect node to be present

-- 
2.47.1.613.gc27f4b7a9f-goog


