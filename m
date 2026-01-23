Return-Path: <devicetree+bounces-258774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEhAL7Ytc2mTswAAu9opvQ
	(envelope-from <devicetree+bounces-258774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:13:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3054A72475
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:13:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 93DB730078AA
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24BAD2EDD52;
	Fri, 23 Jan 2026 08:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eMkqUcR8";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="Vl5Ov54i"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB92A34CFBA
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 08:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769156020; cv=none; b=HfBOmLdBoD9bvitE/ujvq9QMPpbawhHiKvxBqlKBvcz2qJzVwSxSxtJeB7SSROucW8qEyukoLn+jP1LYJJOiXtZUfd7YPLqOXzSxpukTgx99UmDT+6JaNTwp+a7nyoZ8FikRAZK7aAcho+WffLItp3xfAIzEyRF82PXjumMFcG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769156020; c=relaxed/simple;
	bh=gMn568edZylNTzFphC8lCSQTp4D4xyz2cU03rK9XmNo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KkFeIiGmBNGOFXk+AwhJhaIzlHAxz8hSmueDe7CP4EEg4nJGSlBhkiEmdyRiwtN7Oo837Hy8hUPnjofBdX1qipJt2xbyXT1psEhuqKkaxnPzmWowXWX07yFsyxvCxi0NWylJXzjp4kysPHYipjWcLGd9nxhd3VEjSk0ksU9fPaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eMkqUcR8; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=Vl5Ov54i; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769156014;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nA8sXD0FqzkneEAx9yV9Y9lTP0hUm1k+5svU6+Gfnes=;
	b=eMkqUcR8fC9598GLrJS/i0Xt7F2aGFkjtAS/v91DkPQbuUgKDwWhBf+TbscavrtoUewBiz
	FKAMW1x1RmmboHp0uWOf6g7bB7axcNXJYE22ux7BGe5obqxVUJLyDRlct+CTHdkaUgftVX
	sarQnU+b3obXrWLvXN2xMH+yHuUBnXA=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-364-2X5U8JM7Mqejyg0tuOiA7w-1; Fri, 23 Jan 2026 03:13:32 -0500
X-MC-Unique: 2X5U8JM7Mqejyg0tuOiA7w-1
X-Mimecast-MFC-AGG-ID: 2X5U8JM7Mqejyg0tuOiA7w_1769156011
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-82323cc7594so12020b3a.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 00:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769156011; x=1769760811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nA8sXD0FqzkneEAx9yV9Y9lTP0hUm1k+5svU6+Gfnes=;
        b=Vl5Ov54i1r5wHyMB1zGAA80WxnxPPkQoaTQmCFj/SNIChe0DaIYBElHnUHd1wybJNd
         sUyluNtRDfpifNnuiDnEJv5biGxqNphvKSw70xPCh2Na8hFBJjlySNfSgNrxFgc2CsoT
         JEUqRDbd8UbJ6l5KAnCxYRqYSVv7H6LaCvD1KXDtHo4Ifxp5OkMKMrg7gjw4+is09jy2
         k93apnyqvjq2H59R9oOUDuuwbPTSEnA3UF7kMJPr55hNq+c/1BpynoBKPKtEQ7wq9soY
         pAkeqNyVcKB3wLioKpmfl7wVAUEyjMubzRmPqhyn+m8x2P7m+0im+88bNtECJXSzqV/b
         LS9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769156011; x=1769760811;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nA8sXD0FqzkneEAx9yV9Y9lTP0hUm1k+5svU6+Gfnes=;
        b=TDRFAE2dSylkqNWQeX12r4/O5GgNtIEEiruKHJx/Z1ZpBileC9bJ8HWFCfV72lGHpm
         OSMYxoyA2Udul5u9qqfkUuyK0MnG36Gn6pxAc8jWx7d85F9Cu1jaoivV/04caKyM8zjc
         5AJIE2wBHSgHZhzvE514dik/BUnUR4ut5oyeWEAFjdhbQ9ZZgxHUkwrsLI/JFktGRNMP
         CIHtWa+wCZIS/D/pcHtEDQ8mpmtlM13lkfxrqRL1FsCXudnFBGTpo30P2cFPcPNVDHs5
         T1SVdZX0wRoSquJMNSUoedxmq3c0JRlpGaD8s2RrMupZ/AsrxVRseMsWJzyJ69cc+KIv
         j4jg==
X-Forwarded-Encrypted: i=1; AJvYcCXPxfhJ4kUZwsQlQs14UJnjWC+StZ4qXrVbBp4KC3bNeXYAjiOEFWNEzv3LpArwGHzMwEG5Njl2HJKR@vger.kernel.org
X-Gm-Message-State: AOJu0YwAuJ7V8EOc44apW8NlwrKYxJqMWz7xrdLlQEvOkec+QMPFihTX
	8Lgeh1QZbVW2cDIp3UounWlc9kF8DWxMQcf9fkx9skft1hbPjXnSCFbF/FbdZu2Khgka6iOG+Oh
	hmE69Ma38q4ilPQjbvSQVmfpOIgFBnFqLo7p1yrD0T4N2LodQGdSQjQttwkCt3ns=
X-Gm-Gg: AZuq6aK+73fc6JIH64fO1lXx4Lcp0IAnF073cD9H5IS0oOmZiHDq8m2hRZyQX3SOV03
	uOicnUNx6OJOYDVJJfnCHpi4J4e0DzXLa50h9aPh4pVbbj1boAjaixhnuIYxXk0gZpNwBbG2nfc
	bcSyJMdFCQ1bDMqQymPouAGMuuiV9FDdWxAoqmK7Jerr2CIIhIH9+0UDEICSexFdrbwB89u/638
	ssYP3LAfkq5KM4KyVpFBCKkCF7dcB2NllT5d6JX9eeKDa/0TYiMJT9tY5XiAEen0irqPjzfnCmy
	CQOccZciKZsi6MtQ99NlXo4iLIMZ5GXru62tabd1Z7UFBbw5zRqqAgpkKgb4oLncsmQVWAaRfbX
	g
X-Received: by 2002:a05:6a00:1885:b0:81f:46ba:1817 with SMTP id d2e1a72fcca58-8232178898amr325076b3a.66.1769156010905;
        Fri, 23 Jan 2026 00:13:30 -0800 (PST)
X-Received: by 2002:a05:6a00:1885:b0:81f:46ba:1817 with SMTP id d2e1a72fcca58-8232178898amr325043b3a.66.1769156010374;
        Fri, 23 Jan 2026 00:13:30 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231876f736sm1443202b3a.64.2026.01.23.00.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 00:13:29 -0800 (PST)
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
	Rob Herring <robh@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org (open list),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE)
