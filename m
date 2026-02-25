Return-Path: <devicetree+bounces-268127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aA7YFe2QnmnTWAQAu9opvQ
	(envelope-from <devicetree+bounces-268127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:04:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CC81923DE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4DBF33077F38
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20102D9EC4;
	Wed, 25 Feb 2026 06:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="N/qYgint";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="DwjGnO/q"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F12B24A078
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771999452; cv=none; b=YjlvXaVY725J2d7Itnk/b12DZa12Xl2U2vSyciwn6r4MepzAiwcexN5jo081WWimfrP7XyScYBLa+DizR3ErKzL+EFq8X2T06ig4pzaX6CyD9TGGIBMAnecuq2a+hZ4dH9qyCKtamQO5KxdyH9vTexywxAZLXGRC1Z1rzEnPokg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771999452; c=relaxed/simple;
	bh=83OFoustkuKSXdvb88gih1ueBF9pFSW2Tth3DjCyEPY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JjWIGtTaYmsoVoA4pNBuZ622TR7KYaYsni4hphnqWfL2POjwfBR1ucGzY0iFeM5NhZ8QN1URWUxWvHh4kyKxiOc9zZ+SLe/qMg5PrVry/po3D9p0a6WqbccmM0OLF7AtKEwToG7pn50mPeva4tBPKP7oBeYb7khS6meEwkxzrHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=N/qYgint; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=DwjGnO/q; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771999450;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jAZI4/OSU4kBMOxoXJVKa+WF0ADBr7+Jm8V1UGkVmOI=;
	b=N/qYgintNkvKqD/idk7FPjAU5Qbi2VEVKHRWEgse7+VSqux7LGSCYmH8k7SYpy6wTAIV3+
	/3AsHMmR2a3AfJyEdIeopiwfAVubtY9leDWAyr2yZM2JzlJ8GOEOV/vK7/QxDhAooq7xqB
	GJKSBTQ13XDs/5IK5XaRTyeXdQvc5tA=
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-367-or2xW-SsPIi1aMTYhKJ9MQ-1; Wed, 25 Feb 2026 01:04:08 -0500
X-MC-Unique: or2xW-SsPIi1aMTYhKJ9MQ-1
X-Mimecast-MFC-AGG-ID: or2xW-SsPIi1aMTYhKJ9MQ_1771999447
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c70b75aea3aso2569044a12.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771999447; x=1772604247; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAZI4/OSU4kBMOxoXJVKa+WF0ADBr7+Jm8V1UGkVmOI=;
        b=DwjGnO/qJ6b3LP9D/FE3ZNTPUOOlbuBIdrlKTz0rT7+GTNGDVzjfvme+5mlawp5Nn5
         E1Gc5WlPnO3SxqWfFOBFMNZbV9rbtoemRtAbRxSHQtAxgNRgeIrILaJmBVYFFG4JMarL
         giXakrQHx9yAHrsN8agaEINNHTjtntY8bxtxYnCRqzoS46RRKl844bu0nfeaLFUKkVgw
         TFDmnQHr7vP8PZHoarA4cS0cdfFaR+PkT04Lrk1duiw+Nc8pY1XOfXKbimGWsxDZOtuK
         zW73CqDCPHZu7NWeRpjVW96yBkfmOhqMfq1HK01luobv2SI7KtiBpt9L0HnQ7ykHIZzp
         Punw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771999447; x=1772604247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jAZI4/OSU4kBMOxoXJVKa+WF0ADBr7+Jm8V1UGkVmOI=;
        b=VTJ6OhdBgCTd+P5n5v7MD2nwbnHS2RTb4+VwM8rjNtdJmb3XwxqVciKeuxpa3vvlw8
         7lvbWdxipMja92vSXj4oqo5/dMgrBxPBh2YBGE1+tSle4CEU9Y2U37Abw14XskHiRR13
         S/lW5L8cV1ieQ7mJer0810TMZC/hep4VhPj/g5HT6jBd2Vuz2/ZmwQkdrIs4/fgicRPD
         gG9jB7oQO1mAZuE2cQtDYxwCcXbCqwNhBGI7qsiZe7Ui/lsKEh36FIB9XFC1Y1opoHGN
         pXlHDKRZP3h2jQULaMAweniEAQiMqCQh15j5IwWqzJqfVwMIxMWJcCN38GE6uZckXruh
         Ym1A==
X-Forwarded-Encrypted: i=1; AJvYcCXttgZXcfjClB6F/TH9ZEBiRDQJMSqHhRxXJlXVwTVX6vJb6GhXDe5lfiX1ye63XM7hoxlHxXgueTYt@vger.kernel.org
X-Gm-Message-State: AOJu0YwzZHOeXbanSNJl3THDQ+zdr0MnUjFj0y8zrfh7qIFkQWKIlLFg
	klJnU6xH12F4BDBsLT23tMneH/XtH3yk2QAQoTlb6sKiLVTZqS1AhREAbTwPwikH1oFiT4MiCyW
	fbJbEruFuBsfWIGKnN+uFwDMg/3LbEQO1idYbfMtnHhZKFVN/YRWjWQrjkxeZKvg=
X-Gm-Gg: ATEYQzyP8hdlFiOvLoaCAD1RC6PplTO1saMKBle9EIZHT4PArICbS0dm5Rug4p3sf6E
	CbUH1cOKlNWoarTzzjYx5jYQ9qxMCYZ5akuPMk7ZcYhx5clrpcZosOWynYA25/XsaEk5kPj8IJm
	bZj6LDjZxE4MeBS32WrO8/B6bHIfPyg+iUQcjLWT2ajia6aagv1c4UIZU836bgSEXwPV4b1vUpe
	M/xGhNjQcmG4VKJY+ccQLeYqThwWjMU7Ru+u94Ph1kU82oqoRegqBTnyraUC0P90f9SUtoiiNxb
	1RnRBUZT2Ta3mQHeaop34YzVh2Q8MfckRfAu4FN7Z6ujIj6LzxbLpmnGEedbbqaE4kVwXe9rXyd
	+pUO7xol7UHvJ
X-Received: by 2002:a05:6a00:2997:b0:824:adf4:5a32 with SMTP id d2e1a72fcca58-826daa01ffcmr10872384b3a.42.1771999447113;
        Tue, 24 Feb 2026 22:04:07 -0800 (PST)
X-Received: by 2002:a05:6a00:2997:b0:824:adf4:5a32 with SMTP id d2e1a72fcca58-826daa01ffcmr10872341b3a.42.1771999446454;
        Tue, 24 Feb 2026 22:04:06 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8ecb2dsm12330215b3a.60.2026.02.24.22.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 22:04:06 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: kexec@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org
Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>,
	Baoquan he <bhe@redhat.com>,
	Dave Young <dyoung@redhat.com>,
	Kairui Song <ryncsn@gmail.com>,
	Pingfan Liu <kernelfans@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Thomas Staudt <tstaudt@de.ibm.com>,
	Sourabh Jain <sourabhjain@linux.ibm.com>,
	Will Deacon <will@kernel.org>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v5 3/3] arm64,ppc64le/kdump: pass dm-crypt keys to kdump kernel
