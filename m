Return-Path: <devicetree+bounces-36415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC358410F1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:42:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9BF0283A9B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31AF73F9ED;
	Mon, 29 Jan 2024 17:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RnDLchG9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BB076C7D
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706550126; cv=none; b=cbL/x1Xu2yncsINkENI3NH3V2RW683EEMA2oCHUB0ALiHySX4c9cYwiape2N/X7vjpjVb/wxg+a3x3gVQVaQb+grTraM/YhqW5ldGOyr38M7OI4sGwUy2qAgK4AxpD+l+JhyUFgZsZ7JJcmoqnBwC3095frE8U+mhaAGf3nRIMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706550126; c=relaxed/simple;
	bh=xffvWscwsryWPZUnv3J069qVlFXq5qF99LAT9T/TrVE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=stsPj16bVxnJ5gRvloK8CIMUzVCpi4MJ3gSkQ/U2xZtNTdnSk/5MseMbL+t60W5ia3YJkmoPcrRq8akPAExVF0HApJrbCIjkrMl6l5ol3YbnZfi04+sf/Y8MZBTWkGj6U1PU66eB0gNRUzxRkVU8tvrRkIt1CIOfcxsfv/zZxDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RnDLchG9; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a354408e6bfso345485466b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706550121; x=1707154921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0kAVqndB1QNBLooyOSmD2a3LgyHBf46YOYgAJIGaSqg=;
        b=RnDLchG9MzLTxqEcRT6AmdmPBHs+qY+VXbMV5AcMjtsRMEZAIX/nO+IO/jr8gO8PW7
         vA3xD+n6LfO/Bywf+T/pd/a6IYiBJQ0yqObHcu+CIJYfcgW5jE/BDgOfA1+ydkguDQG3
         3pTnL+9Sw/mP0e70wpc1ULK/bqoGm4J+rSm8NkjujCjX17hwTRpgXq3I2JTA7rZ6e5xA
         Ajyt3x1sFOvKtGqaOHh8rMmp+mwsryfTU0e7o3G7JXFZYCQzH32VmY8WK0/ganrgbCOd
         s2eIuia0beNOUq24rKTJX/3KO9M78XEQgMZW5HuDMSU0cUZwHogZXEazR200k+CQskIg
         x7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706550121; x=1707154921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0kAVqndB1QNBLooyOSmD2a3LgyHBf46YOYgAJIGaSqg=;
        b=JiO4jX/ffBZ0wTvpcTrysXifqovixuGOQCXdH45g95KhE3ttxHNaM50xrfreGsTHJ4
         a/pxs27mBD8moCTKXC2OsKZAcjGxR4NFsnEvP6Hk56S7RYDWGwW0mFAanm6YDImH7L6n
         1RcApdYvXLHQQCMYpnIspMm6A/iphF5hunLBRHahzeoCpZJO3yt4TiXxH2yBwsAyOihx
         Bph9RUIbAO8NonhSyyuuWrssLOuo/5/ZjHneTMEmIasTTqL78r62LabVTjSXMa6if116
         TKoKX7xHAl/uO1l3EkiURHGcI1NrAx7Cn48sPYjoQ/YNSiujtk0bqoAaBS1CpGPL4BB2
         Mz2w==
X-Gm-Message-State: AOJu0YxHeY8WIAxqCdJrMBdhc7t/Mb04aMKIigAcJST8u6vv6O37fpMW
	WG8+UNe5ZQINIE+KecqpqPcQrH55hUp/LUouI6K9+4J2MZspjRB4gYGqSOLPwSQ=
X-Google-Smtp-Source: AGHT+IHuZkjE8rn9kXEq7Xnf0dssFhL+/Igtw7vYa6++KP9Vi9YVa4rJkYf2qVJ+vfH1sJRdtqxfvg==
X-Received: by 2002:a17:906:4ad0:b0:a35:3718:997c with SMTP id u16-20020a1709064ad000b00a353718997cmr6336020ejt.28.1706550121638;
        Mon, 29 Jan 2024 09:42:01 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id qx25-20020a170906fcd900b00a311a360433sm4237765ejb.143.2024.01.29.09.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 09:42:01 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	inux-kernel@vger.kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/7] dt-bindings: samsung: exynos-sysreg: gs101-peric1 requires a clock
Date: Mon, 29 Jan 2024 17:40:07 +0000
Message-ID: <20240129174151.1174248-5-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240129174151.1174248-1-andre.draszik@linaro.org>
References: <20240129174151.1174248-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Otherwise it won't be accessible.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

---
v2: collect Reviewed-by: tags
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index 33d837ae4f45..c0c6ce8fc786 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -73,6 +73,7 @@ allOf:
           contains:
             enum:
               - google,gs101-peric0-sysreg
+              - google,gs101-peric1-sysreg
               - samsung,exynos850-cmgp-sysreg
               - samsung,exynos850-peri-sysreg
               - samsung,exynos850-sysreg
-- 
2.43.0.429.g432eaa2c6b-goog


