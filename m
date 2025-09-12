Return-Path: <devicetree+bounces-216573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBA0B552E1
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 17:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F8375C33BA
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A55315790;
	Fri, 12 Sep 2025 15:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SGEsVkhY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B309E326D57
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 15:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689856; cv=none; b=AgsfW+SjdkXxxY3n4VCD6joG+dk2mhA8xzwvEc0AWHL33BCLkbbVu91fKA/M4fBW8Y/CT8wJams1+Y29dL6CwSQHpPIQvxe4WI0wlGSpHEJ2I4mKfb6ASi188JMwWkTRPPrRmj5O+aFAC+xEynj8uydVn2quDFVc7KLZbJN89Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689856; c=relaxed/simple;
	bh=mqm9C4r9CGB+Ni8ye2QxHYk0tRre6qbdyx5buxGNNkE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sLosvbpzI0wJKewo5GaiRID9Nxib+eVaraUlg9r+7CN2iaZxvWnsEpJBnP5NXgNxhftLci1l4LnOrsc1b7hDIUNLIkg61FD/eWtIxVw2kh2l7CyFGhWBp1LeCA8mWHuMUYSRhlmp34eSjwrOeBidOq0iEFEicMs8QceHTN0aTXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SGEsVkhY; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-6241ab7fc41so860311d50.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757689854; x=1758294654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zRFg2hFdscTgaOHG8cpymzmUrui3DhwhCxVktuuhhLc=;
        b=SGEsVkhYN/ryA/CkVeT1GIIBN4t2u2GcqBZB+YhaNy7xoMd2Wu7fZ+xAkqiAi5NRW3
         nhQ/zzUqU1kMsQjDV6qFD2MLGxTtiwd+ciNjnOstelyHvTNJYNTMJpSA2fiXgyNBjOgP
         hdCcMuzlr8ewoer5wrz6tWizwsc0YhjEJmvIi81Z9yQZMKLppb0/wNbYlbwVDdKKEWPG
         Iw8GVhwm6GyFlu6OGbFf4Z0k9CuRFEfvbbOJvVfgI8sqLz14hlTwR80Uj7dGnmG4BksA
         9K4DgQWCZ3lg4m1kKpIWn0CqxI779eIcICEv65jxCj+gsZea81QkjkyeT9Tu6oNBTlbE
         PIdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689854; x=1758294654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zRFg2hFdscTgaOHG8cpymzmUrui3DhwhCxVktuuhhLc=;
        b=GFq4OFeH6r8FE671y6IK5uDKa65THDIq4kbv4Vxpn0l7YfnXrdioyVIOKdG1nqz5d8
         h0w3mDSbB2mVysmny2PabYVQdxginD8AMq2N6RTuZ3rS5nrdZy2dIpCpImUk+KaXWbjg
         GXNUG6yYllgrzCbOXtUX03vhPbdesSgjAbhlUbiStMnsllZFnMXo/lJySKSBBWWVrOQ3
         UnzIrIYErX10ccEHDa/9JH1TShVqPBOY85xMZt7JOMkUp7yFSOfY2j5N73Bh+nI62taj
         pzI7de50Y6pEfJtJ3P8apUs18CAJ7DDAVaNqxHEbtjYXbFGTomBbhlNswg4526y/cjpm
         McJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsEStzbWjhNuQPOOobqrjTwVixmkUha32H55hu3V4rqG7zLbSOp3CZNH2jpys2t8qhdd2vjNWRJOaD@vger.kernel.org
X-Gm-Message-State: AOJu0YzHgCsX0BNg5Tpas6Ve0GMUIOhh2khH+Hwug+zFDV0BPc8gGKcM
	gNRGe1qLlO96X1pwwusZvclQI3s4RZt1yCKyxRTZE3IA5x7+sN5RrGX0LDHM//fO22k=
X-Gm-Gg: ASbGncvthIMVFOzOq/sB7co4BO4txmEaATmcQPA5lEzNNRgdw/RQ9j80fT5TIoOcBLv
	kxMFpv9ARUjfK007YLbBZwa/O8VTvWsuzuyAugxeRjoH/SCkcmaJgHSIjNoplUPdQkOIs4OGCiL
	Jbs0RUSpg0OyszeUioN79j3rJkPyTncDeHA0M+PcQ6v2XgwDCXuTZYiIqsDDR5KLV+OScZRqZnE
	vLk3h3GcGRE5W6bjfjy62GgSIbunR9NtslRc13K59u4vu1CnCpJIsmY3YFAunsTjFnV3SygSeao
	iy6zMEv2o5pqWqNqARpbY9g1LJNFb7w4SXG6Rfo2lrtVKBP3Q0J0CaPuorhPCfFJzcEl7iBmbHw
	VN6nc+kZa2G/lzUonHHz5v7kMYBxUZjkXNg==
