Return-Path: <devicetree+bounces-76798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFCC90C078
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:39:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DDEC28364D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 00:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFCDE175AE;
	Tue, 18 Jun 2024 00:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JxZKM0e3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781CCF9E4
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 00:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718671067; cv=none; b=nAKaK3jb1P35IO7TyB2z7QX3R+A6urvykOOllczb0s/VHQGTbg0phAGrnXIrmrv6SP1T3WVvOJXFlUwibjGEwogIBXCanzJaDKo/pgGkhHd/4JOoSa0rQ3MSibN+ojNTzP20dtbp4tCkRSme6+MaSIN4OLVh+ruS7PhjI73AMso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718671067; c=relaxed/simple;
	bh=hrWFsIdGFQN3JlTpzd5Fob6eZVzy5bbOWq4iID+CKq0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Otkq/yZA9Pusfq8G7XmaW2KxVsa/dbj+3JVUbORqMrg3hbILFXBDJdzkYJEj6A8TwHpJPgCFruXfWS93tgAeiRckgjXch1hFyBZYeMTkhBdGRKqoDWYZ1Ui66coWxfUhKqvScK9lVt2GVPT6rb/T/JCT+W0k+II7QSHwEHDY/nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JxZKM0e3; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3d22378c59eso2915209b6e.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 17:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718671064; x=1719275864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lKuj2kjzCNP1OTawGgcPwef07LFs/c3ARZmci/YZ/WU=;
        b=JxZKM0e3Kt9/GUATHWDMsqCQ8OeOtTl4MgDk6jMbizXf6eUbeXAitcPTD1Qy6stlP9
         ZUdJ/BOJrT1NnMBWDsDSQB06EpU01EXYyMBBWHjYS4zIlM9NuE/Dve5r4XturdXIqTUq
         3sx/oopLuoHI1PuJZ8JKYMYvoMuNSsj4mS4o8jsC5ltRHWooSx8oK6meYPsO3EI8BBW4
         WPLtZke/yQ10Vg4CDppBJdZq7p5/gyG0bRVZfo0U5Qqltd/grRfaSPTuAEiEe8nsrT25
         TUqsQWzMmGul+GZAQFlLWhMv1ZaxfF0+0io5KQgnqErzurkGEBAMNGj9pfC/IAikXHIT
         vQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718671064; x=1719275864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lKuj2kjzCNP1OTawGgcPwef07LFs/c3ARZmci/YZ/WU=;
        b=N0dn94HiRHZHaFWFT13/V4cn2zzlQ+zuphyCs6ajqWp0OJ6QuHoQUWdCD+17LVYyAn
         LIg83nqypvMx9rn/HkquN+nb4W3HohvoQCzoJGLWWISvq/NfG1+BAnA6BaQ2pFxPij87
         GakCynU/eDoMbEm7CSVDGSLHa2YLNwRIZ0keP4gkOV5JAnVIgLEp+lD7JAo3zJofSS5K
         neXmuoerwzWKNH6rvHsVKv93z64ui/wmCVVotVtmWb9VnxiCNv5CeZ8/cFL4BpowlipS
         n4IT73EqmrmdZo+IXsrUHXM7o7j9Lbjc/1q+35CXH8JCNGO65ZgOR2Wm/HIDA8AHbf7a
         9Izg==
X-Forwarded-Encrypted: i=1; AJvYcCVpoWutIYJMj4TlAsorSqDKpjlGjCdDsvhijFC5XEG4rFPLgLOYhKP7nqrBlt/nlZi5cRTq/qmafn2AQqZ8JN4TgwU0Ym171uRo0g==
X-Gm-Message-State: AOJu0YxJRg8e11iJkigNSeXxkJAwD2TPgQQObWpFLZeHc4q8V5dbnarp
	9QBHuTIwM07jgFup2yLDlxvsG8eISxqFgG+AjOd+Oi0bM85KJqtpGq1x9lVFFfE=
X-Google-Smtp-Source: AGHT+IE3Prevs16wOHYwFYT8SyvwJLOz/BXQwuvHWQ2GdL0m4hXtQ3ed2xxIPKXNXVNQCC1FljUmiA==
X-Received: by 2002:a05:6870:a406:b0:24c:b4da:725d with SMTP id 586e51a60fabf-25842a1d172mr12861310fac.33.1718671064465;
        Mon, 17 Jun 2024 17:37:44 -0700 (PDT)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2567a94b7besm2896164fac.6.2024.06.17.17.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 17:37:44 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: rng: Rename exynos5250-trng to exynos-trng
Date: Mon, 17 Jun 2024 19:37:37 -0500
Message-Id: <20240618003743.2975-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240618003743.2975-1-semen.protsenko@linaro.org>
References: <20240618003743.2975-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Exynos TRNG (True Random Number Generator) hardware block is found in
various Exynos chips, not only in Exynos5250. Rename the binding doc to
reflect that fact and make the naming more precise.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../{samsung,exynos5250-trng.yaml => samsung,exynos-trng.yaml}  | 2 +-
 MAINTAINERS                                                     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/rng/{samsung,exynos5250-trng.yaml => samsung,exynos-trng.yaml} (91%)

diff --git a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml b/Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml
similarity index 91%
rename from Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
rename to Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml
index 765d9f9edd6e..99c382d25c11 100644
--- a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
+++ b/Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/rng/samsung,exynos5250-trng.yaml#
+$id: http://devicetree.org/schemas/rng/samsung,exynos-trng.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Samsung Exynos SoC True Random Number Generator
diff --git a/MAINTAINERS b/MAINTAINERS
index 4f09bdb5657e..511939a4c3f8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19878,7 +19878,7 @@ SAMSUNG EXYNOS TRUE RANDOM NUMBER GENERATOR (TRNG) DRIVER
 M:	Łukasz Stelmach <l.stelmach@samsung.com>
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
+F:	Documentation/devicetree/bindings/rng/samsung,exynos-trng.yaml
 F:	drivers/char/hw_random/exynos-trng.c
 
 SAMSUNG FRAMEBUFFER DRIVER
-- 
2.39.2


