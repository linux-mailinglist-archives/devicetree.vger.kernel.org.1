Return-Path: <devicetree+bounces-251776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 66433CF6E2A
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 07:23:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D7523002D3D
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 06:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B57C3019B2;
	Tue,  6 Jan 2026 06:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jMlTMMwH";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="XdFvttLg"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C583A1E9F
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 06:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767680561; cv=none; b=TMz5mV+aalehcrUF/7bQtxOJN/IcVXHZ5RB3Jnbxk/JJ2VrOhfytOFxocTaPPvke0wXwzdb9HgorySGifSLWpE9/sai0r5ebUJ32N83FGGzRHmc5TArpMRRvHR1dNvWxEu00tPWkcawy+z87o/tqirsMl0ABzS6RtbyLDc0e3Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767680561; c=relaxed/simple;
	bh=WatYTnosXf5wTqbVsuOqKj6mILafMiKiMkLhYzWwNkI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=goMrQSs9tsTqOswItRaU907X84vgjfRl65kowLp7SdXhqHG4O1STVQgLzT0JDoxgmbYNktu5RPafb+ht/FNgZPmiwMMDq465lDH7kfU249o58v9U9HQo+LEtV03uuCLYWyizwHq4/cuKw04ueipoCjITiTZ9mrO0qwJ8Jt9sZYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jMlTMMwH; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=XdFvttLg; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767680558;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G1iCm8y4kbWCIcgUpU9S1KPoq4Lc5Fqr5q19Pt4lfz4=;
	b=jMlTMMwHY5qlBu137aLsy+gU5Z6UdXQMZPTYlSLO7GSImr+LTyo8mv2FNJjvcDL9UmtH+i
	VHs8qq5Oeot4EswNBABocagCXch1E1CGKmH4m4sqztgtuXlk+TDltHehBPWuaGAEhf769+
	XGr6cIexQ5OcHXkcbdPMvdG31yPCCXA=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-649-5OeXrF0dOBSOhc6VuvyhtA-1; Tue, 06 Jan 2026 01:22:37 -0500
X-MC-Unique: 5OeXrF0dOBSOhc6VuvyhtA-1
X-Mimecast-MFC-AGG-ID: 5OeXrF0dOBSOhc6VuvyhtA_1767680557
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso13426745ad.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 22:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767680556; x=1768285356; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1iCm8y4kbWCIcgUpU9S1KPoq4Lc5Fqr5q19Pt4lfz4=;
        b=XdFvttLgAtQ+cFZIXWcRZ2rqzLGhErVDnUXNM6JnIRlnJOcHBRJjnOHUAhku30G3pP
         FKLH+I9cUTwzco7XqE6ODPEzUVFboOmMLS5mB0OZ82mX/RaEDUstvF1U8eAzxuJzKm8C
         sv6As1nvxDz6nd7eFlNlPpyeK6lEmmZNSa1qPVoBK6lHyjQFoQxsS/I3qAkm7bRtUMWy
         8daTAS6IBxJ0khfeLW8vZnJ02d6M4c6bbZhkPgdwIx1a5RRTLBw0xN1cTyl+vIcXh/oF
         RPn9wuO/srpET6PlEIWyFVScGT3HJOV2IA+nVkorqLpWc2Yg/lW8u+I1LnoLZuQk00Wo
         YWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767680556; x=1768285356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G1iCm8y4kbWCIcgUpU9S1KPoq4Lc5Fqr5q19Pt4lfz4=;
        b=LicuwfPLce8/pjH1nqF84CxEtET4dmvIVaISZOUXmhELM2YwrD+WgecnZU/hPpZm1l
         mOqNn/VbPsH3oNTp4mal9sxeGzfh8nxio78Z5IzucveY9HBs3qBDcIoKzPmrzoXZxg7K
         dd7R3ru8a4+UxkvlsxN+ERv8OolQ2yoT6PBYBdBnH4I5bDsJ9Gc4lHglXB8l2I7ystCO
         76y9SaaAONnYPAbDbv5tu/jxtDj4tGzvTQY+WoPjuWETxdjAVbfX3O7vnt0rgdcJmG2Z
         DWUswc+pq1PLGPCirWp7z4nsRMskd8/wRKMPjwqDyle/bE190HnnWEbEZk9D+rsNtnEy
         /5OQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBnrUe/+woxRMPvOtdSYMi2nv7c/12pFSrj6of7hrfRdkUTrTss3HKzXRbRZo+t/IQIhZ3fqzWn46Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm4JSxhyXfPJk5JSiVXi7Hlhnu24LFbde+pDfibU7Qul89tQqA
	zdn1iSyGz1fE2y1GAZ3DabGfNbNo4mdrphePXgektgzS0s7VhbrvPWBLast1dtTvSRa6r/enRch
	rCHXOjB1UiPLz+Nqb4BAGvbCX0Y8staQbxI7ylTYqiuBdTKdL/5FMi8TbN6Tm/xulBe5Zbi/oEw
	==
