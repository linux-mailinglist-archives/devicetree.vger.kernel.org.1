Return-Path: <devicetree+bounces-240298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D19C6FCFA
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1D13D352B00
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 881DF2E9ECC;
	Wed, 19 Nov 2025 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N97gHFJI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4A0316180
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567133; cv=none; b=OYHyh7HRFzUrNOkcRAyh7ZDmvgs1ejXMmeR9LyvKJG0U8WGtEeBL2TagE737G3jxmVVhtEHhNnaaZCtMfRHZGKfvRpEugdVsc342bRmiiQcrGvtiSm5B6hv4sSiW3Boy59CgG8GA9USX/7vz51KnSbh29HUQhOcK92AzeZhE4Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567133; c=relaxed/simple;
	bh=o6BmMGmoTbTaL/NtdpUUmzGGU5vJ7cVEMCY9+Mbhsuc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yafc2qKtXQqCQrvGJlSgDRZ1sm8UzyyAlC1zLKYh8qZAX2eNRfXnwQKPeEeYum1xn1oy+lBGB6FMNizeIeIC6hUTexZ275qfL1BmCuu/gx723xhfprRzFqObLQX1TfkU10ofUE2fpjGD0Z4giz0YbhpxvtxriR58pK5OxDIluAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N97gHFJI; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477a219db05so25822605e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567129; x=1764171929; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QgfZoRmCPzcZDOEfTe8kWXd16fGbdAbRWXioprv0N44=;
        b=N97gHFJInsFrGAqWXSOC/t/ip/ZFunAGSLYV+sKzWA5YLMvcNzF4HcIjkZQ30w+/8l
         b2NEkLl+5wQZEeu2dyGiiYvoGvRCs9uxQGYtRFf2HU7fxvjIk4olW8WnAVRi8eVxFZx1
         UlSE+dC4+lWgzhgCrkKaUvADoNcSRGotpAoValiwpGmbEaFUryttt3FwhmktPXVdic/A
         vsUycPOVgkU2YZZgl4vqzYcWvwH/bfSrTDwhlAI/HbZ3WDsvUwLkf+NrIuto02BJ/h0d
         eIzrHPrz8EVcC6kjiBrbDOdboOa8zfoPHPFQMvNaobGZfCEACLBLqBnUpMX2REFiOVt4
         D1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567129; x=1764171929;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QgfZoRmCPzcZDOEfTe8kWXd16fGbdAbRWXioprv0N44=;
        b=SfjmLKiJIbvEeicPsn96RUcjP06TGbpKKtDwgwgcSekqU5HRA2LLhJ7TobVVX6gokK
         2oHG1rDFg1RsEMOAEADo3UKtN99bhDiVk5UhqZAl/GrrmKEKb3Sg8kPgHwGUE6y+1KJZ
         b5cJbn3sJTuWMWAmCFflGexHUys4Wq1op//Us2BFQWApOXemALtZCAJCRxJZP5tLQ/Vb
         sYb/pEtaRGmBcjbQB5LxKQ2gK40c13fOuSjOqjm/fWQn8EgeHYnCNabl4gVcqmO+g0t7
         ymYUpZhy4iAw1TKwi0pN/auFesWbNG0FBQnPopjHKfcLXIniB3x/yvfIVeW5e6lNNZ6M
         06Ww==
X-Forwarded-Encrypted: i=1; AJvYcCWFn4JUorlppiMZUG4of+zJ3yC8Z/mJYe837T4mZ+GUo7lbHQVBJiL4TFE0b9TnL85zwEkdPyd6TWQO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjifg+7dLZTVAm27RsZBD8C4baDylFm/HYIz9ziI6G45UIn2XU
	a5Mf4G+9wBuIY5hie5+BCV8NDvAhxY0IrG1pUdevZxRnZ+kqk5Txaz2sEBZikdzL6Jg=
X-Gm-Gg: ASbGncudm1y03nGrBuyVoKfpYGdbgXDJY7ZUIdUE/uZyf0Uk33N0v4K3X++a1DnP/hP
	jrRzt0t5HDv9OJXg7kTDtxLKSwe+50SSk5Njxus2/gwO1ejW7v8CgWmhwR25muINDqurC4oRUbq
	py+qMc7BSGYrb4wd0g+nBmVElFESY4CC/vNwBAjEb6hmAdis2mymbQ5VlAwDvkYN/QB46Y/KqaS
	Ocl146YrA+1OWozScKlcxzz90YyV5GSpDb3pyP6JQR7g4MxCOpEjMVfleciEtg2l3RCF3/cjB6P
	ERorHunfGDdEMPHDjxYXA19uQMzFk1JxmJPUgck9QWMn84MhvLGHnuYTuO1uiPa+CF+Zb8vM7tD
	//+J9CEvrjzUyUUO4AW3p46/0UVRN35Q032/y83yyVd5Q/KAl1mu4QYKKt0WaaH4rT3/jzBs7Af
	qLZO9LNpkiPhXhAw9DbM3lTNrk076u/g==
X-Google-Smtp-Source: AGHT+IEsAcddfcsUUvEjJGVD9iD03mMaqDkbeYnd/gOudjAAgUoPc2H5D0xayvELD1uec3MJtxxFcg==
X-Received: by 2002:a05:600c:4585:b0:477:54cd:202e with SMTP id 5b1f17b1804b1-4778fe59a0bmr205474775e9.2.1763567128896;
        Wed, 19 Nov 2025 07:45:28 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:28 -0800 (PST)
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
Subject: [PATCH 07/26] kernel/fork: Annotate static information into meminspect
Date: Wed, 19 Nov 2025 17:44:08 +0200
Message-ID: <20251119154427.1033475-8-eugen.hristev@linaro.org>
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
 - nr_threads

Information on these variables is stored into dedicated inspection section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/fork.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kernel/fork.c b/kernel/fork.c
index 3da0f08615a9..c85948804aa7 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -106,6 +106,7 @@
 #include <linux/pidfs.h>
 #include <linux/tick.h>
 #include <linux/unwind_deferred.h>
+#include <linux/meminspect.h>
 
 #include <asm/pgalloc.h>
 #include <linux/uaccess.h>
@@ -138,6 +139,7 @@
  */
 unsigned long total_forks;	/* Handle normal Linux uptimes. */
 int nr_threads;			/* The idle threads do not count.. */
+MEMINSPECT_SIMPLE_ENTRY(nr_threads);
 
 static int max_threads;		/* tunable limit on nr_threads */
 
-- 
2.43.0


