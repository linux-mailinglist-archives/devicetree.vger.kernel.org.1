Return-Path: <devicetree+bounces-216955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0AEB56949
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86C2817CC2D
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F61D242D80;
	Sun, 14 Sep 2025 13:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PvMmUtNl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7D9221FAE
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757856225; cv=none; b=gY0GZvvXB0bYAcQNi3iLabqaBPxKoahNicj2NNW7uLTQRCsghg31/tu63SOT2iU1tney5LruJ9fTfgblHIIG2a+upoGEhp9noFebbjPHbFjnDEPsk7Saq4S/5uPCw4ZG4/alRUuU57olpHDgn0b+h2SfjdVHybZu4KtF35fDZsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757856225; c=relaxed/simple;
	bh=noXhz4Y24g4PHVqA3gPgMnDwLUm3u7HC/TSG+gMVjrg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gsjwR/uZtY3dqjZlzy34Btrf77LEOPtMcKi9ZI7ZEK26EoxxyJ8wfvZmTqbCsUTkBAFFVNmpK7sd6PX93DgeB2vVbf4yKB9TDZGFgShLzCfeUGzHjfwjvaRj9eyrhAp1oZKe9bK1ztzTSKHNB9aMhJaPbJIssA3347Ma0rfgh+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PvMmUtNl; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45f2b062b86so3050525e9.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757856222; x=1758461022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kaljxPkcfQHPyVYy5h8ZrWxk1AbMPnNmiDPm6nh1Er8=;
        b=PvMmUtNl902pqZ+1PCWZWhFfD26WqEdkDtx5KNSHi6DMvpS+qGn3Lmdi+AHAl5dAMO
         pQc3OHxArbWhcSv5cDNq1og4WbP4HMYRXMVsB2WvxccAMBVJxCAC4S+Id4xnVeSy03CY
         gYUx9Xx2uPUnEnA80lpLNMIVKcOYANPovYfQkcNwl+s+xxpO6x9wcINV1nFG6v47vPKq
         JMyW3Pld9PXmyGWrcV4E9eOaO7AtbS0YiPQOWHVgSGzQq/UoU2EUhjr4QkU/nKmecVmj
         zLW+dT/j+BsDIdBSPd1Tw/N6dPKy/pqzmKyImDhkv4uQyCpcWFjJhFU/Nq7fkV0HQnR4
         WQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757856222; x=1758461022;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kaljxPkcfQHPyVYy5h8ZrWxk1AbMPnNmiDPm6nh1Er8=;
        b=qHwClx0aK15jgCYWghnN/CFWTJ37cmtjkXsmEUvqKpCtpLq2uU3QekBnu2fa/XIHBQ
         Almhp/ZrSTe0ehvexB+ZEv+EJudtzIFEmwPnSjl7dj8/0kt12JKdKSAkVSqlL47Fp6cr
         Js2jLf7vJoe8MyUhDI04vqrB9KKyRLK2I3+EB9mZZ/GRSk5l8dgCMF1vS0ww3TeYUsiC
         wYI7e6UKl1KLU4l+IEcZADx/+CrGkRJZ1oWv9BtiF+Bjw6iRxrRr91SThWgMJ1UcJ5bI
         TQ+lPvDO6VUoYNoJ4i1iB8pS3xppLspnTR6aDfIuchs2rJVfjukOU4B44RQn0NIjotgk
         KIyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLhHBDVUUeuZmB5MukiAHp5KEqvloYKl8vwJryB9+siOaCJJCR3pZ6U1zktP+W4shY00ysNnVFAXAG@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ1j8E+5OpqHj9vU9JIkubyaM+5AWhT3ZLmgvf51VkHViw6b6w
	B4Sa+Iz+rQI0i4VHtOGY2meagNXiPDQdBP5Fj0EQJeXkCN5uKD3ErcKh
X-Gm-Gg: ASbGnctywG7JvqRCQxkv/0wv3nZL4PfyZ8CUi/c+ODvs9bjaLs93rui254gW7+O2ZRI
	8Fx0Bp6giTMRIY2hSjRFpAK9lU5KW8/HixBS47aQLlfXBh1t0d0va1ELZ5+9tLhMz1xstyJKXp/
	85GSZRFuFdIXzH14LhZ9c/CPOXUBwH3NpGwHTO1WcfBaIFljMqhqwnWbRvckFou68b1WrcCpoLB
	2+5STtN8KBU72XfxsOlro0EcfBKgkQFQcPtMb2IYia4ZwC28FNTalJjXM+MXn6P1DhLmwCRFHpD
	fFWc2QI83iix5KKA2vRiVPIPZkDA+CcALe/GnbjttbVgIeNIzSOPSXre3KE+xPzDpXyim8nkjsG
	KnRsupasUuaTV2PawKAHYCUUqzrPrYE8i/TajqrhY0e6EcP/EkGSYMq982YeKVjC0PcyxjbS20i
	Ld23ZfA2ku
X-Google-Smtp-Source: AGHT+IEDzY27XIjmb+pnfP0KAuMr1rdHFrYSHqkjaYiv+DONBXw4koHR1jE3FQkMkK1VOsljfrgsZA==
X-Received: by 2002:a05:600c:1c0b:b0:45d:2ac9:4240 with SMTP id 5b1f17b1804b1-45f211f7099mr102931935e9.17.1757856221985;
        Sun, 14 Sep 2025 06:23:41 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f27f44093sm61736025e9.24.2025.09.14.06.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:23:41 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: timer: exynos4210-mct: Add samsung,exynos8890-mct compatible
Date: Sun, 14 Sep 2025 16:23:39 +0300
Message-ID: <20250914132339.2623006-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Just like most Samsung Exynos SoCs, exynos8890 has functionally the same
multicore timer.

Add a dedicated samsung,exynos8890-mct compatible to the dt-schema for
representing the MCT timer of exynos8890.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../devicetree/bindings/timer/samsung,exynos4210-mct.yaml       | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
index 10578f544..2c01e8bdb 100644
--- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
+++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
@@ -34,6 +34,7 @@ properties:
               - samsung,exynos5420-mct
               - samsung,exynos5433-mct
               - samsung,exynos850-mct
+              - samsung,exynos8890-mct
               - samsung,exynos8895-mct
               - samsung,exynos990-mct
               - tesla,fsd-mct
@@ -137,6 +138,7 @@ allOf:
               - samsung,exynos5420-mct
               - samsung,exynos5433-mct
               - samsung,exynos850-mct
+              - samsung,exynos8890-mct
               - samsung,exynos8895-mct
               - samsung,exynos990-mct
     then:
-- 
2.43.0


