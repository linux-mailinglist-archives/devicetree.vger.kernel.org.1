Return-Path: <devicetree+bounces-235311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B94C36AD6
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:26:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68E8E566F99
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B26F5333448;
	Wed,  5 Nov 2025 16:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fhzPk93K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661B7333752
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762358773; cv=none; b=Yr1cZsIsLn79e6RqpFtNU6rhtildIfUw+irEk664DDbwXI2NjeRR7wmG8SymDIVTs1rbAv6ejcBdYFRbITC2ShZehA1bXyTEkgDwrclBMVL+p6+mnVV12yvu/2XxW/nzj8CLlD8RFCrClqE8b9kFmiMz8/dPnOmguyMSGtIaKJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762358773; c=relaxed/simple;
	bh=KcSnJWC60R138mru0pJ0myDzIFcgggIJUrFvZuwSLjo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HNg9iVjtbkrD+zvCd54b4dgs44trjKh7uH3PRIBmE1lQXZi/2bsGpa/2f//PNlUmjD9Jtz62FT0h2uXTfaM4AzlcfqeaJcOFw02zXf7wfVpRXJPHyVtgX20krZPrgGQr6u1eizDFS/nHnh8lcGI55hDeLEfsOHZiB/FeQTa9lFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fhzPk93K; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b713c7096f9so521342366b.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1762358769; x=1762963569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9JU55dvg1sxiC93br6YKsgoKQQ1DbSeUT0OqWuZGXWs=;
        b=fhzPk93KJPs1BjdGAuKWk+ncOOPfEq/to3yJ+7N3+m5EWVwTu4jyMb0TfnNmFRD9TQ
         RkzdyJGkmFB5Z9aaaNtRkYTYw+J1+TMdq4E382TIMdrZfAcDGmnqDUJ3zlGVykybyxWp
         sB9b5Ylh6w/khQugI1kisWGeyMAGALeE1+Ovjkgj/e2IbtWfrv6kxPo6b+6vt45RcqBZ
         Jp5t++kCvvQ4CHddXQBM+Q0iPtvwtpg21SL2W+9MsqOB7tF4u7p51xHwDq9nzvsSOPYF
         uWSaskh5/ATMduTkjZHrgL9y/nhcNuGdpawOEFmxRgBFl9j4w/gtDGEJs9q/LzRBtph1
         TX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762358769; x=1762963569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9JU55dvg1sxiC93br6YKsgoKQQ1DbSeUT0OqWuZGXWs=;
        b=ZweYlciCx4/hyp4qIYMUWJhf68GO0yjqYs/s0KOKk7F1lDOA1qvmbdWZ+deVnTTyyW
         MliEO5eZlVPFjHXwOhHTDA/IkpMuvz7Fb19AJ2as6I8wT06+Kwo6a6FwGdgm63dhYaVy
         pq0p14usYwghUgs6q6Q78e0E3DO0E64tPk4A1/AFVgdYoHqAhSjJy2GYr88BN6w9Zudq
         Dgg2wXxJ+KN+QMZpzVW7EooqQ1V1g0HAEX39L7Hk5hWusBzhE6e7gG/A9MQcf+s+ehsg
         cP+iUMAWgztQItywMDHEKAypoZ3cAr+nlMWWjJJ4uOlqvxmSBsIUI7PJvSgagVtRaGtk
         LxWA==
X-Forwarded-Encrypted: i=1; AJvYcCUjzmTwctZytoS3dFb7WH5kdDRAQgZQMCIK6EkJuBhh4gkeIr6tJ4NiA3ThIkyzhks/f7/4s+6ZB4Ki@vger.kernel.org
X-Gm-Message-State: AOJu0YwdVU4jNd44Ymhf4KBM2R/3656NUuc68BAUarxBedQMbBgejKza
	ULZsdlx2nStQsNle2lST+FC6XLa319d8qsSn8FzGd4XrCXWVVwPsb0lxqtNJSS7dInk=
