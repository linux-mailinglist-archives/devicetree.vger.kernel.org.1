Return-Path: <devicetree+bounces-34852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DE183B69D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 02:36:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE1271F22B57
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 01:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3E0E612B;
	Thu, 25 Jan 2024 01:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p5ZuQX6T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6523D17C2
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706146540; cv=none; b=Hrp6k+ISox2TWSfUqR4RzHVWYlYUdYWYRXqXZ6sfDRLKkKuBTISSOjcnUX9cwsCuHCB3cXEGaI7PlAcAZCc9sXTHJePzmkKOHmAoCVCDwywXgNiWipTMj9jVlbYW9ptdpv2qFGw1SFO/OD8hqP+5aj+gXTNvMP3ZpyEUl4gS+5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706146540; c=relaxed/simple;
	bh=gvS9OR872hMLDwjbJt9LD4SXHkhJWBAYwtl2RkaXhw0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bFC9iI/rTgwriXT65xNq17mzvecUhuq5Eth1zC1KbQlEV8JpMd14eM7tSmoOHNreIxWg/b2HH0qzfgYNVYNg+6etdVzVloPZnfwxbbvKZtVEeBm+sYROjQ7dQGufbKzqZV/0EdpjW8KENi8TIBapdvOu2NOOHW1nl5rs2E73Fo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p5ZuQX6T; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6e0af93fdaaso5397663a34.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 17:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706146538; x=1706751338; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mrTPIRFEFJl4D6usMUg96I/YEqaZ4s0DmE7WQLKQltI=;
        b=p5ZuQX6TGPuwjyR+BO8s3gBt2K53kor0tQRxtY5zOTX9sTgzaXqwZi9t/CnYxL7lE5
         oNTcrBK+2RC5w+btmrCX6kay19xE8QJliMuy9wmP/+dZsSZc+9vNI0I9AfOi9ttV8nwT
         HKzE8CA4p71t2kWVlNKKyZgcsmenp3RRNG5CrrqwvuQBDWz97cNtmBJ/WL6OR1m+wgO9
         9/QudA7RgGolsA+iCDrDr6VmXGKtOc9y3FLPgtyKHiRMr5YnBOfuI9pyXR9M+LyxPaIu
         Zr+TjqYZLVfhbf6WMZOKB3n/WuKSTH0Ln1XnMwLgn383PjuFGlpQ0s+miAIR4qjJRRsv
         PPkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706146538; x=1706751338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mrTPIRFEFJl4D6usMUg96I/YEqaZ4s0DmE7WQLKQltI=;
        b=P/zgVRhkuPcWo9RZ1LouDxzBEAFN3wuqBLP0jJvrozsjZioYIpUcJeC2Hfds0GJu06
         PKCXQqjgJ1vvEwP8kRMXI18AtuzJaT9EX4xoKDy8OOt076xVJ8q/gPgmvlFoE1cSeXzj
         tmyFaQov0Wc9qCc2kwfQIOBIBhi4mmNO8pagwNJ6hd6MBerx41ssUU2UIO9SDfLpAruz
         a1VZZmMhzuD6MMApVo7i5nPaRYkGBiSGLjivsXWL6VmZhP0BBuV3dPJbhNAAfG05oev8
         CC6+clONxm6DioHwuXLqi3nNfeHVKy/INzTkOTRz2Vtm87d0n3jDirGzp4lmtoZW/P/m
         V7Ow==
X-Gm-Message-State: AOJu0YxdfrVjQwc0Hm+eZYXpjYXiwpUmdghZYyumGhIbaHScb0bE04kD
	dignTHt5dSHeT5X5YRgI85i2XTbHcwnf0LFoJDnofYbF1KpuSCByc8ad5q8uTm0=
X-Google-Smtp-Source: AGHT+IEiF3CQdPoY5jyVBG7JBTXllVCtLJ+MUSyX0wMqIAPSiBv+se5HB8ZlaC7NoLgvBlhEcAeiFA==
X-Received: by 2002:a05:6830:6c18:b0:6dd:ec7f:f46d with SMTP id ds24-20020a0568306c1800b006ddec7ff46dmr197894otb.11.1706146538402;
        Wed, 24 Jan 2024 17:35:38 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id o6-20020a9d5c06000000b006dbffa39d39sm2834483otk.55.2024.01.24.17.35.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 17:35:38 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] spi: dt-bindings: samsung: Add Exynos850 SPI
Date: Wed, 24 Jan 2024 19:35:35 -0600
Message-Id: <20240125013536.30887-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240125013536.30887-1-semen.protsenko@linaro.org>
References: <20240125013536.30887-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document samsung,exynos850-spi compatible which will be used on
Exynos850 SoC. Exynos850 doesn't have ioclk, so only two clocks are
needed (bus clock and functional SPI clock).

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Changes in v2:
  - Collected R-b tags
  - Changed bindings patch title to "spi: dt-bindings: ..."

 Documentation/devicetree/bindings/spi/samsung,spi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
index 79da99ca0e53..f71099852653 100644
--- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
+++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
@@ -22,6 +22,7 @@ properties:
           - samsung,s5pv210-spi # for S5PV210 and S5PC110
           - samsung,exynos4210-spi
           - samsung,exynos5433-spi
+          - samsung,exynos850-spi
           - samsung,exynosautov9-spi
           - tesla,fsd-spi
       - const: samsung,exynos7-spi
-- 
2.39.2


