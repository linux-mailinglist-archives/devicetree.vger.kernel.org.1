Return-Path: <devicetree+bounces-223274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6323ABB2962
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 08:09:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF227322EA0
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 06:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165622877CF;
	Thu,  2 Oct 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="dfSyplzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516F228C874
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 06:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759385333; cv=none; b=q7JtX+bPBzt3X+xLsTYR8k7nQIxfGZ9e4cam0rdf4CgXHygErU//NBRGNhw8PPR2qW856Q2Ny6WWrtWk1z8skIMAB8NJj3Y3eZjMJRcXtOLOOOzxyhEV7CYTKYAav2V4xBb8idFbeTvuD3fK74A0MOR3DXT4KYXCGuepkLlsUHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759385333; c=relaxed/simple;
	bh=+xq60ZeSAVV1ocmjyOiB1hqUauhWVy1UVAEnUaHfa1o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bkyMxS/cfIb39WDOXYIjBidmApiB53jvwhpFcOHSW3z2i41zMsTh+cg4BdQS3ZFH8edSHKkiS0Fydp76irLqztSrkMGG3+Qx0KPPh+nBtbLeJBjmtsJ7sfLL2qug7w4DSazVnepScWrU6FryCGq9OferWxeFJv+HToSp5W6XrUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=dfSyplzA; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-78125ed4052so874395b3a.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 23:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1759385329; x=1759990129; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1JHjFWe4nSJBuXJLW+4dSgn35y5ppiBpVluUI0Wnqq8=;
        b=dfSyplzArAgDDnWXl0t/mvTcBjYRLmErc9ZyXY1iMdI8qrSMZ/057fk6ktwrkqoTWm
         A+vl8mXxHvKa6YKw83ZuG80AmjseBxd7OguZGZLqyLEDhjpPJLd3syc+xX/MCiJw31Ft
         TC1nK1of8MKzk3wIEEDYbPDIopp6t3BMLitq/tQlVddltB2QzjAVpft1uPeYDQVioCD0
         pmoEoqQVVuvKh94YZJirFcNZynm9VtjyA5JRLhyeWXvK07e/HOHkaslW3ivCziO3KVxK
         yiuwE7OLFqT+Uo0f+giPK50bNQyhFHMoJQwvFRuA/paCOWHxf4f9GS/ael9BNhj4V6yI
         KLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759385329; x=1759990129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1JHjFWe4nSJBuXJLW+4dSgn35y5ppiBpVluUI0Wnqq8=;
        b=ql+XsXXBCThxOBLwO7Yj8lyaJheKCQIyd8kVuJ7QMcVo7h7SumruCunx7wh8Ij7jKo
         NNleVjpjtgkeWVF7StIb5q3DUF+7qPIW0bdzgUU+HMfuQscC/rKh/n2zWanN2dEUMAgV
         8H3hlreax1v75cxc0ZkW+l+DEApo9cECAkQRY/WR765V3vBB1LX3RAY11WEQxoGYzJkI
         r7K4KKezjJxRAi97BoZRHPbpId+tcRvwgrUz8z4pZxEIQDV/KBfsVdLioC/U1TCAjSIw
         bKcgT22dbSGz+1sOmitGz32H3xtgMcp29B2KnH7140PXnKDkbe0MF7za3/W1sShrEvzK
         T/vg==
X-Forwarded-Encrypted: i=1; AJvYcCUlEh9AMZAS5Lkm73Gcyrqea2TxkJjHa+eRVWWGxojUX0W18XTuyW8wmOCHZZJtNXDoL6l6IUeUuMcR@vger.kernel.org
X-Gm-Message-State: AOJu0YwgK+E60UYwvrlBdQi8gfX+az2tg8Gef/5IdFGas39g1LG0AXWM
	H7v02iZcw3CRVYww4Fr1gFG+26JPlwQdFADpoK9xf3EpY41/yAiOiTB+rmlyBHH3Nig=
X-Gm-Gg: ASbGnct6MJH7URoATsTNI9zhYn9iIcK2bQ5FbBOGE4HUodAnVL0NJSsze/ZaASdiCkR
	U8c/XQYMmY8g17pob6bUOa/xpIx7+JMgu/hzv8qSqiG4h+9ATEEEvb83egKo+n6L/780UZRkzGC
	fOMMj2QJfLzYca3fGzW3YmH7bmX0m+204VXGGN1VvyuEHA5aEZBBShGvD+zzOaMz9Mia3oofRRK
	d4ocfzKTMUR1qLgbpF8AYKEiKLcvbwWFyuftHUO7HImq1hloAGo5EzQ+/GUwme23pmAp8SKm0ml
	0obDUCr3J1/z/o4KGliL44dVFB2ovW1KuLj5wHSPhGPG+WW6StgNvUr50BZ8/4VULxXe7SCU1js
	YjCZpFKVrXBPYahQVMfgJFVTQKEKSkoMaZSNYCH6SMC2jEu7irfyn3FWMQqE64raqEz4N4gMOyF
	MWSGGX66CVRY23eg==
