Return-Path: <devicetree+bounces-143475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5C6A2A21A
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 206173A5353
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ACF4229B26;
	Thu,  6 Feb 2025 07:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="iD6Nlc5F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C52225A41
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826606; cv=none; b=jsBgQfexdrL4FusxQMAEgDzaiiyzuxDhgzKSKkBKdyyad4Hhn8vWSaYVdAjMqXbna3idsgYHYhklJK7BEwR8YVAQzR7OEolQW4OUAFaDxigGDbMcn6Tcn5Omc2ZqH9H5OQqnAGvBdVdtvyyjciUkpVEBhYg6syzo3/YQ8+1BQPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826606; c=relaxed/simple;
	bh=RqSSON5eVcBRgVyPFWbMdlHCMx4LYhF5jWyiKPtESMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D68Zbnc0zX8SJfHhrf1jbpvdxhGZatnFRgA+/D1byLzn6ownknHDyngD2LQ9E7280d+WQ+IryBECXBElu4RmcRYdDCZJ1J6jndSCK6DL9qujzG1ZDUcbvqH62Kgkezg6+wdM0GB6QyWXSVJQabPzuZHvEyUwXoWwjClb2gPRvqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=iD6Nlc5F; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2f9e415fa42so968095a91.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826602; x=1739431402; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p2CXRkSzd4LW5IV8mtGWOkMlVaZyNScQT8kSGB+ZHxc=;
        b=iD6Nlc5FoRTnHJZgjmwnyueISYMOPjVDEfqc5HBYNW3cgqR79Bf3db+Du6F8iPnUU8
         Gm3j+lNXM9MvklADBbfzDkCMuqkUowc/6xXqDfcU22f+dd1lX4biiQz9D/5DZ+6BtJeO
         my+TUqMQa8VjLZrGIocEivZigap8nAJy5EddtTeg61cHAaRFPa3TmSDHHWbvZWfQreWX
         3d3/Jx4dprkrc71So5JW+j3p6oXBVFhs6gqw3sWStNAsGPkrBwJw8T3M5vANNS2hRTZp
         l22sLPhoMSphvNgCdMiQWeO2kWRF02le36WntD0ZmYw0FVtgvQR4IgrMYjfE2LIh7TeO
         0Irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826602; x=1739431402;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p2CXRkSzd4LW5IV8mtGWOkMlVaZyNScQT8kSGB+ZHxc=;
        b=gomtZ05NxtuaM9brvUv6pnl0UhX4nvAGCRTiCURqWXN7qRQuhczz+GKZnmmKcG1buA
         qbuDelkSPYBr33RQWuzSz+IvCYN7oytAuDwV9GCmD4ZGVQhIU0fnAFX41l9d9w1LkeEK
         L3LxRhlhs0gQPQfKHy8kQehkGlcZbF0pgLUOdb8pDUCWJ1HX1ooy3kOdIJ7kZ3rQ2FRb
         PwL8w+w2TFfFzyZctXDdhDUTViaEu61lQpjTjjn1EEREBzesngUMwUAx9iRe3z8mSB4R
         QHKmCIH0fBKtmSnUMsemtqJVRrpEyOsIiByxzbbEH40EudNCPurauRFN7dwR6N3RFib7
         6jtg==
X-Forwarded-Encrypted: i=1; AJvYcCVdO2XlStlLIby8Py3zK+P4480PDkazrKFvec6I5ympTlLs6fI2VwH3h5zSd4C1AMZsyT1GQ3TjUdz6@vger.kernel.org
X-Gm-Message-State: AOJu0YzsAd2cFKOjHfg7y4ff154/dPnJHEUYos8D8K23r8+0pzoG7cOS
	itrD2AV2ao2XMFCqywECQOKE/XQj+UAGsB/WNv2eC+QsXLCpPCGedrWb52YSd+Y=
X-Gm-Gg: ASbGncvLNclPB1Rc11j4ISayIaa2jnKqT+k+3YqYlhHl94Voaxr0jOUcvBK+7HQgUHj
	fEZLQBKnaxOFun3r2bW5ERcvg3mxHKXIVt/fRbGBrlDvkkePnN+/mP8xhO2ifoaedS89tk4sEl6
	R3Nfq/UUawq3iNvAtmaCP335G8hrqeBNorcDsuU3ZzDRfPg1US6R3zhfaFvdFwrq1TIn4VR9wy6
	PoesocNx/2ibLwN0kFp2p9/EDCJPRfEbtTW01DCgmfJ8RGJjl6crer1rk3r3jRP+GC6YU5HKSjb
	JYUKWcYLmmlDb2cwbH96hlj2nqnL
X-Google-Smtp-Source: AGHT+IEsdW7e0nnU+hOuQNSvBNjT6hUmPYli2IAeU6lmXJs5V7j20UKpuutlBvTAACwmkO+Xy8ldvg==
X-Received: by 2002:a17:90b:17d1:b0:2ee:df70:1ff3 with SMTP id 98e67ed59e1d1-2f9e06a1b1dmr11330512a91.0.1738826601990;
        Wed, 05 Feb 2025 23:23:21 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:21 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:09 -0800
Subject: [PATCH v4 04/21] dt-bindings: riscv: add Sxcsrind ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-4-835cfa88e3b1@rivosinc.com>
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

Add the S[m|s]csrind ISA extension description.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 9c7dd7e75e0c..42e2494b126d 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -128,6 +128,14 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smcsrind
+          description: |
+            The standard Smcsrind supervisor-level extension extends the
+            indirect CSR access mechanism defined by the Smaia extension. This
+            extension allows other ISA extension to use indirect CSR access
+            mechanism in M-mode as ratified in the 20240326 version of the
+            privileged ISA specification.
+
         - const: smmpm
           description: |
             The standard Smmpm extension for M-mode pointer masking as
@@ -146,6 +154,14 @@ properties:
             added by other RISC-V extensions in H/S/VS/U/VU modes and as
             ratified at commit a28bfae (Ratified (#7)) of riscv-state-enable.
 
+        - const: sscsrind
+          description: |
+            The standard Sscsrind supervisor-level extension extends the
+            indirect CSR access mechanism defined by the Ssaia extension. This
+            extension allows other ISA extension to use indirect CSR access
+            mechanism in S-mode as ratified in the 20240326 version of the
+            privileged ISA specification.
+
         - const: ssaia
           description: |
             The standard Ssaia supervisor-level extension for the advanced

-- 
2.43.0


