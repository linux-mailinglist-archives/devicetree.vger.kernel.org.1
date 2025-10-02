Return-Path: <devicetree+bounces-223276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A39D7BB296E
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 08:09:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C25619C5A14
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 06:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D0028C841;
	Thu,  2 Oct 2025 06:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="n8YOdS0B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198042877F4
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 06:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759385346; cv=none; b=r0H8jpPrmtzqQ5MYupGtgH9qtL/JyGHGC1T8MQmplb3uPYTmRhWctlPrmPa6GNYigVJLBtL4VPCRwmEqYNuKLtCr61RpCMdIU4/7EaeWz4rlnp8BF7nt8qLA4AKMBqIZAbNONVkf+E5ZqACZhZWsJhwb4EeKqitwebRRd8eG6Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759385346; c=relaxed/simple;
	bh=tfWE837rSy6IepZ2Tv7OhO61tMfo7jk1UPoqBIN/PaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qy2Tiwv83eJ64dGUgBkJ6rGIMzpS8k98zdUovcZZOydoOGYq1k0Gtf2qAFd9OKpbvFACFl9yQ//SPhB+P4ev5qgAWFB2lxunSdbEKpSFuydZ1797NGFTyAltH4IcCJS2FUzVPPftqS8o9Sn15LMta31nm84e5OdXVpDVDpbdL34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=n8YOdS0B; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-3307de086d8so663477a91.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 23:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1759385343; x=1759990143; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ElwK4fIoolTelCOzIEenmHWdT3EJLmrIEE1cSAO83o=;
        b=n8YOdS0B6KVyCkmJesTn72ytBpthQXnvlLhdfHe6Jo99/FZZuFx01kDLY2PDTPGy6Z
         LirSSFVBwk1iveysAJrp5Fkh0aKxc9/xN2wFUvfBnUDTpC50v63q50uXvGCCXgYMqfUS
         Ccr7lzHvU3y95oZH1A6739/2xQqyEyi0/ga7OUk97XZORPKXTlnohbqUOhhckWDNPo+9
         ddCNm2kAZ+NWf01UKvHEvq7gX8xxjiCboI7gymhhdTt6WA/geoGZsvRWHI9blsMscGsy
         JP/UIOdd6MsrI1opUpkSR7xExYhHgjtCHOmiI2wvJNvtTfqw2gD1T/+wmayTQ52sygV/
         gmkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759385343; x=1759990143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ElwK4fIoolTelCOzIEenmHWdT3EJLmrIEE1cSAO83o=;
        b=fh6wMpbsJfn7wSR6btRlSd9lQkbfhn4kYB/ieEU8P6B+BDLfaf4bWujZJ5aTkxBHMQ
         T8bLueUMgns2UIGvKcTawHGMqBptteaw+CymPhLXbTyRLawW2p9v6a/WcAlWbIahLqeM
         3kQ6L3kfq0Gu+83F91bUblL+SYiiF/1sqtdsaPJubH2v9BleMdEbkdpjZaSNDOIwTQmh
         RqHO5Up+36lIsxmxZ/4f1g1BFGIOeEgmdWu+6vrQnq1xoAR/67UabIuzLhjdw4I2aJ0d
         LhpGscSE5yHODKN7fJHp0xFjyEncnmoJlKQqJykvt6H/y0kc9SZb/3b8raqfAeFV7VYH
         t+eQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvKu5DudLrqOPDZKYLmuI5oD3pKBXdQN1Wl1EGFLsLMT8e/wVn8YrsxqCXRZubclS4t50IKqCXvmKl@vger.kernel.org
X-Gm-Message-State: AOJu0YwQq1i5GylL9DxPEVGFWnjzQNBzvZm4FwzuxGeEcN8lgKPQYIu2
	F7d+38r+W1emzWRbD08JIjSn/3NxcZwD5iXdVyLncykQ4hWsufyGeZXLmnDZfQFcGUU=
X-Gm-Gg: ASbGnctkobOvXhd2rWbsLSClQ0lJCvJ/g+P3Q+q/1tfej5z3SDh54dVuAEwQEccypST
	IRW3byFdiNck76czZtMryZctPKNJ1dfK4V2Y/Li9neIaXaZtlgvS/MQaR94qshPkrHbtrOGVrpD
	76SzeAZ16C4ypsIPsvBK9VgfRtj+cCScDtIhQADZyiHUlaKOSLrtYL6/5VDk6Ea5TS3ziJP0zaR
	f2IhayLBcR4Hz797LAC2aCvm6m3pLb7n29cSQxB1EnvAhPULjfA+UKkPaN7IuDD3AJO1umbQoHp
	tUFTBc87hd1vAbYxuKjY5m0+VeZtXQ5bbErvPzHKKPT+wJ+DzSLGrH6BSkPZT1tOnHmMmFK1EB/
	54FPODJt4Ci3/Q/5/qa7TsAaLALTtpMmn7VIYEo0nwsStaTl6ni4SOzMj3pHANjVgxcg/Pl2/pp
	JnDtk=
