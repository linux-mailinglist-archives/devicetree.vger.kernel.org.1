Return-Path: <devicetree+bounces-165025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2323A8328D
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E82034642B0
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7ABB221712;
	Wed,  9 Apr 2025 20:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cj0oNcpr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7675C218EA8
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231071; cv=none; b=BJZI9vcz7zUAfMgGZQtUI608MHo0X5a3tdoyDUwL2h3RnVGeKdEqRgktPefGs4HkIT/eCTY4DXK1ZOQQW4kIDesjom5tStjmNZO/ACWDo9oizLkPHVvxpXoV4i/BgxG3QQYijUb+94EyfvAcSrnbbszXJ88LrozSgQ6capfVzvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231071; c=relaxed/simple;
	bh=Hu3iyZXpRaCR0lrm+kXeKWpWaXUMVhvAHxoE8tYowXY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mkinbro6eeh+UrmpJrwHGzd2rBSM+oT0Ku1EEt4+jcymyuOwTzSKs+yLCfZc5RUWZB2OKCTDVBeLB2WgXN7X02j33hjO7MBZ0U6JylRxmM6fYsfX3q8ZvrEDPHJ5JswHY1dz36477h7qizdpKdKE3ntqGMXr9FXPnyRMRnvzEZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cj0oNcpr; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac7bd86f637so230715566b.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231058; x=1744835858; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0giWyFiG2ehvT3dYEU+l2gt5I3uIIss9ANYfzm9oJps=;
        b=cj0oNcpr49Su8yi3o6BTtMZYy4ddzNWv02bHDkK61fPRVWEi0hRprBrQfbcoe4FfMb
         51bnRElKmINuLAl1Ru166txXZop5WvTPpG/UVIBafaKLATKEJJOl6oxGiFh9qM6aQfMg
         4K8zeI5dcfwPjfLTX/krWZrjVOndVc2RYbCDgs5rG/9KyAzlsFq6RHAa/ExwC+wCvSPP
         zzRWtRNCpV+nZmboXU+Asi7rjBkYJCR2xFCKvSnwhDC+u+iyeSCfIrLMyWkxYzLjlzuA
         LL7VXs77FscS7bX0e3EyJXU+f0PmzHuyXit5ZHWLM5LSHjw7obmNGx0SVB2ZX4k/HI03
         SR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231058; x=1744835858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0giWyFiG2ehvT3dYEU+l2gt5I3uIIss9ANYfzm9oJps=;
        b=VjKBvN6bi7qcHtS+k2AhRgG8+OqWwUxUNzYrLCM/g9c++AUkLcdPUYQLRxKXM1Zxjg
         NuBy8gP3JQYCztlIwATr8nHrLyrhEWGlyqElxj0gAplXWSGDViIWgy7L/p9t7CKYUvCX
         xHyOaUiUSd21hg02yhiUFUf/Kv96lKBPL1hoBy2q14DlGSMtkkpJ21qgpaYrI3wDUND0
         Fermz6lG292eVhje5NAD7MOC0HzkBa0SOi1G7T0Pp0C6xFuJ5zKmemEIS5mUv+NIJaVR
         LxVcUDwMDGzs67inYmKBhSvKD7RhkBvtpWzjHMBemK8jzTq/ZBA7DKqwMWltq2kNIMlN
         DRHw==
X-Forwarded-Encrypted: i=1; AJvYcCXaF9qKLGmyob0D77u4PhB9ksTR4zeZYJGrh32ia68DxBYd9ixqXDVtaEpOU4GPvUcAOCBCgXx1+Zj2@vger.kernel.org
X-Gm-Message-State: AOJu0YxzYDMyvJOYYVztQgMhPyWDeo9cRsf/mgxSd29Y6+7T0E/laNR1
	pFOi8hGMUuTcFjQGd/JXAdT7u1U58nsmy2kY0Ah9mDYXmPBK4Ab0OawGRaG7YJQ=
X-Gm-Gg: ASbGnct2qtIlL1KqoMDjw8uwCkwPXjV2bpFd9riLbUuubGLV4wJBBRxtMwFMdRb0BAD
	0CcaFbzKd0g9uusRwMkIuhJjeSl+OnL1ZUWqpd3/yPDw+Yj3FNMGtnTE1Zp7xMfJYgl+E8CSePc
	j23bvqMFNDqXMxkALFw5IGlIT60GodB6VzCly4SmimRg75FHifRwdK5pirpaHNzH1j03eAVxnlr
	LM/UTneo4qOLHtXCWt6i7mO/h4XPGmzotvME/kLGGdV448ZejeOZO71hsKzgU8+yxnFzQxFdtqL
	iKM8hqEGJjsqGpEPQb24se5KMhZK3Q3iGZq4eoPW9St0cjpoxI2WpbL+DaM0jQVAV75AsVFtyVm
	eg7mESrjnooTP1M/9go0DEr6kOnI=
X-Google-Smtp-Source: AGHT+IFs5jQKKi9PBtsfwcpWP0uR3pXLFKhxM09QGSN5rk/PWUonr2doF0wyNuXkGit6lSL1qy8RxA==
X-Received: by 2002:a17:907:1ca3:b0:ac6:d368:aa97 with SMTP id a640c23a62f3a-acabbee8c8emr16347466b.10.1744231057853;
        Wed, 09 Apr 2025 13:37:37 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:37 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:37 +0100
Subject: [PATCH v4 16/32] mfd: sec-common: Don't ignore errors from
 sec_irq_init()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-16-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

sec_irq_init() can fail, we shouldn't continue and ignore the error in
that case, but actually error out.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/mfd/sec-common.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
index f4c606c5ee5a809a106b13e947464f35a926b199..bb0eb3c2d9a260ddf2fb110cc255f08a0d25230d 100644
--- a/drivers/mfd/sec-common.c
+++ b/drivers/mfd/sec-common.c
@@ -183,7 +183,9 @@ int sec_pmic_probe(struct device *dev, unsigned long device_type,
 
 	sec_pmic->pdata = pdata;
 
-	sec_irq_init(sec_pmic);
+	ret = sec_irq_init(sec_pmic);
+	if (ret)
+		return ret;
 
 	pm_runtime_set_active(sec_pmic->dev);
 

-- 
2.49.0.604.gff1f9ca942-goog


