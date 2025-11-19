Return-Path: <devicetree+bounces-240299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 547DAC6FD1B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8674535CFEA
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3832E8B75;
	Wed, 19 Nov 2025 15:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bFLOD1dQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1152D97BA
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567137; cv=none; b=sg4vlSyvc8Rq+Y6TFjFK/fZlyWX6Jb1Fj1LKqeEmcWtNlNVIlUgsO/qbTj+c+l7N8kWjNumuHlqcYQWIosplh8++uFz+rXt7ldAGxhmqTFHR9jmNf/ajVTNWTcJu9Gpmq6UDFsYHH9JmvaQM6hDsdzaJ7vzibyXmay2hS3sAbm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567137; c=relaxed/simple;
	bh=E0xWWAAtZ+sb1tFoy69j+X8UfYdpBq6LQ0ZttxzoUlk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c+9utiFdO9oVORq7vvCjO//Dhm48Zuv4v+O+yWSj/t8U9aQSx902NBAE4WN5Qp/yTiuZuhumdKTKezy/TAPIkH3uhNJmXcWFbQUXRALMC106bFQ6ndktnALplEKhKThjpCTObJV7Y1huod7GLRmTkyUc+SYTi4pjQJj46mqCnPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bFLOD1dQ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477770019e4so71951205e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567131; x=1764171931; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=93DS/ScHi6FgD35ajGLpv/dHTyNaaklJOjylE6wX7jU=;
        b=bFLOD1dQC0Q4Eym89MV7724Zm5/qYdVd2/MyrMm0XvxbrzU2lDJ7f3Hv1VBREo0swI
         VNOqEN4cIlEgl+4RG3ftwarzTx6ULTRfRqQECW4NCGOea5bakUcUwadftn+o9l5qcuQr
         GqOhGsYig2eyjmviFGaWge0Ow+AucMs/GddQ7Kvm24vYmAkB9N2JvTJG65NJ/KsZPbV2
         WLjgsvnPwFwpu+sLHn5AI3lW/12WVyHGZzzBopJ60S7mOvi8gmM7wjOlCW9IqzOHKDLp
         paCwK/zQhMrhsuME+ta7z/kdBso55S8pQQVjvaunWcA3poAn3wdp0V295gegBTryfFZD
         wv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567131; x=1764171931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=93DS/ScHi6FgD35ajGLpv/dHTyNaaklJOjylE6wX7jU=;
        b=vG3ZLTUxvIW3JhgGB25MPKsOmy8ovl95rYy3aAmNkOMebwsqzoIH5jRZWhBkb91xl6
         KtEQkPrIevEBqOhp6Ydo/PPLwK4Afc3hbJNDHTmoKve/wN5xYLUttB4Mr0k4/XLfsA77
         EEJpcrWkMHHsvc/mc2HHEI52I5hmyyAtWeGm6i6D2sXK/2EfGjKy2FbsqjBmBlu9aDWo
         jpqU0pUM4BW98saPh90dwXZoXkaEH4mehwvXs4D0cWP0tntW++dIx7zhCs23MtlgX77F
         aqOiESkKRnJ0AVBU1pD6tRIt/aXbWHbNTa0etbpZ4HhDvWUOJDoujkY4807fImUHOX0u
         5DCw==
X-Forwarded-Encrypted: i=1; AJvYcCWrhXyxxEBRBcn/tKqYqgdG3FCWqAQ+Jc+kL6EwaoH1Ptd98e3u5HAh6gJCQhBr5ZjdwyEXVr3BGhX2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywlf1c32dV5LgSMx3tdzpCJopv5wpAe/DawcRypT0Z4WOjDL8DK
	EptT38kXhh/EAil7LuxuNk3OItImZiHkRiX4dNk8Jx028JAxS+2fo0FhKZaOJCMtmak=
X-Gm-Gg: ASbGncsHlTAoaqZaKu4vQ7WfKJ1f5qDcQV52OMgELzqBESKGZ3CFv26nXtsKciTK8C1
	RLKylhPYQlOKaWwfqJDmIzMq/HPdZ2+GWumvD6RHltxKS5Rbku83cpKrKpB8yvetGfG1LT8ilR0
	OjPxx+g2XOvwHZ8Ju6ayUq5Gp0HfmP7bKSPmNamJVpiMfNJEgYIeoxd42n5bBVU1grCT0Gvy8o+
	Hj4GwsvH8JZcOGf/WWXATX401OxEeQoDVzWxoe+1y7R2suxUXfYQ8wuNhlK2DuX9iI3IDfEILgn
	l0zwT53fV/SwRYzEj0V3UqcwFpxS1dMhvl0Knj6jJDT6cYA/8AhefQseiqwChIbLK8cZexdTDLU
	uilYpjll0+9wi6bTYoCPItrFnAqGxVjO0xL1e6mB9fTJCDlTOhIUyMgbPnAjLljzkC7Mm+6Hj45
	UoKq29a+8rNhTcfj9Q/oNjkflbVRjp4XF4Li/23zL9
X-Google-Smtp-Source: AGHT+IFTd+L8MIsFVmd5+4R/tV4nej4oyMMzTvyobs7oRMR9eeDnvkZRxA29k7Ua9rj2plkllb3d8g==
X-Received: by 2002:a05:600c:c48f:b0:477:7b16:5f80 with SMTP id 5b1f17b1804b1-4778fe49c0bmr204044185e9.10.1763567130586;
        Wed, 19 Nov 2025 07:45:30 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:30 -0800 (PST)
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
Subject: [PATCH 08/26] mm/page_alloc: Annotate static information into meminspect
Date: Wed, 19 Nov 2025 17:44:09 +0200
Message-ID: <20251119154427.1033475-9-eugen.hristev@linaro.org>
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
 - node_states

Information on these variables is stored into dedicated inspection section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 mm/page_alloc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 600d9e981c23..323521489907 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -55,6 +55,7 @@
 #include <linux/delayacct.h>
 #include <linux/cacheinfo.h>
 #include <linux/pgalloc_tag.h>
+#include <linux/meminspect.h>
 #include <asm/div64.h>
 #include "internal.h"
 #include "shuffle.h"
@@ -207,6 +208,7 @@ nodemask_t node_states[NR_NODE_STATES] __read_mostly = {
 #endif	/* NUMA */
 };
 EXPORT_SYMBOL(node_states);
+MEMINSPECT_SIMPLE_ENTRY(node_states);
 
 gfp_t gfp_allowed_mask __read_mostly = GFP_BOOT_MASK;
 
-- 
2.43.0


