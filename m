Return-Path: <devicetree+bounces-234069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E1EC281C1
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 16:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C7F11A21ABE
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 15:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DFA92C08CD;
	Sat,  1 Nov 2025 15:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JbgOwaAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C839E2F9984
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 15:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011885; cv=none; b=q+q0oNmT3WA3UiesYswWPak1jjz1OYIdnKuhog/q+cilOV/dJxqkwf5p7AY0Oob8u4n6yiZGqXl+pyMN+j5lmdd74Hp5ehPyy4YM3VZBTvJFwmYNXL9vxRguJj34vXYhYERKKhcchZBYV19fq1wV1t0DY8IMzOGXLtQ+SkgQVN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011885; c=relaxed/simple;
	bh=HAo7tAo9pz07C0eWiSeGo7gw9TyyhoVzDLUpVnhm81I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PzRF0sOnXm8+P5LLJqoqMBMhNufkwxu/epBsoCQOCAL6LKS+d8AibVLHR95NSbxs+XZSYnmNND953geime9uX+XyrBtqfQsYqLF+257PJEyS+VdHn5N7JAXjYfPfgO1lWjgu2g1FEQgCzb0zQyO6ThR15AJ1wqayd4ZXq2nIcrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JbgOwaAM; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-781997d195aso2307858b3a.3
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 08:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1762011883; x=1762616683; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5DZT80TGVVkLsDEh8uIzxjLsAC/KruYN21Qem0m8wUw=;
        b=JbgOwaAMxo5b9DwOyWFIeRyJX35y0Ee7GbJNmaFzFl7XF4Nd21ZDmUkHnDuAoLy6pY
         Xf4iT8RXoToM/oVcUBfMyTcYPUuEkzeCJKtGQnKB3rcSyDXu2S/2aFqQ8ozCpF2ylqLq
         y3DKb5eIEWJ+LxktDcgCOmg/9n0jxvnT0tMsSYLuI8vZhAES+7vacrXD8/7VNU3Yjtv1
         9VwdETVDpQoXwNoC5kyxjQilUuOd54hLmW9O+kygCnxp+EU6aijhpT5/2ItGL2gZGXWB
         gK8kFTRtNUICgiHm6rGng5KYDluWbvzjvyePnRx+X5svfMQ7yA2RW42myKAQWnULu/72
         w2iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011883; x=1762616683;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5DZT80TGVVkLsDEh8uIzxjLsAC/KruYN21Qem0m8wUw=;
        b=xQu/9I2woJGK0DEck7ziiJjjO1wvvHVHJ+ICTpp3wlR5VAzYoErT3XVqtERZgY2eQB
         thhjwyZlpoXmIZxbtvPoLBRB56a5iYk4k/VwfWHUJNl+aP+i8hgSFviSvfCLoXWGryb1
         KTMZXmlORxztQDg63PW8P2C9dEiuwo3Ftci1wa0ry2h3ju1jsTYJetlm9fRTytxiTzwX
         NL0g4pXOaIgOhz1J+vXTRuUHA/45dW083KVty+z4+7xlK+H6qAab3v25hP9FQ9Ny3cDX
         E36sEdAA6y0T+1mKNH8DIAVJvseAgpV+o09aGkG/rsQ3a/nhPnAb2VqOkApmo7Cg9FBC
         pFGQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1AE0ZRAGJKFMkF+/gPGkDGMgoHNhcLWLqVdA8oO3UVTtty1rTq2l1x4ClGosf2qrOxOwaVmIx3R81@vger.kernel.org
X-Gm-Message-State: AOJu0YydkUakfcbIk2rYfvf/L+CRTAjXN+i25aEMpOkRKOZucFZmSSRX
	DiUI/SE9NQztVYLcX5CSaW4ozQKcjSY+yAn4OS9idZnVkp5HM618fLK/Jh6jNj9bvRk=
X-Gm-Gg: ASbGncv5BEx16m1ytRHWKEpVvU9TxhDi1/1q10+u0z3SM0WMjgoZPnHD2YQwhIPajaz
	8lrVnBF4ma8ZK5620P+2TT5idcZCvtNhkzAI3XPMZSlOZ2AB7rfEkmImqKQOURzD3OarmVz1DHy
	sYQ+DH3Bp8NLV67l0SLxyA0EeR16odMLvfaG+OJhTTzGHPwNmooAxGNqnJ1V8TbD1zDfIi+a7SQ
	5ypMyjrTjHig363eB8aQWqQUeBSMCa/Ac7ywbH3DHVrSy6K6tPoCHC0bwhjvFjNPbb6J2AOrzEX
	1gNl3BYa8M6WArDrjmGiLfHhvneCf3mrWSsYwt4DRXCynMj3epidfaaWPQLCL7996C4ojYoFiA9
	RAmP2SgMNVUYA2U5BxqoKhcIPcFC4zHWxbT1Xm2GAe/Z9sqlNoHE+axIz4lnLoGZKFQpfoMVN7u
	ENJemb89V/2+c5sEwq4oNTi20u+rUpfLkmLoobfJuKww==
X-Google-Smtp-Source: AGHT+IFkhzb/ZLe6YUds3l2xBBPyiwCVMl/rVpbi6jYMxJtBM8rfwpjbkYfn40FDvEOmymUfcjZpEQ==
X-Received: by 2002:a17:902:ec86:b0:268:15f:8358 with SMTP id d9443c01a7336-2951a51e6b1mr86346225ad.42.1762011883058;
        Sat, 01 Nov 2025 08:44:43 -0700 (PDT)
Received: from localhost.localdomain ([122.171.20.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm59990105ad.105.2025.11.01.08.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 08:44:42 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ian Rogers <irogers@google.com>
Cc: Alexandre Ghiti <alex@ghiti.fr>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Liang Kan <kan.liang@linux.intel.com>,
	Mayuresh Chitale <mchitale@gmail.com>,
	Anup Patel <anup@brainfault.org>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 12/12] MAINTAINERS: Add entry for RISC-V trace framework and drivers
Date: Sat,  1 Nov 2025 21:12:45 +0530
Message-ID: <20251101154245.162492-13-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251101154245.162492-1-apatel@ventanamicro.com>
References: <20251101154245.162492-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Mayuresh and myself as maintainers for RISC-V trace framework and drivers.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 29e94a94aa0a..45718190cf44 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22228,6 +22228,17 @@ F:	include/dt-bindings/power/thead,th1520-power.h
 F:	include/dt-bindings/reset/thead,th1520-reset.h
 F:	include/linux/firmware/thead/thead,th1520-aon.h
 
+RISC-V TRACE FRAMEWORK AND DRIVERS
+M:	Mayuresh Chitale <mchitale@gmail.com>
+M:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/riscv/riscv,trace-component.yaml
+F:	drivers/hwtracing/rvtrace/*
+F:	include/linux/rvtrace*
+F:	tools/perf/arch/riscv/util/auxtrace.c
+F:	tools/perf/util/rvtrace*
+
 RNBD BLOCK DRIVERS
 M:	Md. Haris Iqbal <haris.iqbal@ionos.com>
 M:	Jack Wang <jinpu.wang@ionos.com>
-- 
2.43.0


