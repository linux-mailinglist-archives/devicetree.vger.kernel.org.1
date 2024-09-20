Return-Path: <devicetree+bounces-104108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6BF97D498
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 13:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA6BE282FD8
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 11:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0F6613A86C;
	Fri, 20 Sep 2024 11:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nINvnpQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB214A04
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 11:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726830918; cv=none; b=rs6JLl9r1gb2HEsWQpH1KRs6MrBRiNZ0T5LoHzh1hYeI/0+hUsp7oYPL3fzRu2iQE8YC80cYJK4DUnouy5QUCj2sCqlzl10FGcPuv48quoB9+6jTc0H+C2BW/M69CV831Qm+xJ59WNQ8A/5Rw53vT0tGrtBzUhWBJ8TFawNk4K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726830918; c=relaxed/simple;
	bh=W/l/2NQIDeSWPodi6purnRhJ8jd/DZjrx3WDtrv/tf4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=to/r3H43t9hGvSOs+ZCnzOAG54XBtk4k8gMJxrOLlKpW50dWlaLNIHbFhJmzMhiROPpnWIANuvH48wPzts10zl78SUjJtYb5L6aYbRXLOPP5OePkUPun/ral+qEpkEX0UJtfj47PvlYLo7fsCsGd6DVTLmSj90M+mih8vPhT8I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nINvnpQI; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a8a7cdfdd80so250402066b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 04:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726830915; x=1727435715; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TJ9NqHXUSHxiyxcQjusCgad+8Q1rEeKcLOlI+n4WvTM=;
        b=nINvnpQIAtH/CQekN6Yjs55bwlSCupXf9leRTwrMMt2LdtdUXUSmM0WJlIgQUkPrlx
         QdYrl9hrHldfekjQleycpFtEz+6yMF5vwc1e++/4jFoFdbcX2gYaPviC6ECYxjUncoEA
         mG/IW3XxJBQg3+O17GrqotVX4y0KY8qt9nHOPKqr5vskv/Iox65w008xakAiBFPfcBs/
         jqA55JfA9qoUXGUG0jHTQ5K5/Fd+xQZhiRfv3DHXG4tbvWGH/7YTDIy/f4oqLH2tVtDh
         AbZNVukBDcBMu54EHuKW3p6PV1h0e1ROlmFMFNoTjjFk/gsehRRk9BMKSNy0WSanlYbz
         qrow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726830915; x=1727435715;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TJ9NqHXUSHxiyxcQjusCgad+8Q1rEeKcLOlI+n4WvTM=;
        b=wqjMVlbsxmLahxJPebfo68UnPphy+uNrqfGKPonBoqx5RVa4c/KGcBp0W4pEHJaFA7
         dZzkdGPO+eMBzXX9/vvsbyilo8PfZTkZ6Z5kqZm899VPhGt6P6esNtX6sN+VOd0eRGwQ
         yYP5nmcg9necRxzVmJ5WXIeUmWqQ7rNMBhVsQ1KjP5kRO8/1SuSUXkOy5r5uF+cGrPZN
         /PlmpDMO//2HsnhRM191X300sI4Z2ykxq7XRGue2PoUK7aP3+rsBdj/rcwycipr5SM9/
         QdovpQAv0kK33SI/GOpNPLU4gy9r6oh/zfg9BSX9lpVyZgFlGIULawAPy3wxF1hOQkDo
         JZoA==
X-Forwarded-Encrypted: i=1; AJvYcCVLjB49a+UjPuB5Pqqxl5WcvZygeBkWpyWceCYQq/KQqBSEahJUoBk1ejRcXxBVzW8I0Iv7ZJTQkPkM@vger.kernel.org
X-Gm-Message-State: AOJu0YyAuXlgIkWo7WU6HPC0grr3oMLRVbcehHdzZ97ucfccoZdK+8fV
	RqhPzlLf1VsmzDVkmWwX6K5PyNwAnaGiQaBL8YQipIo3VbirucuCdLXKSoCtBh4=
X-Google-Smtp-Source: AGHT+IHnliuN/RkFq3L3GXDKde5hN1tDpf6axzJaFfQtxrEiWrsJoIHee+ltRqo6QGSk3aYNFWzCGQ==
X-Received: by 2002:a17:906:c148:b0:a8f:f799:e7d4 with SMTP id a640c23a62f3a-a90d517fcc3mr227244166b.59.1726830915317;
        Fri, 20 Sep 2024 04:15:15 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90610f452csm838261266b.89.2024.09.20.04.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 04:15:14 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] leds: Add basic BCMBCA LEDs support
Date: Fri, 20 Sep 2024 13:15:11 +0200
Message-Id: <20240920-bcmbca-leds-v1-0-5f70e692c6ff@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD9Z7WYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSyMD3aTk3KTkRN2c1JRi3VSzNEOzNFPT5LQUSyWgjoKi1LTMCrBp0bG
 1tQCCdAxRXQAAAA==
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This series adds bindings and a driver for the Broadcom
BCA (Broadband Access) SoC LEDs.

These LEDs can be either serial using 1-4 shift registers
or parallel using unique lines per-LED.

The LED controller supports hardware triggers from an
integrated ethernet switch, this support can be added
later, the modern hardware control framework is complex
and will require phandles and elaborate lookup of the
corresponding netdev etc.

The patches were developed and tested on the Genexis
XG6846B device using the BCM6846 SoC.

Broadcom guys: if you would rather take sole maintenanceship
of this or be listed as comaintainers, tell me, it's fine.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      dt-bindings: leds: bcmbca: Add bindings for BRCMBCA LEDs
      leds: bcmbca: Add new driver for Broadcom BCMBCA

 .../devicetree/bindings/leds/brcm,bcmbca-leds.yaml |  88 +++++
 MAINTAINERS                                        |   7 +
 drivers/leds/Kconfig                               |   9 +
 drivers/leds/Makefile                              |   1 +
 drivers/leds/leds-bcmbca.c                         | 391 +++++++++++++++++++++
 5 files changed, 496 insertions(+)
---
base-commit: 98f7e32f20d28ec452afb208f9cffc08448a2652
change-id: 20240920-bcmbca-leds-e6f16f55cfd9

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