Subject: [PATCH v3] arm64/kdump: pass dm-crypt keys to kdump kernel
Date: Fri, 23 Jan 2026 16:13:25 +0800
Message-ID: <20260123081326.1362666-1-coxu@redhat.com>
X-Mailer: git-send-email 2.52.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[clever-cloud.com,redhat.com,gmail.com,linux-foundation.org,kernel.org,arm.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258774-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,clever-cloud.com:email,linux-foundation.org:email]
X-Rspamd-Queue-Id: 3054A72475
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

To also enable this feature for ARM64, we only need to add device tree
property dmcryptkeys [2] as similar to elfcorehdr to pass the memory
address of the stored info of dm-crypt keys to the kdump kernel. Since
this property is only needed by the kdump kenrel, it won't be exposed to
user space.

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
Signed-off-by: Coiby Xu <coxu@redhat.com>
---
v3
- Delete the property after reading it [Rob Herring]

v2
- Krzysztof
  - Use imperative mood for commit message
  - Add dt-schema ABI Documentation 
    https://github.com/devicetree-org/dt-schema/pull/181
- Don't print dm-crypt keys address via pr_debug


 arch/arm64/kernel/machine_kexec_file.c |  9 +++++++++
 drivers/of/fdt.c                       | 21 +++++++++++++++++++++
 drivers/of/kexec.c                     | 19 +++++++++++++++++++
 3 files changed, 49 insertions(+)

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

base-commit: c072629f05d7bca1148ab17690d7922a31423984
-- 
2.52.0


