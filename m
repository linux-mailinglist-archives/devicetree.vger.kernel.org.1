Return-Path: <devicetree+bounces-237882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE24C5552F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:49:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 578E43A2CC5
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538032DC33F;
	Thu, 13 Nov 2025 01:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="hg9WZ1HK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2FC2DA756
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998432; cv=none; b=Zg67q7wX1fPRrRXxbQAsKAOYSBg0Rc4OrdaAtyCoWlohLriJ8gQYqXRyhSJsA09x6kDrM+3+hKqmZ5rKBhuj6IrS9jCsKkCH95mqT+EV75ebDmIW7xNoDaW9GvzFC04dbTu/e71jS724BuGaRiy3Sev+PvcW57mud8HlhgF9mOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998432; c=relaxed/simple;
	bh=DC8FuULDAPtQHN2narc7WgVVrVXyRDKjRqZjq5V9jfg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uKDwbXw3UC81BqSmb/DF5X3aV70OCnuXEl0EqKlHp2T8+8XO39HP10LfaMIKYluUVILqbF+mhLKYdvoCQrDs5PP5+EY1Syp4uNfYCYkaiR2UYcBRUBCzjjjh0hkM/V0+uFZVg7Y6vQshHQBGsPh6bu+EUZZXuYpdeMQuGfIeprA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=hg9WZ1HK; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-297dc3e299bso2684695ad.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998430; x=1763603230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8qhRE3U098N+H4DinfMhjjqM++0OwmN0vpW3M8gUQyI=;
        b=hg9WZ1HK/zWuGsBnn6iwQmKKAWFbYuk8wl+OI0N3CUyKTGpJ0Thy1u8Pb2WgnEfDUF
         im/RsSRjOG668EuLXJpOJ7lRfTtvY/YGpYFl/TSsWu/RHddblPr05yHG6QYq6C8eVShg
         7NoLA3UF8DPvIAW0gKq5E4eMtEN9U6yXSIDIBsztrNd5xm/DjSk1Vx5zzj9BAuRJaOAP
         90kSaVVHJzIrjU6l6ZQU839Qldn4jm2yWCQUld3ma4VtjGdVMV0D9monoZZqLSEtqnAK
         xG/QwtfVBnKixNMQOJGh1IullqzB3g3P0C6kcTM7JtES3c1O0zkuHLGMDvha3W3qwGWo
         2xxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998430; x=1763603230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8qhRE3U098N+H4DinfMhjjqM++0OwmN0vpW3M8gUQyI=;
        b=uHCvtW+4mkuH15NMb0AKZZ//VJX/YjcJah3aT4mMFKHZDkDRtrkl9hKOfkPmW4mGZ1
         +V2GefPYJBOzJVObXBDh9iySRk0goc2OVpFMS7gFjuX89XRVyqhtwamTsFSKwbwsM4PI
         wn+vYha4vjyyb1a2HeCKL0YFQVTJHrPeVmgunHgrxB7gBtV1ntP2qC9qAKVCZz7AnTyT
         U/+XbdXo+5o4uoF6qgBpHtZ4dg6QHFnuldHRbZYrnTcYZKkmOD2fz4u82+8y05/TJiW4
         N9vPkhiqqttUKQVDbeZAOr6gJ8VY/G//tPWruHdpBUoGOuN2VijcFgoLM6SbY+PACfBV
         SvfQ==
X-Gm-Message-State: AOJu0YxVtN7yoy4p/Fth/Oe5lu+20m79o8inNp9fAjwawiYW4Eyn3FJ1
	IX7B0ZyWCyw9CmYh+9KmnJkIuuPLB/6TmM+cVURMqRm9J+N6kjMibR+YbDX+yDlbEN4=
