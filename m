Return-Path: <devicetree+bounces-262354-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJcQO1AvgmlFQAMAu9opvQ
	(envelope-from <devicetree+bounces-262354-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:24:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74863DCBDA
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 18:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9580C30E8169
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 17:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D73C30CDB6;
	Tue,  3 Feb 2026 17:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="KLzY78Ol"
X-Original-To: devicetree@vger.kernel.org
Received: from out162-62-58-216.mail.qq.com (out162-62-58-216.mail.qq.com [162.62.58.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFC22C08B0
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 17:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.62.58.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770139299; cv=none; b=FcLtDxDCf8OtxzdQcokkx+1MQjPNLLrdh9dLIhm5hvVmjVT66w5sx5/qPhpa73FYWAZmJkrtMG3AbDoxsW6yMeXrFTfOPgY2rRn+trw8v+JKkpFDaqNqz73+Y1q44OkVgZYoG0fxijOSvgkjJlYfBwqzgPyDpRLVIhFUQMgvrT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770139299; c=relaxed/simple;
	bh=xuZSb8wrx82nyCkuqrULdZ5vRjUJ37xuFySc+t94u7Y=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=dfhPJAEU3BKxiaS4wi6+aR+E0YQsLPnn60FcM6O5J4fLOUVtcj1Mogs3idoEZNCXY1boNFky8RuB6RDdKaJH4OmFUmtcmQXynA17D/8hvPmedfkAtpIY1rByJkvQ7lZIKJ0ODfs97s+jxEfNqUV0VDYQufA5RyA0WNxwOeAACPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=pass smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=KLzY78Ol; arc=none smtp.client-ip=162.62.58.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1770139292; bh=dKD+9ENjLymGAeCoFjskR1sIXf8hqAVovnW21Ss0ou8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=KLzY78OlkmaZ6lz4zglo43hZ8AUbivQg0tjtBL++8UdhXtAOd7x0Xb7l04jzPXzwQ
	 HpBwEe8mpoNrKxlu3EvBJvaI4UgBxJH230t0TkUQOskwGImqqTiwlx8IDJhBa5gJ52
	 vCeBSIbI2wHvRn+5yOGm9K2D8/7EPdU5ZaLUA2PY=
Received: from cyy-pc.lan ([240e:379:2263:bd00:7e4b:55e4:8771:53fb])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 554152F2; Wed, 04 Feb 2026 01:21:20 +0800
X-QQ-mid: xmsmtpt1770139280t2ir4wb8a
Message-ID: <tencent_3927462924B7319F8F4F90447BDC110FB705@qq.com>
X-QQ-XMAILINFO: OK7NBzdNss/RyEGf3lskhU51JXzQy2SjuYx3vx9OVzRZrGcl9lB8qfWLqrk8xy
	 gnbQtXhyblbq54bu3bf/vAJB3AiByawePnPpTMBNtuCXA4FksJx8DtaNBvXqyNqjswNkrurfRT0S
	 nDMVKsIdoU9Tlv4SnWVnr6JbRDsh7pnxmPCdnj0PjjN2nZQHmwL1BcGbMSr0F9TShklL8hIlggcS
	 674J09u5sjwY8+QKB27NMI88QWC/dR/2pv/JymKgaqmlW2rzEfnSm//Yt17emLuDxwZ1A+mVhflp
	 5FSnm0SkB4D5JqRjjL7uSPvvcstn5ces4Dp20XvGQ70TmjRV+BOQV+/noPB37uRJqENqIohaff23
	 /pJwGsZ9aGKVlpZYRDbP0PVRmB6bQJFJb/p9xaIPveiaNOfPZ/zfNE/QQ//PoFhRuReE8TWXyZFl
	 T8sM3slldM6/el7C8LHxAgXr0R7wewdHENLQrBdtCFflvnFHiNt4N1OcyEPVJUpLsAb53LtMmHou
	 h3DjwwkbJAM4nqxRu/LjyVnTH7nRomHoJmuMWh/PpFrg4oxUflA0oMnK1pd8b57kmEVJBc4gdLu5
	 E0U5oqZ+0+cCg0zmtIKQNvp49qDGEAvO1gPQ+vu9cNZDVPdV1izolNfKCWxkYuvSXrAlgzDZD8ou
	 bMiAOzKia9QBK4IWerItl+A6w/IhgnQsI/PNKwAv+h0kXxWVgIDKYNrFl+M50ag7zDX7UnzPX7OE
	 0ftiz5Gmt6PfOr/ZBnVAWL374kZgHHePqJJqrum9tahQ8WrERQIAEop0dYsH8MvZ7zewXKKCAQ/5
	 CYcd45MjKY2+2QJRfeZrP81jcqwW9pkKMhMyV59c6xFmhjWlsOua6csxTAlCHAudbf4z5DXGr/wl
	 VEaP7IihGz5W7Q6qsKUXxmckvzoiPh8Tev/XmroZoEVDSZfxntveiu8dhSgOLkmZn8ULGaWOaDlg
	 iCPNBZubuZGEmsMbyB5Z2AS4XdzsFH+pvoByNX7rr8LKfOJZixVUfQ66z9he/INVJ1IlawGV9WRb
	 kpQ4GLmFrX7zPstzMl+gPj1ElDN+igUkOrNx3WQUnhB1dIqWCfbNBQLi4qSOXVR1pQtZmFYJiFQh
	 PPoa7HsbxYpzwWkFNN5iajUnxBcIRIzdASjadG/hbDX79L2BzADiaJJ+N9P6yrEL5fjmiK
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	Anup Patel <anup.patel@oss.qualcomm.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	Lucas Zampieri <lzampier@redhat.com>,
	Thomas Gleixner <tglx@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Mason Huo <mason.huo@starfivetech.com>,
	Zhang Xincheng <zhangxincheng@ultrarisc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Marc Zyngier <maz@kernel.org>,
	Sia Jee Heng <jeeheng.sia@starfivetech.com>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org,
	Jia Wang <wangjia@ultrarisc.com>,
	Yangyu Chen <cyy@cyyself.name>
Subject: [PATCH v3 1/2] irqchip/sifive-plic: Fix wrong nr_irqs handling
Date: Wed,  4 Feb 2026 01:21:16 +0800
X-OQ-MSGID: <20260203172116.1593739-1-cyy@cyyself.name>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
References: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[cyyself.name];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-262354-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cyy@cyyself.name,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qq.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 74863DCBDA
X-Rspamd-Action: no action

Since the first irq source is 1 instead of 0, when the number of
irqs is multiple of 32, the last irq group will be ignored during
allocation, saving, and restoring. This lead to memory corruption
when accessing enable_save beyond allocated memory after commit
14ff9e54dd14 ("irqchip/sifive-plic: Cache the interrupt enable state")
which will access enable_save for all sources during plic_probe.
Thus, we should allocate irq_groups based on (nr_irqs + 1) instead of
nr_irqs to avoid this issue. This commit also fixes related loops
to have all consumer of nr_irqs consistent.

This is an long standing bug since Linux v5.6 but since the last irq
source is rarely used, it may not be triggered in practice until commit
14ff9e54dd14 ("irqchip/sifive-plic: Cache the interrupt enable state").

Fixes: 466008f98435 ("irqchip/sifive-plic: Support irq domain hierarchy")
Fixes: e80f0b6a2cf3 ("irqchip/irq-sifive-plic: Add syscore callbacks for hibernation")
Fixes: 4d936f10ff80 ("irqchip/sifive-plic: Probe plic driver early for Allwinner D1 platform")
Fixes: f75e07bf5226 ("irqchip/sifive-plic: Avoid interrupt ID 0 handling during suspend/resume")
Fixes: 14ff9e54dd14 ("irqchip/sifive-plic: Cache the interrupt enable state")
Fixes: 539d147ef69c ("irqchip/sifive-plic: Add support for UltraRISC DP1000 PLIC")
Fixes: a045359e7245 ("irqchip/sifive-plic: Fix call to __plic_toggle() in M-Mode code path")
Signed-off-by: Yangyu Chen <cyy@cyyself.name>
---
 drivers/irqchip/irq-sifive-plic.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 210a57959637..4658cad0d502 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -262,7 +262,7 @@ static int plic_irq_suspend(void *data)
 	priv = per_cpu_ptr(&plic_handlers, smp_processor_id())->priv;
 
 	/* irq ID 0 is reserved */
-	for (unsigned int i = 1; i < priv->nr_irqs; i++) {
+	for (unsigned int i = 1; i <= priv->nr_irqs; i++) {
 		__assign_bit(i, priv->prio_save,
 			     readl(priv->regs + PRIORITY_BASE + i * PRIORITY_PER_ID));
 	}
@@ -280,7 +280,7 @@ static void plic_irq_resume(void *data)
 	priv = per_cpu_ptr(&plic_handlers, smp_processor_id())->priv;
 
 	/* irq ID 0 is reserved */
-	for (i = 1; i < priv->nr_irqs; i++) {
+	for (i = 1; i <= priv->nr_irqs; i++) {
 		index = BIT_WORD(i);
 		writel((priv->prio_save[index] & BIT_MASK(i)) ? 1 : 0,
 		       priv->regs + PRIORITY_BASE + i * PRIORITY_PER_ID);
@@ -293,7 +293,7 @@ static void plic_irq_resume(void *data)
 			continue;
 
 		raw_spin_lock_irqsave(&handler->enable_lock, flags);
-		for (i = 0; i < DIV_ROUND_UP(priv->nr_irqs, 32); i++) {
+		for (i = 0; i < DIV_ROUND_UP(priv->nr_irqs + 1, 32); i++) {
 			reg = handler->enable_base + i * sizeof(u32);
 			writel(handler->enable_save[i], reg);
 		}
@@ -351,7 +351,7 @@ static int plic_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
 	if (ret)
 		return ret;
 
-	for (i = 0; i < nr_irqs; i++) {
+	for (i = 1; i <= nr_irqs; i++) {
 		ret = plic_irqdomain_map(domain, virq + i, hwirq + i);
 		if (ret)
 			return ret;
@@ -431,7 +431,7 @@ static u32 cp100_isolate_pending_irq(int nr_irq_groups, struct plic_handler *han
 
 static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler, void __iomem *claim)
 {
-	int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs, 32);
+	int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs + 1, 32);
 	u32 __iomem *enable = handler->enable_base;
 	irq_hw_number_t hwirq = 0;
 	u32 iso_mask;
@@ -652,7 +652,7 @@ static int plic_probe(struct fwnode_handle *fwnode)
 	priv->gsi_base = gsi_base;
 	priv->acpi_plic_id = id;
 
-	priv->prio_save = bitmap_zalloc(nr_irqs, GFP_KERNEL);
+	priv->prio_save = bitmap_zalloc(nr_irqs + 1, GFP_KERNEL);
 	if (!priv->prio_save) {
 		error = -ENOMEM;
 		goto fail_free_priv;
@@ -686,7 +686,7 @@ static int plic_probe(struct fwnode_handle *fwnode)
 				u32 __iomem *enable_base = priv->regs +	CONTEXT_ENABLE_BASE +
 							   i * CONTEXT_ENABLE_SIZE;
 
-				for (int j = 0; j <= nr_irqs / 32; j++)
+				for (int j = 0; j <= (nr_irqs + 1) / 32; j++)
 					writel(0, enable_base + j);
 			}
 			continue;
@@ -718,7 +718,7 @@ static int plic_probe(struct fwnode_handle *fwnode)
 			context_id * CONTEXT_ENABLE_SIZE;
 		handler->priv = priv;
 
-		handler->enable_save = kcalloc(DIV_ROUND_UP(nr_irqs, 32),
+		handler->enable_save = kcalloc(DIV_ROUND_UP(nr_irqs + 1, 32),
 					       sizeof(*handler->enable_save), GFP_KERNEL);
 		if (!handler->enable_save) {
 			error = -ENOMEM;
-- 
2.51.0



