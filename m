Return-Path: <devicetree+bounces-34670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F8B83A7F1
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46B581F230FC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5701B592;
	Wed, 24 Jan 2024 11:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="oWJmGi+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6BC1B7E4
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 11:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706096026; cv=none; b=YKcSHGGCLxS/pqDNMqMQDlz8S1DpPyGuK9NBIDe4WsHQNxd7aivbbmp5+CEZfDXcwIjOrsZD4Bn/8vPJ6cD+6PQ3xXcMZgnD0hBozI2sFKQ8bdmHFs2d9TkSiJMtCdz8rI9gonyAAQCoGQuwpEoR/N69eOIjEOkPqiiQ7ebIj4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706096026; c=relaxed/simple;
	bh=mKwz34BORUmdPjSPJxH7WkuOGdXYEYf5RmYQkE+fz3U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Pns37pvf/JP6ggRZMzIMoZtqjRnoY5DTWteyA1Ln2e+CeOuEnX0I5txVxr9mjUunHW6Oci+w7rjwB7cyEZdsrAHq9UKxFyvlHjZb+8aSjajZBI+XQ0G6WwcFkaKikNTZWcZKAXvjlfdET/QSw/aXibxQ3ppFnHHJOP670Ktx/k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=oWJmGi+G; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40e80046264so67207915e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706096022; x=1706700822; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a87Eb/9UHW4xhpeCgDcrODCTwbLMJ8A3Dzblk+B1akM=;
        b=oWJmGi+G7MGq4ht2p0gHeELQoKiqFJRh0oG/xszBkiDDz8NvX/EhPoLwOO/Drlh+55
         KE7P7pWukxWHshNVTN/nfqHMVNITp7CGcfkNP1xsla7UHcB0o1/d8dZkgIqmUcCpGEZQ
         NsWb/48j6yPFqAjtPYssy7ITeUyMgT4KclEdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706096022; x=1706700822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a87Eb/9UHW4xhpeCgDcrODCTwbLMJ8A3Dzblk+B1akM=;
        b=f+lBmiXSlBNaP7dGPfYkEAMvUjof4QKKj88PlFouBjWwzpIINy1hLZh4hELgz2wsoF
         IqUTlIA0W8KNvrNwQ/ZHaiydPewycOO+3X0181GI+9Pmwhm6dEnlI5eivu2FazxDFr1J
         n7w5mMyrKDjnLke/Kv4eloMlyOjGkhREIfKLUMbq9Kb9FpjyU60OD/p/nghsZSos/NYM
         iQpHmA4AgCV1TSjyAx1C0Tq8GC1sWg1ogkuuAM4kV8BlAvF9WwhS3usvTALfCyrhvCP9
         tN58vzlHzNh9bdbjDMdrnKw05aheh57Pokn+sSiNvkXHc7vwbweLm8Hu1kmnpufonY5i
         /tKQ==
X-Gm-Message-State: AOJu0YzRNjXzQ9lWHyh6jr60kYVbRj1iruTMcMHd8bQK1SZDT1Qf7IIn
	vwUKJ6zXsFNKXioSAh3BU5BEyF/+yfbIm09KeuGT4GO9e4u7ALHFUvBdHmaMpJLXnXh1kHYg6hx
	V
X-Google-Smtp-Source: AGHT+IHhC7Xk71DCFuIqvgcVaL/Kb8lFavZF3/EWWYo8FxE3kkEBMz4MmfbX/pgqHTKlP0HESOFPUA==
X-Received: by 2002:a05:600c:300c:b0:40e:66cf:4d96 with SMTP id j12-20020a05600c300c00b0040e66cf4d96mr1225243wmh.130.1706096022667;
        Wed, 24 Jan 2024 03:33:42 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. (mob-5-90-60-192.net.vodafone.it. [5.90.60.192])
        by smtp.gmail.com with ESMTPSA id i18-20020adffdd2000000b003393249d5dbsm8447950wrs.4.2024.01.24.03.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 03:33:42 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Lee Jones <lee@kernel.org>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v9 1/5] dt-bindings: mfd: stm32f7: Add binding definition for DSI
Date: Wed, 24 Jan 2024 12:33:10 +0100
Message-ID: <20240124113336.658198-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240124113336.658198-1-dario.binacchi@amarulasolutions.com>
References: <20240124113336.658198-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding definition for MIPI DSI Host controller.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Lee Jones <lee@kernel.org>
Reviewed-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>

---

(no changes since v8)

Changes in v8:
- Add Acked-by tag of Lee Jones
- Add Reviewed-by tag of Raphael Gallais-Pou

Changes in v2:
- Add Acked-by tag of Conor Dooley

 include/dt-bindings/mfd/stm32f7-rcc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/mfd/stm32f7-rcc.h b/include/dt-bindings/mfd/stm32f7-rcc.h
index 8d73a9c51e2b..a4e4f9271395 100644
--- a/include/dt-bindings/mfd/stm32f7-rcc.h
+++ b/include/dt-bindings/mfd/stm32f7-rcc.h
@@ -108,6 +108,7 @@
 #define STM32F7_RCC_APB2_SAI1		22
 #define STM32F7_RCC_APB2_SAI2		23
 #define STM32F7_RCC_APB2_LTDC		26
+#define STM32F7_RCC_APB2_DSI		27
 
 #define STM32F7_APB2_RESET(bit)	(STM32F7_RCC_APB2_##bit + (0x24 * 8))
 #define STM32F7_APB2_CLOCK(bit)	(STM32F7_RCC_APB2_##bit + 0xA0)
-- 
2.43.0


