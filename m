Return-Path: <devicetree+bounces-240305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F4BC6FF1F
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:08:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 931364FE4F7
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E13377EA1;
	Wed, 19 Nov 2025 15:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XeaDF8kX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0671F2E8B6B
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567150; cv=none; b=ud/Q9AbR2nmx6IteFdU+Rl+fW0EZDn+WWvCOPKsZ7t11+DLHRIvRXxP73RyqF4QKbbafo1faq9X5lWLt/v6wRkpTCNEnaDAqjRZbCPacwBoylAVcGwzQtZrF2LlJ/d0Zvxyx7xH0VkiLlLmjYmdOq7vzUahvNSqeuOVcHnjUNXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567150; c=relaxed/simple;
	bh=b7ZOQzNfYMyF79i/MOcMgt4XB6zny2khgQb+AuAIOw4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DBRrl/px4SLsK8Bd6g4AlYOD3SEFIvP5E0FeqyTmV10JTTyWJSfgWOPG5LFuGAfnXOtJTmJp4dL6vSdUAs0RGKcB6C9TijL8r243Mj/QAX0DmCeTHHH1T4ouD97eq7x4kdNsYvbcX1Zp7M49/R7a045+pVSOulZXhoDQpsBZsZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XeaDF8kX; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-429c8632fcbso4851366f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567143; x=1764171943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVYkZ+YGVFmg/wGLFr+Mopllp1/vePaMucgqpmR/GFM=;
        b=XeaDF8kX7ZMHl7X8ve6YNTs6euc7cDzNwMF9/a96PZftfKYfkZ/jXE/thXL/LIiIaQ
         Q02MWmIB0O+JZ4GbrTxisOUMxALtAyHyz7jTCadkeqf2n22P1NIagu441f3tgFfM7QcK
         dPVYhDfsgeVsAh6mkKLn7q2BI2RpjPAWudhIFGd5mliSmMThEjsoxYZzUd8k5X7CyRsw
         sHUf1zcJWaopAFbyIAHxwLNqAwpL2GPHXcCGTngCCzojxG1y0pFkuHuu7f41aalfT3XU
         P6RMp8UgCgz+zFoKCmXIQRXYYotpvNuXYRt/Q/hWzlmcyHHgx4Vpn62xuszXtlAhNHlv
         FbIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567143; x=1764171943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VVYkZ+YGVFmg/wGLFr+Mopllp1/vePaMucgqpmR/GFM=;
        b=fVlF3KtexiRCaqtFOzDfsmmG3MCZQVmh13OD6937kNdb8L7hiU5r5pvWAFAxa7y9ha
         JjqRLHhBoL8HHKGhCo1/fwyQY9pr9HvIJuu6iUeD1TxTvb/nLzm1G8qGBPmZfKuI+urn
         oECkHzjj/sFqtadlaHiceGgVR8IcxHZp5lf8KR40nyDB/cqpvbGIcBexZstgpcAWiXm0
         tuAkdXxOqv9trUxQ/0NaTeXrXPuI20Ztyn4tOWqlN4QbEg0M6PxXdTnnDCX0iYH04UPV
         ZeY4x+7I8FKC9t6HArj+wpYRqIMDgVuIfOOixlFgDX/lIVVP0Ohb1CcWRUnFJTSfNFOF
         CeEw==
X-Forwarded-Encrypted: i=1; AJvYcCUKtnWZMNBOsHAsC+/ZPwPT1MG5swM0znut9UFEO+THTXtdSpOFTF6mse77p05Rqs/LrvRCrbBu+0kk@vger.kernel.org
X-Gm-Message-State: AOJu0YwD48Ogy/Hva7K8r0edObXThkR8T+eGa/PWygYbpTKqNoSJzJoI
	yUuh+5Q9+1x0NFsaQWxd6mBCN+7l5GoyruXGBGZLdpdZFCRyaFaszv5d+YwjOS3CmSk=
X-Gm-Gg: ASbGncv7Tyq+hlUISaRmNe8Ipgxbw4qyDYOqLABODP6jDb2aBMxpbmxd3+J+Wg07R5H
	tNP+myNuIGD8N66C/TfCU/yuIuDQWni3yMGrEwYy86fs9Q2fA0eMSFtkIGJRuP5n4C0X/4VJn/p
	LOnkShpAUREuOTTWfYCA7I/kda4i12GCESP+x0UBwvpviKIBCpkO28AIEng+iUFf3AruuIuQYGe
	bFH6/QBbhBo1BKtJkgF9sHyiBKOBwO59AjjXlbud6YOvUvTohbVDHVALCxW/vtvfYaIn8LnvEhp
	YU79MVLegSYhxo6pkL4zTvp4V825EBGQRkzKPmM3IEQIurqTK4Peb0Wxmg2CG0S3NGYe6bvEb19
	CPm0yRDeVs95eM+GVQ+rBa51gf/Kd07OqEcrz7gYUxv1kutCxgLKyLDyHsAYO2NfXHrvN8SL78l
	poV6gXTEk9X+P4WX/j0BZKsCLK5zzrLg==
X-Google-Smtp-Source: AGHT+IEZRkUZWC9WWo9OX6jj9I/ZWQe6urgV7WqPXknOd3CwNTmQvHOBkmKtLsoZT2TI4A/OTOkOYg==
X-Received: by 2002:a05:6000:200f:b0:42b:3806:2ba6 with SMTP id ffacd0b85a97d-42b593394b4mr21022814f8f.25.1763567142926;
        Wed, 19 Nov 2025 07:45:42 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:42 -0800 (PST)
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
Subject: [PATCH 15/26] kallsyms: Annotate static information into meminspect
Date: Wed, 19 Nov 2025 17:44:16 +0200
Message-ID: <20251119154427.1033475-16-eugen.hristev@linaro.org>
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

Annotate vital static information into meminspect:
 - kallsysms_num_syms
 - kallsyms_relative_base
 - kallsysms_offsets
 - kallsysms_names
 - kallsyms_token_table
 - kallsyms_token_index
 - kallsyms_markers
 - kallsyms_seqs_of_names

Information on these variables is stored into inspection table.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/kallsyms.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 1e7635864124..06a77a09088a 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -31,9 +31,19 @@
 #include <linux/kernel.h>
 #include <linux/bsearch.h>
 #include <linux/btf_ids.h>
+#include <linux/meminspect.h>
 
 #include "kallsyms_internal.h"
 
+MEMINSPECT_SIMPLE_ENTRY(kallsyms_num_syms);
+MEMINSPECT_SIMPLE_ENTRY(kallsyms_relative_base);
+MEMINSPECT_AREA_ENTRY(kallsyms_offsets, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(kallsyms_names, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(kallsyms_token_table, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(kallsyms_token_index, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(kallsyms_markers, sizeof(void *));
+MEMINSPECT_AREA_ENTRY(kallsyms_seqs_of_names, sizeof(void *));
+
 /*
  * Expand a compressed symbol data into the resulting uncompressed string,
  * if uncompressed string is too long (>= maxlen), it will be truncated,
-- 
2.43.0