X-Gm-Gg: AY/fxX4a4YiX9S+POYQsZxsb3CwJPXVYYQEfYrrUOp6VLSu45VlJkuji5af+K8TF2BC
	+h5tp8dMq0M+Z3PjisK0bdKAJKlk/bzLeb5aCiYn6E20nvo5yNa+cDY0NRBizqKqHfkRmiLUZWb
	f6ZHf6v0am0VRt9jX4Cq/ylHZukQJza1pHe6PJoClNuJb8iDW8ogQ9hSq9fMPPedk2Jb814o7B8
	HYZBjUhs8aaN1zxQpSLYIIBHpr3fhFIqTUVBg6B84hom8kywCAIBolOxlEMImxXN497sx1lqdXW
	O4iFTeG55+5rVm7ghCCDqVMv87Jhg1AbCbzzqKCPahfimTh2NfqPCXyM4/EDq7+bsfHuyA9xHaq
	a
X-Received: by 2002:a17:903:38cc:b0:295:fc0:5a32 with SMTP id d9443c01a7336-2a3e2c8edfemr18998195ad.3.1767680556204;
        Mon, 05 Jan 2026 22:22:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjkYzfagGmKLQPkTpXjihNKVxM4m77yLyUH+xkoj2AwvmqMvu52zZRrnKlXNZzGMaZuNwW/w==
X-Received: by 2002:a17:903:38cc:b0:295:fc0:5a32 with SMTP id d9443c01a7336-2a3e2c8edfemr18997735ad.3.1767680555369;
        Mon, 05 Jan 2026 22:22:35 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2f8asm10548925ad.57.2026.01.05.22.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 22:22:34 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: kexec@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>,
	Baoquan he <bhe@redhat.com>,
	Dave Young <dyoung@redhat.com>,
	Kairui Song <ryncsn@gmail.com>,
	Pingfan Liu <kernelfans@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org (open list),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE)
Subject: [PATCH v2] arm64/kdump: pass dm-crypt keys to kdump kernel
Date: Tue,  6 Jan 2026 14:22:30 +0800
Message-ID: <20260106062231.448170-1-coxu@redhat.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251226141116.1379601-1-coxu@redhat.com>
References: <20251226141116.1379601-1-coxu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

CONFIG_CRASH_DM_CRYPT has been introduced to support LUKS-encrypted
device dump target by addressing two challenges [1],
 - Kdump kernel may not be able to decrypt the LUKS partition. For some
   machines, a system administrator may not have a chance to enter the
   password to decrypt the device in kdump initramfs after the 1st kernel
   crashes

 - LUKS2 by default use the memory-hard Argon2 key derivation function
   which is quite memory-consuming compared to the limited memory reserved
   for kdump.

To also enable this feature for ARM64, we only need to add device tree
property dmcryptkeys [2] as similar to elfcorehdr to pass the memory
address of the stored info of dm-crypt keys to the kdump kernel.

