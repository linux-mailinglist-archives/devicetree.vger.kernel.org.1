Return-Path: <devicetree+bounces-309029-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q7FuGmAQKGpv9QIAu9opvQ
	(envelope-from <devicetree+bounces-309029-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:08:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E1D660668
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:08:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bytedance.com header.s=google header.b=bJdaVndO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309029-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309029-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=bytedance.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85385308AD62
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 13:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FF7D41C2E1;
	Tue,  9 Jun 2026 13:01:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE2141B366
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 13:01:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781010086; cv=none; b=ZqXiJA05xqNQpWdFny+OK3BbGzpPJijg+5Gb4RVU0iw3TFxD2OkFmGHsyMYrrnn3uAvYLxk0paSbFIAoPQJAejEmkXunMl5JgpCChEY3VDHK/tfmXo8JEB2q3TuAzn7yaczlwUdVJz2MvaE32uJIOrpiWVhCTM9JAVnFZaynJp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781010086; c=relaxed/simple;
	bh=1vCQJFvZoB+VZjjJaOecQAercYj6TXXemYyB6MDFWSI=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DvtLQuGwYtEq70ZkA9RMVNxta+sfldRnZEFOLTR1voQUM52JoXfpy4RYXZgTXu79bJuq9uLDBDwPXcXmqmH3RPFrb6bXM4EXqaheenkhfhLLa+5WTtVjWoEfT0Uqh2uxFdk80zsAMckDntzF4Drl3Bu/m3w7VOQBC5+B4euawWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=bJdaVndO; arc=none smtp.client-ip=209.85.216.45
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-372b4330deeso1748468a91.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 06:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1781010084; x=1781614884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=86XkT1cxgaey4AFcMQTikCmsyViA+jzXCGN6oaKJu6o=;
        b=bJdaVndOnDuEY/Sr1CPUgZh8PM5ZiRVu0a5D7jPlsgdqt0n5CbfdAwK8Lf2lF/Cg42
         /G7wSyNZSjmBun+x4/VOb7pUu5sBX16VoeGRhQOq5AAJdxTfsa0rp2MOKe+W/VkDpdKR
         Ij8x1humOOo7gOjlAACanBHS+dwlpeLi1vBmD5u/zzoj/moGlMx1f5oJw5nqRnccCFR8
         mGY2KkOJSISih9hbydFGqw8kU48nZ773nTqiFAyCNalGJKSJfEUp5ISDlnZLp2+gI7Y7
         crg4rE2eQk9qaxQlIZr1IW93WODuNNJMp1fIK1WPoD0rJSkN94137OOEGnqSiDWoKk7C
         AShw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781010084; x=1781614884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=86XkT1cxgaey4AFcMQTikCmsyViA+jzXCGN6oaKJu6o=;
        b=q8RfPsMe20oZFyCJB6DIZyJKq6419J6mG3o3ibuBefr4VcJ8koENucX0y7FXxJtSiG
         BVGQiUexNwuLL33uosR3SPCkiKLEMC3ZsFsGoeg0w/rL21YgHxfdS0axsUXwsB7qbJ5K
         UcE0cO8Bym4wJlV0VCPb1zeOfPB9S/lOwETywMgOsx2Dca/R2bIRHWeV3qG7HIEY4t1j
         X2Zb7KtaLlwq09pLbd0JJ//wylEfCeoAYF6s00tgiK4J7i9qiCXT3sHBau7P7lZpDmYn
         YvpBFt4HxWDUjAaDYX66nIKuzHH17yY5Oh5WAh7WXwGmtzPpck/WH7I8pIl0h17BSUik
         gIag==
X-Forwarded-Encrypted: i=1; AFNElJ/IMi8QX96Afw2xbElqdWs4qVm7ioE2+zvw7ZfeZxki/nbAl6crjnD5nCbTT8N0nD1eAxhGZcQXgZsb@vger.kernel.org
X-Gm-Message-State: AOJu0YwTDJrVvKwGT4l7BEHv41yAsLKDlkJHE2v8h9pbMi7bBK7+AG48
	L2azLT2dC2PL7cDm8jlThkDrW0M9PAUERPeCUnk9j38Ojpi2T+ggN+S/gdKKGaIEWJI=
X-Gm-Gg: Acq92OHI2YByaVs7sadPPc5BslTXmUrmmp7pkkPK1mnu6lnoiBd29WS402EbauFvVc1
	KlQYwVpLsZsHcoAwGFix8vitcX1cl5HbAjNrkFluOEKTm3MEVQShj8ndE/0FHy6kZ/1I2o2ibcv
	Kt8wUJlGjPTejOBsrdmIdLnnB4nN37923zQ83tMuPFAZ4Isd1mO3OYkHgybyxg06t/RDM6D4Tcb
	b49VZk3lHfN1wbwaXdJrpbzeJ0pY2f9zor4uZgsdCuQIGZUGUnvT23PsuXAhCnbkEjIJpqn0MTV
	Ftatl3U/ReDbjEV4Z8qT4TSs6+yyo9I7+508iT1Ivqk7JkCe29Iy8SRttKeoMgORKRDjh8s4/gP
	OqV2ZcItdfiblGMHkWob1ZM+WvMAzgj+WwSH8z94Y+QrV2HdJhpOLN7KhIR/rOV7lE4uQI9cd7v
	+ZsyFvh49/SHDh3FJFxOpDOSHFjaVqvGF6AeHex3ag7DsvTVtq/A8rP5TMVfgLHBqjiUg=
X-Received: by 2002:a17:90b:4cc9:b0:36d:8e49:d8 with SMTP id 98e67ed59e1d1-370f04818e9mr22100060a91.15.1781010083655;
        Tue, 09 Jun 2026 06:01:23 -0700 (PDT)
Received: from L6YN4KR4K9.bytedance.net ([139.177.225.240])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6bf8284dsm23267889a91.4.2026.06.09.06.01.13
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 09 Jun 2026 06:01:23 -0700 (PDT)
From: Yunhui Cui <cuiyunhui@bytedance.com>
To: akpm@linux-foundation.org,
	alex@ghiti.fr,
	andrew+kernel@donnellan.id.au,
	aou@eecs.berkeley.edu,
	apatel@ventanamicro.com,
	apopple@nvidia.com,
	atishp@rivosinc.com,
	baolin.wang@linux.alibaba.com,
	cleger@rivosinc.com,
	conor+dt@kernel.org,
	cuiyunhui@bytedance.com,
	debug@rivosinc.com,
	devicetree@vger.kernel.org,
	guodong@riscstar.com,
	hui.wang@canonical.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	liu.xuemei1@zte.com.cn,
	namcao@linutronix.de,
	nick.hu@sifive.com,
	palmer@dabbelt.com,
	pincheng.plct@isrc.iscas.ac.cn,
	pjw@kernel.org,
	qingwei.hu@bytedance.com,
	ritesh.list@gmail.com,
	rmclure@linux.ibm.com,
	robh@kernel.org,
	wangruikang@iscas.ac.cn,
	zhangchunyan@iscas.ac.cn,
	zong.li@sifive.com
Subject: [PATCH v3 2/3] riscv: track effective hardware PTE A/D updating
Date: Tue,  9 Jun 2026 21:00:19 +0800
Message-Id: <20260609130021.99899-3-cuiyunhui@bytedance.com>
X-Mailer: git-send-email 2.39.2 (Apple Git-143)
In-Reply-To: <20260609130021.99899-1-cuiyunhui@bytedance.com>
References: <20260609130021.99899-1-cuiyunhui@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bytedance.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-309029-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:akpm@linux-foundation.org,m:alex@ghiti.fr,m:andrew+kernel@donnellan.id.au,m:aou@eecs.berkeley.edu,m:apatel@ventanamicro.com,m:apopple@nvidia.com,m:atishp@rivosinc.com,m:baolin.wang@linux.alibaba.com,m:cleger@rivosinc.com,m:conor+dt@kernel.org,m:cuiyunhui@bytedance.com,m:debug@rivosinc.com,m:devicetree@vger.kernel.org,m:guodong@riscstar.com,m:hui.wang@canonical.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:liu.xuemei1@zte.com.cn,m:namcao@linutronix.de,m:nick.hu@sifive.com,m:palmer@dabbelt.com,m:pincheng.plct@isrc.iscas.ac.cn,m:pjw@kernel.org,m:qingwei.hu@bytedance.com,m:ritesh.list@gmail.com,m:rmclure@linux.ibm.com,m:robh@kernel.org,m:wangruikang@iscas.ac.cn,m:zhangchunyan@iscas.ac.cn,m:zong.li@sifive.com,m:andrew@donnellan.id.au,m:conor@kernel.org,m:krzk@kernel.org,m:riteshlist@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux-foundation.org,ghiti.fr,donnellan.id.au,eecs.berkeley.edu,ventanamicro.com,nvidia.com,rivosinc.com,linux.alibaba.com,kernel.org,bytedance.com,vger.kernel.org,riscstar.com,canonical.com,lists.infradead.org,zte.com.cn,linutronix.de,sifive.com,dabbelt.com,isrc.iscas.ac.cn,gmail.com,linux.ibm.com,iscas.ac.cn];
	DKIM_TRACE(0.00)[bytedance.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[31];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,kernel,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bytedance.com:dkim,bytedance.com:email,bytedance.com:mid,bytedance.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60E1D660668

Track whether hardware PTE A/D updating is effectively active separately
from Svadu discovery. Enable FWFT on all online harts before advertising
hardware A/D updating globally, and require secondary harts to enable it
before they are marked online.

Signed-off-by: Yunhui Cui <cuiyunhui@bytedance.com>
Reviewed-by: Qingwei Hu <qingwei.hu@bytedance.com>
---
 arch/riscv/include/asm/cpufeature.h |  8 +++
 arch/riscv/kernel/cpufeature.c      | 89 +++++++++++++++++++++++++++--
 arch/riscv/kernel/smpboot.c         |  4 ++
 3 files changed, 95 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index 739fcc84bf7b2..ba3d74f6006a6 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -128,6 +128,14 @@ struct riscv_isa_ext_data {
 extern const struct riscv_isa_ext_data riscv_isa_ext[];
 extern const size_t riscv_isa_ext_count;
 extern bool riscv_isa_fallback;
+DECLARE_STATIC_KEY_FALSE(riscv_hw_pte_ad_updating);
+
+static __always_inline bool riscv_has_hw_pte_ad_updating(void)
+{
+	return static_branch_unlikely(&riscv_hw_pte_ad_updating);
+}
+
+int riscv_enable_hw_pte_ad_updating(void);
 
 unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
 static __always_inline bool riscv_cpu_has_extension_likely(int cpu, const unsigned long ext)
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index f46aa5602d74d..f144797fa2dc8 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -15,6 +15,7 @@
 #include <linux/memory.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/smp.h>
 #include <asm/acpi.h>
 #include <asm/alternative.h>
 #include <asm/bugs.h>
@@ -35,6 +36,9 @@
 static bool any_cpu_has_zicboz;
 static bool any_cpu_has_zicbop;
 static bool any_cpu_has_zicbom;
+DEFINE_STATIC_KEY_FALSE(riscv_hw_pte_ad_updating);
+EXPORT_SYMBOL_GPL(riscv_hw_pte_ad_updating);
+static bool riscv_hw_pte_ad_updating_requires_fwft __read_mostly;
 
 unsigned long elf_hwcap __read_mostly;
 
@@ -287,15 +291,88 @@ static int riscv_ext_zvfbfwma_validate(const struct riscv_isa_ext_data *data,
 	return -EPROBE_DEFER;
 }
 
-static int riscv_ext_svadu_validate(const struct riscv_isa_ext_data *data,
-				    const unsigned long *isa_bitmap)
+static void riscv_set_hw_pte_ad_updating(void)
+{
+	static_branch_enable(&riscv_hw_pte_ad_updating);
+}
+
+static int riscv_enable_local_hw_pte_ad_updating(void)
+{
+	return sbi_fwft_set(SBI_FWFT_PTE_AD_HW_UPDATING, 1, 0);
+}
+
+static int riscv_set_online_hw_pte_ad_updating(bool enable)
+{
+	return sbi_fwft_set_online_cpus(SBI_FWFT_PTE_AD_HW_UPDATING,
+					   enable, 0);
+}
+
+int riscv_enable_hw_pte_ad_updating(void)
+{
+	unsigned int cpu;
+	int ret;
+
+	if (!riscv_has_hw_pte_ad_updating() ||
+	    !riscv_hw_pte_ad_updating_requires_fwft)
+		return 0;
+
+	cpu = smp_processor_id();
+	ret = riscv_enable_local_hw_pte_ad_updating();
+	if (ret)
+		pr_err("CPU%u failed to enable hardware PTE A/D updating: %d\n",
+		       cpu, ret);
+
+	return ret;
+}
+
+static void riscv_disable_hw_pte_ad_updating(int error)
+{
+	int ret;
+
+	riscv_hw_pte_ad_updating_requires_fwft = false;
+	if (error != -EOPNOTSUPP)
+		pr_err("Failed to enable hardware PTE A/D updating: %d\n",
+		       error);
+
+	ret = riscv_set_online_hw_pte_ad_updating(false);
+	if (ret && ret != -EOPNOTSUPP)
+		pr_err("Failed to rollback hardware PTE A/D updating: %d\n",
+		       ret);
+
+	pr_info("riscv: leave PTE A/D updates software-managed (%d)\n",
+		error);
+}
+
+static int __init riscv_hw_pte_ad_updating_init(void)
 {
-	/* SVADE has already been detected, use SVADE only */
-	if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_SVADE))
-		return -EOPNOTSUPP;
+	bool has_svade, has_svadu;
+	int ret;
 
+	has_svade = riscv_has_extension_unlikely(RISCV_ISA_EXT_SVADE);
+	has_svadu = riscv_has_extension_unlikely(RISCV_ISA_EXT_SVADU);
+
+	if (!has_svadu)
+		return 0;
+
+	if (has_svade) {
+		riscv_hw_pte_ad_updating_requires_fwft = true;
+		ret = riscv_set_online_hw_pte_ad_updating(true);
+		if (ret) {
+			riscv_disable_hw_pte_ad_updating(ret);
+			return 0;
+		}
+	}
+
+	/*
+	 * At this point hardware PTE A/D updating is active for all online
+	 * harts, either from boot or from the FWFT setup above. Later harts
+	 * must do the same in secondary startup before they are marked online.
+	 */
+	riscv_set_hw_pte_ad_updating();
+	pr_debug("riscv: hardware PTE A/D updating enabled\n");
 	return 0;
 }
