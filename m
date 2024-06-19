Return-Path: <devicetree+bounces-77426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC9A90E98B
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 13:35:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0F8D1C21096
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 11:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A435113E409;
	Wed, 19 Jun 2024 11:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="u2PEiiON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD63713D89D
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 11:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718796939; cv=none; b=DZOQoGXDPN/KU+tX+AwOuVDtnhzt+Y98RtrR0NYHP+rq9wMQUwIUYVwYhiojLe6dSCLsySc8zw5SEHvYyopiKYKUpX2ze5dKIIQNBXmgM9r6/RduGDD/nRusTB8kOGS1sIMptiyA4M9ANZdWh0Luo9N4/nKHWo/SWV2smzxyp1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718796939; c=relaxed/simple;
	bh=/pPeKAKHhM5dioXaKdW0+1A0gvhpNEvKq5S12HlRxII=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hvXzBZQxpcUoGpFLD+7myBZwFMzKTlyZTZZS4+qoptiCdBuCX8Ih4nyhcXReTQ8AdCdBkvuZwkB0ec1MJeIR9l0rhAM5/s/GRXBYz26JNdU2IwvIbcvKXXX2UCUT1IAPR1BfIA6YuiDQATXFUfjjuWlVd4LdBiPDaRFA2A+xwDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=u2PEiiON; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ebd590a8b9so6769981fa.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 04:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718796936; x=1719401736; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e0PmMBKub5I32kw3OQ7yKpgs2VnUnUQFxbp3Wubvvb8=;
        b=u2PEiiON1zgiurpdfxaf4OswkXZ+PMZfbMryGz94S+ZhT3B5Bf3ftzJugcD3uSZ+bt
         wnGzaf6ekL34WXAaOHeFdnSrbH8cBOVf2dpccTrsPc8iDpi/J8BupYdmRXoQ1OCbqjgZ
         XxlqS5jM6f6/DbphT8ttubV5zv1/QEgQQ2R46lJhEDf8t95X91wErUNVXy6hrN75dPyL
         CNRhEmgLJgShqMa+jPRvv9yaKKXldQf+HKzG2Xz9NCWlPsIX8x8ZmhzrNWznNuceKuCL
         w2bznsArys1UhwUtT/TpPz8M/uFQTteVDg9yA3MrqBDHZg3VRUAlsBsmyHWrys5XpFKL
         EFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718796936; x=1719401736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e0PmMBKub5I32kw3OQ7yKpgs2VnUnUQFxbp3Wubvvb8=;
        b=xKtmoIWql1VCS5JaFihJTq530vsFwpEPEWYmnWN5XiqhNGBD1hAJoOlUZB2vdRzcjL
         l307jCyjGEZu+3pjU2hGmg9bI8V8kZQY0+qwQ4f+HSVi6axfZLFTkG/rv3z+4vqoGzhr
         hI+kJCSlTXde2L8R1CdOY5gBtmGjieVgrT74kaYJCSW5lZuFpHhIGK7fA7+3N5kShhpU
         G5XAw+PlwWIlnlgw/hkwXqbiKw6RrzPOjuQRUYeSeP6To5OEUMYDVSU8MCQ0OGfFLiU6
         IbKBuRBrf9NPA0MymyyhN9y2AuzG6CFawvzAAOiODsoK5jvphsIlVhBXp8M2L9Yuk5Lt
         3zEA==
X-Forwarded-Encrypted: i=1; AJvYcCUXtpXvcpf3aGtfOiKum33bAFRm/6YZwFgxzWwOgO8gLRx4jGgCCP+BPSPdDkAmHhV0lI0pb4KoR11ZWoPo1+jGi9AyRsqw1TLEMA==
X-Gm-Message-State: AOJu0YxshvQ21cBoOsNeKQpW1EvSHgSFHFKpCDAzMv130rz9jHPs/Y1y
	Iz+hPSK8PdvrfxIMWQ3LbQ7NfEKdwuIehhFEQRW5NqoVG1Ppvwt4E3eP3pNHQpI=
X-Google-Smtp-Source: AGHT+IFuiQe12ySMx1uVFaLMWupgr3h/vsw4XsgpQWD0r4gVFKJnVvYpOMaUKCr84w7Jsgw+DR3BMw==
X-Received: by 2002:a2e:a553:0:b0:2eb:e6fe:3092 with SMTP id 38308e7fff4ca-2ec3cfe8333mr18233921fa.4.1718796936025;
        Wed, 19 Jun 2024 04:35:36 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:e67b:7ea9:5658:701a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422870e9681sm266192075e9.28.2024.06.19.04.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 04:35:35 -0700 (PDT)
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
	Charlie Jenkins <charlie@rivosinc.com>
Subject: [PATCH v7 01/16] dt-bindings: riscv: add Zimop ISA extension description
Date: Wed, 19 Jun 2024 13:35:11 +0200
Message-ID: <20240619113529.676940-2-cleger@rivosinc.com>
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

Add description for the Zimop (May-Be-Operations) ISA extension which
was ratified in commit 58220614a5f of the riscv-isa-manual.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cfed80ad5540..e214679ab6da 100644
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
2.45.2


