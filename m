Return-Path: <devicetree+bounces-275419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wA3VOaU2tGnTiwAAu9opvQ
	(envelope-from <devicetree+bounces-275419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:09:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDB2286B3A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 61C5F304B329
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23D523C3C10;
	Fri, 13 Mar 2026 16:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bdYYQhS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CD93BB9E2
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773418047; cv=none; b=YZFnql5yATbsQfes+SA9Tw0cUetqs7OdWHJ/nf82D9jaZeV90B9wlEr1hSfUGTNNvk089R/fPMAGdh/zuX2OdDwofYZJnnnbLvZSnf3/ZMG7SnQSOAA6tI3QKNfiwZX0/dxokbnreY0HcXs7u7+MczJGI+JvQEf2/zGC5j6bE50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773418047; c=relaxed/simple;
	bh=0GSCVv8RnRX1SM1Vvg+cL2Ym9a83esOM3TKZJC3XelA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ARqKdLqDzE+Vg16G9gZU9651iQwXvptv74K0I9Gll2B437UfC2/1b6YyLlQaPJYhu2zeMh0tNf+oygD0X2lsv3Y/nuxxWoH7aZd10cZcTloDS34qDMUsYiJgTF8Ffz5vj4DJFLcvodqHoM4y05HfekVZP61TztiIYmda/dBjbhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bdYYQhS2; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b96dc65b886so619136066b.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773418043; x=1774022843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2oHzvvItzqMXEjwSlbHVAmpu3j/+5uuOsYPxIlXdUcY=;
        b=bdYYQhS2nWhjx04ypovlLjV/P/5UQ9U/M5W/+y/XTd61reomolMWGB+V5A3mhDKqXK
         hAuosN4gR1ySo/wrGMlZGt3Vq+ujS6GDHDJiE6debb31qCYOgyCSykSAqVAJojrNK+9C
         apD/S8b9qPTfDvwGyWLhedZpBGx/jvj9FPUoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773418043; x=1774022843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2oHzvvItzqMXEjwSlbHVAmpu3j/+5uuOsYPxIlXdUcY=;
        b=L4FON79jXvm4Na1g0U0SNE4ExaGt239k7nvzdfkCYGFVA0jQUbtdmMHf4OzK04TKJC
         AdowIsBg/ooNcFkVzR7ACPw8rdWosAgQR0ZLy/CZ2GeHTw+EmFIn2Rf9hKZdLvebJcqo
         i8U7S5bzEc/N1lDu64PMXQj+4raT1IGTiTtixDG0v6vemU0vVFokcoOD5fn5hTq93z4j
         /snRW+sBrj1VU8C997Pm7r/fV43q7XZoVzPkhZA+WzNGqZQMCwONalqSa+CSsPlLdeel
         nsI/fXMnilco5rn6/OfJBDMMg0YrVumCv6i+xOK4UH3mXAuBUG/NyAktMTRhenKbnFwg
         fd7g==
X-Forwarded-Encrypted: i=1; AJvYcCVe2196WgwWlcB0ZAwfSOUKrtrH2Xg3jr4D+v5T08qWx/e6Sv4UR28R9sOd1jx6hAb6L7H0RP1fVtj5@vger.kernel.org
X-Gm-Message-State: AOJu0YxmPSFpG2am2d0bx/Dmti+U2Rhjor/1FNpxNyCl3CrbQKDzgb2L
	3pQfdCiHt3dt4+Et1F3glrFU+3g98x7UubVWxazmJHRLEwFLhgmSVr+cA8XqnupvaQ==
X-Gm-Gg: ATEYQzyPNdAx7NCyBmNpYST6WJI6FW99E75i8eTPdOa9UHpE+tKRz3aKGHlqfEYO7q/
	fcdFJIquJ7J+eu1ocnmTrEns3ouGRYYGoB6n7SNVE0dze5zd+lzM37740/PBctq8vRa4MY1qYoE
	CgEyu9D53ccPZbEHX1dF5be782HnYKZfNtHADxwuwxTYvvqKAdT8zR5aU2/SzgV+rO0MQehgd2B
	+wVR9/b8Qhu9dB2g0phzVNj1rBUhNor4T70+DNjWQ0k4q2x920UjFo6MiUPt71uCwiNxFKMUVh9
	4UrofL5s5QJiPt1ZTmuGMuDQ5/o3SRYQYFVvCaKxw93oek0fSM0aPD+xW600eirFDvq7dZ9u6v3
	LDcXhXXLlCfYpvOjN3Hb392xXECFZd33b/NGVMEJU0M0efLe/ETLG5rqlnLswHSb2bwiYp0Ak8r
	XeLtRlreJCgkxPqUAEXfQv4ZpciLIaob2OOCRBgsPE8vAP8NT/B0pKlcLU0R2+AY+6a9FPJCJHH
	qEQEtE3BHLC
X-Received: by 2002:a17:906:9f87:b0:b96:dce1:2f52 with SMTP id a640c23a62f3a-b973ffd257cmr472637166b.19.1773418042432;
        Fri, 13 Mar 2026 09:07:22 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (131.44.147.34.bc.googleusercontent.com. [34.147.44.131])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba6ec4sm62749266b.5.2026.03.13.09.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:07:22 -0700 (PDT)
From: Grzegorz Jaszczyk <jaszczyk@chromium.org>
X-Google-Original-From: Grzegorz Jaszczyk <jaszczyk@google.com>
To: tglx@linutronix.de,
	robh@kernel.org
Cc: mingo@redhat.com,
	bp@alien8.de,
	dave.hansen@linux.intel.com,
	x86@kernel.org,
	hpa@zytor.com,
	saravanak@google.com,
	dmaluka@chromium.org,
	bgrzesik@google.com,
	jaszczyk@google.com,
	ilpo.jarvinen@linux.intel.com,
	usamaarif642@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	tnowicki@google.com,
	mazurekm@google.com,
	vineethrp@google.com,
	rppt@kernel.org,
	agordeev@linux.ibm.com,
	dyoung@redhat.com,
	myrrhperiwinkle@qtmlabs.xyz,
	guoweikang.kernel@gmail.com,
	kirill.shutemov@linux.intel.com,
	akpm@linux-foundation.org,
	joel.granados@kernel.org,
	sourabhjain@linux.ibm.com
Subject: [PATCH v4 0/2] x86: add support for reserved memory defined by DT
Date: Fri, 13 Mar 2026 16:03:45 +0000
Message-ID: <20260313160347.2843005-1-jaszczyk@google.com>
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275419-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,alien8.de,linux.intel.com,kernel.org,zytor.com,google.com,chromium.org,gmail.com,vger.kernel.org,linux.ibm.com,qtmlabs.xyz,linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jaszczyk@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,chromium.org:dkim]
X-Rspamd-Queue-Id: AEDB2286B3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently x86 allows to boot with ACPI and DT at the same time and basic DT
support is already in place but processing DT reserved memory was missing.