X-Gm-Gg: ASbGncvv9VLoulR4W1Beqpbxb7vYmDIJ5bu2CfLNVMGCrBBzMkb+2c14J+wPBNgTpVK
	lag64ctDX7nEDjpIMFfJ+4tHQ5KQlxnsnl9lHkcb7heUH6FbFxEhYCRmcORknLspLH2Gdzx/jPT
	kzs7Ac1ZD8yvI41gt17tSeccP69Klx0nI2oRVhB6oS9Ypj0ZedBufLrQMMUrpR1a6+dOEKQD7Fi
	mT6z59BCxWPkTwQj82EWYKB4bg6aImr8oIgd65aotAfVYkC4NeAo479foZ0ZwWUOXzkIeKJa3w0
	zOAD/ME3T0bs1cdPM8U+CjqG8mtJexYa/SIXZM78Zn/aNsWt4CaUhSDV7tKybRyOI8Z3H2mmcQE
	DOu2ohsPiClyihYMixKTs5LRxLqVfElg5gCbooRst5xV4ALLKCEspyGp9xkhnk8542XLVka4n1Y
	EpiZ9XY67q7eOvLtOxodxKJg2lTf637qv6abHrWpCqMPXczRnYqrg=
X-Google-Smtp-Source: AGHT+IH6FMBpzs4E7NTuobAA+/xfJzq13fX0E43pfnxRPchTh+4OeHM+pc+2H7s+7utdeqkabqOA2A==
X-Received: by 2002:a17:907:7252:b0:b6d:4fe5:ead8 with SMTP id a640c23a62f3a-b72652bace2mr426204166b.25.1762358769482;
        Wed, 05 Nov 2025 08:06:09 -0800 (PST)
Received: from localhost (host-79-51-28-73.retail.telecomitalia.it. [79.51.28.73])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7276298b54sm129632666b.14.2025.11.05.08.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:06:09 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Phil Elwell <phil@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2] of: reserved_mem: Add fixup function to amend corrupted reserved memory regions
Date: Wed,  5 Nov 2025 17:08:18 +0100
Message-ID: <625eee03632c6f5c4349d6f3cdfe3f85a8e4c466.1762356853.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When parsing static reserved-memory DT nodes, any node with a reg property
length that is not perfectly conformant is discarded.
Specifically, any reg property whose length is not a multiple of the
parent's (#address-cells + #size-cells) is dropped.

For example, in the following scenario:

/ {
    #address-cells = <0x02>;
    #size-cells = <0x02>;
    ...

    reserved-memory {
	    #address-cells = <0x02>;
	    #size-cells = <0x02>;
	    ...

	    nvram {
		    reg = <0x00 0x3fd16d00 0x37>;
		    ...
	    };
    };
};

Even though the reg property of the nvram node is not well-formed from a DT
syntax perspective, it still references a perfectly valid memory region of
0x37 bytes that should be reserved.

This has at least one real-world equivalent on the Raspberry Pi 5, for
example, on which the firmware incorrectly overwrites the nvram node's reg
property without taking into account the actual value of the parent's
size-cells.

Add a fixup function that corrects the FDT in early stage by adding the
missing cell in the size portion of the reg property, so that the resulting
DT is well-formed and can be correctly parsed.
Since it's searching for 'raspberrypi,bootloader-config' compatible
node, this fix is specific for Raspberry PI.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
This patch can be considered a followup version of [1] even though the
commit subject has changed entirely and the approch has evolved from a
general heuristic to a fixup handler specific for RPi5.

A couple of notes:

* The FDT region is precisely sized so I needed to copy it on a new
  buffer big enough to contain it. Using memblock to dinamically allocate
  the precise amount of memory is not feasible since memblock cannot
  be used before paging is up. Also, AFAIK any memory allocated through
  memblock will be reclaimed by the buddy allocator and we need that
  memory to be preserved since it will be referenced by the live DT.
  This could *may* be avoided via a clever usage of memblock_reserve()
  and mapping the memory later, but we still have the former problem of
  not being able to map the memory for immediate usage.
  So I've just used a static buffer that should be big enough to
  accomodate for the DTB + overlays.
  For reference, those are the current sizes for the DTBs for RPi5:

  - upstream DTB: ~23Kb
  - downstream DTB: ~85Kb
  - size of the static buffer: 150Kb

  If this space is of concern to anyone we can maybe guard this fixup
  handelr behind a CONFIG_ option.

