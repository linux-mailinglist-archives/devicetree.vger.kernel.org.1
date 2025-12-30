Return-Path: <devicetree+bounces-250418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA77CE9018
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:24:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18A643020C40
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99D87302CAB;
	Tue, 30 Dec 2025 08:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lXRO2B62"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F6A303A0A
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767083041; cv=none; b=LrekRWw2yFMFX6n281KWtzWE4HWVulbBprI0todpfzJaxpJXP9Nsz/QYlXgvkNSoRvRnXnPMcj1D2sRu0MHSVAI2vd6920Y5HC2pLX2leo8ECgPSQZMQWCnvvUyHFaTSeV2agzGeQ8kYhSQvRsToM4G+XNzK0mmfazvd60lg248=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767083041; c=relaxed/simple;
	bh=fGf2+7rah7o8VIl3XrKMGN/1rQuHOlVs273H9WmWF5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AM+1/BFifKrmwiVZcDzG9HeZQt/R3yFS9a2Gv6jAmj0JRYc6CfdIOC5YEVUNYi5fAghKmGViwnRWfuwyacqEuD+noprTyvjibNxUmIP1S1lAA1f/W0eQafdFzF3yXYETmZEFspw+QQY4CHUVWjZU8jWJmTxnocxJdBk3l6Oln4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lXRO2B62; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a0ac29fca1so82453105ad.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767083038; x=1767687838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w+aoWuGKUE3COGr8tLv4S8keRb3mm8yhErb3FfXmO/0=;
        b=lXRO2B62Dwc+SNlk9cAO5M8x4Qaj3dy1R1GIf7lSnnITWU+JMlxPAvTBGAG+R/OnNO
         Gh6ht5G+OkWjZUSHvn7WiA72j5up5KUFqpaMWjYc9if9mes7oCoR/aC+TdxyfP+OgyZ1
         MyaEzqhTD4MIZrF7ANrZ1hD2dwiviexfLcg37/tFHfXTKKzekpTPrJ3S/HRS0PZzqlmb
         SgKx7b4ngjY4rwVxFXvb+RQgqrwXCk34jaKjPtTLh/N4i9qiu1xTVhg7UCqrVPvMNrsA
         C1j7+4W+EenmaaFjM0xc9MCkUOzqzCqZxNVtM3v1M/UD2bbxJivuNlAYcM7vMB0M/2F8
         +oSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767083038; x=1767687838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w+aoWuGKUE3COGr8tLv4S8keRb3mm8yhErb3FfXmO/0=;
        b=bfWa27GeiSfTuVPC20V+DL1rJlN0pk2YHg7M8WBgYxgQfAjdffzDr5lcktO2s5MVyR
         14nD96M/blzfggChDs0keOk8LLSAj2u0YFf6Lant5HsaJnupnm6B2qlU4kzh1IH35Yel
         2HY1mKezG/ENxPWFLhxalZ99iSzuIkDxbSeCAYk75F7/QhfboQ414mGxXm0pPbZV3zw1
         Nsto6pCKEdoLKokr2BMeUeS5uL492OcY229HBfa1vCeH3NKX/IElLnPxnRvQ221sEq2V
         Z8qF7fI3ZmydhsyCN7BuROUGTlgYM9xd5gEVdjiCrIU4h/5MPYwQ+bWIf305XuxjqhaJ
         D1SA==
X-Gm-Message-State: AOJu0Yyn4OFbYhY7hCsxaOKp3cJ8/3kMkWfo1bDU0lunAPEJKOp+IfiU
	cXWFv2/M/f8a+QJR+sdHhn9b9Z2ZM3MJx+oR4eVWbVMbCSywZCvNezBU
X-Gm-Gg: AY/fxX4Og20WhteySgqTdg56M/b+wbFDtbgJps6MwNVdGRmd2otymF/FV+i6RggMuK8
	vnZUVWQHWm7vnksr68fXydI54p1MfM0cNp0/W408pX/VdRAFnlYYyi5tT4IsSlepkjwQx4wWfLn
	zWm0pXDesUn4t+slsdUJKbur/ATC0/TyrxoC6+xjamnuM/2oRtUTT6X+mBwyQSP+pnyEMvkOqeg
	IvToUel3UofhfBPOK98FE0TbyUqrmwiwCKUwjH7lwZ2UkjtTuqDr3jkr1HJ9Gil96W5NmIltl4F
	9mdUj+LKgAmGatUsuBV5Mlpd4w1yWZdKHUUZo23IOq8i8cMxGkdzJl5oPvnSnG+o9yfT3oCL/8K
	AXpvNP+Rk2KS7HvzuvERdT7nQDDn0m+wA0BWQSoClzfPl+H47P5517FRLq7F8t31vlWrbXPsTzZ
	8oLjfC4ampe/nP2POha2KA9J448vfELIhh
X-Google-Smtp-Source: AGHT+IEqHDfsSyDO3VlHTorugyXfpfeGQOeRJQU8qYXXgVUBz3RHLFMevwY9LVXP48/Om0LJAhGt5A==
X-Received: by 2002:a17:902:c403:b0:299:e031:173 with SMTP id d9443c01a7336-2a2f273241fmr322325705ad.35.1767083038609;
        Tue, 30 Dec 2025 00:23:58 -0800 (PST)
Received: from MRSPARKLE.localdomain ([150.228.155.85])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d76ceesm296667165ad.91.2025.12.30.00.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 00:23:58 -0800 (PST)
From: Jonathan Brophy <professorjonny98@gmail.com>
To: lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Andriy Shevencho <andriy.shevchenko@linux.intel.com>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v5 1/7] dt-bindings: leds: add function virtual_status to led common properties
Date: Tue, 30 Dec 2025 21:23:14 +1300
Message-ID: <20251230082336.3308403-2-professorjonny98@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251230082336.3308403-1-professorjonny98@gmail.com>
References: <20251230082336.3308403-1-professorjonny98@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jonathan Brophy <professor_jonny@hotmail.com>

LED-FUNCTION-VIRTUAL-STATUS ID to the FUNCTION ID list for device tree
bindings to suit virtual led drivers.

Signed-off-by: Jonathan Brophy <professor_jonny@hotmail.com>
---
 include/dt-bindings/leds/common.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/leds/common.h b/include/dt-bindings/leds/common.h
index 4f017bea0123..f03214ba28d5 100644
--- a/include/dt-bindings/leds/common.h
+++ b/include/dt-bindings/leds/common.h
@@ -63,6 +63,9 @@
      "lp5523:{r,g,b}" (Nokia N900) */
 #define LED_FUNCTION_STATUS "status"

+/* Used for virtual LED groups, multifunction RGB indicators or status LEDs */
+#define LED_FUNCTION_VIRTUAL_STATUS "virtual-status"
+
 #define LED_FUNCTION_MICMUTE "micmute"
 #define LED_FUNCTION_MUTE "mute"

--
2.43.0

