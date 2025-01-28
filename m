Return-Path: <devicetree+bounces-141278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF949A203B5
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 147DA3A1EF5
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8530F1B413D;
	Tue, 28 Jan 2025 05:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="quL4OjKC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9911F55F8
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040408; cv=none; b=buxCnMk0Hk2Pk1xv48O5vH91aXfuM/Eu9cyGczqUf9a/hreNDvzJHDiROFgnM+zYK1u79J3mC+IlV5bib2rp7IZfB3n5zxFRvhnqZhrRPGS/+xo31p4HO0OWvy5dcQtt8z+lJvIEYynYPetrnU1nMHkbOhQrn0kp49XU3hpAeus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040408; c=relaxed/simple;
	bh=lgDPl7XeyZ3VsFlwl0qRhI6mGZXrHGPpz/tt601F8DA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tlcm2CYmY9PZWeu4mpNGnYUGAYA93ae/M2wBkF8Jt2OFl3tk6WErrpJNSAYlnqq2ZbPc9DCD6cyi1lfG4kzEIB3GRXXqLyNYwZFDzmQ0bE9OAf9Tp4lskk1Cq1LdD/vfvlCbgjSA7pIcxQq8UT/o6/+WbHGgYCV4tvHgPtY2F6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=quL4OjKC; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2ef714374c0so8024697a91.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 21:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040405; x=1738645205; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nwB5ijQXYUTHkLWAXohil6yVgl/NyKIaGqyFvphby4=;
        b=quL4OjKCyDsBiuWswt5xXC8ILMOVGolFt8YnY3xOGkvh8Z699cgyNET8hITBlR1xS1
         SsDttzlCmWrvGKil68AFFzZ1QLEUo1mCaEelWNVEg7VKuu04ydr+v6PGl05HvdaeBb6A
         95fT+iHtjwEgqIRnNMAK9KntDhBZRypAojNuAfclFhCo0ZnIT3C1dvxl+iaatv/B78q6
         80WUXt9jUgRQ66pQZIF/Vtm1Z1datfY3dkRISDisGCMSm6pxht5r/96RtSIoLsjehp0a
         EvdJIe7bxJQSfUy4zvfNgOwNkRqrJxbDROcpbiPBNsdX5zYYGQ81vtjwwkf0g+xqKEHi
         driw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040405; x=1738645205;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8nwB5ijQXYUTHkLWAXohil6yVgl/NyKIaGqyFvphby4=;
        b=LP8Sm4YxDf3+D7kLpo7uc8PONLbBAlLRGKtoZNV9Z3nvx6mDR4eNMw9ITV5FlVGPje
         Q7+sj51Wus7Sh3wFbwsTYICZ6cHYs77k2CCc7An+3bX9cVIE40nIGEDUa7Az18izxDgo
         LPibnFLXVpNghr6j4f3UC6i2X/5ZeQZv4stE/HlTep5kjBEtKfR0ei1DYG/liJgI+b99
         e4bx0ZiJeCDubUX++XKswdURbq8NAuqJnJk28GlQN+KpyNhlw2r2r82skK4hafk9SNT7
         Ho2ZIBaf+xHpKAHGijT5EXWZMIAvs9S17WmPJ32QVeNweDf3UR/+NFTcN1gm79i/Ugtz
         MMJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWwlJstmteXqt4oUE/EeMWYvXFECuEik4aHbLgtSKIugzIUoAaTavqorcJvsbnQPX7DE7tIuefM4ra@vger.kernel.org
X-Gm-Message-State: AOJu0YwtpIi+aU1FMYiVTL0xYCNM6eSrYJV+fNi5mWUZrqlb0UWFomuH
	dk60VWW/fdVq/BsWllRnWxi7PA8XPtkJfazKb3+SXrn5xiKmuOWvma/z1H8srhE=
X-Gm-Gg: ASbGncucJdRrY/h9MtL0ie+6zD3ZGq8xeyc03PwbA8WsGD/FpPduDojBEFjTce/tcEp
	9c8XluaKcAzRtnmwJIS9zP1BQvmW3b7McP6lxtxGyTiwmEPOHExw75S/y1DplOdP88/90ogBo9z
	yhifNI6Hlmz57Pe2Z5FsiFzjd0SfNGjwU7CZN3R/9/rcRAU3jnQOldtgswjxwTpbQRxueUkEdbW
	xqjgXwvIXmWFfWLbke5XAAJFS+ikoWPivx0Lbnmr3f4TyDG766cPUOBw68UROHMJuBUEOmHK8sB
	60PJR3+Qwug9lGVFQa00mDL2mEti
X-Google-Smtp-Source: AGHT+IFrXpURXC6IeRPpOGWg3/tFzqB6mJrEgvaEoQuFlLXK7BO3fm1YNKQtwAqXg3g7vbpjjvAXGA==
X-Received: by 2002:a17:90b:54c6:b0:2ef:949c:6f6b with SMTP id 98e67ed59e1d1-2f82c0d31e5mr3090153a91.13.1738040405414;
        Mon, 27 Jan 2025 21:00:05 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.21.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 21:00:05 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:51 -0800
Subject: [PATCH v3 10/21] dt-bindings: riscv: add Smcntrpmf ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-10-64894d7e16d5@rivosinc.com>
References: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
In-Reply-To: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
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
 Documentation/devicetree/bindings/riscv/extensions.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 1706a77729db..0afe47259c55 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -136,6 +136,14 @@ properties:
             20240213 version of the privileged ISA specification. This extension
             depends on Sscsrind, Zihpm, Zicntr extensions.
 
+        - const: smcntrpmf
+          description: |
+            The standard Smcntrpmf supervisor-level extension for the machine mode
+            to enable privilege mode filtering for cycle and instret counters as
+            ratified in the 20240326 version of the privileged ISA specification.
+            The Ssccfg extension depends on this as *cfg CSRs are available only
+            if smcntrpmf is present.
+
         - const: smmpm
           description: |
             The standard Smmpm extension for M-mode pointer masking as

-- 
2.34.1