X-Google-Smtp-Source: AGHT+IH/FR32C0/V3WVvZjUC/0GDNM4I0fMXKVVovBTpA8gpuMX7GO08LEuXV0qjTChgIGlM9e6nAw==
X-Received: by 2002:a17:90b:3a91:b0:32e:dd8c:dd18 with SMTP id 98e67ed59e1d1-339a6f07273mr7437233a91.17.1759385343125;
        Wed, 01 Oct 2025 23:09:03 -0700 (PDT)
Received: from localhost.localdomain ([122.171.19.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f594afsm1205029a12.37.2025.10.01.23.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 23:09:02 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>,
	Mayuresh Chitale <mchitale@ventanamicro.com>
Subject: [PATCH 06/11] rvtrace: Add function to copy into perf AUX buffer
Date: Thu,  2 Oct 2025 11:37:27 +0530
Message-ID: <20251002060732.100213-7-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251002060732.100213-1-apatel@ventanamicro.com>
References: <20251002060732.100213-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RISC-V trace ramsink will need a mechanism to copy trace data
into the perf AUX buffer. Add rvtrace_path_copyto_auxbuf() function
and corresponding trace driver callback copyto_auxbuf() for this
purpose.

Co-developed-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/hwtracing/rvtrace/rvtrace-core.c | 22 ++++++++++++++++++++++
 include/linux/rvtrace.h                  | 21 +++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c b/drivers/hwtracing/rvtrace/rvtrace-core.c
index 109be40d4b24..e874899c8b43 100644
--- a/drivers/hwtracing/rvtrace/rvtrace-core.c
+++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
@@ -658,6 +658,28 @@ int rvtrace_path_stop(struct rvtrace_path *path)
 }
 EXPORT_SYMBOL_GPL(rvtrace_path_stop);
 
+int rvtrace_path_copyto_auxbuf(struct rvtrace_path *path,
+			       struct rvtrace_perf_auxbuf *buf,
+			       size_t *bytes_copied)
+{
+	const struct rvtrace_driver *rtdrv;
+	struct rvtrace_component *comp;
+	struct rvtrace_path_node *node;
+
+	list_for_each_entry(node, &path->comp_list, head) {
+		comp = node->comp;
+		rtdrv = to_rvtrace_driver(comp->dev.driver);
+		if (!rtdrv->copyto_auxbuf)
+			continue;
+
+		*bytes_copied = rtdrv->copyto_auxbuf(comp, buf);
+		return 0;
+	}
+
+	return -EOPNOTSUPP;
+}
+EXPORT_SYMBOL_GPL(rvtrace_path_copyto_auxbuf);
+
 struct rvtrace_path *rvtrace_create_path(struct rvtrace_component *source,
 					 struct rvtrace_component *sink,
 					 enum rvtrace_component_mode mode)
diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
index e7bd335d388f..17d2fd9234c2 100644
--- a/include/linux/rvtrace.h
+++ b/include/linux/rvtrace.h
@@ -276,9 +276,28 @@ void rvtrace_destroy_path(struct rvtrace_path *path);
 int rvtrace_path_start(struct rvtrace_path *path);
 int rvtrace_path_stop(struct rvtrace_path *path);
 
+/**
+ * struct rvtrace_perf_auxbuf - Representation of the perf AUX buffer
+ * @length:   size of the AUX buffer
+ * @nr_pages: number of pages of the AUX buffer
+ * @base:     start address of AUX buffer
+ * @pos:      position in the AUX buffer to commit traced data
+ */
+struct rvtrace_perf_auxbuf {
+	size_t length;
+	int nr_pages;
+	void *base;
+	long pos;
+};
+
+int rvtrace_path_copyto_auxbuf(struct rvtrace_path *path,
+			       struct rvtrace_perf_auxbuf *buf,
+			       size_t *bytes_copied);
+
 /**
  * struct rvtrace_driver - Representation of a RISC-V trace driver
  * id_table: Table to match components handled by the driver
+ * copyto_auxbuf:Callback to copy data into perf AUX buffer
  * start:        Callback to start tracing
  * stop:         Callback to stop tracing
  * probe:        Driver probe() function
@@ -289,6 +308,8 @@ int rvtrace_path_stop(struct rvtrace_path *path);
  */
 struct rvtrace_driver {
 	const struct rvtrace_component_id *id_table;
+	size_t			(*copyto_auxbuf)(struct rvtrace_component *comp,
+						 struct rvtrace_perf_auxbuf *buf);
 	int			(*start)(struct rvtrace_component *comp);
 	int			(*stop)(struct rvtrace_component *comp);
 	int			(*probe)(struct rvtrace_component *comp);
-- 
2.43.0