X-Google-Smtp-Source: AGHT+IEVQ8syUgiiA1nKnyUpyfhQ8Ilp5w1llqzl73BCypyrqi5ezsbXFBblcxqXVmPTbmDs4OeyLQ==
X-Received: by 2002:a05:6a21:683:b0:251:e4b4:7a44 with SMTP id adf61e73a8af0-321df6c2562mr8435299637.41.1759385329448;
        Wed, 01 Oct 2025 23:08:49 -0700 (PDT)
Received: from localhost.localdomain ([122.171.19.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099f594afsm1205029a12.37.2025.10.01.23.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 23:08:49 -0700 (PDT)
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
Subject: [PATCH 04/11] rvtrace: Add functions to start/stop tracing on a component path
Date: Thu,  2 Oct 2025 11:37:25 +0530
Message-ID: <20251002060732.100213-5-apatel@ventanamicro.com>
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

From: Mayuresh Chitale <mchitale@ventanamicro.com>

The perf driver framework needs to be able to start / stop all components
in a trace component path during its operation. Add rvtrace_path_start()
and rvtrace_path_stop() functions for this purpose.

Co-developed-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
---
 drivers/hwtracing/rvtrace/rvtrace-core.c | 44 ++++++++++++++++++++++++
 include/linux/rvtrace.h                  |  6 ++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/hwtracing/rvtrace/rvtrace-core.c b/drivers/hwtracing/rvtrace/rvtrace-core.c
index 7013d50ca569..109be40d4b24 100644
--- a/drivers/hwtracing/rvtrace/rvtrace-core.c
+++ b/drivers/hwtracing/rvtrace/rvtrace-core.c
@@ -614,6 +614,50 @@ static void rvtrace_release_path_nodes(struct rvtrace_path *path)
 	}
 }
 
+int rvtrace_path_start(struct rvtrace_path *path)
+{
+	const struct rvtrace_driver *rtdrv;
+	struct rvtrace_component *comp;
+	struct rvtrace_path_node *node;
+	int ret;
+
+	list_for_each_entry(node, &path->comp_list, head) {
+		comp = node->comp;
+		rtdrv = to_rvtrace_driver(comp->dev.driver);
+		if (!rtdrv->start)
+			continue;
+
+		ret = rtdrv->start(comp);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(rvtrace_path_start);
+
+int rvtrace_path_stop(struct rvtrace_path *path)
+{
+	const struct rvtrace_driver *rtdrv;
+	struct rvtrace_component *comp;
+	struct rvtrace_path_node *node;
+	int ret;
+
+	list_for_each_entry(node, &path->comp_list, head) {
+		comp = node->comp;
+		rtdrv = to_rvtrace_driver(comp->dev.driver);
+		if (!rtdrv->stop)
+			continue;
+
+		ret = rtdrv->stop(comp);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(rvtrace_path_stop);
+
 struct rvtrace_path *rvtrace_create_path(struct rvtrace_component *source,
 					 struct rvtrace_component *sink,
 					 enum rvtrace_component_mode mode)
diff --git a/include/linux/rvtrace.h b/include/linux/rvtrace.h
index f2174f463a69..e7bd335d388f 100644
--- a/include/linux/rvtrace.h
+++ b/include/linux/rvtrace.h
@@ -273,10 +273,14 @@ struct rvtrace_path *rvtrace_create_path(struct rvtrace_component *source,
 					 struct rvtrace_component *sink,
 					 enum rvtrace_component_mode mode);
 void rvtrace_destroy_path(struct rvtrace_path *path);
+int rvtrace_path_start(struct rvtrace_path *path);
+int rvtrace_path_stop(struct rvtrace_path *path);
 
 /**
  * struct rvtrace_driver - Representation of a RISC-V trace driver
  * id_table: Table to match components handled by the driver
+ * start:        Callback to start tracing
+ * stop:         Callback to stop tracing
  * probe:        Driver probe() function
  * remove:       Driver remove() function
  * get_trace_id: Get/allocate a trace ID
@@ -285,6 +289,8 @@ void rvtrace_destroy_path(struct rvtrace_path *path);
  */
 struct rvtrace_driver {
 	const struct rvtrace_component_id *id_table;
+	int			(*start)(struct rvtrace_component *comp);
+	int			(*stop)(struct rvtrace_component *comp);
 	int			(*probe)(struct rvtrace_component *comp);
 	void			(*remove)(struct rvtrace_component *comp);
 	int			(*get_trace_id)(struct rvtrace_component *comp,
-- 
2.43.0


