Return-Path: <devicetree+bounces-179770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95160AC17F0
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 01:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9098D1BC3762
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 23:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5B72D3224;
	Thu, 22 May 2025 23:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="kjYUwQQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF4A2D3215
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 23:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747956380; cv=none; b=STQ6b0yDo46XGRvlJXlH7O7YPCWGB9UcTAMSUewQXvkoSxrGia4jKpQZFajr8M13xCZqPg7/b0UjqX9LLT2brcbX4KlQ4XJpadV7W2ytu/mmZ8mpJxX/V3gLCcK/iOgBuvqJVXgbSnzu17AYAQ/ptkTk0CGuBqh7X1oyTcyddj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747956380; c=relaxed/simple;
	bh=yRzc0icmCI3Wfp8FtEoLTbRp1C8aPjfzbWi+UvR2NUk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mYJCRLixxORfbB3+0GdsN8H9+QRsSs9/Twx1VOvh0vlkzS5akkgGLKlsAkmdmI2VCNnv2/7WUfsddvhSZeGo2FJptK7QJM/KLjwxn2OPvfg48z8zHaWFudZoM/YmkIWtW/GyAqQEO4/GkyHnmdk1zviKCBoHoWl6536dXZP0Em8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=kjYUwQQ2; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-44b1ff82597so5900345e9.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 16:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1747956377; x=1748561177; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dKVNMuDSduacbIBYKcZNnzCtGR0eRj8WvfLgYTzDz7M=;
        b=kjYUwQQ20ICED7JofCgsYJKVwkIAK+g1K/cv21Gqlg8dz3A43DDvoNoADjh16Vqx/s
         +g1mcOSyxKjsJOb11WY3VYZw5jAy798a3yKVDj/88103NVc4RSQVrMZY+k9Rd1ajOdCL
         XKNsN6xUHgCc3WnXguz9UCsDpXmqC6rHOwpB4n92aJwlBgaVtubRYT2AYwxl47/3JFEa
         FjhOBZfpBQz+mmRoDQiAMpFfOj+7RT4Wf0pR2NLpFGXmASyXVV12MeYxbLVzoROcoHik
         W9e8N+mhsgnWk5Y3wX0bzHBLRJmHraLL9pxvdmMs2RugNAcSQuLhTO0z1spyXjh6b8j2
         oaYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747956377; x=1748561177;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dKVNMuDSduacbIBYKcZNnzCtGR0eRj8WvfLgYTzDz7M=;
        b=Av/rr/WauBGrs8PbDZE4+4qnTGpZqPcU/4SrQcxxHtEs8t11OFxOzmA/tM3VsIjRqm
         Chtv59lWpu6sCfyclP/ExSHR8kVjkucFjI2AfSx2jGeAAZhE+jx9mVhgBVGDW3X3H98H
         L9VglPvs9r4VGWFQ1XygsQ6fO0YJl+VjrJbwhADzFz3qCUx5EVuSvebKPwsOCvcudpEU
         wVjioi4UKJ2FLMunp6yLkAZmOjb0FS50/6nOzrZOS3kQxNUJNGVS+fyJ2vlMmGLZy5uy
         fDF8/CvHGEN+RZ5WSAGydKdO7Og8qmPn4tSj0P9KH4lK0kASNBHgXSPBJTyZblTZRcNr
         YPxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgmlwaVX24xNw8KgtCBr9XpevEYaYgVBTUOqDR0DWb/ShBbjfY3kGlQa8irLksisP+y9rZqvHN38nT@vger.kernel.org
X-Gm-Message-State: AOJu0YxlTFNDj4wahYbXVowqsAO0iYoqixIoVZ6vNVu0pmj5g9PufggF
	yEiHsPZdwey75crz0lKkKw767+DHLhUrXDz+ACBEvQvU8YI80z/nCqMxhZnCxqjcttzB8acAuLi
	iAOBy
X-Gm-Gg: ASbGncsQ7yxeeiKu5U+HxXe2YQVeJy5RgRZjZaPs9TfXT/2JNf8SEBu+NtA5zgWcuum
	uCyqovypN+4VU79tqGuMLSHr92b4RsDnQMgBJOWV1xDgtKUDh1FkTv4RDdaQKUXH0Rmu78NsCrs
	tGOPg/aTyqFoPo8i92TTQNQmB4kUjJzya5VVYO0UI6LAPBxUMkiXpS1zXyKj1LJg3cOhyhvBHGJ
	Eqm1c/I4xfcb837BzgUNHfkht7BGnZmgXN3PDyyuoFZBtJJuKBRuMRrWL5eyHHeKbwBUrrMHnck
	GZxWxsZsJ6vJzwHCiDheaj1HK0ihAlErfPcYX9FC68EhhxDrxt06MA==
