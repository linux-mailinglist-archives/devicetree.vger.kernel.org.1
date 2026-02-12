Return-Path: <devicetree+bounces-264887-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kN4jHXE1jWl70AAAu9opvQ
	(envelope-from <devicetree+bounces-264887-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:05:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFB8129194
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 86784300A7E5
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D0F619CC0C;
	Thu, 12 Feb 2026 02:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ULDh7QcQ";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="ECHYWw9p"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298EB43ABC
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770861931; cv=none; b=Srx427nR5YqxiGGukBIXRos356Og5xwj6r6W0d4Ow/RYX6oaBMBI+zpYHP3Z5A1lAm8ZX0nrEMVIC7wdVaYWmvpxmm+QfkrKD6f5uC3R0184g4dzNE9oPWChdKv902/1G6bxOJpSosAoAfDE0rOxkpFYsW8GVeEOctRjlbqc/RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770861931; c=relaxed/simple;
	bh=WOyzWWXK6xsPjUEPf3AnRP+f4QppHKpUNZstQPWUwTA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s1VA11fyUmQ38ubeaPqhQLPycTkdVKEedO3NEOrnlgBwsUtwksp+6WeObmVhksIx0IGjMQ9njYBNFgiR9CMpsd8x0TMOls/OV76R7xh0r6X5e7VZnOAUJCsCYVMiCxQyAyxwd0F1NdoJ0GV2Pvumm7m4mKmuavcPKVU62QFDiKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ULDh7QcQ; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=ECHYWw9p; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770861928;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PizJXKd85zXyZ9iQQX+Ej3hfH7kGalbAW0kYbFZfhf4=;
	b=ULDh7QcQOGgvZj2wTFEoOjuxG4CSW61nO1C0xeArzSl5Q8k/eAwJOhFcOlv0KuUwdSUn0D
	kdy083qKTD66V88t0Et4GMkxCkB9ukBB1aoR3l0SwJjds3a2gi1vO9mcvGGckNRsF8StIM
	cA6s4WMAxT67AtNYsjwxkzY/MMOG/fA=
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-498-i-mXF3KQNPeEE5fGZcIIEA-1; Wed, 11 Feb 2026 21:05:26 -0500
X-MC-Unique: i-mXF3KQNPeEE5fGZcIIEA-1
X-Mimecast-MFC-AGG-ID: i-mXF3KQNPeEE5fGZcIIEA_1770861926
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aad5fc5b2fso26713165ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 18:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770861925; x=1771466725; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PizJXKd85zXyZ9iQQX+Ej3hfH7kGalbAW0kYbFZfhf4=;
        b=ECHYWw9pUEsaJiMNPyjXN/Gc5BfgnJyClfsWQQsvDkfGtG+h3UWzwvDJm3qHorbZu8
         T3Ag0tksh+0zkiETRTk2uk87QhPojXFgP2UStj8+yT6vPQ3h9jQV55frKRWCLleGb9Kl
         tZdRv/nvUolQ/Ir5aAQ5zqUX0WIxZtf5CzvktmrMi9KpfZLMdGMcVrQOnF8mw3CKPR7L
         2UodfHtszwfXPA8vHQ+k0NlwtRf2ZCTLWGviXxDIeQfxbom9UkumQ9o5P1SaTbHTsd0Z
         uv63dpJBpBdhT75CRVivPfMKJ0sHmKeisWfxfrOgyVRWqssryH5lazMP2A4u9WMQsREq
         1NCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770861925; x=1771466725;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PizJXKd85zXyZ9iQQX+Ej3hfH7kGalbAW0kYbFZfhf4=;
        b=w5c8awedx4AVMOqTOWq/FCQzNUIE5GoE0zpLgFTpgNVFOVWBLMoPYL57VqyyddIXSY
         IGPwiNZaUTYHLj/ZXeX3/ZR+m+jFdZAsR+Lr6gt+cUsVm2GEZXPc4oEZgZD1uod9Mu/x
         +MulBFVspiO6srXCsk6jVjXcGExdXpzXH57fuolMspRaAxjzNZk0nt9+dlBr0RkuhsM5
         5NJeFFXNaFi8ght6XGrbj4B4NP+Kd/m7FTcfcyUNYHzqMdMZJbW4PEjPYScAO7WPEkpq
         LWlws6Z0wyRBEJ+2lca/4cyWUy8FolYcH9rizP0IIz+akrLSOPTbiDyrrLUMg7N8vW42
         fS1g==
X-Forwarded-Encrypted: i=1; AJvYcCWMOJcTaloykb8ZDx5mnm4EiiBUdcoNJklRicJmnKDxEtF2S/YgmMRKJ07rznbdmjNU28GNUbRr06H/@vger.kernel.org
X-Gm-Message-State: AOJu0YyUqem5ACh57QxYvtkz8k3gjkr24WRpR3jWvDn8kJxX1T2pwIc3
	f81UPsawBIOvH7A7daCsaFPRflz50zFxPQMzY7co9GqIpG4hCp4UqM+ez/SCJXf3LwFX3CZBUSG
	soiB89c68Pi2ta7zmmdxf7D+AcGVIcPvqbEgx6p1tjHhVJUe0HM9akk9CDUVrWCo=
X-Gm-Gg: AZuq6aJl+K/YWtv1nWxOmVt5DQLzfrd3VWOpEP/fUcKf7CRCApSs4G917drbZcF11xH
	TZepxY7mVqCKMVHNPvht5p81FcAKWqA1RQ/wP80SBelpw8lc515/YdED4CEYQNEAS2IMpspq/e+
	gIhWbuO6IAzCA9vhFCQhvH9dCK8JFUsu+g70Gub6e2Tq46oFzIEqvrZAjdWOvHi+PlVXWTBx+h+
	C6gNGhQpPhkIqQszWOCmbsaKW4/kn53ruLW/7vQmmV/b97SQ3xH7FxfTW76kQ82CnhHsCF5qATl
	OSFjy9gN4YRkBlJyL3W7rYtyn+YfAz6m8CbbGVSD24tml5ZP+F9VYqXfOOhP11RYhLp6pQ7Erk5
	YY65Oznp5yA9V
X-Received: by 2002:a17:903:1663:b0:2a0:de4f:c99 with SMTP id d9443c01a7336-2ab3b1583c5mr6716765ad.9.1770861925455;
        Wed, 11 Feb 2026 18:05:25 -0800 (PST)
X-Received: by 2002:a17:903:1663:b0:2a0:de4f:c99 with SMTP id d9443c01a7336-2ab3b1583c5mr6716465ad.9.1770861924935;
        Wed, 11 Feb 2026 18:05:24 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2984c07bsm34405605ad.7.2026.02.11.18.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 18:05:24 -0800 (PST)
Date: Thu, 12 Feb 2026 10:01:58 +0800
From: Coiby Xu <coxu@redhat.com>
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Rob Herring <robh@kernel.org>, Thomas Staudt <tstaudt@de.ibm.com>, 
	Sourabh Jain <sourabhjain@linux.ibm.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Madhavan Srinivasan <maddy@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	Saravana Kannan <saravanak@kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 2/2] arm64,ppc64le/kdump: pass dm-crypt keys to kdump
 kernel
