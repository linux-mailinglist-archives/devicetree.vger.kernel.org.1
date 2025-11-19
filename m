Return-Path: <devicetree+bounces-240306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8A4C6FE0E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:57:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 700144FE6F2
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCB7393DD5;
	Wed, 19 Nov 2025 15:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FsCbIJad"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7F32FF159
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567150; cv=none; b=cm5XH4amn/gaojiXiuXJut0+mTDQ6fOMUR89337ReICuiXlgvJ4r7pKhkqNpFUDDdk+2+s3cWn9qB4tQ1x9pXdPtE64/o9a8A2bT+FJqvr3o6KzJENoYUpRDQ6hY0ph7iS8MQ5HgGW1ybb6wuN810g7iKfdJxXgW1Mlb6qtSkoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567150; c=relaxed/simple;
	bh=oxMJ7nEx298nSQNAUvIm+RfzZDeUkq7JnffHAGnHY2g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aJNLIvBo2cp/ljCuWZ3Ore97r2Rq2ggYIkYeMp+uqiUOB5XQpHFPVfoZMl4KhpS0s5iDTs+AVv7COqwtTPVaPkeqC9jBMS2oDIO3hcEmNP9gW48S6DWDwP1LgejrmK4i1RmRQPz49Z4zBPJNFfveiy8yDdlJFrflaL2L5e0QRJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FsCbIJad; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b3b29153fso3747782f8f.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567141; x=1764171941; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ERGSngcgAQCpMTKH+vT5ZfmIUQiWuwubvJ1CKsgHOkU=;
        b=FsCbIJadiUYCr6ejMirqwdULle+dFIB303mznY92UxGov8aRpXM1+QZ0YZAJZUD4WL
         dEklnlMCpvxXLYdxfYsOMAAtdJ7Y89yogdYrFJamQiRz30daYx5LMFbN32HWiJubddSV
         yKSmzvQbxm0kZ9/kKiXGX8ElkghkgmgldHj7ofdE/8tU2HEt33UbAYAY1F3di2i4/P0U
         23nzNwXa9vf8tpAXj4yyp7i95O+QXZpgrtz3n/IVl1PCKWqIBOzKJ876OYZYt+aiyuMe
         u+98CAqWIInRKYI88txn1aq/8lAHBVFah13SAXvoapuq9p6LywhU7eCXy7B7xaClvy7C
         x/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567141; x=1764171941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ERGSngcgAQCpMTKH+vT5ZfmIUQiWuwubvJ1CKsgHOkU=;
        b=wmdoKFYheeg3Y2lSHU+2+1qpT/jPe59QDg9YblTPaBrI8LqHTB2QR1lX6z7SvPmVPk
         Sp1QXDNouEg9BlogM2JtrsTYlxw8ghtrWSmDvXaUvtqWoek1WOVaVKHaH3SD+V2ulldU
         6bk02L0f+JvJHLcD7BcriK/ZP+gb4CN17vNp6mC4ZzYSwQKJYgM5UY9ublPoTn8DGxXi
         Ep7GZXoGX8SEWJ5gJ8DWLgEvLD8Bona+v9ITQz/p4E3UWpxJDCqsrY9+VR3JsCNUknU+
         hgW8X5hvgtDNdp1YLZq+u6ecW9rdgCocmA6k6HhgDDCVdszJ2Cd6U8OiUC85Ijwgj6Z9
         AwTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTZ7sbFdYbnc0BYyYrVBR39w6V/IVXP6DGFO2gI9c5SKiFPvf1hIHcJJu2gSkHosihNIBm/Tw6GgX/@vger.kernel.org
X-Gm-Message-State: AOJu0YzeooSh57rXnrg5uzESl8/Rx1EvBsV1PIBvOaGA6F5fxMH8fnTO
	vIo8xjrAzd8RlHOYNWv6TmEEPAPIBOi2DCct6+3L7MLqCtSlsNkiDvMEjEVG3Q/PfEc=
X-Gm-Gg: ASbGncviJ3ETOTBSRtE4m744WJZASbgXdNqrdFmqnRx8jeSXEFOM7Xeja9FyMEha6B3
	FsT/0npilUTVYpFz4aQ5aBmUWebAbt9HdxR5mNu3qwkbeDoyjEstPg+KH2qu3L1tINwsh1p+WIx
	n7mywPaqxVtrrqHdkjWXx+OimXS5esKCWvJZbMEcVtNHE6htnO3qixGsA4fzowzufqtY+KMNBG6
	tZThlxbbpeU9k+4XCtUZRbrl4JmGEFoiMZCUrzeDRxQ3unxC9p3KXO0RMPl8tjVETMB5EfLuh+1
	o52PG3lvV3N3pqWySwgvXFtgRR4JJ/raVP4n5uLgwmCTn8jZ+28SdxnAFdJ3/bSH1BH9VVvfbUq
	sv2bd+1+wMncP0SPL+eO3AEvvotfUIy91MsEcvvHibW0cFIsWerL2MjQ41GDVZBs+64rmXAP/mH
	cfBH9yPMlpC8VwcP2McB77eDTwt0DETA==
X-Google-Smtp-Source: AGHT+IGbRbXBdWPtS8s2pezZSC/ny/HyWuyG8gk1o+dQWRtSU7DtMYRlEtgHBlikDrn4myL+c90Kfw==
X-Received: by 2002:a05:6000:2410:b0:42b:3978:158e with SMTP id ffacd0b85a97d-42cb1f9e99amr2655929f8f.30.1763567141134;
        Wed, 19 Nov 2025 07:45:41 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:40 -0800 (PST)
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
	linux-remoteproc@vger.kernel.org,
	linux-arch@vger.kernel.org,
	tony.luck@intel.com,
	kees@kernel.org,
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [PATCH 14/26] panic: Annotate static information into meminspect
Date: Wed, 19 Nov 2025 17:44:15 +0200
Message-ID: <20251119154427.1033475-15-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119154427.1033475-1-eugen.hristev@linaro.org>
References: <20251119154427.1033475-1-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Annotate vital static information into inspection table:
 - tainted_mask
 - taint_flags

Information on these variables is stored into dedicated inspection section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/panic.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/panic.c b/kernel/panic.c
index 24cc3eec1805..e99539e18054 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -37,6 +37,7 @@
 #include <linux/context_tracking.h>
 #include <linux/seq_buf.h>
 #include <linux/sys_info.h>
+#include <linux/meminspect.h>
 #include <trace/events/error_report.h>
 #include <asm/sections.h>
 
@@ -56,6 +57,7 @@ static unsigned int __read_mostly sysctl_oops_all_cpu_backtrace;
 int panic_on_oops = IS_ENABLED(CONFIG_PANIC_ON_OOPS);
 static unsigned long tainted_mask =
 	IS_ENABLED(CONFIG_RANDSTRUCT) ? (1 << TAINT_RANDSTRUCT) : 0;
+MEMINSPECT_SIMPLE_ENTRY(tainted_mask);
 static int pause_on_oops;
 static int pause_on_oops_flag;
 static DEFINE_SPINLOCK(pause_on_oops_lock);
@@ -662,6 +664,8 @@ const struct taint_flag taint_flags[TAINT_FLAGS_COUNT] = {
 	TAINT_FLAG(FWCTL,			'J', ' ', true),
 };
 
+MEMINSPECT_SIMPLE_ENTRY(taint_flags);
+
 #undef TAINT_FLAG
 
 static void print_tainted_seq(struct seq_buf *s, bool verbose)
-- 
2.43.0


