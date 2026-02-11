Return-Path: <devicetree+bounces-264655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AWXI748jGlyjwAAu9opvQ
	(envelope-from <devicetree+bounces-264655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:24:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E67C6122324
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:24:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A4BE93004D30
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 411C934FF4E;
	Wed, 11 Feb 2026 08:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SFeLYj2q";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="fETtLLMz"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AF53502AC
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 08:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770798259; cv=none; b=ro3CR399uZ0WJFJLG7JIQ9DINR6Dxr+epCSasZasWOt16dsnGgmsbbHz23+FKoC8lXFs/nFrZl/295a3W2p5IacZtrL1xdXYS53/Hnrs3nitSj66iUBh+mxLvnvXTOaP6wWVK1dsvxG7reXSiFZH+ox3HNxFllXr2XtSz+p4vck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770798259; c=relaxed/simple;
	bh=p13gBMfYwbtaa42aRYCjV9Px5+T/n7+gLjjpALPwLos=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ep4ANiGDgXZU+J0SrSEh5p8aMCCWSfm+RCv+waF36g3oJhhuCZ8lSOOKjW3stwZZGkMoyztRxAtn0MNSXUrcDvOM1SQv5hy+qotJ0A9EgwGvEQQrAU/IisU1MNYdGgrupwxKkOimt9D4NZwsjxNPPUKe+oyzkY5zF8tEuPRoVrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SFeLYj2q; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=fETtLLMz; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770798256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Jg6rUiFx+q06U0spbnVO76byiw3N0jzh2FjIOHbS9H8=;
	b=SFeLYj2qdYM1+KjQdJGH3b0f2g+B68IrrS31hV2eWLPRRdIKq2Y+Fm/CJqxhNYQy0w/Vhw
	sLvuHz7au6xeZv9YBkbs653w6HhqmUrQAJDV2nQ73uEho8HOLkOCechxhSSabrAhVoRnAb
	VG/VCg9cZW3jX5MDMa/sPpG7kucCBcM=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-634-PoBVP46UPDOEeqEmQafD1Q-1; Wed, 11 Feb 2026 03:24:15 -0500
X-MC-Unique: PoBVP46UPDOEeqEmQafD1Q-1
X-Mimecast-MFC-AGG-ID: PoBVP46UPDOEeqEmQafD1Q_1770798255
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8243a081fd2so2924980b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770798255; x=1771403055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jg6rUiFx+q06U0spbnVO76byiw3N0jzh2FjIOHbS9H8=;
        b=fETtLLMzJORHlUnnAIv+APIV1BxOK2lLVZpAxuCsEWbsatTlgY7PSdxfNviumTHWo0
         SbRlKsnSt6uCP9QbCTolBjd91H6Yl+WBYAueSBCRzLff6Gi4Yqr8vL/nC3sS6DtqHE91
         frBWxtjnRwvyeO15iRu0XVzHTTr7Uzn6V5RefWQoBcriESqJ508mrnys413ZC6GXNIyn
         WlsNNWhvg6H/bxRfTaN1EQYhYl1lb4ZHKxC0oxj1c72LZVkD9Mgt6T5JaCtChy++29lk
         75/quc5ZPLqPDpc5uQ1Eqq+y05Gf75iqVdgOLt7JO0c+RqeKQedtkCTwfvU/WkU9B2gI
         AbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770798255; x=1771403055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Jg6rUiFx+q06U0spbnVO76byiw3N0jzh2FjIOHbS9H8=;
        b=L3dJtzly7OPowm04e+OM3EaCj2Xi8WC+tn4jIf0nnk3yjpJeCs2qS5a5nyp53l0K/X
         gfaQnkhy6W/wJFJDlvHMrlBQQx+jZTdCiRF9DDQaTitkyO9PhsWrFQtFSepquf5y35Qt
         V1g6C5qsM5TmXxKZdmzdjepjKI2xFuj3CDS/nvXpSyPOCzeJLJ/QrIRcdp36UobPfyV7
         7b3mTAjJGnY+Q0bIdC4kg42nL6GYCGcfV31NLRcQzogH4VDn1G8ipiMYpgHYwitDXYV+
         H3+FR0Jx9H3OzsQRfXOtynXuFlhDHypOJckyFRNO9YG8L6Ke/vBI3zjCEr07gMyCAYmf
         UnVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKXnGGX+MmeCjdV6iOlBR1ZIaHzN8H9qHNMEuxj2x2N6Cb0UjuDBaVXY8Xqd1eiIwut7Pw+DR4mhSf@vger.kernel.org
X-Gm-Message-State: AOJu0YwD2NPcm8OAxRZqIxhw0YbOA83itg3U2llkpPjoW4qmT1Acn8xX
	WGcqE9lxeNMJL28ev9pGyqZJFRc4jMtFsmvCg1qSyM0OKtXcwHPQWLTkVR3ddzckn9J36ZSwmEc
	6Dgd1XRM5oBrnHRWdx5e30bccTy0VaNMLIBHDE9uEtw48W1CaqwKzEHbhf1JTQWM=
X-Gm-Gg: AZuq6aIVT6Y7LRdbYngZP958fp/Kk8SAXDmb12zalETmu3xvIYr1COztnNlT+lrIgeD
	9D5QWa5J5rK6Iks7SbhWyJCZ0mwlYqpWhdBTV023D0c7GPLzVhR7M40Hjz2QcHzru+6r8Z4bZmM
	PeK3vM7kOxySgkKquVD/YNNwvxpmr8U+L+6GKPHXsD47Kr0fZRmiTp5BVlSoW1R1TEjjy8gea6r
	h0Dig5aPTDFlNiz14oh1MmRAEhH6c63jSNHYjMpn+kO4dX0+86HdSqX9Yud4N8+JffgZSKXhLz+
	yZphPLwq+6VrjOV4xtU6OvnHOZAAcHuRqZcXaNQiLj6KjW8Lmx2zYMygABt1bsXC8jeQbKlLsub
	0Kix6F9O6YRKX
X-Received: by 2002:a05:6a00:4211:b0:81f:c6d1:d167 with SMTP id d2e1a72fcca58-8249fdf39edmr1252045b3a.61.1770798254460;
        Wed, 11 Feb 2026 00:24:14 -0800 (PST)
X-Received: by 2002:a05:6a00:4211:b0:81f:c6d1:d167 with SMTP id d2e1a72fcca58-8249fdf39edmr1252015b3a.61.1770798253951;
        Wed, 11 Feb 2026 00:24:13 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e7d7136sm1228850b3a.42.2026.02.11.00.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 00:24:13 -0800 (PST)
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
	Catalin Marinas <catalin.marinas@arm.com>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v4 2/2] arm64,ppc64le/kdump: pass dm-crypt keys to kdump kernel
Date: Wed, 11 Feb 2026 16:24:00 +0800
Message-ID: <20260211082401.2407853-3-coxu@redhat.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260211082401.2407853-1-coxu@redhat.com>
References: <20260211082401.2407853-1-coxu@redhat.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264655-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[clever-cloud.com,redhat.com,gmail.com,linux-foundation.org,kernel.org,de.ibm.com,linux.ibm.com,arm.com,ellerman.id.au,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,clever-cloud.com:email]
X-Rspamd-Queue-Id: E67C6122324
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

To also enable this feature for ARM64 and PowerPC, we only need to add
a device tree property dmcryptkeys [2] as similar to elfcorehdr to pass
the memory address of the stored info of dm-crypt keys to the kdump
kernel. Since this property is only needed by the kdump kernel, it won't
be exposed to user space.

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
Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 arch/arm64/kernel/machine_kexec_file.c |  4 ++++
 arch/powerpc/kexec/elf_64.c            |  4 ++++
 drivers/of/fdt.c                       | 21 +++++++++++++++++++++
 drivers/of/kexec.c                     | 19 +++++++++++++++++++
 4 files changed, 48 insertions(+)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index 410060ebd86d..b6798bb2bb82 100644
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
-- 
2.53.0