The DT reserved-memory nodes can be present in DT as described in
Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml.
Similar to other architecture, which supports DT, there is a need to
scan and register reserved memory regions on x86 for such nodes. It is required
by drivers (e.g. open-dice driver) to process DT reserved-memory regions.

v3 -> v4:
- Rebased onto latest upstream baseline. Previous series:
 https://lore.kernel.org/all/20250618210628.2635891-1-jaszczyk@chromium.org/
- Improved commit logs
- Improved e820__reserve_nomap_region to perform e820__update_table_print only
once
- Fixed e820__reserve_nomap_region by passing region->base instead of truncated
start address and original size, which was wrong

v2 -> v3:
- Patch #1 which extends of/reserved_mem and adds the possibility to register an
arch specific hook was dropped. Instead "x86/e820: reserve corresponding to DT
reserved-memory nomap region" was introduced.
- "x86/of: add support for reserved memory defined by DT" stop relying on arch
specific hook. Also calling x86_flattree_get_config was moved and is now called
earlier during memblock setup.
For more info please refer to commit log description and v2 discussion:
https://lore.kernel.org/all/20250418124718.1009563-1-jaszczyk@chromium.org/

Grzegorz Jaszczyk (2):
  x86/of: add early setup of DT reserved-memory nodes
  x86/e820: reserve corresponding to DT reserved-memory nomap region

 arch/x86/include/asm/e820/api.h |  1 +
 arch/x86/kernel/devicetree.c    |  1 +
 arch/x86/kernel/e820.c          | 20 ++++++++++++++++++++
 arch/x86/kernel/setup.c         |  6 ++++--
 4 files changed, 26 insertions(+), 2 deletions(-)

-- 
2.53.0.851.ga537e3e6e9-goog


