Return-Path: <devicetree+bounces-210758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE68B3CAF8
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 15:00:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0683C5E4A67
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51FC512CD96;
	Sat, 30 Aug 2025 13:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EnIyg1L8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8907262A
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756558836; cv=none; b=leaiHV3vBo/7D2NiDJF+ChQs4zJjZ2z+5puoNOGDhu02LDADlUAfY3mC7RnhCUWKrvbyJyzwCrAJBAot9WAdeXId3N/v+bOu2Pm4lNxNVM1e3D+KDzY+7GVQtHE3CSy7DpxFbamokJH0+1zAfbQdDaF0XWVd9O4lmxtTAjbf1KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756558836; c=relaxed/simple;
	bh=DA4wgX3EYfgyQpikaGCN+15DTaZ1V7EHqQqn6vwCSL8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bXkM+nQ2+3zLBCDncP1qFSWoLbzaVQf7V4og8HT5xqySr4Uhee5+wbNvE0UKsx3Ojj01ysAoKf+R1VAAhJmE1dREHjIfP3i6Oxm2dhvnTUOt0AY2BnMnrjA8V2yYnXhoVA9XuFvLg8JxinBs8LcA7w49S/Bdltp7ImB2eid/KoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EnIyg1L8; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3b9dc5853c8so68772f8f.1
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 06:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756558833; x=1757163633; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qfeLaGoTdP6BtGZILP4MDkJUxkRbtsAWUz1NmyjHx3s=;
        b=EnIyg1L8Pd+LsKB3O4E/CIn81jnfYb97xfE1bu1rKBQOyYKhA77ScL7+Da0Mi5L5Xk
         ccVcwt3zONB/ykwlmq6yW0Al8Lz7NWgSRIVraiGE4td8dKTbXfSSuCkT3ILLPFuzZduG
         PeAhk7/IG8ZynZE+zWeh3vK0TdufaOQsBny3DoKG7WZBZl2lChZTuOulZlrVjP34sEQX
         FEhu6NvH2+exFqnbnGAekEB7GGTDMn2dbPwLe3iMrMWMOCOsZvD9EBD6SYkUEcjeRk99
         QvBDzuwJ8hNOcNs/uQ2wgVATtPYGvoRmDg7nvrzeuUIX+AG5/8PkYrPrfA2a5EBfwi/4
         Z49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756558833; x=1757163633;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qfeLaGoTdP6BtGZILP4MDkJUxkRbtsAWUz1NmyjHx3s=;
        b=oqQe96pOqynQ0lXl3JXr53plJisG/lyb1wkAOPltgnwHxnKEk5FwN3X3gGEQnlkmfV
         61T/2O7dSxYoMI01YUSaflZtTGJ/5bBhjPMHT9sdrkkmkyuhv6fCu016M0kFUjEaEJMU
         0Km9AgNy6joYf/V6JxZvZ8lGZPVd2LIDeXCORzeKN03XEbfcZY3eTE+RQMTOO9RoGk9t
         jIOwQMEJpYMnzkRK/+RTDjoA5jHbnwNW7i8FGlXDhQUV4jcxkU7FQbAfbqQSaEtEEXDR
         8q48bNcv/xbw5tDSCC+Ia4fRNFUseWXKILHeZzOzam4RLErXlidafjH4vGS4iDMx7i4x
         8CaQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+pDhSbXqG+wlTrj6BM2bnSvJlOeXojf8kawQg13YKXoXNH+XRxje9jgeHGSHsjir+odM8lKjJt228@vger.kernel.org
X-Gm-Message-State: AOJu0YzU1zfGaK0xh42ikvmjYHe+X3WGoTw1sNm30LZQ7DBhz4/DPN1c
	+wk1lYc3itJoRTV+1WTDsDZtum/MjzQHjMSec59XEnYEK+T0GVAFErMzB593h7gAC1k=
X-Gm-Gg: ASbGncvkDtawF7tlEVJBpFdpuV3gkxOGjR9SnO/zNq39Pazt3cfJnTMdvHiDDSAyJT7
	uk+DxTNwRsjZxw4x0MERJkoAAFhhxRE/eE9UxuKoM8EpufHD746Dm1xRBppGasAitX24X2MShkl
	piREuxYLknmgp5li1rpQ0yddug+Lnw+bUbG/x6tpfcLivEnPTMq+7MO1K/JS7695w8nf31nNHy4
	SGYsLzSg0BZYAp9lbOExLIBelRXtOGgpxqgnPq+qzZIoU5dJcI2TEeWcL687C4vkAJxJ7kwMmTw
	W0WPcw1iuuYsVx7yLvC0LYP3EO9wgtDl2EhCXvtOKN1XfHI3ZOInfnz9vqsz8wwjZleIs0kgAJ8
	/T7DtTRNV9A4Nm/FeLHKt0ZE3RJW8s82HPw==