Message-ID: <aY0uGN67vdEP2b_F@Rk>
References: <20260211082401.2407853-1-coxu@redhat.com>
 <20260211082401.2407853-3-coxu@redhat.com>
 <423a3431-1271-4c35-94fe-8ca880679ed9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <423a3431-1271-4c35-94fe-8ca880679ed9@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264887-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,lists.ozlabs.org,vger.kernel.org,clever-cloud.com,redhat.com,gmail.com,linux-foundation.org,kernel.org,de.ibm.com,linux.ibm.com,arm.com,ellerman.id.au];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DDFB8129194
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 10:55:17AM +0100, Christophe Leroy (CS GROUP) wrote:
>
>
>Le 11/02/2026 à 09:24, Coiby Xu a écrit :
>>CONFIG_CRASH_DM_CRYPT has been introduced to support LUKS-encrypted
>>device dump target by addressing two challenges [1],
>>  - Kdump kernel may not be able to decrypt the LUKS partition. For some
>>    machines, a system administrator may not have a chance to enter the
>>    password to decrypt the device in kdump initramfs after the 1st kernel
>>    crashes
>>
>>  - LUKS2 by default use the memory-hard Argon2 key derivation function
>>    which is quite memory-consuming compared to the limited memory reserved
>>    for kdump.
>>
>>To also enable this feature for ARM64 and PowerPC, we only need to add
>
>What do you want to say exactly with 'only' ?

Hi Christophe,

Thanks for raising the question! To clarify, CONFIG_CRASH_DM_CRYPT
provides the framework to address these challenges for LUKS-encrypted
dump target. Since the heavy lifting is handled in the arch-independent
code, we only need to...