Date: Wed, 25 Feb 2026 14:03:46 +0800
Message-ID: <20260225060347.718905-4-coxu@redhat.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225060347.718905-1-coxu@redhat.com>
References: <20260225060347.718905-1-coxu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[clever-cloud.com,redhat.com,gmail.com,linux-foundation.org,kernel.org,de.ibm.com,linux.ibm.com,arm.com,ellerman.id.au,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-268127-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[clever-cloud.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C5CC81923DE
X-Rspamd-Action: no action

CONFIG_CRASH_DM_CRYPT has been introduced to support LUKS-encrypted
device dump target by addressing two challenges [1],
 - Kdump kernel may not be able to decrypt the LUKS partition. For some
   machines, a system administrator may not have a chance to enter the
   password to decrypt the device in kdump initramfs after the 1st kernel
   crashes

 - LUKS2 by default use the memory-hard Argon2 key derivation function
   which is quite memory-consuming compared to the limited memory reserved
   for kdump.

To also enable this feature for ARM64 and PowerPC, the missing piece is
to let the kdump kernel know where to find the dm-crypt keys which are
randomly stored in memory reserved for kdump. Introduce a new device
tree property dmcryptkeys [2] as similar to elfcorehdr to pass the
memory address of the stored info of dm-crypt keys to the kdump kernel.
Since this property is only needed by the kdump kernel, it won't be
exposed to user space.

[1] https://lore.kernel.org/all/20250502011246.99238-1-coxu@redhat.com/
[2] https://github.com/devicetree-org/dt-schema/pull/181

Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>
Cc: Baoquan he <bhe@redhat.com>
Cc: Dave Young <dyoung@redhat.com>
Cc: Kairui Song <ryncsn@gmail.com>
Cc: Pingfan Liu <kernelfans@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Thomas Staudt <tstaudt@de.ibm.com>
Cc: Sourabh Jain <sourabhjain@linux.ibm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Christophe Leroy (CS GROUP) <chleroy@kernel.org>
Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 arch/arm64/kernel/machine_kexec_file.c |  4 ++++
 arch/powerpc/kexec/elf_64.c            |  4 ++++
 drivers/of/fdt.c                       | 21 +++++++++++++++++++++
 drivers/of/kexec.c                     | 19 +++++++++++++++++++
 4 files changed, 48 insertions(+)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index fba260ad87a9..e31fabed378a 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -134,6 +134,10 @@ int load_other_segments(struct kimage *image,
 
 		kexec_dprintk("Loaded elf core header at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
 			      image->elf_load_addr, kbuf.bufsz, kbuf.memsz);
+
+		ret = crash_load_dm_crypt_keys(image);
+		if (ret)
+			goto out_err;
 	}
 #endif
 
diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
index 5d6d616404cf..ea50a072debf 100644
--- a/arch/powerpc/kexec/elf_64.c
+++ b/arch/powerpc/kexec/elf_64.c
@@ -79,6 +79,10 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
 			goto out;
 		}
 
+		ret = crash_load_dm_crypt_keys(image);
+		if (ret)
+			goto out;
+
 		/* Setup cmdline for kdump kernel case */
 		modified_cmdline = setup_kdump_cmdline(image, cmdline,
 						       cmdline_len);
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 331646d667b9..2967e4aff807 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -866,6 +866,26 @@ static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
 		 elfcorehdr_addr, elfcorehdr_size);
 }
 
