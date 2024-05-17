Return-Path: <devicetree+bounces-67523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 056188C8879
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 16:53:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36B6E1C2161F
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 14:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6740E6A353;
	Fri, 17 May 2024 14:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="rudrTLJM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C55629E6
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 14:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715957600; cv=none; b=NIXSZyeVvDfCWQ0oytvmeBd2mEwcIhQ4FvtUPxdhh8afNgqsrSvsMM6QISD0IWLDp4oFGu13i01u2E073NCPg86fFY3bX6cv96nXn05NDwD84Ja/qeau5gAEc2J7EYtDENuDINobPYHdyZ3xOM5SwjMDvNR0kLZj1kZOZQovhnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715957600; c=relaxed/simple;
	bh=C1iWFtBP+gOXN+gYJuynhCLdeLIleFH9DilxnIdSWoI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PamQIL14VOCEjOOStKOwe9ZUYCuoo8c6x8G2n7b8ZnptD2VRH1q0kh4RcGl5eXvq+B8Ok7kxIQCialvemt143hpZbivMW07w/UcJblGOMJEjVTFpJ78bXLCQrjjYX++peCv5bWPrYBJf6tmIv2WDV555tlPZYjN9az+MTh72JNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=rudrTLJM; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-351cb099fd7so39698f8f.0
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715957597; x=1716562397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yNRN92k2/pTBN2tUswJ7wUiwcK9Vci4vULdEncJPQl0=;
        b=rudrTLJM4wB8RFQEzieSjcs5/AdYPlAvr5I1B2EAPmjkrhgqWY7vZyOv5ZuU4KHaq/
         iq+pbtEaCzOzXMLUoAO+ufGA7j/w7K76MY9lwZDCk1Dm+T9U0xRnDa+xDlQSm6hSy5Wm
         QQ1PxoO4+MbMpBBbgLe6dFTGZoDJqoTgt1rr9xExsvKsaBpqXVfGps4yC1YdtJYusKfz
         s1NbUvgp0xZ34i8tixkKF+tQEHN4EvYDtb5IfoOyUgq6uTdtUd7xZirofqAMlRckk9BC
         dpKk9yDWCtnQlj2MM7wpqTIw6UK0F8Wdi/ulzFgElMCjhUV/vqlDIhTjJvVlbMuw7FzH
         Caww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715957597; x=1716562397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yNRN92k2/pTBN2tUswJ7wUiwcK9Vci4vULdEncJPQl0=;
        b=ulJl/RdI1QizoOzSfJR8zgdd/C5Lal00Kk/uNSa5Re56cr7pfl8kDQ3f3ZRY1/DStE
         fkbwhSSXqT40bhLpUHB6rjg8EzWZbPGHKNnVgRucTMZLnqx2mw9Hyed+4aySzKnHXUzB
         j5uFOt6k2JmvgCjFOxCqj5hro2FxImS9L6w4hU8Igdsmieb7cXPZiDHvA8VgBnQbETkr
         9ZMFHsVa2cYqTcU6fyZpZEq/GHcTDj96K3kwshrsbXzSJBAW+Aw6GEoiB03g7F8b9i/4
         93vXnHzl2lP46Zs46sSgvqgy5BPV91b0E2VV4mUsasuM1bW9l8gnzwwGVF3QSrt+3AIN
         DAhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrOJ3u/1tnhM7tcXVKbtWKz5O/1/XQAYjbXEqgKNtvUDsZALBMgp+7ooCditrzobDyBlfxTslHgxpcSChl05dWc9YE/7ru56H+Ng==
X-Gm-Message-State: AOJu0Yx637ANnAltKWN9o3JVGd3FKkfuGQfhE4k2U8t5C6cTsn1VcgZH
	U0oa5WwkXywyDZCaZsmFvFGRL3Sdta4N1igB/gSTBqJDrBHJPsj4jehZ8RdGJT0=
X-Google-Smtp-Source: AGHT+IHqFS5sQ6sZj4AQW5YtazfdwelSPtkcTWIW/0+cY1OBJlWJ4R/7hmqt03NZ//lb5/ssRTA5fQ==
X-Received: by 2002:a05:600c:19c8:b0:419:f241:6336 with SMTP id 5b1f17b1804b1-41fea928decmr160060745e9.1.1715957597105;
        Fri, 17 May 2024 07:53:17 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:46f0:3724:aa77:c1f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce9431sm301723695e9.28.2024.05.17.07.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 07:53:16 -0700 (PDT)
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
	linux-kselftest@vger.kernel.org
Subject: [PATCH v5 01/16] dt-bindings: riscv: add Zimop ISA extension description
Date: Fri, 17 May 2024 16:52:41 +0200
Message-ID: <20240517145302.971019-2-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240517145302.971019-1-cleger@rivosinc.com>
References: <20240517145302.971019-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for the Zimop (May-Be-Operations) ISA extension which
was ratified in commit 58220614a5f of the riscv-isa-manual.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 99d2a9e8c52d..b9100addeb90 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -363,6 +363,11 @@ properties:
             ratified in the 20191213 version of the unprivileged ISA
             specification.
 
+        - const: zimop
+          description:
+            The standard Zimop extension version 1.0, as ratified in commit
+            58220614a5f ("Zimop is ratified/1.0") of the riscv-isa-manual.
+
         - const: ztso
           description:
             The standard Ztso extension for total store ordering, as ratified
-- 
2.43.0


