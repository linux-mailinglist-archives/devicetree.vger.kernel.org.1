Return-Path: <devicetree+bounces-162707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8024BA798E4
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 01:34:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 792CE3B299D
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 23:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBC551F2377;
	Wed,  2 Apr 2025 23:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="zVVGxADJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f202.google.com (mail-pf1-f202.google.com [209.85.210.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFCF1F583B
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 23:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743636883; cv=none; b=Hvoc3gXpunGIktehDjC6p1Tyyw/c8nFAE8pUkwTE9j162KZvWyrYrz8j52Iiloj8jUN09MoUYTpGR701c+hTukkV2zDNs9Ch1eJ9dDl5V6XH6IyKPAaJ4DHMlLjGREk3I7r054u8V6/Gy7FWFJ76Tg9yYrZycQN0sTNboeLnAMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743636883; c=relaxed/simple;
	bh=JuJg3RWFLu45pm77OOaGXe9n2ejYZstIDW/7RArcbeY=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=tc++DlmWGnDgMcNkjR67ruNzC8QDspZnMiN5fN+B8Il216xhBpNgr6yMTaRpmhPpJNfTrGUdZmeNioQReAPLLzSJmazvccU42UAOGIaXGwHf72hwTOZzXVtkXSKyVpFre88y1mSGpIb0GBBvwICd4eOBS3Jtv/HR93Z2y/g5ZZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=zVVGxADJ; arc=none smtp.client-ip=209.85.210.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pf1-f202.google.com with SMTP id d2e1a72fcca58-73917303082so201951b3a.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 16:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743636881; x=1744241681; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=5xi5mLFbZUHgD9CBrYI3yiaxvs0vxI4kX9JEPJJ2pFk=;
        b=zVVGxADJtNmGe3PwHGcLS34C3ghDFkSVUS06enpgy9UNg9nuQJ0cQmixvbZrzPXDB9
         VJrWIbhwTTKSpjOin0BPD4U6g/GjfLLzkvd7A1Hdjx7lQmPFw4F4bIW52ngl/R/jqFQg
         Ojn8ggWPcXFqD0xPNK4zFQs8x5gjvo5RKiBTr3z32UdJ+fyhkQ0TLj8IO39J7amYNSds
         8WwZV0NDh6ZwYJAJ6fiYppM5hIPbDoXjj7/OLxwvSDVdUgDE4VHk/R1FRji2sC3RVi/f
         Fbg2w8bk4D9EQWow9jJRPk1fD6OW2pZYiidbAZ64iuC3uAFDvu5gq29IVOEIQoJiYRNI
         bKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743636881; x=1744241681;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5xi5mLFbZUHgD9CBrYI3yiaxvs0vxI4kX9JEPJJ2pFk=;
        b=esJwIsnU4z/WBJWyvRn11cX3+wdqVhaB9COVsEPeXARFaEUreZI//8m6PLPkjdO2Am
         c14P14Mkl96xY77/QG45w1ejPLWhV9VrlJKP8PAs66k1uwqsYB7pns4pcoCPMu2P6SCD
         ZBRRQkYgEZFGCLzvePEM/h++HSmTk0qTnJAI9Vn4VRUkBl5a4YMFONNQLvnorj/T72sI
         t7E8uXlBx6k8C3bRk1ZsmYpVp4Ytwf34l2w+bOcv4im//9ccOBSo0w/UePNIfEw0sknH
         wZhewj5LlNvn46NKjY6tAgTdCZwW5kmWpUhwS7WG/aS8+s39nj+6s/K7GxKUIv9JDEAr
         oERw==
X-Forwarded-Encrypted: i=1; AJvYcCXkYb1tNeQJDsViByrdB93CKP8SbUbagMOsmViT6Zz1sR3pyWaewljgfHYRdrczyD5Xc2BzPotE8QgK@vger.kernel.org
X-Gm-Message-State: AOJu0YxoBT/1smo+tPo8aZqymhJ5/e+Ha907IhgMIwoeOzRQoDsGILzB
	2UNYkvVhEwe4ivMu9Tn6MScQ9NHBkwRnHluJCK38V3xCHG2cUjLcp8/0ZpvXOPDUx7P//TmWYKY
	t0sktVSBBUECwryCO0t0O4HHJmg==
X-Google-Smtp-Source: AGHT+IGTNM1wxMMNBBsjkTvh/Xn764ju971ydcAgLFhQFJR70t7PGAxvgV/oZ/gvmmS2Z14LxOex+r7v9TwTloj7VDM=
X-Received: from pfbfa18.prod.google.com ([2002:a05:6a00:2d12:b0:736:aaee:120e])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:a02:b0:736:62a8:e52d with SMTP id d2e1a72fcca58-739d85573d8mr639945b3a.12.1743636881683;
 Wed, 02 Apr 2025 16:34:41 -0700 (PDT)
Date: Wed,  2 Apr 2025 16:33:52 -0700
In-Reply-To: <20250402233407.2452429-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Message-ID: <20250402233407.2452429-2-willmcvicker@google.com>
Subject: [PATCH v2 1/7] of/irq: Export of_irq_count for modules
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>
Cc: Will McVicker <willmcvicker@google.com>, Donghoon Yu <hoony.yu@samsung.com>, 
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Need to export `of_irq_count` in preparation for modularizing the Exynos
MCT driver which uses this API for setting up the timer IRQs.

Signed-off-by: Will McVicker <willmcvicker@google.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/of/irq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index f8ad79b9b1c9..5adda1dac3cf 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -519,6 +519,7 @@ int of_irq_count(struct device_node *dev)
 
 	return nr;
 }
+EXPORT_SYMBOL_GPL(of_irq_count);
 
 /**
  * of_irq_to_resource_table - Fill in resource table with node's IRQ info
-- 
2.49.0.472.ge94155a9ec-goog