[1] https://lore.kernel.org/all/20250502011246.99238-1-coxu@redhat.com/
[2] https://github.com/devicetree-org/dt-schema/pull/181

Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>
Cc: Baoquan he <bhe@redhat.com>
Cc: Dave Young <dyoung@redhat.com>
Cc: Kairui Song <ryncsn@gmail.com>
Cc: Pingfan Liu <kernelfans@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Coiby Xu <coxu@redhat.com>
---
v2
- Krzysztof
  - Use imperative mood for commit message
  - Add dt-schema ABI Documentation
- Don't print dm-crypt keys address via pr_debug


 arch/arm64/kernel/machine_kexec_file.c |  9 +++++++++
 drivers/of/fdt.c                       | 17 +++++++++++++++++
 drivers/of/kexec.c                     | 19 +++++++++++++++++++
 3 files changed, 45 insertions(+)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 410060ebd86d..5f3bad8ca96d 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -134,6 +134,15 @@ int load_other_segments(struct kimage *image,
 
 		kexec_dprintk("Loaded elf core header at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
 			      image->elf_load_addr, kbuf.bufsz, kbuf.memsz);
+
+		ret = crash_load_dm_crypt_keys(image);
+
+		if (ret == -ENOENT) {
+			kexec_dprintk("No dm crypt key to load\n");
+		} else if (ret) {
+			pr_err("Failed to load dm crypt keys\n");
+			goto out_err;
+		}
 	}
 #endif
 
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 331646d667b9..9b6a6a402cb7 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -866,6 +866,22 @@ static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
 		 elfcorehdr_addr, elfcorehdr_size);
 }
 
+static void __init early_init_dt_check_for_dmcryptkeys(unsigned long node)
+{
+	const __be32 *prop;
+
+	if (!IS_ENABLED(CONFIG_CRASH_DM_CRYPT))
+		return;
+
+	pr_debug("Looking for dmcryptkeys property... ");
+
+	prop = of_get_flat_dt_prop(node, "linux,dmcryptkeys", NULL);
+	if (!prop)
+		return;
+
+	dm_crypt_keys_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
+}
+
 static unsigned long chosen_node_offset = -FDT_ERR_NOTFOUND;
 
 /*
@@ -1097,6 +1113,7 @@ int __init early_init_dt_scan_chosen(char *cmdline)
 
 	early_init_dt_check_for_initrd(node);
 	early_init_dt_check_for_elfcorehdr(node);
+	early_init_dt_check_for_dmcryptkeys(node);
 
 	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
 	if (rng_seed && l > 0) {
diff --git a/drivers/of/kexec.c b/drivers/of/kexec.c
index 1ee2d31816ae..4bfb1ea5744e 100644
--- a/drivers/of/kexec.c
+++ b/drivers/of/kexec.c
@@ -432,6 +432,25 @@ void *of_kexec_alloc_and_setup_fdt(const struct kimage *image,
 		if (ret)
 			goto out;
 
+		if (image->dm_crypt_keys_addr != 0) {
+			ret = fdt_appendprop_addrrange(fdt, 0, chosen_node,
+						       "linux,dmcryptkeys",
+						       image->dm_crypt_keys_addr,
+						       image->dm_crypt_keys_sz);
+
+			if (ret)
+				goto out;
+
+			/*
+			 * Avoid dmcryptkeys from being stomped on in kdump kernel by
+			 * setting up memory reserve map.
+			 */
+			ret = fdt_add_mem_rsv(fdt, image->dm_crypt_keys_addr,
+					      image->dm_crypt_keys_sz);
+			if (ret)
+				goto out;
+		}
+
 #ifdef CONFIG_CRASH_DUMP
 		/* add linux,usable-memory-range */
 		ret = fdt_appendprop_addrrange(fdt, 0, chosen_node,

base-commit: ccd1cdca5cd433c8a5dff78b69a79b31d9b77ee1
-- 
2.52.0


