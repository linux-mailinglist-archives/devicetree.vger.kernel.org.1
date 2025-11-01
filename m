Return-Path: <devicetree+bounces-234068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3739BC281BE
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 16:45:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82BE61A21FBF
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 15:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777822FBDF0;
	Sat,  1 Nov 2025 15:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="MIghZK2/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EAE2FBDE6
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 15:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011877; cv=none; b=m1WWCQBqzfdb4ZwNCbFfgMPDy18W8z1/Z3UPoaqJ6/cH7fEszxh/nmP4QfLkJEoRz9sMvMFrYEbf3cMv4aWRGsBjUDsVfBOKuqjqMjvn3/UoH7elkMSqSMuIKMjvNokHdwuZTnLVEXjeo8xIDPY9bBRxLWg8cf7D/9DsaRZH1tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011877; c=relaxed/simple;
	bh=9VZ5oZne9mpX5H3+7yVk994ciSqlhPNHkVeF7hnMOrA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O8A6FJMWAhetSrVfL2kNlQf8OVNHvwyOsZIeAJSUtHYnGKnh4ewnOrOIAnuQXf+Zrid3QEcTna/sDqpACHIfPiSVJSuw5cW4QEjSwpjy49SucGg2f08s/YZpplwAcwicZJDaZ5sxDZ4pkx1oUeKoEqFUlLwFapv2FKSUJGqvSZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=MIghZK2/; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-27d3540a43fso32334505ad.3
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 08:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1762011875; x=1762616675; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/d8QkW3fcCXd7CklfrCHDzxbpDgi3QraTb9WZel9ANQ=;
        b=MIghZK2/LOZaiXHm+DRglXQV/aljwaYCj5HAfo2Aaf0d1kfa0H4RJtQ/b+3PEfCiux
         TlY7vAGRQx5Gk86Xo9Xe7LjBdn9p/OCQmZuKJtZRO6iLt+Wq8GIXttL/U08pFkbBvP2/
         jRyRCHJjepat2kJBIPKk8901JsaYsZmbyaGGYaRW/adc/oCepnF7asQ5eWBv9nNhQTMV
         RTw6ttoR6D1/vfkBJbbzcZkWlVfB6+6UQpItr/1Gl4JdogNzH//1U5J73ZaN3JGUkMRm
         XQ42N7DmVV2Hy6lC7m1UEv9zx2DvIwDLMWqTLMCekPhbwCmA8GbchGjAg1D+fO3Irwt5
         e52A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011875; x=1762616675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/d8QkW3fcCXd7CklfrCHDzxbpDgi3QraTb9WZel9ANQ=;
        b=uB2BGzIHlyXsTs1vSBbCW6L1PNSlxxBofBereIOsHmaN/H00MgGhIxexwPRnQ1NmxV
         Mwt31P830zyucxji2mK9K6XXggxg+kgE3yuS6Cml6TmAeX0QFAZGe4WCCed3smVcsrOp
         nGX6c7qJryjP039dbqq+VvVB1cNCvkkUFbKyjhnlK45V7ttlJzrg4dKlWZ2HbYeuesqf
         Fp5ZpWnAfahkVtCtDIkRRNZ/igdxXn4q8DgamUB2B6WCgA0TIRqRksmwiH/iZefftkpz
         eaZT9/CzL3luat35uvH4auwyhA0LY6bR5LCWdlVFuJ9qKFqosg0IJqCpAxz7cm74Ykhb
         MlYQ==
X-Forwarded-Encrypted: i=1; AJvYcCV98c+XfPa8uQVnOd5RvGLUtI8SS4KSSBVhj4Vbx554aHFNsZY1gpGxZSGN73QtqBwNfAGJVNH+vGtc@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdo04FAObQ4IcTfcdB7isX3OV4BxegFIMMftYabsRhu4PxfPs6
	z9iGCaBiZrIMXzYndBZ208ZGc8ErSGLGG9YFzG7Lx8PZrbkFxLedFL0dkLXClhziHq4=
