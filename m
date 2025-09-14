Return-Path: <devicetree+bounces-216899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA1FB567E7
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 811D8173387
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 11:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15E302561AB;
	Sun, 14 Sep 2025 11:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fogq+P1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BF8248F78
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 11:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757849391; cv=none; b=fAJ5F5BNeq7NZCjSEGJjAYXA6mRyR0y8B3JryrHciEWrob4sfm3LhkRIg7f4hvvRLx+ZZhVOmHddBFv2onnFj58EITfqd7HgjM4yUE2OHha0MKtkI/cVJFxS6HL7tPzTaSXN2kwe774rizTUbLSbpAbPVPq2G+wVb+a7tHvLLQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757849391; c=relaxed/simple;
	bh=tNCkYEchRdJ7RVdGf0Ni9Ay2pzie5WwsNtik9+z3tJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AryrKsGTclUTLk5aLtk0nWomTBmSMv07fw5RNKoQKcxlLO+jOVibhZTp6AD9gb0GqKju0ejPrJdcwJadGwU2QNHYqFGijg6tcmJyEnRAyab+Gh13PCtQSXOrvAP0zsqsKGjYuvRKblIqmS5zCJMv48qb4UsuRZsUjjq5eIKjQwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fogq+P1K; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3df35a67434so1984642f8f.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 04:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757849387; x=1758454187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6kWbQjmWNj90FslbkuEkjvxEvCWQssax8cSBKQRPyJ0=;
        b=fogq+P1KVeoOdwmJV/S7jESkSLViUhpHfp/5U01BCbsu/w0O/n7B7I6wAVGSbz0Rpz
         bO9iVsEWjidrwTr/ihdZjNz0bldArhpuofuwMSF9f9U03eQ/GHfu+1vmyyzcLuFzP/gC
         y8Oa4IHDRwh4SqkP5wsbhPEMYbi+mTl8rb+sA8s7HAoAVikkKCmM0kUahR5AwOTW8q0v
         EKRtjxYJf79x/bm8k2Zadt+pp51KPF0t7DzoI95ra+IFfZtJ1vnaVrN23xAeJGAOJbcD
         ERLuJFepjara+DfJ0HUjuOLpzA0u50rs8Jcp9YJrLVUCSoRgmn6ptinAErXAxsOj+b/S
         LanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757849388; x=1758454188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6kWbQjmWNj90FslbkuEkjvxEvCWQssax8cSBKQRPyJ0=;
        b=ezzDOyMRUCx3fAfz0nRto2xJZqQXKEF+gn1U20Mc18qZbRBmGd3BsIUTqeYhZRTFdM
         AtOYyb/rhh6q4Yqlsr//1Q56yxLiJerf/RlAbonZXh+899asad/VfRzO0eP//t7Fa9lX
         WcJ7s9Wy59JjqkeMB3tlPfhIUmqvktfWsogGOaBVOBy0I3cdUfcjnq853L8g66rIM72r
         B4AfuKmlZq2eCoh5uHG23G+E1Ig2a2bxRriKzIatW1El1mfrzF9W4iAPht8dChBMUdHk
         3eA9zj77PpHK+U4khHuUH7zEUkWnM0qdE6NCvSjUy79zKBZc5A7sP7jSi5NuTI8kbcnE
         kj4A==
X-Forwarded-Encrypted: i=1; AJvYcCUBW2/tG+aKOK8hKt04LsPxGTwgRLp0vnx0olXEl9+EwNmuZEEkkBKWI1j2DkltsRYRSR4FOlzWrt8r@vger.kernel.org
X-Gm-Message-State: AOJu0YyqVQmGJrq0KwF7WX+j0xaRhl4Cs2nl9Gf1YjdOxk0wRHqEF0Ij
	GNmuuNIkljpBlUPticuGTe1FfX5WTv1NAeMugXBXR9z4lnrV57X3X56i
X-Gm-Gg: ASbGncuCjs4qvsWzshG+DR8rMWc9IQdhu7O1gYu2quTm37AZUSevhgkR6BTjxHlqZyd
	PfxDZBKaj7dP5ZMtrZa9Yie/NYODBjaSGZ2Sj347NyjvJDd73JP80pewfwnQzqRT/ADX9+1HYWZ
	tuZJ5bALPY7CrrwA3vbfmed+ndjnQ+mwq7FR4cVspVNS8aBqQCzFsdN8pMyniahoht3LPIz+buy
	Y1Ufl+GumtiNmEYMNC1i5uq4OTAebItnl9Gf5UwLP18Fx5P29Qg21Hds9tFPktQPvwZ//GVJO2l
	pr0wsI3+vIaBogxZwc0QpC26E8ssF36gnrO4X4qdOu31AgaOXqTFlHluZ42aiEzIuizW0N+BuHl
	BZE4BanxtPOoXwdQ7y6J510PeU+LOT9jpu50ewXYpg7sOxc7fZU3Ml6tcqa5Cb2zSZBPvk3vWuA
	==
X-Google-Smtp-Source: AGHT+IG39OXL5GbVP5YXCrtcp7+pGbdpdEB59AacbRvXYzjADaHt3PlBFvUeX/cNMkHe4IVaRg1YkA==
X-Received: by 2002:a05:6000:2385:b0:3e2:4a3e:d3cf with SMTP id ffacd0b85a97d-3e7655940b6mr9199096f8f.5.1757849387391;
        Sun, 14 Sep 2025 04:29:47 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8346defd3sm6591268f8f.1.2025.09.14.04.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 04:29:46 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/3] dt-bindings: soc: samsung: exynos-pmu: add exynos8890 compatible
Date: Sun, 14 Sep 2025 14:29:40 +0300
Message-ID: <20250914112942.2604194-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914112942.2604194-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add exynos8890-pmu compatible to the bindings documentation. Since
Samsung, as usual, reuses devices from older designs, use the
samsung,exynos7-pmu compatible.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index f0fb24156..be1441193 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -55,6 +55,7 @@ properties:
               - samsung,exynos2200-pmu
               - samsung,exynos7870-pmu
               - samsung,exynos7885-pmu
+              - samsung,exynos8890-pmu
               - samsung,exynos8895-pmu
               - samsung,exynos9810-pmu
               - samsung,exynos990-pmu
-- 
2.43.0