X-Google-Smtp-Source: AGHT+IE5p98Ghu584MKvUJatgiilSAZu0f5rVgHs6pyZV2Dfwz2KFYkierPbjEVer9WHd3/Q/XjObg==
X-Received: by 2002:a05:6000:2dc7:b0:3c8:118:c1f9 with SMTP id ffacd0b85a97d-3d0f9f4dbb6mr1839559f8f.4.1756558832542;
        Sat, 30 Aug 2025 06:00:32 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34491a5asm7077534f8f.55.2025.08.30.06.00.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 06:00:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] rtc: s3c: Drop unused defines
Date: Sat, 30 Aug 2025 15:00:25 +0200
Message-ID: <20250830130024.142815-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1179; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=DA4wgX3EYfgyQpikaGCN+15DTaZ1V7EHqQqn6vwCSL8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBosvXoefRStvfAYbB9xsDKP5gkBK048JVecwDBE
 pLDkLbYqb+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLL16AAKCRDBN2bmhouD
 18qoD/9asV10l6/Rkbsxq0X0h3QKfp4eLxqbyyZ6U2AltxF2gujn8dVZDbmAqWO4xaTiuU/lZDB
 Qivqu7F7QIqstSNc1tOdpai5g9BET8CPNF58J3dMPeFfrI48Lo4QtpSR2T31joNlldepX6pxt94
 RCxjugvRRv0wYqyP4VLRv6ot36nkkxge+lvMm/J4Ucuk6u05l1JEhpWJ0u8QyZ06MYrY8PJInwC
 HYV83dgo4YWhPy0b+QSKt5zoDSjRkyKm8QlOu3gotS0fouyoY1lH4zBo1AWmUp7Kt9Z9l7GMyOj
 74t50wwTdJa2Ig4cnDejK3bKUkYWVpk9sItOYReVwWrXZP60BoPdlPvzSlP+LANBauZjp9oFKVw
 BSweqKTIwA2SPkqRzQsTQsyIPWOUk2K/FMUQgfvjgvBfYLyzni9IKG6e+VmWiRhIb6626zJ+yqS
 tf3Oe5K9ZlonPpz2XJJGyvSfybcrkyT0vB/hkbRqQZMcEyLZNE+Ruao+mSvfd707z8WDDHbnFP7
 9JQizv7lyGPGOdp4Ew6zYHiORX/M+I/6DM7a8Qly1jCUCQOmYOMzpLUy/KFEXB5Fahw3VnzSNCu
 U+fvVMns97dvVzha1VW1txOm2RzXzD1M8sfLx5/olGigxnRybWb9MbhZJY2C/+/vxUxmLZaUKyZ so6yz3wSKMlG46A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Drop defines for S3C2416 and S3C2443 SoCs which are not used anywhere.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/rtc/rtc-s3c.h | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/rtc/rtc-s3c.h b/drivers/rtc/rtc-s3c.h
index 3552914aa611..44e9d6c9428f 100644
--- a/drivers/rtc/rtc-s3c.h
+++ b/drivers/rtc/rtc-s3c.h
@@ -24,22 +24,6 @@
 #define S3C2410_TICNT		S3C2410_RTCREG(0x44)
 #define S3C2410_TICNT_ENABLE	(1 << 7)
 
-/* S3C2443: tick count is 15 bit wide
- * TICNT[6:0] contains upper 7 bits
- * TICNT1[7:0] contains lower 8 bits
- */
-#define S3C2443_TICNT_PART(x)	((x & 0x7f00) >> 8)
-#define S3C2443_TICNT1		S3C2410_RTCREG(0x4C)
-#define S3C2443_TICNT1_PART(x)	(x & 0xff)
-
-/* S3C2416: tick count is 32 bit wide
- * TICNT[6:0] contains bits [14:8]
- * TICNT1[7:0] contains lower 8 bits
- * TICNT2[16:0] contains upper 17 bits
- */
-#define S3C2416_TICNT2		S3C2410_RTCREG(0x48)
-#define S3C2416_TICNT2_PART(x)	((x & 0xffff8000) >> 15)
-
 #define S3C2410_RTCALM		S3C2410_RTCREG(0x50)
 #define S3C2410_RTCALM_ALMEN	(1 << 6)
 #define S3C2410_RTCALM_YEAREN	(1 << 5)
-- 
2.48.1