X-Gm-Gg: ASbGncv7Ndl5dJ5Rq98m4MrQwoMSrtyYEhzch1TEyWatWdfV/+eHUgRHxKMyoi+IG0V
	WkATr4hn2/swi0GRs75UPCAkxX8tSw2lY6k0xbVgnjOYR023UzSIe/jFkX6zUcCVdJe7CQUR6P6
	KXu/bE9qDj9iOfA1PglyYyen7P+eGoR4R03qXhKBbCQfJl7Sj5c7tj4hYFF5OXZKtukMH8Mh5P8
	pzl+a7SgcP2IA+VIjbEj4m0Kc3pqSOaSGbSq5bQH/jjy+NEpQgN/J3K8eZqTyFBv+n/lm1Puj/9
	DLXPiYvGtYTIUTG8C7FQrYRlEu5OdWiPbo47aAK49zs3AvzicIT/GBiqCbXOOyVbO4ZyNNfkSSk
	qHh+wJROg26av67CGqm9uteKHw2pKxB/3vm1W//cnAeHSagyjcF78/7M9MCKXuwUZg+Eu4OqI5x
	rauxknniy1xSGJFzhszSwjwtV40C/7vl+ysE6T3d2lhQ==
X-Google-Smtp-Source: AGHT+IGqcfZVcMgWLUG0d9hDZlQu23GscfETgA3I9ETT6Ty8Q0IVDNoUtgE/qtgar49rN37Arqj0Gw==
X-Received: by 2002:a17:902:e552:b0:294:f1fa:9097 with SMTP id d9443c01a7336-2951a55b71emr107166325ad.34.1762011875095;
        Sat, 01 Nov 2025 08:44:35 -0700 (PDT)
