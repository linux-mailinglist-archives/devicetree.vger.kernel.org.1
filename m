Return-Path: <devicetree+bounces-141272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4645BA2039E
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:01:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 87E823A64AC
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A631DEFF9;
	Tue, 28 Jan 2025 04:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LGwsla0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FA11DED40
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 04:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040398; cv=none; b=g4RJXZHeIq5kqZ3tOoI12T39DLBx0TksVNtdSrNFkm05YjXZx6kqF8jgFPy1gBnzxf2jvxSq9GHQCTLZFFAxlhiiF1jg0D0lG7HvFA/nids9zfMIE7rAQcO0J07KSQyx+3Eir08Uv/aRT8IQQ2n+ZZv2t6RyLdLlbivcP28gTvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040398; c=relaxed/simple;
	bh=CURFmMM1bMVbBVWFzKB1HrZAF7GWZ+iB6MOdVBx/6BM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Uv3ZBqmYG2vN2cqrOgrqE4Xcg2SHsdeYTcKRngrtUeSZ+TQNbicTCApZu2gPLiC/CJCF4jyQIWYhAjP0p1ZAyFUYbeZLWiZ23kjo4CkGs0udOBqHIEml7slthaNZh69bf9c6IaAv23zlGyTFYuWdshiiAjDlN/KL6KFHd4Z6mIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LGwsla0I; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2ef748105deso6911389a91.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 20:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040396; x=1738645196; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/3d11Vb185MzE7T3v4uIyT+JXKKpmn0Bb8O6L8LI7W0=;
        b=LGwsla0IrPevAlmJuwmHwMnax/7aeAn9OYkbRoP69kT0j8cbMm2aRjEmwPGMNIN1La
         aevQYwuoqEy1OKvgtptBxSfQ8TFbSYEdDMdJZWOQznznUgCaD+cKBDcPQVa/zFD1JPX1
         IjrVhLq4GBezq0xfqLqJ9b7xiWZ8OBWMqX3D4vb1UmdrCnyC2mtqIrzgivQEAK8qdrT/
         aq14SErZp/aRujbE3tg6SRvXdN7ZTDVhrMEVRL2N7m985RHk39Y5BJuTAWzT5SZPayk5
         Oq5GKy4CnzqR7Sac/zsDJtlBYz2bq1xWpe6fq0c0il+GOTEl2qOqsggVfsfaGBYZs5yo
         wRww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040396; x=1738645196;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/3d11Vb185MzE7T3v4uIyT+JXKKpmn0Bb8O6L8LI7W0=;
        b=YeM4LO8G5498MwJfYF1jlYIu00zuIE58x/MO+pf/KGyEOe21DNuhOrK2ny0FeOrDCl
         yBRXGCD+d8l626p1QF/4b64fEn7dTIK4DZpuVMYY72cWjrrb4xA34+QayQazcZjRtQy8
         whmV9k5qohMTV8v+SXNVtCTuc76VqSKhkqd4t7XHZj0NP+G6RaUuTFL1nX1Q6AR5nHv4
         Wbzc9ws/Sv9iuP3wrtS9ENWrdN3Yw8ZPYa0npG71mhczzUxF6SUrjPWri+dtsRvGPkoC
         Owivk0F2oSC3Z2zkmScW3RlQThFA2tfiaAqhwZ3qbFbwiED6lec37bZaif4KJMVSJttB
         DEyg==
X-Forwarded-Encrypted: i=1; AJvYcCXgbQ2BejLo/aEAKvsVvooM2qftTOyqsGP8GmSQenn2nP6dYxkE4D2Jp0o00Rle4xqivk6fPZFID11M@vger.kernel.org
X-Gm-Message-State: AOJu0YwYzTnpfGqm1S4TbRdv4ibJto8M0kq5g9jVimEfneexorrsnVrJ
	aCcz7b6c5xNlYy25OR6HxwG6LSGtRKj6NhQAD0eHPtYLyV62J1BCILB9xA/Cz3Y=
X-Gm-Gg: ASbGncu7vbOT3LWk9NEvze4DIkJXslpybcqswlZOuZHHpO4cNz8E6UW2trBivhVbqUS
	37RwUKjgn5n9nfKj+5GLr8UI8nOyG7o41MGbWlflt/uvEFalqNyguSXA4Jcj2+6K/YfRApb3zc+
	nP8HV/nBURv/vFYhzMfCEhcuJJx72c/iTpGzVCkfK830c4PgWQP531Yk6hdyCRRdYQElojeoO98
	9EZpQwRB3cYo6SB3rhesLWXihj6Da86goOeuJgOjW+BK5t7VohSG9J8PM91Xuwk0MA0s4w/h6vv
	l55PWFW9/rViO5Az2jEo2bmTg/va
X-Google-Smtp-Source: AGHT+IGKJLoG1w7HBodanThehp9jcOrQlRY8JCeFJh3f5TphJqozkTpJC2i92zo0GQX5LVcI8mvvTg==
X-Received: by 2002:a17:90b:5448:b0:2ea:5dea:eb0a with SMTP id 98e67ed59e1d1-2f782c4d75cmr60425683a91.4.1738040395871;
        Mon, 27 Jan 2025 20:59:55 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.20.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 20:59:55 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:45 -0800
Subject: [PATCH v3 04/21] dt-bindings: riscv: add Sxcsrind ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-4-64894d7e16d5@rivosinc.com>
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

Add the S[m|s]csrind ISA extension description.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 9c7dd7e75e0c..f47d829545db 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -146,6 +146,22 @@ properties:
             added by other RISC-V extensions in H/S/VS/U/VU modes and as
             ratified at commit a28bfae (Ratified (#7)) of riscv-state-enable.
 
+        - const: smcsrind
+          description: |
+            The standard Smcsrind supervisor-level extension extends the
+            indirect CSR access mechanism defined by the Smaia extension. This
+            extension allows other ISA extension to use indirect CSR access
+            mechanism in M-mode as ratified in the 20240326 version of the
+            privileged ISA specification.
+
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
2.34.1


