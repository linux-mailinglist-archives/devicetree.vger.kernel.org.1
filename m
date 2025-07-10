Return-Path: <devicetree+bounces-194881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9731AFFD6A
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 11:03:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21F7E547795
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0673C28FA9E;
	Thu, 10 Jul 2025 08:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ab6/0p0c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FF628EA53
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 08:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752137909; cv=none; b=pVApCaze+fAWRkxph4OhrrratOsKaVWI/7HiQAwopzTbHL7J1VK/wJ5febuYvtZHO7YogxxpNj6DhXYxZ0AYtS3RjaJrlCC0NywlAEN8ULxzJUnnV8mkv82uj0i9N63oiQhtxgk2pgf2suK4OhV7pbtUq0U23POCfM9XaMArSEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752137909; c=relaxed/simple;
	bh=rbhhgm0mzzYRhk7iKypZV4vkGP7IKSBeOXegRqSG3Nc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=H0eez1/QCqMSVcL7GIWBux+AL9uEQQQaAlRJdh2p5L01touenNAnAOSoThlmVMXF/TlKVouA4cH3mpQtiN2/Ge6/U2ZKbJrnShw3gKt5KGX9r+cF/leH6dgi6ZM3tFD7A9ujiHVJ0ka0+UNZyugQW2QYw/coOc8CMDKvs4AZu0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ab6/0p0c; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b39c46e1cfso106421f8f.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 01:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752137905; x=1752742705; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AFGcDq9X9d1S3/rYRs3p2USqJvjKS3vZk8Rfjbj4Ks4=;
        b=Ab6/0p0cZ/ZYcvJIDWUkBAuEYvZFaatoCsQhfjpkjHeXlrDRSM7Xjski19w/Oj+BqT
         dmhlM8APqugw+XH5ziY2QjNsND9l4JjZACzik8yzsquW2PSn9I9rbPpEcjk1E9FtZWIA
         SlVIpvaqPtxrSksPdj0kFE+17R72SC7rMVL02SuFZUaBa5/RyUgWFKeNS8PAE4IozCqV
         vUbbqTs1g4ULWXAG0Qdcpv9OfdTugjQRvrq8DKcmP7ULJbR+5P3+fW2eRoQ4PEgWMuyY
         ZkOo7bGYDSqqqJ389UQUPqxXWK/fybyKwfddsJ68ihBO3fBLi3n4d2A6Feon8QFuoXQf
         24HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752137905; x=1752742705;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AFGcDq9X9d1S3/rYRs3p2USqJvjKS3vZk8Rfjbj4Ks4=;
        b=tMAd+OvZ6rEawoika+3sI1LMpAJj/1f8Git7pDLYuDPKwZkGvrodd8/VeYouj6pkVv
         ycxhWhHuk102i4Wn8jwzFfdJrhHQ4fhxPGCSdjmNuPlg05IaOOWMDkve+LsgDwERgRfr
         r/A5qxEaQjcMGWC7nn+Cjf9gk94TyFLyVAc2CWVaLDDxy7l/IPyj85/mKrtVql5UzfZb
         beqgzkZkThEwoP1Ng/DtLohfS5a88g95cOczFx8Z4Qs6SFETyayrV57DCs6+3cYF2sDF
         HSvzwgEG5L8ucOMQkg8E5bjkITJZWKZu+QNnjcRkvshlR46/hOT53bjOlK5JSd7rFxyT
         i/MQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNTUE3mFnlLRtosiQaNLwfs6aCm4Ci1DlvlARASLjWPiEj7Bn6F/j20tVUL8qZlE7mhXaVY2d4rFIR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9HlmXL8el+EHCix34T1mrnpqACPRsPODi5eqj8B/OCHvazO2C
	6x4WWPdb2xEW5W1E8Gdmh6xMBnnf8VdVGKRnLNeXUDLABfRyAQk68Dm6jiFsxXlaCI4=
X-Gm-Gg: ASbGncvunSA6DUtP86sqSITpvHfeghE1Am6ZHBYsewoCBgZ9ezaU/Yjxc0qOxP5YL71
	fa+Bt4bPnU0ipyjBLEVwK2cqORErfuxCiq8if9sVmdY9UmY6pNto4KOJUufvgXvaBehXlpalryH
	4+NDlyo8JgyuzZQF69uP23ghwS9gSeCxjBwLJELOaamgO2nJvx8OOF/UUEQIfTddRoLZCJIXz1d
	dogToOyHr8nc0TAeDY1jBeIrXZuVLuDGS9LmD2CusGGrH9ZTy8aYb5/tAD2S8AgSAxffQiptvHZ
	jP38/BEqVOsJA+K3y4scU0hlATz1of1nhLEQwWz6aHDZTP19FRQVj5k6U1JkRAQdlwoZX06gNtU
	=
