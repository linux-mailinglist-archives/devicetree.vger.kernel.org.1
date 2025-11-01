Return-Path: <devicetree+bounces-234063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5987C2819A
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 16:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F94E1A21AF0
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 15:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172A22FA0DB;
	Sat,  1 Nov 2025 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ltAGTjVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849002FAC18
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 15:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762011834; cv=none; b=BAXCrBVnglRCYtjazruCOi7XtmZpsUJJgvD1tPtC9/nm5wpirtpBcpfOGI3Wr7mzC0OBRo4mPg8JzBvbYIlQBzmjNkjBAVf06zyBevCXJDjZirZ4pKWz943enzLaidqrAr1dUx8m1x5ahhOHEqCDsxg/WqbM0d1d6EO4F8Pz478=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762011834; c=relaxed/simple;
	bh=1/PSRddxMss1ZLh6BKodL70umd3EchlKrwrkzcSbhDI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rCm1uSLWVyj1wN6RQ01p3SfEFVfXW3Yu2x1EwGWm9MbJq8Dj5i38NMgDvm9F7tbQUjEz8yEeZn0GOpNVMcj+DrsA7s9h5fShQ2Nm5rxGLQMySeIr3oNKRD+lIEmEh/wsuZKnV6M+zvbaNvFhQt0TrDceb1c1u3dbr8dj9yXGMy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ltAGTjVa; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2951a817541so27125435ad.2
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 08:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1762011832; x=1762616632; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cNRcLxuGh85qOUhHhakMZrIP7xVwXKqva0C/jWYbVA=;
        b=ltAGTjVaEoEzdubkUW6z1KjhT+VCJk2eVIiIKTvA0I0dNXfkFFUROtNIMBXAyiX1pQ
         GojLX/x3ZtanzUdvgzN67TzWzfOqtWajWp7qfWYfuS30I8TKzvNAOSSNgVPNLD4NRuZP
         7I6okhqzjmfNYLIqzofVeVTrLZp2Ts2atef4EFJIADidwecG7oO1bHwfAFIjwwyUBq6J
         jk/PC+AaJ0QtUifY7zSUgywmAqiYYW3yVV+GtTUcXa70crSiRFilq+prym4rLQbw9s6U
         YzM3xUJIkqheeaP24Hz6yv5JGWve0VnZr8hyRP7YUxW0azlBppsr3MElydrubXwKkAIB
         y9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011832; x=1762616632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cNRcLxuGh85qOUhHhakMZrIP7xVwXKqva0C/jWYbVA=;
        b=GmUOSzx/Cyd8EFXRVHu6XqvZ5qAldXtwOkyMX/FooXLXAvRcecHUzcwKKYMViV/bUE
         n78gzc5StDwri8G8MH6AFvsfqLFvRSIYUqjiqJzdozpGPHcZran/Vfg1pXaE9zl01yZE
         EqrkttXop0Dn13KF4HV4x8Gfqq6MPyqC/dxGDdH/7wDVAl8fFVXtW2D7HZEdokqgjZIa
         SASPET2zfXsWaTnfgx9ar/jCF6V6VLLxHRnFcxlt4C0hQNdOMWna6uX5NILJtDkjXHkT
         t2f/TJYSBRUqw6IEOxd8a+VTCfdlLyRW+ReDEJX3TDc2AgFMa6fW/Qo6ofsSC4vFvNCC
         IQOQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5WeccJA89qMjLeIorTf2Gl8XpfRbMQulsoR3uISof4ns3p6CAV0p3IxUL2oQoTKCL3QT5shO9CQfm@vger.kernel.org
X-Gm-Message-State: AOJu0YweBaowg5HpNjBMXRWUyQ3vBPzu7xjf4LrZwaYIScyrhi+Pywwo
	kjWmLeJJyLY2gmBf+igFqnh+oYeTxBUd4cXJffHJYPEYFFFjz+No0wLkl+ICx/9auDI=
X-Gm-Gg: ASbGncsVHQXC5yOZn8XFUbFw2+AX/XC2V3rr85KBQE/GXsggtUGQJguKeCv3pbiMjLh
	+hAPDLJaJPWdOrcmQe9w+6TS+VBbqYCf3PXM9w2sKbv2mYszFuTkpyOO+8SMlpmQPLeHyczcQRt
	UTurPr9Xf8I5diCww4YwGMyX3+oomx6tyH98+jBrVEvKGLrMtIYu7GN+s3hB61C0BQ91yKMNlXq
	y1E1TkJPbruGv8tVt9EBI1tl6GxM8QlL0LT0b/5i5mBbhyK6VtBvLpqI2uIcPthgczP9zxCfoKH
	r7IoZFhB6mHFks4fzXWv3Endv3gGlVDNfRE33F8Vm770Kb/9Inq16lM4N9+rGzKzuyD2tZPO9g/
	LBn9QqGmeiJNnDC/THT9LX3WHYA0dvZ6lZ1mgzhTwWVIwWuTQWlfLi5Bx+PiPpcN6p12NEnZMtj
	BmVCbz/u1/6AjCDOadYfAwe4wXrjT+mUA=
X-Google-Smtp-Source: AGHT+IE9dgmddcRbzfRQuPturLe2P+J6B0ktYW7UkJ98oGijMhfJoMmqTs3LZbQLk6Eea6Hsg8gvAw==
X-Received: by 2002:a17:902:d505:b0:290:c0ed:de42 with SMTP id d9443c01a7336-2951a4dfc4fmr100179015ad.36.1762011831758;
        Sat, 01 Nov 2025 08:43:51 -0700 (PDT)
Received: from localhost.localdomain ([122.171.20.36])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm59990105ad.105.2025.11.01.08.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 08:43:51 -0700 (PDT)
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
Subject: [PATCH v2 06/12] rvtrace: Add function to copy into perf AUX buffer
Date: Sat,  1 Nov 2025 21:12:39 +0530
Message-ID: <20251101154245.162492-7-apatel@ventanamicro.com>
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
index 35bd77d6880a..b955e5f3b048 100644
--- a/drivers/hwtracing/rvtrace/rvtrace-core.c
+++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
@@ -675,6 +675,28 @@ int rvtrace_path_stop(struct rvtrace_path *path)
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
index e2842e8728d4..cecf6c153ca6 100644
--- a/include/linux/rvtrace.h
+++ b/include/linux/rvtrace.h
@@ -277,9 +277,28 @@ void rvtrace_destroy_path(struct rvtrace_path *path);
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
@@ -290,6 +309,8 @@ int rvtrace_path_stop(struct rvtrace_path *path);
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


