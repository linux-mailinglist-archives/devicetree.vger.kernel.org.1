Return-Path: <devicetree+bounces-172362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A6276AA489B
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2ED1E1881FC2
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 278B625B68A;
	Wed, 30 Apr 2025 10:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Ar3MVEeq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8E624729A
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009190; cv=none; b=i2v26gy5nsT6CzpaqHosDPPWqclQyEm5h7A7qgbWOgZJK7rYyyWLo8tF2Cze8aj4vRpMqu/FnWPcYrkuMURKMd8BsGN0TUd9cK1l5ryN1ZBFPtpWwQ41eAVv5P498Y8FXSVg12MkyYe7X9X+gIN4XBwhFCV2NebIcQrzqe86unc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009190; c=relaxed/simple;
	bh=qqyemasPL6QK59u6QUV4f+mqdNA0WLZoLI0hQaQeRAk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=baSTLhCkD++ZYe7oIVXYoVP8fy5RAKpxhJEt6MS13JXHNXlRs4K0JNF0DphJN0bc9KBmm2OOU9pBYmN37fzsVN1E1D7DS63Sy5bM1V6v1EXR220VgnMr9rp2j2aKski1hfM1CSwRsH5apYIDq5SVSBj1jzQpgsNajG1XtHrXD1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Ar3MVEeq; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5f4ca707e31so11832862a12.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746009186; x=1746613986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TfTKPxq4bZ4SwTcRdBqaDniN3wi53FAiqmOye0MFIKo=;
        b=Ar3MVEeq032Zsp2bufQHkoUShr0l2ARJ00SAzEmIxHbLo7ufXPfuT/OFIyzkjbHwB/
         8arCjpcysqoHLbdlRHedX1yniC1MAit4Iy61zTfmmZIb+kRzpr8Gju7toflkHnFr1ioC
         siWYCQ7rnG5t6S8fJNXn53WYfeM8Jajveq9c3o8JcD4mWeHHkhgGrC2or5IaW0li0pjb
         hQ8/Q+5xVz3yBufrns5L+OAr58s1kdAwnTkENCcBrjWv/mVla3y3YaM8xCkveG4/NgR0
         t0ZdJ2jKLabmgUxRK/h0CmhiiZUcPWCiKG0rNW70CTFT5I1NCixAVa5hpm1Ud+BC8XFI
         u4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746009186; x=1746613986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TfTKPxq4bZ4SwTcRdBqaDniN3wi53FAiqmOye0MFIKo=;
        b=Z1TLg1s/+i9EMq0K15DOb6drey6oTtvGao7SIbEBKJ7hKNB3p3hSsYEer4YIptSrvT
         Wnw8M59jtIKVsj5lICRnL9zBGEWqIKDAGny2M4Z/+2UaeS46VmmHoNIjhb4oLRgRKeaY
         9MGaXs1LApWyQG8Dy/Z79Ny/wppZF4tvPVW/j5B2wRhfOUw7N0RVu1ariu7nr6aVGckS
         C4iY1w+HPttVHwsmqmm/i1g0gUreU6V9pJZN1LhNv9JB5iCPovHZJnThoGhehwOKETrV
         sXmLXMryyNi70qQzcy/tHMFNKY3zIV0YiSv5i38hwA0EqNN4lgyjvLqtmQiTfXpb8GJO
         59Mw==
X-Forwarded-Encrypted: i=1; AJvYcCUxXlEaI7s9sU2w3/EBc+HjIp7V4ssjmc5Wh+UaErZ0QdOQBQWAPyPr8jxCQKsiBH6InxhzuGfZdht6@vger.kernel.org
X-Gm-Message-State: AOJu0YyqC5CyOCfPAWjbwip9e04hxM3/1QPUDrZcYgn3IF7wgQFlA0Fq
	d3FT9RwVTUu9aqKnczckx/g4yRfJWGfRcolQMlaPEApbdAQ37SMzI7Ti36Dx+iE=
X-Gm-Gg: ASbGnct0DI6QuWmLXFYDNn9Hub2Qmeh76hgPGc8LrqboSoGCQcc5Ha4+0mGCrEdQkiJ
	ddJ/ORyiIwIUW32CD+MFviqzOAXYlCfemFAT+QpFZl2Sncv16JOq/ZYhiRsCTAWxm5KTCqlvsp6
	xtKceJsX92k4K0ukp0Yq7HpuZBMKuJYkG4tnyNOIrj9OwmTR1MLjhiXN97xOGqIAtv6YbvEtQSV
	UX9eTYqw+n/crPcw3WrGCSRN41qfmUjO6imovQ19WpysGDBxAc/+3Mzmr5nggNQ6AhI4C3Dui4F
	pCzJJwoKVyen3sg6+lVD7fLEGPHDoJXa0clGyo1N7bmUc2ey3dslCcm7VyLx82agNODLS0SdNgS
	01rt71w==
X-Google-Smtp-Source: AGHT+IEEfl+k3BC6Us3G4LOLDc9wt5JbZ4OiyNOr1AeXljqq4kLkSZXbAFThitp0f3NmQGw8dzbixw==
X-Received: by 2002:a17:907:1c94:b0:ac7:1600:ea81 with SMTP id a640c23a62f3a-acee2600a17mr193116866b.49.1746009186334;
        Wed, 30 Apr 2025 03:33:06 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.166])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ed6af86sm909390366b.133.2025.04.30.03.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 03:33:05 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	saravanak@google.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 3/8] of/irq: Export of_irq_count()
Date: Wed, 30 Apr 2025 13:32:31 +0300
Message-ID: <20250430103236.3511989-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Export of_irq_count() to be able to use it in modules.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
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
2.43.0