X-Google-Smtp-Source: AGHT+IGcF8p+1kAeeqUtTkgwKXgn6mbF97E2/bYy8J5UhMbcz5BE39eu+vDCag+9znaVA+I+mpt5CA==
X-Received: by 2002:a05:600c:3e0f:b0:43e:94fa:4aef with SMTP id 5b1f17b1804b1-454d541463bmr21300385e9.8.1752137904953;
        Thu, 10 Jul 2025 01:58:24 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd47543asm13248225e9.15.2025.07.10.01.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 01:58:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] docs: dt: submitting-patches: Avoid 'schema' in subject and add an example
Date: Thu, 10 Jul 2025 10:58:15 +0200
Message-ID: <20250710085814.21810-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1577; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=rbhhgm0mzzYRhk7iKypZV4vkGP7IKSBeOXegRqSG3Nc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBob4CmxqyCTItfrNqR2TfTiSqCnuLODTEiTFqQZ
 DOp8B7dPguJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaG+ApgAKCRDBN2bmhouD
 1wXUD/9jbnLNFo5DR1vaPBVCZC2y3AN0nwILD45Z8ErPWmxWkPAthGPxqOLIrR2VgtFP3LhcFc4
 z2U2MScFup9bE+4AU6o1Nx99sLvegsB+B8zu8K4k+rGC4GoXDLIYChG4BbpM7jjXb9FAdFVSIFV
 CqmnRG+60jeJwSjSR5BJlBksxU3cSpzag1pW4Y2U+hpcnzgh1k00ThMCamQ6CuUK9PHS4S+3mZ0
 1YaguuLvsETiVvxmtLlrewJ/WbGXJBwoNnN94n3uQW3E/9HYYQldXTyGHT4gcxPokFRHq+mEBtU
 4dUFvgiSGpJWebQDh01/ULAqmlluevyG1h5NoXPdzMG+Irouc04FxZ+HwgMh0hTsqM0WpEMbxrB
 eLprM4Dsn5mAMurO7dQlnUjIZkbKZpvenwLEGwHfV7J/B5AQoIyfdHu/gbOBl9cyu4ZU0NUQ7Ua
 KPt4PQvMAui93csoYWIoV28giEA7HanPChNQvol7PE+jN+l+ZbC9bWJNc8etfqajMfY8+d39IRn
 zbT2fueaFdB88tZu91CWhplqmaaOiRC9NhKFXfUr8/FOadwjIPWEPwbuEawADbFJXNBIzCpkTyX
 jq0WvKPJLZlKRL65MGP44zJz8pbq9mrDYD7/hs62sbxHNP0JVKzv9W9Te2wMxeYIfinYXS+yys6 XWfv3OsQaGf4lug==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Subjects should avoid also 'schema' keyword, because all bindings are
supposed to be in DT schema format.  Effectively people get confused
that subject should not contain anything else than device name after the
prefix, so add a recommended example.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/submitting-patches.rst | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/submitting-patches.rst b/Documentation/devicetree/bindings/submitting-patches.rst
index f3e23e69a638..bf32b784cb82 100644
--- a/Documentation/devicetree/bindings/submitting-patches.rst
+++ b/Documentation/devicetree/bindings/submitting-patches.rst
@@ -21,8 +21,12 @@ I. For patch submitters
        "<binding dir>: dt-bindings: ..."
 
      The 80 characters of the subject are precious. It is recommended to not
-     use "Documentation" or "doc" because that is implied. All bindings are
-     docs. Repeating "binding" again should also be avoided.
+     use "Documentation", "doc" or "schema" because that is implied. All
+     bindings are docs and all new bindings are supposed to be in Devicetree
+     schema format.  Repeating "binding" again should also be avoided, so for
+     a new device it is often enough for example::
+
+       "dt-bindings: iio: adc: Add ROHM BD79100G"
 
   2) DT binding files are written in DT schema format using json-schema
      vocabulary and YAML file format. The DT binding files must pass validation
-- 
2.43.0