X-Gm-Gg: ASbGncuBJIDXyH8KhDX02QUwJjslo/L2KnDLlNsCVJZM4PZ38cbgEecKE9SBGqNJylv
	kFSYJgNdQxoaSHHlS5TFvWGAXwxpKYz3TPnBYA138MCePxGtFptvtrxM4Z/ErPzhhHuCYB81acI
	gCVqv7eiOSXLLfqaTWErrR7AcFSrt4zO+QPypAVkUfIARrP6NqEqgZpWlJekaN1L9Z1AKRjYaNm
	KCngohG/sTQK4BNb8iwG+JiBj3mjhurjbrO36xuARqiY00YiDHbzCJSuZrpG6IURKiUz+8UezQM
	OcgV0gM6XG7ycV+8NfJegBDnzgNtgswlFHWwWs/a/5YwTd0hkkYCWX5h2KvGwq30Vf+mgU7AiD3
	qAxQSojU68iyNyovrIvAYwr3fH8TuBZr1yoJTNTL2ue8fm7gaVftM7qpLVP3bSZci+mnpiJf+BI
	A691K/ua47TDoIbPPqxBdEAw==
X-Google-Smtp-Source: AGHT+IHi0LBlNRw0NLDEi/GdsrGYk9xzGMjJnjfOoAMMFPTbg+YMkWroJLJ/pOiFoVdYD5QP6kQ95w==
X-Received: by 2002:a17:902:ec89:b0:297:d764:9874 with SMTP id d9443c01a7336-2984ed46fe0mr62614185ad.21.1762998429959;
        Wed, 12 Nov 2025 17:47:09 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:09 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org,
	Andrew Morton <akpm@linux-foundation.org>,
	David Hildenbrand <david@redhat.com>,
	linux-mm@kvack.org
Cc: devicetree@vger.kernel.org,
	Suren Baghdasaryan <surenb@google.com>,
	linux-kernel@vger.kernel.org,
	Mike Rapoport <rppt@kernel.org>,
	Michal Hocko <mhocko@suse.com>,
	Conor Dooley <conor@kernel.org>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Joe Perches <joe@perches.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH v3 07/22] checkpatch: Warn on page table access without accessors
Date: Wed, 12 Nov 2025 17:45:20 -0800
Message-ID: <20251113014656.2605447-8-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251113014656.2605447-1-samuel.holland@sifive.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Architectures may have special rules for accessing the hardware page
tables (for example, atomicity/ordering requirements), so the generic MM
code provides the pXXp_get() and set_pXX() hooks for architectures to
implement. These accessor functions are often omitted where a raw
pointer dereference is believed to be safe (i.e. race-free). However,
RISC-V needs to use these hooks to rewrite the page table values at
read/write time on some platforms. A raw pointer dereference will no
longer produce the correct value on those platforms, so the generic code
must always use the accessor functions.

sparse can only report improper pointer dereferences if every page table
pointer (variable, function argument, struct member) is individually
marked with an attribute (similar to __user). So while this is possible,
it would require invasive changes across all architectures. Instead, as
an immediate first solution, add a checkpatch warning that will
generally catch the prohibited pointer dereferences. Architecture code
is ignored, as the raw dereferences may be safe on some architectures.


Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - New patch for v3

 scripts/checkpatch.pl | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 92669904eecc..55984d7361ea 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -7721,6 +7721,13 @@ sub process {
 				ERROR("MISSING_SENTINEL", "missing sentinel in ID array\n" . "$here\n$stat\n");
 			}
 		}
+
+# check for raw dereferences of hardware page table pointers
+		if ($realfile !~ m@^arch/@ &&
+		    $line =~ /(?<!pte_t |p[mu4g]d_t |izeof\()\*\(?(vmf(\.|->))?(pte|p[mu4g]d)p?\b/) {
+			WARN("PAGE_TABLE_ACCESSORS",
+			     "Use $3p_get()/set_$3() instead of dereferencing page table pointers\n" . $herecurr);
+		}
 	}
 
 	# If we have no input at all, then there is nothing to report on
-- 
2.47.2


