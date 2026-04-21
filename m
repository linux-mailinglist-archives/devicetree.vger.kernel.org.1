Return-Path: <devicetree+bounces-288940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uF03OoES52nL3QEAu9opvQ
	(envelope-from <devicetree+bounces-288940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 08:00:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F1050436A79
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 08:00:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84D113009380
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 06:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D26C368971;
	Tue, 21 Apr 2026 06:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b="aZUZRa8n"
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7DD836826E;
	Tue, 21 Apr 2026 06:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=218.76.62.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776751205; cv=none; b=cbFF5Tj9fEcaFhu1SFqUmoPy90hjTkvxORewR4CD3s3062S2YxnnCiZ1YQWV5IAx/0nHP4RtSjpDRC1NkQWDddvuJBlXjyA2oTbmm9XZsJnux+D040tUBj2pJ1NAc8U7fohaEyiu58c1WEKivtv57+bILpaMB3AfxUkiJgKh37E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776751205; c=relaxed/simple;
	bh=o2vQ1mjY+s3E7+IwbbZ2cAFAkNUbi8J2kxnxCeejBCY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rYYuP8TP/OkSG9uhEvtIpyqBeQAA5iuyxBGppTASQxTxaU9maOYAOcaUIaguPC84dQk1LBzfSZaenbNERrlqUj45DWWVEL8O2a0TjUeleunODCX4yfr63GHnrXyV35+Lk4+wMW+C8Fjtep0m/BRPij2tV6mMdIOBiwQWZmL9L3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=none smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=aZUZRa8n; arc=none smtp.client-ip=218.76.62.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ultrarisc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:From:Date:Subject:
	MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:
	References:In-Reply-To:To:Cc; bh=pU4SxU5q9XltqS7pTAyz151B7uCmsjv
	J67qMEH2aIS8=; b=aZUZRa8nfERHquJ1KPg7aOkO0+T6b66/kGoZRPHo4LYvDCy
	L4T3pDhwJoULULWrzImA5UYIWm6hSfnhUm3MldpYkbPiknrCOebeVaVLMuZUqoTG
	056perfi3Hby4eHCKk3vR+NG6xdWFDxNCOy5ML2rTbzW8Lp3jb0ZL53n705s=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwAnEkNyEudpn5ACAA--.1518S4;
	Tue, 21 Apr 2026 14:00:24 +0800 (CST)
From: Jia Wang <wangjia@ultrarisc.com>
Date: Tue, 21 Apr 2026 13:58:52 +0800
Subject: [PATCH v3 2/2] serial: 8250_dw: Use a fixed CPR value for
 UltraRISC DP1000 UART
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260421-ultrarisc-serial-v3-2-3d7f09c2420e@ultrarisc.com>
References: <20260421-ultrarisc-serial-v3-0-3d7f09c2420e@ultrarisc.com>
In-Reply-To: <20260421-ultrarisc-serial-v3-0-3d7f09c2420e@ultrarisc.com>
To: =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 Jia Wang <wangjia@ultrarisc.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776751174; l=1571;
 i=wangjia@ultrarisc.com; s=20260309; h=from:subject:message-id;
 bh=o2vQ1mjY+s3E7+IwbbZ2cAFAkNUbi8J2kxnxCeejBCY=;
 b=gF8CwuBnMr4lURDDDwpznbbeJJQY59ELlnW8vpWfD7bhkk/Xx7L2JJUfJg7oXBO2309oNdzFf
 U2U18KcO2KtD7l1rC+cuZvMuPivRCC3fC6sEYJf8wPSDeIAiSKyHEqK
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=XvYkrelqJIIzobY7j+nIg8rsfv5kzaOzuc1UPhd087U=
X-CM-TRANSID:AQAAfwAnEkNyEudpn5ACAA--.1518S4
X-Coremail-Antispam: 1UD129KBjvJXoW7tw4UJFy3Kw43tFWrXFW5Wrg_yoW8WrW5pF
	47Cr90vF9a9F4jg3W2ya1vvFZ3ua12vFy2k39rK347tFn8tFyUAF1SkrWay3ZFgry0qrnF
	yF1Y9rW7Aa1xZa7anT9S1TB71UUUUUDqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnUUvcSsGvfC2KfnxnUUI43ZEXa7xR_UUUUUUUUU==
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQADEWnlor4ACwAJsB
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288940-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F1050436A79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The UltraRISC DP1000 UART does not provide the standard CPR register used
by 8250_dw to discover port capabilities.

Provide a fixed CPR value for the DP1000-specific compatible so the
driver can configure the port correctly.

Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
---
 drivers/tty/serial/8250/8250_dw.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
index 94beadb4024d..ca6dbdf75918 100644
--- a/drivers/tty/serial/8250/8250_dw.c
+++ b/drivers/tty/serial/8250/8250_dw.c
@@ -962,6 +962,12 @@ static const struct dw8250_platform_data dw8250_intc10ee = {
 	.quirks = DW_UART_QUIRK_IER_KICK,
 };
 
+static const struct dw8250_platform_data dw8250_ultrarisc_dp1000_data = {
+	.usr_reg = DW_UART_USR,
+	.cpr_value = 0x00022022,
+	.quirks = DW_UART_QUIRK_CPR_VALUE,
+};
+
 static const struct of_device_id dw8250_of_match[] = {
 	{ .compatible = "snps,dw-apb-uart", .data = &dw8250_dw_apb },
 	{ .compatible = "cavium,octeon-3860-uart", .data = &dw8250_octeon_3860_data },
@@ -969,6 +975,7 @@ static const struct of_device_id dw8250_of_match[] = {
 	{ .compatible = "renesas,rzn1-uart", .data = &dw8250_renesas_rzn1_data },
 	{ .compatible = "sophgo,sg2044-uart", .data = &dw8250_skip_set_rate_data },
 	{ .compatible = "starfive,jh7100-uart", .data = &dw8250_skip_set_rate_data },
+	{ .compatible = "ultrarisc,dp1000-uart", .data = &dw8250_ultrarisc_dp1000_data },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, dw8250_of_match);

-- 
2.34.1


