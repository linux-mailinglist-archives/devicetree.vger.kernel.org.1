Return-Path: <devicetree+bounces-159935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0020EA6D18B
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 23:40:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8E2047A6290
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 22:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5AD1D86E8;
	Sun, 23 Mar 2025 22:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CYMGyJ2q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3CF1C6FE8
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769569; cv=none; b=bfeR4sO8YNSC9FrQi7b8H+UDaRcbKtG9AmkHfcTaoGNolDHlNYBoIHheqwTxeZwXT8fz7TRpjq6OBjIu7rsbi6sneT6Aw36EZMC1M3OOTIH/mtU42FpUzghw4zN7kpx43LBlZjE2fQr/00E5U7g3a73DifdPq7CaTqXhhVip5Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769569; c=relaxed/simple;
	bh=yWyEsUV61SIUGSRUBs0R2s8QMDXNnM8dfUs8hI7iDhI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WFb1EuRCD7V/NsLKwKkdQ1Lt6h4PPDmBs+oXCZ5kQN/anm2oRZop1OFN21/aa4KZ6Idxs8ZolHqWOAvq8TPLt183n2elVWKJKt3ekTVHJNoH6UJOdz5owzmHXL7ANsFGh3frYUTQS6T4PUL1fkHahonl8wXEw4MJ+/3MpC590Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CYMGyJ2q; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac289147833so457736666b.2
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 15:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742769565; x=1743374365; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9y2iwGfLCsw/LkK7ASOWMxlU+K/ybzYKfyvSxQC13dg=;
        b=CYMGyJ2qx/SSOxrxrYL05VEaM9hVN5UqiThK8rKWJri6u4f4SD6LRLAdiOFpf+c6Kw
         uYrw8msKNc6pSP0ZygXin8UgmGTqB0i+zAi7hsixnyQF4XpgDtxPngX1gyUCEs9uz1Xb
         B8YL/RT8A2KGqoU/a/9BBhvu/+1oR59eR8+iYzPPlCI+Ku5cLxCmP9qk8ItlVSf94Hk1
         164BzjnVaBuV0X9BwoDg+N/HUrmQWvuP4GtTnl6DbyXEk0OoqcWJO9cYJcjVS+LHL1Gx
         BlXxVIjNMeF0hTMd6Uxk997Ahc2z1kmk6+F663qfSoCkgG0wY5GEQjOr4m7stKAWpSfr
         yoDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742769565; x=1743374365;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9y2iwGfLCsw/LkK7ASOWMxlU+K/ybzYKfyvSxQC13dg=;
        b=mjMYahWGQKngFtEomTKxaiaA5gQWnI/RW/leXr39tMRwNERWuDU2KwEgobBqusJMO1
         BIPfZFjggMNHZN6A2O0OPgTgIgFvZV0afC97WROhs6icVKDt1Dqq6loNvUq3GpdeN7V2
         UxR78QwYwxDBNwDzgTviLyowBmDdMUd/WEDE6EEgr23E05u6IN4JDTDUC5BbLIPbHenB
         yTOOJba3SlsoDd8gNkYk6fyWd71jANxSgLHatgppOkCb0k+hesQy/YL7oapN8Ckcl3jC
         zPwaRzPJX9dvDftLOs8DI+QXx8+aF3+HkrnteTPEzk7RzJEp1xKK7HvWDXzoemYcXwax
         1rbA==
X-Forwarded-Encrypted: i=1; AJvYcCXnGPqN+Y81/2yB2h7jpe13dgNsiyGXeo+uZvYz03og1+WSwcO7ENPK8TG40m0qYihY6PLTu9r0edGz@vger.kernel.org
X-Gm-Message-State: AOJu0YycsbXxiEXKuJ+S9RUkZbci79eP33O+Sf/een/LRUX/Zm9GvcpT
	dVDeoLntdUQRKuM4hY597XWIcUDtJ8jZYI0i5A3CA5p4p65w7cIGVS7XQL/6c+E=
X-Gm-Gg: ASbGncuV+pwa300hLZ590MFfUZ34d61/kWcgg+1aq7+8+a/NBZFvt+V3nWVjp7Cd2cR
	aiD5MXs8RukAS1tUVskB2ywt5CWXM+5XHbmHLG0vu7xcdx6UTcU5Tw3rURTaNyXuZrkPL2dPlP5
	GHYiTn6TGSrjZD+lbilkrigW3L+QckQ/pLVImMIfgZOqjPWlx7aHDB23c9feTtqp3mSs4oAz45W
	JUMizsujmClwtjWjgHg8P98kUIp/H3GCLV0uCMDpFebJUYtrTzLHnP3fRh1wjrweIYZ1MqmEQIE
	ljoM986odsih2eDMtieo9vZ7tUnhahH4dw6tmnzvOS2h82y7KeoU6NnfVJGbsKCWklf6gHveKQj
	kDZJbpcOpyacmBeTy1X8EC6Kmr54S
X-Google-Smtp-Source: AGHT+IGsAC+lKGhqNteT46jfSAPWq5SZvMmaurRX3KpVQHgnAMqrYltc7UBx62PPecd7JPcN0qJQgA==
X-Received: by 2002:a17:907:9805:b0:abf:4c82:22b1 with SMTP id a640c23a62f3a-ac3f2297ac8mr1130529166b.32.1742769565476;
        Sun, 23 Mar 2025 15:39:25 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef86e44dsm559686666b.31.2025.03.23.15.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 15:39:25 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Sun, 23 Mar 2025 22:39:19 +0000
Subject: [PATCH 03/34] firmware: exynos-acpm: export
 devm_acpm_get_by_phandle()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250323-s2mpg10-v1-3-d08943702707@linaro.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
In-Reply-To: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
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

The upcoming Samsung S2MPG10 PMIC driver will need this symbol to
communicate with the IC.

Export it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/firmware/samsung/exynos-acpm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/samsung/exynos-acpm.c b/drivers/firmware/samsung/exynos-acpm.c
index a85b2dbdd9f0d7b1f327f54a0a283e4f32587a98..7525bee4c6715edb964fc770ac9d8b3dd2be2172 100644
--- a/drivers/firmware/samsung/exynos-acpm.c
+++ b/drivers/firmware/samsung/exynos-acpm.c
@@ -741,6 +741,7 @@ const struct acpm_handle *devm_acpm_get_by_phandle(struct device *dev,
 
 	return handle;
 }
+EXPORT_SYMBOL_GPL(devm_acpm_get_by_phandle);
 
 static const struct acpm_match_data acpm_gs101 = {
 	.initdata_base = ACPM_GS101_INITDATA_BASE,

-- 
2.49.0.395.g12beb8f557-goog


