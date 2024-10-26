Return-Path: <devicetree+bounces-116036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB949B1ADD
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 22:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38DEDB21954
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 20:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652B11DA618;
	Sat, 26 Oct 2024 20:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZejHGgjt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303461C3F27;
	Sat, 26 Oct 2024 20:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729974783; cv=none; b=uOnqlninkVaxUnb53R95J33kwAUgVrpJ5LZpAwGN3dPyxD8B25GfYjbcqKjW/H9TzudaGROiaBd17UBsyKlFlpu3YQ99iYyAeYe1SGgfHi2hAMC/gs/vfl21SNSjsF9zB0sR+8dbuQc8gOp7m/uAqpDXQv67i97i5HhVYVQyeeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729974783; c=relaxed/simple;
	bh=tRiFoRgs2wnv5kkwhc9AnOYjzd7mmGEE34XIM9iDvVU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=syupgvA/qVANz2lLZ5DzVayHN7RVhQtwS56nInguFWKPuritc2Hk5rl1mJwnisn+NFgyY4f5x0qdKAP5tAgMSa3mg/eIMFJ9ChJpN0zDf1DG5GvdQZsPoIi4SZAX4pMyEXggDb5edWJIFNYzEBomeXXZfdDM5f8Twnzj9n52keA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZejHGgjt; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539f7606199so3656013e87.0;
        Sat, 26 Oct 2024 13:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729974779; x=1730579579; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4r3f1+NvBb+8lEJPQFzoU+pVWA5C1a/T6mdun4fd2Zs=;
        b=ZejHGgjtlAHmoDXpa38ZJPyd14NOZfmrzfyGYAXFXV+A2YZr7XwL3GOVfTMQ4nu9x8
         O0uMu7S2EMDOX18NnLYTQftiHfbSAoDj4yGu3GJUN+rcfXzL17xXBzvGOXuPfimxUXUV
         R/Qx1dZxHWHcn678YlKDA2xZl1Co6JDMdNO3z4cM06q/fhr2fq2obyhi8LZ9i2ZwSI3G
         giz9PUh9cTqmuqzsswNYLZ24wZkr+1GfiFAUKO+Ub7n+UlPmSH08AOYI32Hv4eR913no
         dyGw798/wiGycrOtUNasu8ixfjpIVHej9tmJRR3fYzXYij9b+HZTTwbueJ5BSpz84PHN
         6dxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729974779; x=1730579579;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4r3f1+NvBb+8lEJPQFzoU+pVWA5C1a/T6mdun4fd2Zs=;
        b=sTiJhp35csyy4SmwD/iROQu2KP76jZUTUaV3M3Fcmyrc3QoeHyeqRu+WSOG1ztqqsn
         pp76S9WDlkoqh6+6mjvAlxct8I7NZ7x4SpVNET3QizIIHXoYvYcdn6nVZ5rFKIgYVlcx
         i0mNQzLsrpTQ8k1PlWPnt9Nu1Q58/Hg6nBGF3Q2EjEy1q6V220ue6woOGQ9V+nbMqYdf
         mZH4lcj3SzRpZTUHVFVxXRsk9W7ysSR+sWaqVW44GtqUCT+Q3LqH9JjEqjpAdXlTHZil
         J32KnbXwhA53Kz5vjiMLFzILJDM/lKWGT22uCpr+9pcPoNpCu6fnxp+L3Ywb+RK1LN2g
         wNDA==
X-Forwarded-Encrypted: i=1; AJvYcCUZPXtx+3DveihlU0bjQ/zM+Lovos+6ZvDVdBxCImdjmoEL0vCh8a0a52S1Wuhgk5DC6TBD291B+1XeFHjn@vger.kernel.org, AJvYcCVs+dADP6Hx6PDr26d/dtxdZeCoqAI7rCkRJfaU4xpWMNnNfVH+NcJI1o53KUzk97ifcHar9EV1mThXdzZL4TwDjpU=@vger.kernel.org, AJvYcCWxolleBq1lIkQ6wAPzriOHDl+UoVRcJBC6g5hac0cBEEYAtoOx51WtNO82T+6IUk5TyXD7HiPvwlkS@vger.kernel.org
X-Gm-Message-State: AOJu0YzeqnyWeyjGciIgjGsdjhcA5SscrLU6ZN532aVDcXDN/CqGZX8H
	zpVKTDvl+L7/0OiFJJuxRXY7vIfBJG8CQjgbYbEiiY2/m8ufJIrx5xOu5g==
X-Google-Smtp-Source: AGHT+IEJyuv8E67spcRtNlhUzUOZP1zatqqU9Ahx6YEyDR1zWtyanVvxbI07DmW0sueikKHRZE0pWQ==
X-Received: by 2002:a05:6512:3e22:b0:539:9490:7257 with SMTP id 2adb3069b0e04-53b348da64fmr1269419e87.30.1729974779092;
        Sat, 26 Oct 2024 13:32:59 -0700 (PDT)
Received: from [192.168.1.105] ([178.136.36.129])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1c9439sm595872e87.200.2024.10.26.13.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 13:32:58 -0700 (PDT)
From: Markuss Broks <markuss.broks@gmail.com>
Date: Sat, 26 Oct 2024 23:32:37 +0300
Subject: [PATCH v3 06/10] dt-bindings: arm: samsung: Document Exynos9810
 and starlte board binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241026-exynos9810-v3-6-b89de9441ea8@gmail.com>
References: <20241026-exynos9810-v3-0-b89de9441ea8@gmail.com>
In-Reply-To: <20241026-exynos9810-v3-0-b89de9441ea8@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Tomasz Figa <tomasz.figa@gmail.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Markuss Broks <markuss.broks@gmail.com>, 
 Maksym Holovach <nergzd@nergzd723.xyz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729974770; l=1321;
 i=markuss.broks@gmail.com; s=20241024; h=from:subject:message-id;
 bh=tRiFoRgs2wnv5kkwhc9AnOYjzd7mmGEE34XIM9iDvVU=;
 b=fOUssGGgZXfjE+4gwDNznykMMOmyN0xkbPQepfQuqPXKP/unZ5AjK79B9+9tJdY6GPViWd9vM
 Z3xP7qy8tO4B+tcbM42JXxzJI8hlQBWeH+PvCefYxcIJ6vg75EJYIas
X-Developer-Key: i=markuss.broks@gmail.com; a=ed25519;
 pk=p3Bh4oPpeCrTpffJvGch5WsWNikteWHJ+4LBICPbZg0=

Add the compatibles for Exynos9810 SoC and samsung,starlte board to the
list of boards. Samsung Galaxy S9 (SM-G960F, codenamed starlte)
is a mobile phone, released in 2018.

Co-developed-by: Maksym Holovach <nergzd@nergzd723.xyz>
Signed-off-by: Maksym Holovach <nergzd@nergzd723.xyz>
Signed-off-by: Markuss Broks <markuss.broks@gmail.com>
---
 Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
index d25a17e697256f8d868e24bea47d21accd1184ed..b5ba5ffc36d687a6fdbc625e6d95c37a8a2e2b93 100644
--- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
@@ -230,6 +230,12 @@ properties:
               - samsung,dreamlte                # Samsung Galaxy S8 (SM-G950F)
           - const: samsung,exynos8895
 
+      - description: Exynos9810 based boards
+        items:
+          - enum:
+              - samsung,starlte                 # Samsung Galaxy S9 (SM-G960F)
+          - const: samsung,exynos9810
+
       - description: Exynos990 based boards
         items:
           - enum:

-- 
2.46.2


