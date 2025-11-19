Return-Path: <devicetree+bounces-240310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAA7C6FC4F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id E003A2F286
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05183A5E9A;
	Wed, 19 Nov 2025 15:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XXrmnSHa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA23F34B199
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567159; cv=none; b=uMaBLKzSIbACAqa4AfD5Au16FJZyVHl0FzxwfA9VRoSQCpLR91v8uaF7UmnACOpkrh0bxowiDP35/ZEHV1NPnkdvL6a2MBdMcz2or/Dp6LoGdjaFEQFpI5DG3hZIrAs5GyK2nlvn8+CL7jt5aSG8q8BPrZyjjBBi8fj+VgbmyWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567159; c=relaxed/simple;
	bh=f3/jMwmnVv3mI87uodqbEJ5zmLRyilWaBRh2oB7xeIA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i6+vCFazVp18tjn4dlnSbMvNNeobWAnpHaESj4yNoJlfnLIchjxa5OvjxgPd3rmFU55KKV27Y4gsRYDUElrtIevHqv1tl1Wv53yROxARj1npltjwaLQhfPaxtW92Q40QEQfI9aQpmBhj6x0Nn0jlPV7oF5j/et8JHynbBag3oN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XXrmnSHa; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso38465695e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567150; x=1764171950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TG3MkEScUQgKy+QWFE7rEK/ceT0KdBZscolLPvZ1jcY=;
        b=XXrmnSHaTf1vf6uqqllPUT0sMUElMq1GY66Her4KbnbRi5e+DUU+M+SWXGUt2CZ6yi
         Fcfg1D6NcZVjy26O1mHYrbiVIPaAlLBA2GBqvpgLMBXyymHP7sB69YUN84ZdMxEQx29S
         DToilDeS7YIqZBRpQLn/r+GmhRa5gNuXE+wcynhuswMQIYn0NsTWAoMVNaNDtskjuf6d
         eua2UlS0Q7BEVBAS9dnTmdA56yZpIwU8XFShysHoYhbEidZl0ofZ+gQZPlTrTx3l7IgY
         d2eNag3MWaOS0TVX4RMZONoYBqxONt/LCOMwvGtHCkIwtA0Jveoa88lEMBckYQCQjlIx
         QEGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567150; x=1764171950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TG3MkEScUQgKy+QWFE7rEK/ceT0KdBZscolLPvZ1jcY=;
        b=uhRaPj9QYsYaOMEchfyAABMXLvJN4OgoZH9UCwVSrMU7oyPbgtV+0mIb3tb7Pkm4tF
         iev7lI8+zYN4f+35idp2g1fD3+crEXN4KpAMQFiPtXztoBAUUA3eN35RIWyRP3fM3NSE
         BQRSQjhsofUP/OQQV0h0U0K6RVsF7VyG6/SlOMeH0LufmK/r+ibaAi7Mpj7YeM4Wff1h
         sGIYDqaQwy8Ui/4S0dMLx9cvI3MnB5LKgLektL4KZNyPZkD7nt/Kzg5wxyMsMTEEIoj8
         L9IQGKMin0MLAs1NykZcHyao2eACtzMdxM36UC24yihWGlHqldWpnRmx9IHuvglyLpT+
         2rcA==
X-Forwarded-Encrypted: i=1; AJvYcCUw9sXDBU2DcJZk9IZIukh+ZhlSoyUpPGQjfo1Q4ITm4z0VAEy37+vxQWP6/fFjxahtrXTP4Q+8PZNG@vger.kernel.org
X-Gm-Message-State: AOJu0YwoXprPu2yE3a7gjqTe3+SnVc9ODc8PaYhmF7+kJzqVKXRtAKR7
	GNaQTTwEHXDruL4NzeB9ejdBUnJV94qGeoj0dqdjBTlfW9gSAwW/+0jbEzgzwE1xkWs=
X-Gm-Gg: ASbGncvjB4diWeTYHdlVUIARXL8cd+D7JcllRcZnMGxW0ugM2wa9caJm+55KjZa04pd
	9RWjeo923orR7qsA2PIJVvvVpf/zqaZVK7oQYq+wcvCQpdYDAkTkhbSGEN+EStigA0eSJ0OfmZx
	Vm0n+MPICJ7txuD0bHdIDEMQO5KsT5anMArEz6K46shs/oEDChkENpWS8MR+JL9WFoglY2VTSxR
	B9sZRM6eOKn9lYGs4Zli6BhBAsSdVVnoIlTCNNeItuH+ggYYvvWSqzaxyH9k4dYBVdxsEKepMfC
	+qonRGTs5T2VR3rKrYjqUv9YBQDn3bQpmZvhpVBza7z2J+F7HT/aoXjReuPekDA45S0RbeWHUtx
	Sisftk+1IbCrfbzkk8e3hvJLgXLRfE5/bK7S9sk6PGj3mBNmL3FXTqc9B9MjLyvtoXqaMRnBYNH
	k0AnFnqJmN/PfOgHWHG9J2meiN4mimSg==
X-Google-Smtp-Source: AGHT+IHArpVzpD3LO0mA1+dNKflLF3LKgYCdBzRW5r7OQjPk30YRri90746lAxdaW694nNfBsFGkIg==
X-Received: by 2002:a05:600c:a05:b0:475:dc5c:3a89 with SMTP id 5b1f17b1804b1-4778fea881fmr202472465e9.34.1763567149948;
        Wed, 19 Nov 2025 07:45:49 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:49 -0800 (PST)
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
Subject: [PATCH 19/26] mm/numa: Register information into meminspect
Date: Wed, 19 Nov 2025 17:44:20 +0200
Message-ID: <20251119154427.1033475-20-eugen.hristev@linaro.org>
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

Register dynamic information into meminspect:
 - dynamic node data for each node

This information is being allocated for each node, as physical address,
so call memblock_mark_inspect that will mark the block accordingly.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 mm/numa.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/numa.c b/mm/numa.c
index 7d5e06fe5bd4..379065dd633e 100644
--- a/mm/numa.c
+++ b/mm/numa.c
@@ -4,6 +4,7 @@
 #include <linux/printk.h>
 #include <linux/numa.h>
 #include <linux/numa_memblks.h>
+#include <linux/meminspect.h>
 
 struct pglist_data *node_data[MAX_NUMNODES];
 EXPORT_SYMBOL(node_data);
@@ -20,6 +21,7 @@ void __init alloc_node_data(int nid)
 	if (!nd_pa)
 		panic("Cannot allocate %zu bytes for node %d data\n",
 		      nd_size, nid);
+	memblock_mark_inspect(nd_pa, nd_size);
 
 	/* report and initialize */
 	pr_info("NODE_DATA(%d) allocated [mem %#010Lx-%#010Lx]\n", nid,
-- 
2.43.0


