Return-Path: <devicetree+bounces-179776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2C3AC17FC
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 01:31:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 708EA7BB401
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 23:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359C0271A97;
	Thu, 22 May 2025 23:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="s/MFnMql"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC28D2D4B43
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 23:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747956388; cv=none; b=Af1mwkL3FltAMW+p1y5iDS5gR2UkNDNvWUnjnaPQlhOHmKoDm10/xLu5Z0vo37EEcBpXUf7u+cuIoK98uyj05w4C+rNsQIM6g+NpY7CRoWiH0fvLk3XtgiQvMHU2R55yWk9ASIu6flJIUGAsqZnpdBkFTx9IL3keyyxBsAMJnaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747956388; c=relaxed/simple;
	bh=4/41jFZ7X8VawKTZS2OnRtVeXztOo2HbkndVhYtr+SA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o0MwoS4a0KLf3pkj/NT9P5aWvoir4YNO60LNAR055K6Smedb6fmfpa2uHIcbjfrobOUbzMHGNn6y3wWJwAdv8Z/6RRP8R89ElZqOOFuojY9J0w/YiPNe621FyXkh5yKhbeKrFEk8RUeeJCdLlCBvtKVnSQHG81BExO+wtos2T4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=s/MFnMql; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf257158fso66835215e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 16:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1747956383; x=1748561183; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2TGQ9Um79TGA1rdJIfqkWtDlxZ0F5uqHcIUUMheXtuM=;
        b=s/MFnMqlagQ232hEYp5xSURoyTSiNQeD28sHlznTLBjUXSavqGww8VRVFUHsNVBgti
         8EhFUeekXRuZ3O6wdcuYr205bFHbGqzmTOUQrCH0iY5YMK3LLojF1qbQqNtZ3bZtVVLN
         oJ4hEK79oqKiO+IUujmFt2MiUtS9ryyCOlGNCx/xqJi4JyLw25Ltim9RDYCa2q48LbaI
         Po7Dhr/IIhcxnLq/hbNLqFiKS20UJtnPiLG2Arz/rtrGHcENyDDLVA31wiG1a6Xrwy01
         UUwHIaSEv9VummezSTKG9SnBd7AZa9SrsHpBR4evHg2MW1vHpq9FKu0TwAUdG77quFtg
         QQgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747956383; x=1748561183;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2TGQ9Um79TGA1rdJIfqkWtDlxZ0F5uqHcIUUMheXtuM=;
        b=jxT4P5QBDaPWMe95tSrQeN1WfX1Oqt3IrIo1NEkneyioFSz4K+llfVuJhslA/mOIsn
         zybiP086X3KTQ875CL4KNltD8ifGJwdVBKyJddgD2CCtwHUhfRIqhzL5RHjOofypR/Sf
         Tk18Fb4ewS7VKIZD0Ml5/hYy5BMKcA2JiGsvVV79zSSFyDVBPR6c4LNuiySgLn7cR5bd
         vyonn4VVH3BIJTFcrgemEvVBET2K/joSjG9xs5qoXxx0WTwh1IAc1m6CyrEos8jX41lg
         VkK6CEDXxISoXICWFH4FAoja6mSUXYqhJPZQns78oH7QDNEH7HhxFfVnmRapMHoETDdV
         HVeg==
X-Forwarded-Encrypted: i=1; AJvYcCVMj5jqqyMraqTP7Tx4EBsq4x7A7ZfxnhiC/yQZskIetfClJJYaJbcHNdT4B1G7+oj8Cko966xIebVv@vger.kernel.org
X-Gm-Message-State: AOJu0Ywqrp+3ENOYDz2JP6v1HP/rRtQFgJWkPZjWEl+zgblD6PlJvyw5
	N9kkftMsWRUQFc75TVLH4lMo8j/6oXk+Ov7im30Sm3OFO0R6r/ug8bTLY86PSlYApww=
X-Gm-Gg: ASbGnct2KRc12vBRhE7PNDG3ZZX8W4CVhJQCRfJd1JgETJFZ68hTsC9+lqSOcwjLc8R
	/E+Oj4FtEivJr0w7ibUi5LqCGXAWYHpWtL4EJKersZz8gND4BLQVjLBf4KFFpmnLaUNI7VF7WCb
	PFx+BxZWRt9poBKDnl48vp+xePhqxGIYiZ/L9HhHTQLU8gRmmqbQ3/qa75xMlPAA6qaMJNHXeCa
	FUeKokokgkJJERLsjIgIJJ3loXIiuNfCSsHc138RcBB9lfrmCYl3T7mdkWZhLOWFrFAdeYq1N9c
	TiErNiU4sxXsMSzORF8JMKOi5beFp7FWrMZuB2AFVZOT9L46E25TVA==
