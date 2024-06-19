Return-Path: <devicetree+bounces-77437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECC090E9CA
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 13:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04BEC288D61
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 11:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBE39152170;
	Wed, 19 Jun 2024 11:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="wUUzwOEC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DEC15216E
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 11:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718796957; cv=none; b=IyVVJxiEC8q9+l7/VGptBAqO4e0LQvG3hYhTJYH2+VKEiJ7hvmFBfkDm5kKV6kIW/+0dx7B/oGkJ5gyv1SkUbeD3Fj4Ffo6BLKsxod+4atxPCD1sfkDs7km7vM5eYEF8iR1KfE8Glx/S9EMNhhNng9kftzbLmnF716RJleCR8oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718796957; c=relaxed/simple;
	bh=CrKAOy7k0+pjuu86NYcz9soXvE3vBpfFpNBDnQzttWU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CtFXj3BmY9VTQbQzaGSSovK9IdEKQQxGPcOWH1xkcDzsJPuiDtnl1EnQWox87J4XTeIkk+VucKZhKMdTDAWjKI/cieL2rr2HnXLHatk1r6P9d2f0Of1KFE378l03owG60pImizKDDoKoWep6tEoIfxw3qXjKBeH+oJTTXnrQADI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=wUUzwOEC; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52ccacdba2cso62038e87.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 04:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718796954; x=1719401754; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Sy3W3sT66nFUHkOIAcy9zXa+nQEQXWEM2cv9eUy8eQ=;
        b=wUUzwOECPCVwh3p5FPioz4zaoVQNYZEcklpIGHuphPAxznlyaYIQcrB8YC2Q9wxm5K
         XShXtspD4i4k9ZgpO0WD1O4ySWYecCMV5azMIGGzIVVqlcv3QLBoXu3ehlzG53igPmKG
         75TlGhDlBw6DULADG4Y2u9o7aNHIJYJx0PxxtDes9aToDpa8nrZo2kznNzkEhhZv9XaJ
         r88yWRPsPwSh+wCm/CMq8RK8g25wjQopxG5D0wvfQesGsDNmgPVuun7jJ+ydizP4cWni
         K7zgjQjMxpUAfLpsDGiVwwpkSjXFAaUS2Q1HYXKpysfNcKISwmLaSsZuM5ZOnaCxcc8N
         AIjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718796954; x=1719401754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Sy3W3sT66nFUHkOIAcy9zXa+nQEQXWEM2cv9eUy8eQ=;
        b=c6oCA7DKmiOj55yvGdRvakB2ouq62UlzKXAggTcR3jIeidOf1LRj2VjwDEfIN6U9po
         J2Mb3pMjElfQ2CTOoFHGMc0iKpKF3A+ZDTxRO12v2f2YheK0eYwI274UB3uPXQHOL1Ed
         tzPKDGvywa86Sinmdcvxua0Qpj0oaWfIbC5R8yiux3fTQiLQqg2Sp5ktjwGVxT+U31RY
         GGEkL5/2bf1LBdoLnm1dTlzK5IP27pGrpG+OOA5cYzgchKrJCEzs5k44A2fi8AkhUnxy
         8BMakftKihUKQ0epH+pU5AhtIYmCf8Rsv1itCQcATna9sY0sgk7P69j0XQPDAmuqpKfm
         B21Q==
X-Forwarded-Encrypted: i=1; AJvYcCUNBgIIyQ5yyiqJqqUOwJbehMcAqjEAoY1f8Al3gOAjvjdXUdp5olOUdJZx0KCYSvA7iHBmlaTpFOYXBdQ3I5iemLqj7EPGN+oXRw==
X-Gm-Message-State: AOJu0Ywf7PyWS0M2ci1SFcgKhvEAwb9jhDjuuYxnT4Ia878QC3CcH+LT
	QByA4HbSDH8HgaQRxxvltUUVQhvgkkxTj/bKNjrkY4G8eGxksWe2cyV4bvb8aT4=
X-Google-Smtp-Source: AGHT+IFRciAFte3oPxe/TYNtXAvR1m3s7pGZfdqa/xJwJUVeVl2PdQBNkhgvRY1kSbpJQmQp281hYw==
X-Received: by 2002:a05:6512:b22:b0:52c:cd07:37b6 with SMTP id 2adb3069b0e04-52ccd0738b3mr880416e87.1.1718796954087;
        Wed, 19 Jun 2024 04:35:54 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:e67b:7ea9:5658:701a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422870e9681sm266192075e9.28.2024.06.19.04.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 04:35:52 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 12/16] dt-bindings: riscv: add Zcmop ISA extension description
Date: Wed, 19 Jun 2024 13:35:22 +0200
Message-ID: <20240619113529.676940-13-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240619113529.676940-1-cleger@rivosinc.com>
References: <20240619113529.676940-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for the Zcmop (Compressed May-Be-Operations) ISA
extension which was ratified in commit c732a4f39a4c ("Zcmop is
ratified/1.0") of the riscv-isa-manual.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index e34d06633278..33f1a86efed8 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -252,6 +252,11 @@ properties:
             merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
             of zc.adoc to src tree.").
 
+        - const: zcmop
+          description:
+            The standard Zcmop extension version 1.0, as ratified in commit
+            c732a4f39a4 ("Zcmop is ratified/1.0") of the riscv-isa-manual.
+
         - const: zfa
           description:
             The standard Zfa extension for additional floating point
@@ -579,6 +584,13 @@ properties:
                 const: zca
             - contains:
                 const: f
+      # Zcmop depends on Zca
+      - if:
+          contains:
+            const: zcmop
+        then:
+          contains:
+            const: zca
 
 allOf:
   # Zcf extension does not exist on rv64
-- 
2.45.2


