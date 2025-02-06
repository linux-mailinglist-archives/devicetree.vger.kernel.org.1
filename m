Return-Path: <devicetree+bounces-143478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D75F2A2A21F
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:27:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D76B81880988
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CAF229B0F;
	Thu,  6 Feb 2025 07:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="SB2rQw4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724FA22B584
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826609; cv=none; b=ucnLTydymCGr+rUTTMlLj1xd+22KFXs1LNMwAPzrooxdjtdWM5dqJWBwGjfEYvnDySgBNjvhMZdouchrxzZzG+jgJXJG5SSTlxMr3fNmv22j0z4mjzo7ouxShHQSO5mo4rDjib8HnEPd0MkXczIMcTyLazUvsqwIKiPBicNU3+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826609; c=relaxed/simple;
	bh=YU98hLOSiq4vVYKNXLYyYXjb/N8ZYLqR11qx50WHeNE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JAQL+NXeKFsnYM9dRhcUX6wbru7Hy5J99E9aE6WvhNtstPtAASektFFmJ+1/+Q1XdZ++/XJdt8vvQksC+ZCF9TkIzC9DHc5M5VyKCgsv4BY2zHbGiMNNC3fY7RNPGURzrIePJ//nbuTtmfuy3naUI26kywGPxgTVWfPXj+LrI0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=SB2rQw4N; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2f9c3124f31so798780a91.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826607; x=1739431407; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d05MBVkD267pj0+O4130zpeTcKFWk4W9qDVXtG5klp0=;
        b=SB2rQw4NVuE78iGw0lPH6MPeT0z2tL1md4Lfy70fAXDPl0GZEKVFTlWDnG7O92nHoB
         6Pt88DOx83fddLI4RymBfClnnbQp+bD4HU+dhmM+/kPtjo+4YvP1s9S6ZSsFnNciArvI
         Ox5nbygNdGYX86dLtP1MZRVDWqWinMrs9S4XryUEJDnqpMrATmIi69wsaVuiIdJ5HRR1
         qQRKflVrGgzvlVsEXPwTkpSlaL1pxSPy9LXhuOVY00ln/0ER3D1rTq13+b+znKAQUkRR
         ARFENvkA3A3n8p9l+Uw5R9lHsiTDzEsdMfvz0V/hzN88BSkMznNBmEng8AHDV5SKZ2uS
         Tjtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826607; x=1739431407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d05MBVkD267pj0+O4130zpeTcKFWk4W9qDVXtG5klp0=;
        b=oimMAgv3gAaPFse0GJzXrKrc1mJAY7z6vNT+uP0knWQK1dNsrMscsJ8QeuWLMIbhSf
         agsje/aOKZzu4Pq5yhuX5IEn+a9+r30EeN7WHPwUilvt5AP4hHdGv2MWTzcf8FDhANfP
         A9rUz4Dqceo91KIRgXN3oKlnU2Vy2cTUoom3GZb8pPvUsCUEbCdlVm6BmePQxUD3Zjod
         7jrDIUcXI0AwwkYkJ9AkBtlMXqUFxvQk/2vOQ4n6kn1RK9e4VSd9PGzxTJgRSAbJS2SH
         0wPvWnViP/BbZ7vU0jR/3GegHHF3rNoBV6RoHWj+ImK4yd9u0xa43BixaUkbe3Gl6xR+
         bVyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYI/xRbYYr9rgA2oZEN2kVOK+OiGRG8PL+HZse/bGRzvC2WC8u9cZgtLWwoc6DAoyzV2vb/P5EwVRu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+JrpSvrxMBADJ8R6V9rXTZe9xCANLvLwHdXrWdiU+lSMCADfr
	/nWL/Qdb2V2Qfn2PloKu+c1+RzNBvar6jhTMpdwxJvIG8+jAxD0n6Iq+HQynlGM=
X-Gm-Gg: ASbGncsB2cQ9+j+vsUkr6vzE/kzj4Xbs2qo4W7lLfkSzh4nwCcMvUwZKNikN6WBYbbY
	GcoELUVWPHhrxmLsLxWkEhHyADzyrZv7hC3z8sfaj2rbM2oXdpuYmXiiks8FkSsnrpnicc51+Xl
	Im0DF1VBW4IsWF91B+RbC1x5q9rKexVDhnS4/wyPmW9YO2XLaAfeRKEoUCO1Mo7YsdNJIXJN9vp
	j4q9J+qYVXTXgpmVaDR0vFb8Bp/zjuQ2asmDR8SnB8HCBZuymJnuC/7qnrp++NqhwHnYLlf4yGe
	fdcqch5P3y+npve2vo+qHnX6/K7a
X-Google-Smtp-Source: AGHT+IFKe2kQczxclY80PslHuvYzWPmjNnKAp1q2ypYQZ9arePKPx5YXWSLFOApkuW37i5EznoN6cQ==
X-Received: by 2002:a17:90a:d410:b0:2ee:cd83:8fe7 with SMTP id 98e67ed59e1d1-2f9e08682a8mr9427110a91.35.1738826606814;
        Wed, 05 Feb 2025 23:23:26 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:26 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:12 -0800
Subject: [PATCH v4 07/21] dt-bindings: riscv: add Smcntrpmf ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-7-835cfa88e3b1@rivosinc.com>
References: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
In-Reply-To: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anup Patel <anup@brainfault.org>, 
 Atish Patra <atishp@atishpatra.org>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

Add the description for Smcntrpmf ISA extension

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 42e2494b126d..be9ebe927a64 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -136,6 +136,12 @@ properties:
             mechanism in M-mode as ratified in the 20240326 version of the
             privileged ISA specification.
 
+        - const: smcntrpmf
+          description: |
+            The standard Smcntrpmf supervisor-level extension for the machine mode
+            to enable privilege mode filtering for cycle and instret counters as
+            ratified in the 20240326 version of the privileged ISA specification.
+
         - const: smmpm
           description: |
             The standard Smmpm extension for M-mode pointer masking as

-- 
2.43.0