X-Google-Smtp-Source: AGHT+IGA3TFT+vemEd/ubQxEEhLwHcx7hg7Tn+5tAGBp/Y4gBcPvEFcB1itw15g/ByzT4/+eDheVvA==
X-Received: by 2002:a53:84c7:0:b0:626:d26c:cca3 with SMTP id 956f58d0204a3-62714ee78ffmr2387133d50.0.1757689852988;
        Fri, 12 Sep 2025 08:10:52 -0700 (PDT)
Received: from eugen-station.. ([145.224.119.89])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-624841586c1sm1302244d50.6.2025.09.12.08.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 08:10:52 -0700 (PDT)
From: Eugen Hristev <eugen.hristev@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	tglx@linutronix.de,
	andersson@kernel.org,
	pmladek@suse.com,
	rdunlap@infradead.org,
	corbet@lwn.net,
	david@redhat.com,
	mhocko@suse.com
Cc: tudor.ambarus@linaro.org,
	mukesh.ojha@oss.qualcomm.com,
	linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org,
	jonechou@google.com,
	rostedt@goodmis.org,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [RFC][PATCH v3 12/16] printk: Register information into Kmemdump
Date: Fri, 12 Sep 2025 18:08:51 +0300
Message-ID: <20250912150855.2901211-13-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250912150855.2901211-1-eugen.hristev@linaro.org>
References: <20250912150855.2901211-1-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Kmemdump requires the prb, data, descriptors and info.
Add it inside the log_buf_vmcoreinfo_setup()

In the case when the log buffer is dynamically replaced by a runtime
allocated version, call kmemdump to register the data but call unregister
to remove the old registered data first.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/printk/printk.c | 47 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 5aee9ffb16b9..f75489fd82df 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -49,6 +49,7 @@
 #include <linux/sched/debug.h>
 #include <linux/sched/task_stack.h>
 #include <linux/panic.h>
+#include <linux/kmemdump.h>
 
 #include <linux/uaccess.h>
 #include <asm/sections.h>
@@ -964,6 +965,43 @@ const struct file_operations kmsg_fops = {
 };
 
 #ifdef CONFIG_VMCORE_INFO
+static void log_buf_vmcoreinfo_kmemdump_update(void *data, size_t data_size,
+					       void *descs, size_t descs_size,
+					       void *infos, size_t infos_size)
+{
+	kmemdump_unregister(KMEMDUMP_ID_COREIMAGE_prb_data);
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_prb_data,
+			     (void *)data, data_size);
+
+	kmemdump_unregister(KMEMDUMP_ID_COREIMAGE_prb_descs);
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_prb_descs,
+			     (void *)descs, descs_size);
+
+	kmemdump_unregister(KMEMDUMP_ID_COREIMAGE_prb_infos);
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_prb_infos,
+			     (void *)infos, infos_size);
+}
+
+static void log_buf_vmcoreinfo_kmemdump(void)
+{
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_prb,
+			     (void *)&prb, sizeof(prb));
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_prb_descs,
+			     (void *)&_printk_rb_static_descs,
+			     sizeof(_printk_rb_static_descs));
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_prb_infos,
+			     (void *)&_printk_rb_static_infos,
+			     sizeof(_printk_rb_static_infos));
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_prb_data,
+			     (void *)&__log_buf, __LOG_BUF_LEN);
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_printk_rb_static,
+			     (void *)&printk_rb_static,
+			     sizeof(printk_rb_static));
+	kmemdump_register_id(KMEMDUMP_ID_COREIMAGE_printk_rb_dynamic,
+			     (void *)&printk_rb_dynamic,
+			     sizeof(printk_rb_dynamic));
+}
+
 /*
  * This appends the listed symbols to /proc/vmcore
  *
@@ -1029,6 +1067,8 @@ void log_buf_vmcoreinfo_setup(void)
 
 	VMCOREINFO_STRUCT_SIZE(latched_seq);
 	VMCOREINFO_OFFSET(latched_seq, val);
+
+	log_buf_vmcoreinfo_kmemdump();
 }
 #endif
 
@@ -1214,6 +1254,11 @@ void __init setup_log_buf(int early)
 		 new_descs, ilog2(new_descs_count),
 		 new_infos);
 
+#ifdef CONFIG_VMCORE_INFO
+	log_buf_vmcoreinfo_kmemdump_update(new_log_buf, new_log_buf_len,
+					   new_descs, new_descs_size,
+					   new_infos, new_infos_size);
+#endif
 	local_irq_save(flags);
 
 	log_buf_len = new_log_buf_len;
@@ -1257,8 +1302,10 @@ void __init setup_log_buf(int early)
 	return;
 
 err_free_descs:
+	kmemdump_unregister(KMEMDUMP_ID_COREIMAGE_prb_descs);
 	memblock_free(new_descs, new_descs_size);
 err_free_log_buf:
+	kmemdump_unregister(KMEMDUMP_ID_COREIMAGE_prb_data);
 	memblock_free(new_log_buf, new_log_buf_len);
 out:
 	print_log_buf_usage_stats();
-- 
2.43.0


