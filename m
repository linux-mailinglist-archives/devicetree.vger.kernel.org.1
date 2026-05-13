Return-Path: <devicetree+bounces-296962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNneC2eZBGqILwIAu9opvQ
	(envelope-from <devicetree+bounces-296962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 17:31:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6688536318
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 17:31:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 98992305D64F
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 15:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 195C547DD56;
	Wed, 13 May 2026 15:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcG3RjKs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FB2429831;
	Wed, 13 May 2026 15:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778686161; cv=none; b=qvLUxLI9s2bdumeDHmdKuzsAU32kJWuhppAXnawHdxbJOCs7G5Jh/naP7XcgAkbN5MJCfcbdA25VG3hLDLfx9PkrkpJEV6fJin5Kg17fIrmRj/WlaSBmavTxR5HUxnE+8sV7nbue+U7fo5A9pu5n+zCYPJtVajic5micrOSn05s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778686161; c=relaxed/simple;
	bh=41IZMqDKuz/6MXeNloPVlflrmSHQD4lgmzdF8Vzr3C4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J8IE4i64srPS2jKfoAkUpllXLdFgpVpg63FgsNh3/GdBJL4HVOShyQ90ounjCejSbie/xlmi3u+cHz0SrtoK1QB9QuoAkpFYpm0zw0LigDttsdqgNthXUbE1byTaU4Vs40VbTtcN2kCJ5K8fX3wpp1P9ORUMSP+ObCpcQ+tS04Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcG3RjKs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DB8C2BCC7;
	Wed, 13 May 2026 15:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778686160;
	bh=41IZMqDKuz/6MXeNloPVlflrmSHQD4lgmzdF8Vzr3C4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=HcG3RjKsxnlwK9fZIokCsL3iQuI9NDVCBU0s78z3VXXUkgBrSWk1Ec5ipfKy50Ajo
	 nwH+3q2K77RqbQdw+kvDJvzsiTJMMbEQ7XjVfKHkXCOU7IRtYfujWPMYYPqLjCpwWl
	 j6JnHaZD0jPGvEUwazVx02txtar3XGwWObLeNu80SsCa2jcIRxJ/tmRJpMd/AW9bPN
	 VC4PImqkpy4PetLZFliRJXeiLx25p9ARvzF2kUrnGam0bJtsUDkiIpP5+54sKs3CjP
	 xmyyabqZ0n4EaipedvdJxi1j2sgmqN+WAZ4n8gChSDrfMPe3ayl1IHXECuECqysTZh
	 kPW8eFdcGLY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0612CD4F3D;
	Wed, 13 May 2026 15:29:20 +0000 (UTC)
From: Aleksa Paunovic via B4 Relay <devnull+aleksa.paunovic.htecgroup.com@kernel.org>
Date: Wed, 13 May 2026 17:29:09 +0200
Subject: [PATCH RESEND v7 2/3] riscv: clocksource: Add readq options to
 clocksource mmio
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-riscv-time-mmio-v7-2-f8925ffc226b@htecgroup.com>
References: <20260513-riscv-time-mmio-v7-0-f8925ffc226b@htecgroup.com>
In-Reply-To: <20260513-riscv-time-mmio-v7-0-f8925ffc226b@htecgroup.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Paul Walmsley <pjw@kernel.org>, 
 John Stultz <jstultz@google.com>, Stephen Boyd <sboyd@kernel.org>, 
 Vivian Wang <wangruikang@iscas.ac.cn>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 Djordje Todorovic <djordje.todorovic@htecgroup.com>, 
 Aleksa Paunovic <aleksa.paunovic@htecgroup.com>, 
 Chao-ying Fu <cfu@mips.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778686158; l=1888;
 i=aleksa.paunovic@htecgroup.com; s=20250806; h=from:subject:message-id;
 bh=Jv3vpBN1+Uh24vJH4CQZDSOQFXoXTNQJWJ4G2f0Tyms=;
 b=4kpf+EMPbfGjaxnf9vD+A3laptT18SJFJPnFZcHz0/gp0ClnPrnSu6ztZBVE1qtPrVPDSCWWt
 HLh7kE+l0TlDLy24QvKcp1en65ukAK/sfikCj/NO6GXMKOD948ksd+w
X-Developer-Key: i=aleksa.paunovic@htecgroup.com; a=ed25519;
 pk=Dn4KMnDdgyhlXJNspQQrlHJ04i7/irG29p2H27Avd+8=
X-Endpoint-Received: by B4 Relay for aleksa.paunovic@htecgroup.com/20250806
 with auth_id=476
X-Original-From: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
Reply-To: aleksa.paunovic@htecgroup.com
X-Rspamd-Queue-Id: C6688536318
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296962-lists,devicetree=lfdr.de,aleksa.paunovic.htecgroup.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[aleksa.paunovic@htecgroup.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>

Add read functions for 64-bit register size to the generic
mmio clocksource, covering both up and down counters.

Signed-off-by: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
---
 drivers/clocksource/mmio.c  | 14 ++++++++++++++
 include/linux/clocksource.h |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/clocksource/mmio.c b/drivers/clocksource/mmio.c
index 9de75153183124cc8997c6ab61d0c01d9b2637bc..6329d8ce2c0911b5c6de34346b5ca8de40b93099 100644
--- a/drivers/clocksource/mmio.c
+++ b/drivers/clocksource/mmio.c
@@ -17,6 +17,20 @@ static inline struct clocksource_mmio *to_mmio_clksrc(struct clocksource *c)
 	return container_of(c, struct clocksource_mmio, clksrc);
 }
 
+#if defined(readq_relaxed)
+
+u64 clocksource_mmio_readq_up(struct clocksource *c)
+{
+	return (u64)readq_relaxed(to_mmio_clksrc(c)->reg);
+}
+
+u64 clocksource_mmio_readq_down(struct clocksource *c)
+{
+	return ~(u64)readq_relaxed(to_mmio_clksrc(c)->reg) & c->mask;
+}
+
+#endif
+
 u64 clocksource_mmio_readl_up(struct clocksource *c)
 {
 	return (u64)readl_relaxed(to_mmio_clksrc(c)->reg);
diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
index 65b7c41471c390463770c2da13694e58e83b84ea..df8ea45ec60a28e0276020cb95ab5328bec89879 100644
--- a/include/linux/clocksource.h
+++ b/include/linux/clocksource.h
@@ -276,6 +276,10 @@ static inline void clocksource_arch_init(struct clocksource *cs) { }
 
 extern int timekeeping_notify(struct clocksource *clock);
 
+#if defined(readq_relaxed)
+extern u64 clocksource_mmio_readq_up(struct clocksource *c);
+extern u64 clocksource_mmio_readq_down(struct clocksource *c);
+#endif
 extern u64 clocksource_mmio_readl_up(struct clocksource *);
 extern u64 clocksource_mmio_readl_down(struct clocksource *);
 extern u64 clocksource_mmio_readw_up(struct clocksource *);

-- 
2.43.0