X-Google-Smtp-Source: AGHT+IF6ivtK0jlTOWplkDrHgDgHgJQdZAf+be8xON8uguEYmscbWhUXECsK2nYD7OUkDLNgE9SoYA==
X-Received: by 2002:a05:600c:8207:b0:44a:b9e4:4e6f with SMTP id 5b1f17b1804b1-44ab9e44edcmr45387425e9.16.1747956383213;
        Thu, 22 May 2025 16:26:23 -0700 (PDT)
Received: from [127.0.1.1] ([2a02:c7c:75ac:6300:c05a:35d:17ae:e731])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f6f04334sm117825395e9.10.2025.05.22.16.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 16:26:23 -0700 (PDT)
From: Rajnesh Kanwal <rkanwal@rivosinc.com>
Date: Fri, 23 May 2025 00:25:13 +0100
Subject: [PATCH v3 7/7] dt-bindings: riscv: add Sxctr ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250523-b4-ctr_upstream_v3-v3-7-ad355304ba1c@rivosinc.com>
References: <20250523-b4-ctr_upstream_v3-v3-0-ad355304ba1c@rivosinc.com>
In-Reply-To: <20250523-b4-ctr_upstream_v3-v3-0-ad355304ba1c@rivosinc.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Atish Kumar Patra <atishp@rivosinc.com>, 
 Anup Patel <anup@brainfault.org>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Beeman Strong <beeman@rivosinc.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, Rajnesh Kanwal <rkanwal@rivosinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747956375; l=2497;
 i=rkanwal@rivosinc.com; s=20250522; h=from:subject:message-id;
 bh=4/41jFZ7X8VawKTZS2OnRtVeXztOo2HbkndVhYtr+SA=;
 b=jbzPeS5MNGd7AFFPThGCJziNnql/9Fc4HHGH91C3BLqfIJnqOWhSXa3ocJBdIz4rrC/pVNW7X
 eE6pHLfkSXrBFviRejtBWb+GcQKMp69KtkiO2MuH6iYL+oRko9WVfgD
X-Developer-Key: i=rkanwal@rivosinc.com; a=ed25519;
 pk=aw8nvncslGKHEmTBTJqvkP/4tj6pijL8fwRRym/GuS8=

Add the S[m|s]ctr ISA extension description.

Signed-off-by: Rajnesh Kanwal <rkanwal@rivosinc.com>
---
 .../devicetree/bindings/riscv/extensions.yaml      | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index f34bc66940c06bf9b3c18fcd7cce7bfd0593cd28..193751400933ca3fe69e0b2bc03e9c635e2db244 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -149,6 +149,13 @@ properties:
             to enable privilege mode filtering for cycle and instret counters as
             ratified in the 20240326 version of the privileged ISA specification.
 
+        - const: smctr
+          description: |
+            The standard Smctr supervisor-level extension for the machine mode
+            to enable recording limited branch history in a register-accessible
+            internal core storage as ratified at commit 9c87013 ("Merge pull
+            request #44 from riscv/issue-42-fix") of riscv-control-transfer-records.
+
         - const: smmpm
           description: |
             The standard Smmpm extension for M-mode pointer masking as
@@ -196,6 +203,13 @@ properties:
             and mode-based filtering as ratified at commit 01d1df0 ("Add ability
             to manually trigger workflow. (#2)") of riscv-count-overflow.
 
+        - const: ssctr
+          description: |
+            The standard Ssctr supervisor-level extension for recording limited
+            branch history in a register-accessible internal core storage as
+            ratified at commit 9c87013 ("Merge pull request #44 from
+            riscv/issue-42-fix") of riscv-control-transfer-records.
+
         - const: ssnpm
           description: |
             The standard Ssnpm extension for next-mode pointer masking as
@@ -740,6 +754,20 @@ properties:
                 const: zihpm
             - contains:
                 const: zicntr
+      # Smctr depends on Sscsrind
+      - if:
+          contains:
+            const: smctr
+        then:
+          contains:
+            const: sscsrind
+      # Ssctr depends on Sscsrind
+      - if:
+          contains:
+            const: ssctr
+        then:
+          contains:
+            const: sscsrind
 
 allOf:
   # Zcf extension does not exist on rv64

-- 
2.43.0


