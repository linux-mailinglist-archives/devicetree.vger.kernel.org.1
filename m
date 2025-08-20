Return-Path: <devicetree+bounces-206818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AA7B2DA6C
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:59:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9623F7A61B5
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4B02E2DFC;
	Wed, 20 Aug 2025 10:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BMc5CsDl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E021C3F0C
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755687589; cv=none; b=B2bR52P3mwIOWw9neP2tNCM0jKP+UwazmOl5QyuEk+RyEBRenjvQimuflPIgkyr2VN2hB2y9tZgDCTKEFjPL5kmNQnwmvwFeAAxS0BWnEynUUSwiVAn37yJLPLi3Kl6PuFHYJVN6J5NOR1shIMrXBE1fdSclm22KeLpKo+1VNhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755687589; c=relaxed/simple;
	bh=TWZDGkbhMcuhXXzU+zf7/2XfecMUMguBI+bq+5KH974=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=eQqz1NirLoP6+4nhNxVBGn1EEyFU03Ke14Mmlbz8pRrpSLA8ovV0GAUaDMy47UuDP5Hdod/zKADj0tKrsR4mhl2iPyD5HvbRdZQQjX6WYNQNSMJqClhP6dCCSVpPdsH29RWoI87v0Z4hhTwh8gF+D1bFSfRsGFfhQcFctR+msf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BMc5CsDl; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-55ce5287a47so5742408e87.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 03:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755687584; x=1756292384; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EUAfPvLFYAkc6CMJY147Fri1xsOKEAnRwMPgaXAsxZ4=;
        b=BMc5CsDle/fuJYs5/B7d2p3fgr7aP6UPgsyyNEiVxqoTqAgHnA2WB+eLOWIiiU1AOh
         sWHehA33bToaR8Vu4nMBKWL2sakKykixrqgjjLdw+VDOgren7ZaIiwrrQATKgBwAUnBS
         XnIR9Qkxb9EFMkVmrT6mQqXk/KZv6w6rBZ83MykKlBEgGoZTYbIBtxooNPQw26oVrWgu
         sYAE5V+tDmsXkgxxV/WxcSYLLJCP/ASKwWMGC5NzKWVEEq/aDZnXJTlvEwJhaW0iJIbK
         ujltn9rItNpk06YQO7XdCDjTFP4Np1kiR2rd+cjwkpe7H+r8Cqjwliv0C1NkQ4pI+07a
         wGfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755687584; x=1756292384;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EUAfPvLFYAkc6CMJY147Fri1xsOKEAnRwMPgaXAsxZ4=;
        b=SMStrFjgw0dzTweeqmLTLmbUkoMSQ0X/svsCQ85lEBdt5J9Ltin1nHqsWb0hao1G3h
         ekY3vuw/4/s+C98P++ii9caY3IJlCdyIWwLX/lcNP4R3MNeIt1Z36BMJqbiJUKriJvS0
         jgakDjsWiw2JKUKmVBrdohNa2Hd8g7QOt0uOHibN33Yqq2dF+CPvqOlCilk0QJ81aTi6
         W0pOj1LXUTGSMag6ccqAeac9f1bAOMF8hGDY8pcNn1qqtVRizeyA2liHrtLXZS5nOuSB
         k1EGJxsFQZjsS3eeSY0KK63mdVlDxiGCb5G+paQI/bzYlRToYWaNG4LcKZB/ukxd8Cdq
         tbVQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4lNU0fjREvHzc5i2Yee8UG2mLc73npwn8SE0lL2/ENwwCU0zcDjE0D/t2AETcEfdTAWjR/Q/bMHoS@vger.kernel.org
X-Gm-Message-State: AOJu0YwnuwJHq3QBnh/qibIZ6BSXn6WawFumNMjucGMEhtj49/OxgFLx
	3TETsPdJKKf4xH3zBEAk6wtfUDWaogjmZ061MbulM3JojM6eghhuHBnD084pLdyMGP1vEJlV6H4
	e8LMhiS8=
X-Gm-Gg: ASbGnctZEi7ryaZtIVTRoygjvvzlVZ/h4PgZu6oW+qpawXyS/iC47YBlgUnv8UeG+BW
	u4xBcr5+/dg3lD7QZxJNHtwb3to41KENJK+20KXzFycdF+ND8de3bBTTboYtUa7zyF2y/ELxi08
	CltLfbVF2EgNvjqYrlHiEE23YnLzRtpBQzsfXsi8mdzOUuAUK0nSG0fmfLmDx5OEYhvacuTWvfC
	8KLomuN3JIVI+FcQTMpnx8e4hiB//hsIRxcnGzkxfJjJMrzL18A87HRJXKxE+NbM6UCZbB0MrXE
	dSos7Zjaw4OwBRsISh/WKNYCiLKBUKrcHz3LTLrHdZydkB257dNEUWJenBbE+HY1RrKKPUCR9Iq
	HWENPsPUHGXIBeDTOwEI9jELWrcYT/XQc
X-Google-Smtp-Source: AGHT+IFYbR3WeFTK0ooUHD1L33Dezd/U7VscLXaIJmNH0mR/jZ+qUo9jkoyY+oTbkCllHQnE83p4Gg==
X-Received: by 2002:a05:6512:15a2:b0:55c:df64:3780 with SMTP id 2adb3069b0e04-55e06bde67bmr772860e87.50.1755687584094;
        Wed, 20 Aug 2025 03:59:44 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef369843sm2518285e87.60.2025.08.20.03.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 03:59:43 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/4] gpio: mmio: Support IXP4xx expansion bus MMIO GPIO
Date: Wed, 20 Aug 2025 12:59:42 +0200
Message-Id: <20250820-ixp4xx-eb-mmio-gpio-v1-0-0e167398c8ac@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ6qpWgC/x2MQQqAIBAAvxJ7bsHEUvpKdLDabA+lKIQg/j3pM
 jCHmQKJIlOCuSsQ6eXE/mky9B3sl30cIR/NQQo5CiMFcg4qZ6QN75s9utBghDHqnLS1k4ZWhkg
 n5/+6rLV+3taqVGUAAAA=
X-Change-ID: 20250820-ixp4xx-eb-mmio-gpio-80884f67aa67
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

After Florian reminded me to do things properly, here are
fixups and additions to the MMIO GPIO bindings and a
tie-in to the IXP4xx expansion bus memory controller.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (4):
      dt-bindings: gpio-mmio: Support hogs
      dt-bindings: Add bank width to Intel IXP4xx memory controller
      dt-bindings: gpio-mmio: Add MMIO for IXP4xx expansion bus
      gpio: mmio: Add compatible for the ixp4xx eb MMIO

 .../devicetree/bindings/gpio/gpio-mmio.yaml        | 37 +++++++++++++++++++++-
 .../intel,ixp4xx-expansion-peripheral-props.yaml   |  5 +++
 drivers/gpio/gpio-mmio.c                           |  1 +
 3 files changed, 42 insertions(+), 1 deletion(-)
---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250820-ixp4xx-eb-mmio-gpio-80884f67aa67

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


