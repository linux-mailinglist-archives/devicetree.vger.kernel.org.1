Return-Path: <devicetree+bounces-275941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHUABL6dt2l/TgEAu9opvQ
	(envelope-from <devicetree+bounces-275941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3AD294F38
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C4F43009FBD
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E73B034751B;
	Mon, 16 Mar 2026 06:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CwYKOZXg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF55346A15
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773641147; cv=none; b=lr8n3I0GpkI0XywWVpSS4CnhQfRTM2Cx8VNNn2B8Y9zArUIWyiiXxyb2vTX4ch0XIYBiz+AOlYyO3zXhj5b9rRJJSb7SWI61WVpE6Ph5/HeqkqxHk/9ujTEqfkkdfS/CUHjDen3169o2ohwyoqUav5AWsrsrPsLPK/n+FbZxnVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773641147; c=relaxed/simple;
	bh=zFpJ9Lc+qbmVhSv+wBhS1sRunSnT/QfrtvQejWtn9GY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IOGSt2G+ArcTqWzFDiHXVNyi8g/wLE7k+wQJER2ZUw97FYnF51WrhJb8UXy8P1kDUOu4oFcmy2o6Ac23Fr2Ucq81XpSwLi0APcNGRfRpHtanXxedGkyktXUTctplE3uJJv0actvoXJrs5W4UU+4euiTJhMkjfIgJTs9vYrjML9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CwYKOZXg; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-827270d50d4so3986631b3a.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773641146; x=1774245946; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SDQYRHz1Z1t4tWIcfE0Fv7aJ0eRwhG3fEsKD60MRqLg=;
        b=CwYKOZXgtORJDTXD8TASkcxfY576irKaW6r9pAhC7jlcnbtHDYxeuX4WiCfzkvuSg7
         Nj3e2VdjrOn3n/mB71zwwROy8dR39m5ElUgrTJX9NRX770EF7vHIYgcwJGjSED2eJkWh
         sqQ9vfPkdB+Zb+Yh/ADy7a6wC0+uh8oIAXTf7BW30mrl0CMPS/+/uo/TUxr+r+ad99mm
         Ry5zuO1uJHy3SPYqyBtI2BgudfZT4xoWxSwsh/8ieMTHMitkr++ltoZUHJIpYD4apc2Y
         CznauqnWef4gM4VDjsPb1fuIjrSnAQYfvKPjL6kqEO1rpAi6UbiMdC5iOqcGRu9KMIIV
         mdGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773641146; x=1774245946;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SDQYRHz1Z1t4tWIcfE0Fv7aJ0eRwhG3fEsKD60MRqLg=;
        b=DrOInc2tyQVytm9D210XW3O15COK8CRN7K3ONof3uPCVIDS+dST+WryEzQ/x2qqrc3
         4+Dv/PPSP9aTDSmdw61dpQudBT3G1v8xxqVNu6XoPfbovR+2Sw41WlOZv77IX7Pfac6i
         4YI8Kk17+9dGLaUwYw4zZaWgsVA7EScP1CFmmOvt8t3v2AG3dYi0cK/3ry3uK1DQJj5v
         uJHON6cs3412EexZD4xy3xICyBVD/LhRhJ7P9JDeBtuViYEqZPuXiszyihDkEj7B8DTU
         LC9YITJOcMgpjydC/6cCLAdNlwzbT28tQQEenxRWK5ys1B/klvLSgZx2awe/WoIj+aGS
         tBsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPHjLUDmYH1K1odPpGPuZBhcvLli1CZ1aN8wfw3tgPMXC9K/YzLExFOy27mzc1vJP+83wYsGvKLCoe@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+x6w8BR2mG6o5ELAt7Y1CZ/EYGP0/TOsu58QlglrpPe6QX5xE
	NLof+mbNPTpLXdyu/P2C2KqsSyulPcO2xCtGqu6bX9fe1p/Nw3fYIm2U
X-Gm-Gg: ATEYQzwg7OkTnO+g1XAJ9517OTlr4bCZuf9FV9MNt7I3lYkVvIQoCydwW0pijb+4cCD
	tnBZH3H0NH5IgZnFUBxWm/QzgzQ58JbOHcC95k4VfvhcZA04ucMR4P4DPkDZaaWqoFrCcqpzwxH
	WHPBSWHGCaCeEVcR0qaGX3us31jfMVYOT7X9vZcYYljhDhanKm6CYEDJyrot01ScT22btoJ28WQ
	qAsIzUNAWjA1tcwZIpnPS7vO21Rv5UgXf3n7bJ3MxOfPlNUolfl4KuKtUpVDpk0r38CJMNxbOnq
	lU1onYcGkeIyikbFZSAnauJs/edoArhmnKOmCK1ldkBokJqYHbE73nf1jUDJIFDeIvOtlMRRONv
	whiT5V3lDQW76SrA4tMDFMLUpMm96k226mXXNy7ZZhlG1hLIAewPp+x4K/G0t07naWaIW6RXU0Z
	APvdKu9dRf6qQHao40XZXDnp6J
X-Received: by 2002:a05:6a00:a90:b0:824:a5f4:fc3c with SMTP id d2e1a72fcca58-82a19842906mr11729345b3a.19.1773641146216;
        Sun, 15 Mar 2026 23:05:46 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07393098sm12525226b3a.62.2026.03.15.23.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 23:05:44 -0700 (PDT)
From: Bo Gan <ganboing@gmail.com>
To: linux-riscv@lists.infradead.org,
	samuel.holland@sifive.com,
	david@redhat.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	gaohan@iscas.ac.cn,
	me@ziyao.cc
Cc: lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com,
	marcel@ziswiler.com,
	conor@kernel.org,
	kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: [RFC PATCH v2 2/3] riscv: errata: sifive: support auipc/load pair in patched alternatives
Date: Sun, 15 Mar 2026 23:03:27 -0700
Message-Id: <20260316060328.1173634-3-ganboing@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316060328.1173634-1-ganboing@gmail.com>
References: <20260316060328.1173634-1-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275941-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AD3AD294F38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enhance the errata/sifive patching function to support auipc/load
insn pair by fixing the offsets in immediate, just like in function
`riscv_cpufeature_patch_func`. Refer to commit 27c653c06505
("RISC-V: fix auipc-jalr addresses in patched alternatives")

Signed-off-by: Bo Gan <ganboing@gmail.com>
---
 arch/riscv/errata/sifive/errata.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/errata/sifive/errata.c b/arch/riscv/errata/sifive/errata.c
index d0c61f86cba33..f26c997e04e59 100644
--- a/arch/riscv/errata/sifive/errata.c
+++ b/arch/riscv/errata/sifive/errata.c
@@ -80,6 +80,7 @@ void sifive_errata_patch_func(struct alt_entry *begin, struct alt_entry *end,
 			      unsigned int stage)
 {
 	struct alt_entry *alt;
+	void *oldptr, *altptr;
 	u32 cpu_req_errata;
 	u32 tmp;
 
@@ -100,9 +101,12 @@ void sifive_errata_patch_func(struct alt_entry *begin, struct alt_entry *end,
 
 		tmp = (1U << alt->patch_id);
 		if (cpu_req_errata & tmp) {
+			oldptr = ALT_OLD_PTR(alt);
+			altptr = ALT_ALT_PTR(alt);
+
 			mutex_lock(&text_mutex);
-			patch_text_nosync(ALT_OLD_PTR(alt), ALT_ALT_PTR(alt),
-					  alt->alt_len);
+			patch_text_nosync(oldptr, altptr, alt->alt_len);
+			riscv_alternative_fix_offsets(oldptr, alt->alt_len, oldptr - altptr);
 			mutex_unlock(&text_mutex);
 		}
 	}
-- 
2.34.1


