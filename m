Return-Path: <devicetree+bounces-161397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E9BA73EB6
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 20:38:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC23B17BC0D
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F82F222582;
	Thu, 27 Mar 2025 19:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yTEHu07m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AD9221DA2
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 19:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743104185; cv=none; b=ew3IFmvZUOIBdJC64NHMqLNX+BodQ/oZheAMRvzm9Hi7Ic3rkDYfR9gek5uZqRpiQZzd4oZmDcde0irLpqKG/bdYOOvh4cEYFdHScFi0md79T4LsI8yzFNYUKwZYw/8eeC1Tl5xJbDo4/xI4xwZgNDpcNFFdVRQ7TCYcQ1efeLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743104185; c=relaxed/simple;
	bh=9uaw/3nWEEI8fpgn1mvfhY/n4by+EQ3cBzz4yrA1qGo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XxDZUbJo8uP264pLqqrRvqWKPapNhQedSgVQhlykgM/WTCujJkod392iQqw3OpH5f2/joWOWVEfBFzWMQCK6OIWkymb4KZtLuYOnRtV1XgKWJULnvMYB+Lo/0ECttEXfTI46cqscqkR4Y/zdcYnE+PfFRNBPYHEuchjtM2vEo8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yTEHu07m; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-301918a4e3bso2340098a91.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1743104183; x=1743708983; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4ywNrrIlqtPHHPtOnGWyS/tkdlFoi23/SobZTYSCzB4=;
        b=yTEHu07mGxawXyUUfyU6yCA6LPlzcf+P0c91+7E44jz2lA0Q21Jg+PPP4/DkznQEUF
         hBlBp8c1daOJtE71F0lZ1yQfg4MAqXZlifZDmOyuljRGiVNc8egME619go329vBjaTGY
         Sok9FM5xOGH8GtoSrgS1lVwCyR8fhn/xUDo5sLbtnDW72dmskNWxzSa1whjVnjLiqZAJ
         Jp0rgEKBTTTdNbIrG/qL28ttvPX5DnUW2Zve/hK6ZDcBZ1DJgow51cx2aMum9SsJkyPt
         RR9JySJlRKe0WFn8amGmOhqPLstDPFUjdaPb7idFE4dU4VhnOlr72Fx71Zohqehzp5Ws
         K7pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743104183; x=1743708983;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ywNrrIlqtPHHPtOnGWyS/tkdlFoi23/SobZTYSCzB4=;
        b=ZLUBMXVcfWjiyT+knyNLFsHKvVSoQOTw/R9kUheecrboIbR2MaVrFZ6PFt7AXDTsPR
         vKlNFcoJXStdxYNg+sRPHDJyBf4+vQ7D0eItPk65x+MNoZI6tqvkG5fyQFj5cfov8iAM
         OlZRdEHaeQoQDZHEEK7p8FvdZs9WTJFwLxMmSRJ/84H+AjicqC0xw/o/Mi0fdHVkOob/
         igeptfIGhCcT1L+kq5+zsj3jpjd225NpjQJ7AazmJFy3D2Eh1VdLfAMl59PaQrgngtz1
         L5g1yrs0Tp/wU+9G8bOirnRW/tTZrr8eWmFWMOY7F5XGKc1HiVL2ykc9wzm7R7cti3n9
         Z33g==
X-Forwarded-Encrypted: i=1; AJvYcCUfRaPtX0yWvaVgh6Z8NQVsOGdqCbicH0om3HvZEKP6OA6J5RHdNXhUOpN8H6qJjX52X7b1Tm8W+NCu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3gKJ7ZcR2iRT36l17WVuzgokAwcsq21Fd8wrwyc8kWTr6vgXc
	u/uMj85GuxX5xxDw2D7BckwcMK8ETyRaX4pypRC6fYU3xeY5zlnSowjm707k9Qw=
X-Gm-Gg: ASbGncsuh4ZTGzymvCrZGq6sYIiW/FVvEZ0Ne/18Bxn4UJPEd25dQI9mbDAeg32sq32
	6lD/5lpSPTMFVOoA0QZfJI/5jzpeqwccvcUUMXdzWM+xughuwRQ8tb6GShKSt/ym/FkV1m1afk0
	OIEtoXUvz5dfD5LArt9CZ747UsmN9pnKj85fdxmjN9ry/6Sk5pdt0gYOEtNqmciUix33LwU9Ojy
	7nCDLH3AHVJ6tON0Dx1wLKUv3XEHu6XDcQGrhxiUEXgxDH8wnWZThoVyowSNKWnJ6glIoi34XIy
	oWr32IkLQK9Jqmqz2FOx+xSZuQLaHONiEhKEOSRanPuaJF/Xti4ICk86ww==
X-Google-Smtp-Source: AGHT+IELdinWh4rp6i4iXWGA5H/t+4IAyyZGzK+iwJMmKFoXazqziiKFSDj1cayIDmLBdm814eH0Qg==
X-Received: by 2002:a17:90b:5686:b0:2fe:a545:4c85 with SMTP id 98e67ed59e1d1-303a906c678mr7028440a91.27.1743104183029;
        Thu, 27 Mar 2025 12:36:23 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3039f6b638csm2624220a91.44.2025.03.27.12.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 12:36:22 -0700 (PDT)
From: Atish Patra <atishp@rivosinc.com>
Date: Thu, 27 Mar 2025 12:35:48 -0700
Subject: [PATCH v5 07/21] dt-bindings: riscv: add Smcntrpmf ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250327-counter_delegation-v5-7-1ee538468d1b@rivosinc.com>
References: <20250327-counter_delegation-v5-0-1ee538468d1b@rivosinc.com>
In-Reply-To: <20250327-counter_delegation-v5-0-1ee538468d1b@rivosinc.com>
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
X-Mailer: b4 0.15-dev-42535

Add the description for Smcntrpmf ISA extension

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 0520a9d8b1cd..c2025949295f 100644
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


