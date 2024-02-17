Return-Path: <devicetree+bounces-42909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0C2858C20
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 01:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B42651C2117B
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 00:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D387F13ADC;
	Sat, 17 Feb 2024 00:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Xkx/aXIF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FA91CAB7
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 00:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708131506; cv=none; b=aIoCwGZ36fVqjOE7zlZDEvRoxLNAScKpKzs+jpnY0C8of1Hcg+rO8baKti9FgZ7rIxbYCuhvK4P4PLPEI0FDnzQgdm3eC4GDqHq8gt4JD3FaOeJCkORIlh/+LjRqyLWLKa1A51B6vg7PjoIwnS23bqWU6eRILHIBeX2H7/B+P+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708131506; c=relaxed/simple;
	bh=wApsm5WI3b6ryt2xXhsST9JCFAgMEijoZLP8Q80/+38=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YNMqDFrRbGXGwtWcUpThz82aQ4eSqZDFgU64q93CMlg0WrwVWkBVHNbEwG1/5N1TQddSF1WQmQDEqUIPxlV0su5SsfM4rAI0IUtr1jaKRykT30P9DALp5z9gTAbPNjSWZxztZOrV1s9rO9uz2CqUFlltYkMyWQ1uWGUTClvUlDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Xkx/aXIF; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-21432e87455so883158fac.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 16:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1708131504; x=1708736304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AGOhtuG2UaHnTQxcaDC8cd9FvgXaDTb+kFLo3H4sRjk=;
        b=Xkx/aXIFtLL4NOJc6WW/nbFdMM55wijiJf33fSfxT4oQ/0dI2L51iSNq5BqkJEQEIS
         kSl9FnspmGN/OXdOapUYOu2JtFO07t1BQFtSktvQgZAoxLMV95yE+GfMwCLxM0WLzueY
         DiLl7jQ6b/w2uOkwMwZP5C3zKk9FfL5LNjLlpcf85fVIPtR01XF1kwcKuzjUHbcUOW5a
         M6sHden2tY7WexLYgpwmwOYb90tKfpHgtMBqBrvUhJBrZ/AvqG23XFcDuElyRvFOo5PE
         roELP8VvyLjOlOP+lAvGPVi8m+yUiCEP6Ml2MBO8kEb/OT25ZAMyN3Ld6eGBSsHQbutN
         gpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708131504; x=1708736304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AGOhtuG2UaHnTQxcaDC8cd9FvgXaDTb+kFLo3H4sRjk=;
        b=GCpumFTf71dZBj7ehwfr8z+dT3BUa6v9JXtNEXzeggSNnRkrozt51WeiBFx1nIStLY
         cfrJHQlIYHX/fDAAmvgxIgfYOyJpLyzdu6ZnDgJuOPJu/OQRZ7qGhZnmtrEdJ06UtQh2
         5LpH22pPiEZyrQC/cTpzn1ZuZHt4VKfRJdTL0KU3BObq9wuOf4vqwGBACLiFKSS+JcFs
         dxDvJO3iTqGvmp7IoHy/Ga3XpcEjKSkgVzc8mEvD3ZC39F4+GvVa+aosvJkcgjewi9g5
         hh7QrXwd5TgGY+2M574mvNHrEj8Q88KSALfkKeYXqF2vr62Z3F8504C6U5DQwYSKZNLf
         Wc9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXKwpVUdkScy/XL+C3Pg+62hQQuHzZqf4UTNksVQD0lN5DmyDXUHNTL2M5yyP706A5M0wzm4Is+Ny1V5Q2a8FvwVwLRHP1F28fjmg==
X-Gm-Message-State: AOJu0YyeQ1ZWnXUebYWsEHXZD6XkX52WcQtdMoYfdGyTFyAIkhJ0eLTV
	jesb+JPgRXE6s0U46NLWu1mkHI6AiI0I2opuGgSx5xvNtO8IeVEXtp5tf5Qddzg=
X-Google-Smtp-Source: AGHT+IHVmqRBo/P6TbzgA+IGRtey54aZ2Ug+NftR1Tt1j04Iczb8JXsSk87BBrBxRg2sWo4RpRMoyA==
X-Received: by 2002:a05:6870:40d3:b0:21e:7fba:1960 with SMTP id l19-20020a05687040d300b0021e7fba1960mr1993804oal.18.1708131504258;
        Fri, 16 Feb 2024 16:58:24 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d188-20020a6336c5000000b005dc89957e06sm487655pga.71.2024.02.16.16.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 16:58:23 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
To: linux-kernel@vger.kernel.org
Cc: Atish Patra <atishp@rivosinc.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Anup Patel <anup@brainfault.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Christian Brauner <brauner@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	devicetree@vger.kernel.org,
	Evan Green <evan@rivosinc.com>,
	Guo Ren <guoren@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ian Rogers <irogers@google.com>,
	Ingo Molnar <mingo@redhat.com>,
	James Clark <james.clark@arm.com>,
	Jing Zhang <renyu.zj@linux.alibaba.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	John Garry <john.g.garry@oracle.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Kan Liang <kan.liang@linux.intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	kvm-riscv@lists.infradead.org,
	kvm@vger.kernel.org,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	linux-doc@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Weilin Wang <weilin.wang@intel.com>,
	Will Deacon <will@kernel.org>,
	kaiwenxue1@gmail.com,
	Yang Jihong <yangjihong1@huawei.com>
Subject: [PATCH RFC 04/20] dt-bindings: riscv: add Sxcsrind ISA extension description
Date: Fri, 16 Feb 2024 16:57:22 -0800
Message-Id: <20240217005738.3744121-5-atishp@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240217005738.3744121-1-atishp@rivosinc.com>
References: <20240217005738.3744121-1-atishp@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the S[m|s]csrind ISA extension description.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 .../devicetree/bindings/riscv/extensions.yaml      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 63d81dc895e5..77a9f867e36b 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -134,6 +134,20 @@ properties:
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