+arch_initcall(riscv_hw_pte_ad_updating_init);
 
 static int riscv_cfilp_validate(const struct riscv_isa_ext_data *data,
 				const unsigned long *isa_bitmap)
@@ -584,7 +661,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
 	__RISCV_ISA_EXT_DATA(svade, RISCV_ISA_EXT_SVADE),
-	__RISCV_ISA_EXT_DATA_VALIDATE(svadu, RISCV_ISA_EXT_SVADU, riscv_ext_svadu_validate),
+	__RISCV_ISA_EXT_DATA(svadu, RISCV_ISA_EXT_SVADU),
 	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
 	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
 	__RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 8b628580fe118..4fe62f96bcca2 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -27,6 +27,7 @@
 #include <linux/sched/mm.h>
 
 #include <asm/cacheflush.h>
+#include <asm/cpufeature.h>
 #include <asm/cpu_ops.h>
 #include <asm/irq.h>
 #include <asm/mmu_context.h>
@@ -221,6 +222,9 @@ asmlinkage __visible void smp_callin(void)
 	struct mm_struct *mm = &init_mm;
 	unsigned int curr_cpuid = smp_processor_id();
 
+	if (riscv_enable_hw_pte_ad_updating())
+		return;
+
 	if (has_vector()) {
 		/*
 		 * Return as early as possible so the hart with a mismatching
-- 
2.39.5