* This fixup is specific for RPi5 and I don't have in mind any other
  use cases for other handlers, but in case we need to extend this for
  other platforms it may be worth to setup a list of handlers to be
  registered so that they can be called in sequence (and on specific
  nodes).

Links:
[1] - https://lore.kernel.org/all/aO-Q6xMDd8Bfeww2@apocalypse/
---
 drivers/of/of_reserved_mem.c | 77 +++++++++++++++++++++++++++++++++++-
 1 file changed, 76 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 2e9ea751ed2d..2c278ab91b9d 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -148,6 +148,73 @@ static int __init early_init_dt_reserve_memory(phys_addr_t base,
 	return memblock_reserve(base, size);
 }
 
+static void * __init of_apply_rmem_fixups(const void *fdt, int node)
+{
+	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
+	int parent_node, new_node, child;
+	static char new_fdt[150000];
+	int len, err, alloc_size;
+	phys_addr_t base, size;
+	__be32 new_reg_prop[4];
+	const __be32 *prop;
+	const char *uname;
+
+	fdt_for_each_subnode(child, fdt, node) {
+		if (!of_fdt_device_is_available(fdt, child))
+			continue;
+
+		prop = of_get_flat_dt_prop(child, "reg", &len);
+		if (!prop ||
+		    !of_flat_dt_is_compatible(child, "raspberrypi,bootloader-config") ||
+		    (t_len - len) != sizeof(__be32) ||
+		    t_len != 4 * sizeof(__be32))
+			continue;
+
+		alloc_size = fdt_totalsize(fdt) + sizeof(__be32);
+		err = fdt_open_into(fdt, new_fdt, alloc_size);
+		if (err) {
+			pr_err("Failed to open FDT\n");
+			return ERR_PTR(err);
+		}
+
+		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
+		size = dt_mem_next_cell(1, &prop);
+		new_reg_prop[0] = cpu_to_be32(upper_32_bits(base));
+		new_reg_prop[1] = cpu_to_be32(lower_32_bits(base));
+		new_reg_prop[2] = 0;
+		new_reg_prop[3] = cpu_to_be32(size);
+
+		parent_node = fdt_path_offset(new_fdt, "/reserved-memory");
+		if (parent_node < 0) {
+			pr_err("No reserved-memory node in the copied FDT\n");
+			return ERR_PTR(parent_node);
+		}
+
+		uname = fdt_get_name(fdt, child, NULL);
+		if (!uname) {
+			pr_err("Cannot retrieve the node name\n");
+			return ERR_PTR(-EINVAL);
+		}
+
+		new_node = fdt_subnode_offset(new_fdt, parent_node, uname);
+		if (new_node < 0) {
+			pr_err("No %s node in the copied FDT\n", uname);
+			return ERR_PTR(new_node);
+		}
+
+		err = fdt_setprop(new_fdt, new_node, "reg", new_reg_prop, sizeof(new_reg_prop));
+		if (err < 0) {
+			pr_warn("Cannot fix 'reg' property for node %s: %s\n",
+				uname, fdt_strerror(err));
+			return ERR_PTR(err);
+		}
+
+		return new_fdt;
+	}
+
+	return NULL;
+}
+
 /*
  * __reserved_mem_reserve_reg() - reserve all memory described in 'reg' property
  */
@@ -295,7 +362,8 @@ int __init fdt_scan_reserved_mem(void)
 	int node, child;
 	int dynamic_nodes_cnt = 0, count = 0;
 	int dynamic_nodes[MAX_RESERVED_REGIONS];
-	const void *fdt = initial_boot_params;
+	void *fdt = initial_boot_params;
+	void *fixed_fdt;
 
 	node = fdt_path_offset(fdt, "/reserved-memory");
 	if (node < 0)
@@ -306,6 +374,13 @@ int __init fdt_scan_reserved_mem(void)
 		return -EINVAL;
 	}
 
+	fixed_fdt = of_apply_rmem_fixups(fdt, node);
+	if (!IS_ERR_OR_NULL(fixed_fdt)) {
+		initial_boot_params = fixed_fdt;
+		fdt = fixed_fdt;
+		node = fdt_path_offset(fdt, "/reserved-memory");
+	}
+
 	fdt_for_each_subnode(child, fdt, node) {
 		const char *uname;
 		int err;
-- 
2.35.3


