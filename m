Return-Path: <devicetree+bounces-138589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC5BA11482
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 23:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 862A23A2E34
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 22:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F1622331F;
	Tue, 14 Jan 2025 22:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Jw4kC5Zz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A6421D5A4
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 22:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895506; cv=none; b=u2nCejSFkbD6/wMeb2Vjdc/JCCcn9KlsxaeHYL0ptTMns8y7wSrHSfbvNvDeXtWSZGSCGA5QgTMPqvbcfrbgtzBFc4UuPFPOVrbctp3ARqFVdoMij3/OtNWJ8wW89xWceMnUydwLDT4tebs491PbP0BkDok+OMTkX98b4gylK9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895506; c=relaxed/simple;
	bh=Vmwsa/ctBo8N43GnV4TfHr9aW95FI1ojPvJ/QsRfYGM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rpFqDZ4EVzFSCR5HzM2NTAFYOEGyv3mUueEaM2uSe4nG2ccDOz8levBjLnJRNbZ1gv1g8zPmL8ZuCDvh9DeV3tNbZQCHjb2WRo38KdSV2PCUA2eG0VOlsGRh3GZwHq/OcC6mGp5V+HN0UZ8uJgtamy4ycF9EDsG7GJMo3Yt9JkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Jw4kC5Zz; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-21a7ed0155cso105144325ad.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1736895504; x=1737500304; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+nuV14UWlVLpKqlK5QJyBaxP+s4wgcBZS80Qr+dhQF8=;
        b=Jw4kC5ZztlXxPgkp43W3EuEe/NdpYEZk+K6frb6Yav7IAz3bHS1VQ4vxn5KNy9u5q3
         sAvPcowJhdTAhmSrs4VL/ML5bPIVheH9WbdVqrV6wEAbln3KBefUp55LMDbDg71YNd4G
         maygkQhQqObjgLuYl/tCHsOX58JNpqAPgCtsd36+70j565yLmAevxF++aiJzEEoTDaIi
         h1I1QTaf+iMU7sB8BZ/fSm2QcOrxF310TgZwamoLAlRen0zUXKT3kaNp6VHBd8puIS/2
         /ynqMmDf6/ddqWxtmeX/fvj6bH2Bmp57NZlwVwnLSxp92GmEgoPp/yn83oM2BKzqvgRy
         meaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736895504; x=1737500304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+nuV14UWlVLpKqlK5QJyBaxP+s4wgcBZS80Qr+dhQF8=;
        b=Ewy9phmnV5JTbRHB0Ak/FnGsrEbI+K2QWETrkG3Ie84MrFanyTYUkc8D7MMmzPzl2H
         ql3ZYRbD8AdqoZfAyzEX2fGQKTO8Crb0q1LKWifNM8YTosZTvXxlXytAbuUbnq+/bXGz
         gYRyBG7xUcHWdcyb8lWSvjGlfy3QJ8TvmKpaQipuMDs6Vz8MSBVM5eeFkmYcJ6/x9Ewz
         984LpS1clS9p7gPmJJO1TqaTV6CO3PcHdkGXF5EX6+fZ0EJaDnwOOZDbO13DVuEwunyU
         /qlrW9sF+bzuhpUs3tnFeCS+Fss102DOrg+J1agUXzH9+SmOvqUbHfiCqQP0Qwhl0/E/
         49mw==
X-Forwarded-Encrypted: i=1; AJvYcCW8roOAYtgmU0yjdvNWCyaIJTk9mxpCmpMNBUpNOQ+CNm1o9ryKkmCvRfq8yP5Kj0PD+gE/t8qwGAZ1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw87GzfPS25LEevkR3lg87OIRVjS8RI2ZU0xx0xK2HWhoxB9+2a
	xzpTYriS31EzmchU2Gsnyp/c6uJQmZn95QxZ07kiXumOrGOQ/zjg9iZ/rLxUK9w=
X-Gm-Gg: ASbGncuO30j1IXDjxaOR85YPKC7XGDkZEmB85AUFETxead9k52kYWxQMbmbdWfYhNbB
	81zjXx3XCpdUgJmhm3QMqN5/RtZ3xEPMJrseX3SrvQcIjGNZ8pImccg4iqGYZOzUIi5R5CM/sn7
	5eeTOXUcGO9XKkd7L0WKz1HgTvsKSym1UnWbb3OvjaFdg4qDrs5xh4qSZ3LFuWLvzl8CIVsX8jA
	MXSmlQ64P2JC4XNByqQuP8kyAC5FJfgcG4xmCJLr6wZn61efRASSGtOToFBISHdks2dQg==
X-Google-Smtp-Source: AGHT+IEV9xqrGE2EwbwN10kTDKoQE5y094MCv+vKIzLtISYj8DvmatP2DVPnEqTLBoPDrnLS9ZbWpg==
X-Received: by 2002:a17:902:d2ca:b0:211:8404:a957 with SMTP id d9443c01a7336-21a83fc0619mr405796975ad.41.1736895504307;
        Tue, 14 Jan 2025 14:58:24 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f10df7asm71746105ad.47.2025.01.14.14.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:58:23 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Tue, 14 Jan 2025 14:57:29 -0800
Subject: [PATCH v2 04/21] dt-bindings: riscv: add Sxcsrind ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-counter_delegation-v2-4-8ba74cdb851b@rivosinc.com>
References: <20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com>
In-Reply-To: <20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com>
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
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

Add the S[m|s]csrind ISA extension description.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 9c7dd7e75e0c..0cfdaa4552a6 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -146,6 +146,20 @@ properties:
             added by other RISC-V extensions in H/S/VS/U/VU modes and as
             ratified at commit a28bfae (Ratified (#7)) of riscv-state-enable.
 
+	- const: smcsrind
+          description: |
+            The standard Smcsrind supervisor-level extension extends the
+	    indirect CSR access mechanism defined by the Smaia extension. This
+	    extension allows other ISA extension to use indirect CSR access
+	    mechanism in M-mode.
+
+	- const: sscsrind
+          description: |
+            The standard Sscsrind supervisor-level extension extends the
+	    indirect CSR access mechanism defined by the Ssaia extension. This
+	    extension allows other ISA extension to use indirect CSR access
+	    mechanism in S-mode.
+
         - const: ssaia
           description: |
             The standard Ssaia supervisor-level extension for the advanced

-- 
2.34.1