X-Google-Smtp-Source: AGHT+IG6EHMwWLdGi5KKzk4nvM0cwE/VEL6TR7m61EKgB/eRoEgtVitn+rOSsP5hXJxsGHaL7N+kKQ==
X-Received: by 2002:a05:600c:8411:b0:442:e9ec:4654 with SMTP id 5b1f17b1804b1-44b6d1d39b6mr6921755e9.8.1747956377309;
        Thu, 22 May 2025 16:26:17 -0700 (PDT)
Received: from [127.0.1.1] ([2a02:c7c:75ac:6300:c05a:35d:17ae:e731])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f6f04334sm117825395e9.10.2025.05.22.16.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 16:26:17 -0700 (PDT)
From: Rajnesh Kanwal <rkanwal@rivosinc.com>
Date: Fri, 23 May 2025 00:25:07 +0100
Subject: [PATCH v3 1/7] perf: Increase the maximum number of branches
 remove_loops() can process.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250523-b4-ctr_upstream_v3-v3-1-ad355304ba1c@rivosinc.com>
References: <20250523-b4-ctr_upstream_v3-v3-0-ad355304ba1c@rivosinc.com>
In-Reply-To: <20250523-b4-ctr_upstream_v3-v3-0-ad355304ba1c@rivosinc.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Atish Kumar Patra <atishp@rivosinc.com>, 
 Anup Patel <anup@brainfault.org>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Beeman Strong <beeman@rivosinc.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, Rajnesh Kanwal <rkanwal@rivosinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747956375; l=1919;
 i=rkanwal@rivosinc.com; s=20250522; h=from:subject:message-id;
 bh=yRzc0icmCI3Wfp8FtEoLTbRp1C8aPjfzbWi+UvR2NUk=;
 b=eXHAPMGQUlSkoKw/ZujHfDdVrgUDThW/41UrEOojqu5cpgpKRvW3csxhNcSG5dQjunGp++UGp
 BxjZ3PfI7eeCjvpIQxYxdbhtwmDvg9UZA3QLufVRs12DfstYvvJmpYm
X-Developer-Key: i=rkanwal@rivosinc.com; a=ed25519;
 pk=aw8nvncslGKHEmTBTJqvkP/4tj6pijL8fwRRym/GuS8=

RISCV CTR extension supports a maximum depth of 256 last branch records.
Currently remove_loops() can only process 127 entries at max. This leads
to samples with more than 127 entries being skipped. This change simply
updates the remove_loops() logic to be able to process 256 entries.

Signed-off-by: Rajnesh Kanwal <rkanwal@rivosinc.com>
---
 tools/perf/util/machine.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
index 2d51badfbf2e2d1588fa4fdd42ef6c8fea35bf0e..5414528b9d336790decfb42a4f6a4da6c6b68b07 100644
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -2176,25 +2176,32 @@ static void save_iterations(struct iterations *iter,
 		iter->cycles += be[i].flags.cycles;
 }
 
-#define CHASHSZ 127
-#define CHASHBITS 7
-#define NO_ENTRY 0xff
+#define CHASHBITS 8
+#define NO_ENTRY 0xffU
 
-#define PERF_MAX_BRANCH_DEPTH 127
+#define PERF_MAX_BRANCH_DEPTH 256
 
 /* Remove loops. */
+/* Note: Last entry (i==ff) will never be checked against NO_ENTRY
+ * so it's safe to have an unsigned char array to process 256 entries
+ * without causing clash between last entry and NO_ENTRY value.
+ */
 static int remove_loops(struct branch_entry *l, int nr,
 			struct iterations *iter)
 {
 	int i, j, off;
-	unsigned char chash[CHASHSZ];
+	unsigned char chash[PERF_MAX_BRANCH_DEPTH];
 
 	memset(chash, NO_ENTRY, sizeof(chash));
 
-	BUG_ON(PERF_MAX_BRANCH_DEPTH > 255);
+	BUG_ON(PERF_MAX_BRANCH_DEPTH > 256);
 
 	for (i = 0; i < nr; i++) {
-		int h = hash_64(l[i].from, CHASHBITS) % CHASHSZ;
+		/* Remainder division by PERF_MAX_BRANCH_DEPTH is not
+		 * needed as hash_64 will anyway limit the hash
+		 * to CHASHBITS
+		 */
+		int h = hash_64(l[i].from, CHASHBITS);
 
 		/* no collision handling for now */
 		if (chash[h] == NO_ENTRY) {

-- 
2.43.0


