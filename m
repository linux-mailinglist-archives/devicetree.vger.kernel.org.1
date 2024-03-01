Return-Path: <devicetree+bounces-47654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 162D186E0C0
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 12:56:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADB82284369
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 11:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D946D1C8;
	Fri,  1 Mar 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eIFn0f9H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189C66A8AE
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 11:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709294154; cv=none; b=gzfGygrCLVYT/I6MZDizBuiIuGRzuVbsmqGjHGTmkn77T5Tn12yJpyrX3+TCHeH1nYHcbTrgpeAAfJ8RPAHTl0hG4uSTbsJ+6gMGzLH3cvnrScT8K09q/Tp9kTzWJBMMd4LxVqXiFVeT4BkU9OJtCsuEbGr9ES/pB2y/EIpTgrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709294154; c=relaxed/simple;
	bh=9IBd4IHdnmgZMr9MhB2rgqeToI13RNjtnipSgmttHIg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=g/NRIBwYiH4ryhd6Y89Njn81NI5+4kCkZmyl+qp4yuM7lrWicklM5jaBJEgiwI7XeWiWo13U59KwFdFu7kxrW88J7h2dV9KgcZXTqyVpOyzoMrTs98OjfCAYWjnRHTnb+bnY563WvuBT2lmavT8uHrR9lpX+pM3ZnPOEmKdXjxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eIFn0f9H; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-51323dfce59so1781641e87.3
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 03:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709294150; x=1709898950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PH9FTG8r38kw/2KGPIjmzvSzyg9hKHZV3106W9dU8K0=;
        b=eIFn0f9HdsKAjpJMPIO8Ee42E6ZkP04W4IggB97tcnZ1GKtBpqH1bSNQsr5wMT9bTO
         Y5t1ZdOwX56MmioM0UkWz/tUcL1rsbK8SarBRfQrrS/28usVFnviwKOljazO1XTM6kjM
         TnpMEVxWO3Z/BXWxCE5fWePDE56pzPBNtoyeZWgnO4T8tiehbXKXuZy/ArP5qjch4BVy
         nXbRFBO2jtL6Q77I3QOl8CrjPD47KgjJzgqNFCn7NYsfNbCl2kVfp/BxsJw4bEWEBXZg
         /hTouSIb6r6qTGdVVwEIjxhCnfTvp+hMperYaqykRoM2p/ZulvIIjZdOp9Xqsf/wv+ki
         M3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709294150; x=1709898950;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PH9FTG8r38kw/2KGPIjmzvSzyg9hKHZV3106W9dU8K0=;
        b=w74+xccwj17hRme2LLoI+6EoV6f0W1XsmRuHJRLb892pOD6RHPw8neGTP7vyaiAyLZ
         2gxiF1LZt8pX3xAq+dV+omk4nUrjn/O2nx4hRtpVnol0BHgmnwVgOpy67A5/qT1dtCV/
         WIHzn309r3/Pw7KQ1Tno7n/gCrURERve781DPEie40TBD1p3ehZPAOpjQx0+VuGPwB5z
         8TsH+GXsvC9/ilbBHSKPOutEqtocdGKpgr/optm1Ny5hYQ66UadDvS1/t1vOXgnafN5F
         lHUAjZNYhnc3jCc0ZKgG1kXWf7hkskJCxqe/2nYXzDirrA6HG3/tqByYTisNmTu8PhzA
         p5oA==
X-Forwarded-Encrypted: i=1; AJvYcCVdAgEGx13Trs1q1uH+PINrwp4HWfSJA+rfOhakj5oB2oNQoHGIFT45NKQP6iTVy2nGRsuWjV17xqKEQE1JcgQwESqcR1/1ZT1XWQ==
X-Gm-Message-State: AOJu0YzhpcT170Mq9qZaI+7P0r8Ns3K8FQk0Tg6ck4L45cUIumhUO40l
	wD35++q67lSG4Gs3poAjXQdFJG0gIKkfcc5rEgLtQl1ayr8vCLlP9sYKFHawxkw=
X-Google-Smtp-Source: AGHT+IGe/5toR7aR9KlswPXRC7C3s6xaBbWIf2MKbXyVEOxjns4ZoEJA1I/mWf8hmVsKPNGdq0dHlQ==
X-Received: by 2002:ac2:4c13:0:b0:513:24b8:a7b1 with SMTP id t19-20020ac24c13000000b0051324b8a7b1mr1236878lfq.47.1709294150170;
        Fri, 01 Mar 2024 03:55:50 -0800 (PST)
Received: from ta2.c.googlers.com.com (110.121.148.146.bc.googleusercontent.com. [146.148.121.110])
        by smtp.gmail.com with ESMTPSA id i10-20020adff30a000000b0033b6e26f0f9sm4367674wro.42.2024.03.01.03.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 03:55:49 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: andi.shyti@kernel.org,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH] spi: dt-bindings: samsung: make dma properties not required
Date: Fri,  1 Mar 2024 11:55:46 +0000
Message-ID: <20240301115546.2266676-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.278.ge034bb2e1d-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since the addition of the driver in 2009, the driver selects between DMA
and polling mode depending on the transfer length - DMA mode for
transfers bigger than the FIFO depth, polling mode otherwise. All
versions of the IP support polling mode, make the dma properties not
required.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 Documentation/devicetree/bindings/spi/samsung,spi.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
index 2f0a0835ecfb..f681372da81f 100644
--- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
+++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
@@ -76,8 +76,6 @@ required:
   - compatible
   - clocks
   - clock-names
-  - dmas
-  - dma-names
   - interrupts
   - reg
 
-- 
2.44.0.278.ge034bb2e1d-goog