Received: from localhost.localdomain ([122.171.20.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm59990105ad.105.2025.11.01.08.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 08:44:34 -0700 (PDT)
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
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 11/12] perf tools: Initial support for RISC-V trace decoder
Date: Sat,  1 Nov 2025 21:12:44 +0530
Message-ID: <20251101154245.162492-12-apatel@ventanamicro.com>
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

From: Mayuresh Chitale <mchitale@ventanamicro.com>

Add bare bones support for RISC-V trace decoder so that the data received
from the hardware by the RISC-V trace perf driver can be written to the
perf record output file.

Co-developed-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
---
 tools/perf/util/Build             |  1 +
 tools/perf/util/auxtrace.c        |  3 +
 tools/perf/util/rvtrace-decoder.c | 91 +++++++++++++++++++++++++++++++
 tools/perf/util/rvtrace.h         |  2 +
 4 files changed, 97 insertions(+)
 create mode 100644 tools/perf/util/rvtrace-decoder.c

diff --git a/tools/perf/util/Build b/tools/perf/util/Build
index 4be313cd115a..f736cea51fd8 100644
--- a/tools/perf/util/Build
+++ b/tools/perf/util/Build
@@ -145,6 +145,7 @@ perf-util-$(CONFIG_AUXTRACE) += cs-etm.o
 perf-util-$(CONFIG_AUXTRACE) += cs-etm-decoder/
 endif
 perf-util-$(CONFIG_AUXTRACE) += cs-etm-base.o
+perf-util-$(CONFIG_AUXTRACE) += rvtrace-decoder.o
 
 perf-util-y += parse-branch-options.o
 perf-util-y += dump-insn.o
diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
index c905563e0d8a..299991d5d305 100644
--- a/tools/perf/util/auxtrace.c
+++ b/tools/perf/util/auxtrace.c
@@ -54,6 +54,7 @@
 #include "arm-spe.h"
 #include "hisi-ptt.h"
 #include "s390-cpumsf.h"
+#include "rvtrace.h"
 #include "util/mmap.h"
 #include "powerpc-vpadtl.h"
 
@@ -1395,6 +1396,8 @@ int perf_event__process_auxtrace_info(struct perf_session *session,
 		err = powerpc_vpadtl_process_auxtrace_info(event, session);
 		break;
 	case PERF_AUXTRACE_RISCV_TRACE:
+		err = rvtrace__process_auxtrace_info(event, session);
+		break;
 	case PERF_AUXTRACE_UNKNOWN:
 	default:
 		return -EINVAL;
diff --git a/tools/perf/util/rvtrace-decoder.c b/tools/perf/util/rvtrace-decoder.c
new file mode 100644
index 000000000000..58db5ca62c1a
--- /dev/null
+++ b/tools/perf/util/rvtrace-decoder.c
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * RISC-V trace Decoder
+ */
+
+#include <errno.h>
+#include <inttypes.h>
+#include "evlist.h"
+#include <internal/lib.h>
+#include "rvtrace.h"
+
+struct rvtrace_decoder {
+	struct auxtrace auxtrace;
+	u32 auxtrace_type;
+	struct perf_session *session;
+	struct machine *machine;
+	u32 pmu_type;
+};
+
+static int rvtrace_process_event(struct perf_session *session __maybe_unused,
+				 union perf_event *event __maybe_unused,
+				 struct perf_sample *sample __maybe_unused,
+				 const struct perf_tool *tool __maybe_unused)
+{
+	return 0;
+}
+
+static int rvtrace_process_auxtrace_event(struct perf_session *session __maybe_unused,
+					  union perf_event *event __maybe_unused,
+					  const struct perf_tool *tool __maybe_unused)
+{
+	return 0;
+}
+
+static int rvtrace_flush(struct perf_session *session __maybe_unused,
+			 const struct perf_tool *tool __maybe_unused)
+{
+	return 0;
+}
+
+static void rvtrace_free_events(struct perf_session *session __maybe_unused)
+{
+}
+
+static void rvtrace_free(struct perf_session *session)
+{
+	struct rvtrace_decoder *ptr = container_of(session->auxtrace, struct rvtrace_decoder,
+					    auxtrace);
+
+	session->auxtrace = NULL;
+	free(ptr);
+}
+
+static bool rvtrace_evsel_is_auxtrace(struct perf_session *session,
+				      struct evsel *evsel)
+{
+	struct rvtrace_decoder *ptr = container_of(session->auxtrace,
+						   struct rvtrace_decoder, auxtrace);
+
+	return evsel->core.attr.type == ptr->pmu_type;
+}
+
+int rvtrace__process_auxtrace_info(union perf_event *event,
+				   struct perf_session *session)
+{
+	struct perf_record_auxtrace_info *auxtrace_info = &event->auxtrace_info;
+	struct rvtrace_decoder *ptr;
+
+	if (auxtrace_info->header.size < RVTRACE_AUXTRACE_PRIV_SIZE +
+	    sizeof(struct perf_record_auxtrace_info))
+		return -EINVAL;
+
+	ptr = zalloc(sizeof(*ptr));
+	if (!ptr)
+		return -ENOMEM;
+
+	ptr->session = session;
+	ptr->machine = &session->machines.host;
+	ptr->auxtrace_type = auxtrace_info->type;
+	ptr->pmu_type = auxtrace_info->priv[0];
+
+	ptr->auxtrace.process_event = rvtrace_process_event;
+	ptr->auxtrace.process_auxtrace_event = rvtrace_process_auxtrace_event;
+	ptr->auxtrace.flush_events = rvtrace_flush;
+	ptr->auxtrace.free_events = rvtrace_free_events;
+	ptr->auxtrace.free = rvtrace_free;
+	ptr->auxtrace.evsel_is_auxtrace = rvtrace_evsel_is_auxtrace;
+	session->auxtrace = &ptr->auxtrace;
+
+	return 0;
+}
diff --git a/tools/perf/util/rvtrace.h b/tools/perf/util/rvtrace.h
index 93c041db8660..fdf2e5866c85 100644
--- a/tools/perf/util/rvtrace.h
+++ b/tools/perf/util/rvtrace.h
@@ -15,4 +15,6 @@
 
 #define RVTRACE_AUXTRACE_PRIV_SIZE	sizeof(u64)
 
+int rvtrace__process_auxtrace_info(union perf_event *event, struct perf_session *session);
+struct auxtrace_record *rvtrace_record_init(int *err);
 #endif
-- 
2.43.0