If it looks good to you, I'll rephrase it as "To also enable this
feature for ARM64 and PowerPC, the missing piece is to let the kdump
kernel know where to find the dm-crypt keys which are randomly stored in
memory reserved for kdump. I'll introduce a new device tree property
dmcryptkeys ...".

>
>>a device tree property dmcryptkeys [2] as similar to elfcorehdr to pass
>>the memory address of the stored info of dm-crypt keys to the kdump
>>kernel. Since this property is only needed by the kdump kernel, it won't
>>be exposed to user space.
>>
>>[1] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fall%2F20250502011246.99238-1-coxu%40redhat.com%2F&data=05%7C02%7Cchristophe.leroy%40csgroup.eu%7C0aa5f3b34d694b23b0cc08de6946f66c%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639063950684962054%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=8uCc%2Bg6YNojymf8UpZhmJY19vpWXJCC9KIf3qMyQ3dI%3D&reserved=0
>>[2] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fdevicetree-org%2Fdt-schema%2Fpull%2F181&data=05%7C02%7Cchristophe.leroy%40csgroup.eu%7C0aa5f3b34d694b23b0cc08de6946f66c%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639063950684987003%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=1s5NPHgF1LsXdrDXBhawduFXOqnHPlkbohQHHvolLw4%3D&reserved=0
>>
>>Cc: Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>
>>Cc: Baoquan he <bhe@redhat.com>
>>Cc: Dave Young <dyoung@redhat.com>
>>Cc: Kairui Song <ryncsn@gmail.com>
>>Cc: Pingfan Liu <kernelfans@gmail.com>
>>Cc: Andrew Morton <akpm@linux-foundation.org>
>>Cc: Krzysztof Kozlowski <krzk@kernel.org>
>>Cc: Rob Herring <robh@kernel.org>
>>Cc: Thomas Staudt <tstaudt@de.ibm.com>
>>Cc: Sourabh Jain <sourabhjain@linux.ibm.com>
>>Cc: Will Deacon <will@kernel.org>
>>Signed-off-by: Coiby Xu <coxu@redhat.com>
>>---
>>  arch/arm64/kernel/machine_kexec_file.c |  4 ++++
>>  arch/powerpc/kexec/elf_64.c            |  4 ++++
>>  drivers/of/fdt.c                       | 21 +++++++++++++++++++++
>>  drivers/of/kexec.c                     | 19 +++++++++++++++++++
>>  4 files changed, 48 insertions(+)
>>
>>diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
>>index 331646d667b9..2967e4aff807 100644
>>--- a/drivers/of/fdt.c
>>+++ b/drivers/of/fdt.c
>>@@ -866,6 +866,26 @@ static void __init early_init_dt_check_for_elfcorehdr(unsigned long node)
>>  		 elfcorehdr_addr, elfcorehdr_size);
>>  }
>>+static void __init early_init_dt_check_for_dmcryptkeys(unsigned long node)
>>+{
>>+	const char *prop_name = "linux,dmcryptkeys";
>>+	const __be32 *prop;
>>+
>>+	if (!IS_ENABLED(CONFIG_CRASH_DM_CRYPT))
>>+		return;
>>+
>>+	pr_debug("Looking for dmcryptkeys property... ");
>>+
>>+	prop = of_get_flat_dt_prop(node, prop_name, NULL);
>>+	if (!prop)
>>+		return;
>>+
>>+	dm_crypt_keys_addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
>>+
>>+	/* Property only accessible to crash dump kernel */
>>+	fdt_delprop(initial_boot_params, node, prop_name);
>
>Shouldn't this property be deleted regardless of whether kernel is 
>built with CONFIG_CRASH_DM_CRYPT or without ?

This property will be created only if 1) CONFIG_CRASH_DM_CRYPT is
enabled and 2) the dump target is LUKS-encrypted. So there is no need to
delete it if it doesn't exist at all.

>
>>+}
>>+
>>  static unsigned long chosen_node_offset = -FDT_ERR_NOTFOUND;
>>  /*
>>@@ -1097,6 +1117,7 @@ int __init early_init_dt_scan_chosen(char *cmdline)
>>  	early_init_dt_check_for_initrd(node);
>>  	early_init_dt_check_for_elfcorehdr(node);
>>+	early_init_dt_check_for_dmcryptkeys(node);
>>  	rng_seed = of_get_flat_dt_prop(node, "rng-seed", &l);
>>  	if (rng_seed && l > 0) {
>

-- 
Best regards,
Coiby


