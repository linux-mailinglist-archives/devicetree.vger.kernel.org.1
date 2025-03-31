Return-Path: <devicetree+bounces-162128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20704A77124
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 01:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67A213AA0B1
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 23:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F283121D3C7;
	Mon, 31 Mar 2025 23:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ktdm0Xxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496A01EEE9
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 23:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743462047; cv=none; b=Wdgft9pBwZ4c52f/nLuC6krFclLL9xh1kc9vmNB0X0hJuQZE5vV3ePdKER5LU9hJtdX0DHXc8yxwgHIQMebbNMneCpxr16zopbHKKqhF1SrfKMMpMq9KsGLc6vDRpp8b68IIX0am1THc/JOdjXHhxU1bxawzdTA5q6H//rdSOjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743462047; c=relaxed/simple;
	bh=Uu5UFR8h9rKzKbaED46JCrLLvQ/YDhWURODmFEk87y4=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=iTL8GxX8WsM3GynMUFLyygV5aPE0pRePQ/t+D9E6uR1JwN2Emm1hOC34lkL0mhg5ebIHAejS2Ex+jrhzd5lPipOOWaYpWLDcy0NdRbPuQ6M9dolFabJ++PdaYp7dGkBKENXAwnJugrZM4PoPgC8hNbk2Wi37P+PPtnQCj5nfc1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ktdm0Xxj; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-30364fc706fso8317833a91.3
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 16:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743462044; x=1744066844; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=2A1KKKyyzdpcSVMQiU3dhTgCCmATcVgptXdxBkHBo5A=;
        b=ktdm0Xxjp2YKHoQi9Gid4FqV1MiNaEfq3bVf5nHAAq/lYxgMxMHTtTFqwk6/1CJA4W
         SLKMccWGh3vB28tLsq4+a5M9fgy4eLEa+PtSIuMNNtP+3klAnJ8enMiuVo9onr1CPxsO
         blEJETMl7nhuXnmvsI5aCd9hNDILShU1nGz/N89ZfS3gx6xFoJnDhyYJm582GJV/Yhfr
         GQtLtlGZ5kiy1+sxi0zt0ZWUHHDRUAT8t2D9vyGa70aYtx8VJPEI3pq2Eo64mf9dCwX4
         M6+1nVGd8Ayzk3M/++1X14BxU+jEG7o1HsPIxOXsmOBkFvlFFyuCSkBuRYY6hpR799OW
         RE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743462044; x=1744066844;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2A1KKKyyzdpcSVMQiU3dhTgCCmATcVgptXdxBkHBo5A=;
        b=U14LqjCN+IsHQM8SEsET7tD7F1jfSkGJHXCduRIjxT4UvN8nLTHwWp5AbDItmF94ys
         yEr5EPtUTrg6uGqw2ozMkG3A0E+FeCwmVjHg3RM2l8egrG1KQlkkcjSDUtFe20PpbIXT
         N/VwBl5rVgrRCQffD4WGKF8fX3ciORyoQ+wFvKW7hOaaaNp2rk1z0IFFeGknuwm+I1XX
         8ndJZmbScq7WuQtPE0o8BabRjPazBOgJpqnnlKOOTtTAk/wB73n5f6ihbtpPvmEU0D55
         scBN1QVd2C6a9Jbb1GUI53+kbbln9FwyhSG6kAgt2kjnyvi/fgb6E2zAQq9kX7Cm6CIs
         lPCg==
X-Forwarded-Encrypted: i=1; AJvYcCVc1UUzAB8A0R0IgWkUZ9pbVuSbYEYubZ5DL2NUUVeLUBlXPqgWTLrT+uPKQLv7vh4Q+LrhTqDg/nTq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj6KMzIFPzwwB5eYmTl4EIl8lhvbFMfNKKNzlWiLWaQeTVe4/N
	j2DGBRPH8el7jMETsin4N4UzVaWEsgLY/FO351qEiv9lsarOl/lW8PIluNBdd8rAZmaLKUGbGdx
	IYcwPGewPhwDJiXI/OJbtX30Jzw==
X-Google-Smtp-Source: AGHT+IG/ebJE2gKC/wqWBycsTxmqQFxHKcT+hLYLzDS5AFcHBpCYSXiF3vCmtkgKMTAKak4Gunic/DECRCqZWeNK0w8=
X-Received: from pjbso14.prod.google.com ([2002:a17:90b:1f8e:b0:2ff:84e6:b2bd])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90a:e187:b0:2fe:a8b1:7d8 with SMTP id 98e67ed59e1d1-30560949dc0mr1232407a91.25.1743462044603;
 Mon, 31 Mar 2025 16:00:44 -0700 (PDT)
Date: Mon, 31 Mar 2025 16:00:23 -0700
In-Reply-To: <20250331230034.806124-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250331230034.806124-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Message-ID: <20250331230034.806124-2-willmcvicker@google.com>
Subject: [PATCH v1 1/6] of/irq: Export of_irq_count for modules
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Need to export `of_irq_count` in preparation for modularizing the Exynos
MCT driver which uses this API for setting up the timer IRQs.

Signed-off-by: Will McVicker <willmcvicker@google.com>
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