+static void __init early_init_dt_check_for_dmcryptkeys(unsigned long node)
+{
+	const char *prop_name = "linux,dmcryptkeys";
+	const __be32 *prop;
+
+	if (!IS_ENABLED(CONFIG_CRASH_DM_CRYPT))
+		return;
+
+	pr_debug("Looking for dmcryptkeys property... ");
+
+	prop = of_get_flat_dt_prop(node, prop_name, NULL);
+	if (!prop)
+		return;
+
+	dm_crypt_keys_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
+
+	/* Property only accessible to crash dump kernel */
+	fdt_delprop(initial_boot_params, node, prop_name);
+}
+
 static unsigned long chosen_node_offset = -FDT_ERR_NOTFOUND;
 
 /*
@@ -1097,6 +1117,7 @@ int __init early_init_dt_scan_chosen(char *cmdline)
 
 	early_init_dt_check_for_initrd(node);
 	early_init_dt_check_for_elfcorehdr(node);
+	early_init_dt_check_for_dmcryptkeys(node);
 
 	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
 	if (rng_seed && l > 0) {
diff --git a/drivers/of/kexec.c b/drivers/of/kexec.c
index c4cf3552c018..fbd253f0d3c5 100644
--- a/drivers/of/kexec.c
+++ b/drivers/of/kexec.c
@@ -423,6 +423,25 @@ void *of_kexec_alloc_and_setup_fdt(const struct kimage *image,
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
-- 
2.53.0


