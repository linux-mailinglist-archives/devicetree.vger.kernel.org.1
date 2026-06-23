Return-Path: <devicetree+bounces-314992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rzi+HkfwOmr5MAgAu9opvQ
	(envelope-from <devicetree+bounces-314992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:44:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C2F6BA16F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:44:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=aurel32.net header.s=202004.hall header.b=eswx+hgw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314992-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-314992-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=aurel32.net;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E3FEF3027B57
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D455E3A901C;
	Tue, 23 Jun 2026 20:44:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90DE53A7F73;
	Tue, 23 Jun 2026 20:44:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782247480; cv=none; b=MEM3XNI/xu55BmLw25Y4aUUndz1HN3CNY1F9uO28pg4J5XgEJA6gGfH/9G1lvUHLSsaFYvk0N5mSwEYQ9Aq3dOi9ckxT9bb6H65wEkpBrbVBD4zJ4DvFIM8IxCc/pagKA2RkYimIRsxxXUZEIfyCqBkio2db1jqhelTiCfFTqRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782247480; c=relaxed/simple;
	bh=brawEI/Y6TtQReA4AIKBJwo4tftfE21A/x6hGDbFJyQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DnbIXYLare1XL0xqTWeD1k8AoWkbjiI8GLHXBHna5qFVYlauU+HkOq+gYhEBUr8EH3PqmjCtE+pyzRuGpS90FT62qspWd6pichZIJ1uX6/bkhZ0rIkqmSzT5WpKYmw6ihBlKS4FQJ8fMgh2dcO4+bIYnt2TYc8TOeeJvi1Ds48A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=eswx+hgw; arc=none smtp.client-ip=195.154.119.183
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=K8Um6chS07RcT1AxSNR2JFP0bdhN9kdWn5kHp1JUdc4=; b=eswx+hgwWbYYespRNnWNBRxIk4
	bTREzbTzbRijvp+SerPcsoKoOPFJeGl3eekkDZQNw2csmyHZmQ0pNzMedMv23fghs+Tdeu7hQBPkd
	jx9AD2khSUIpqx7ORiAegy2vrg/HsLTLoYQ7fy2rZTnLO+LbLunK5XSGBqsM5MWgogJnAiA7w582W
	wKzVApTyuJVEDfkI3ZWoHhFsbg8sZPRBQ82qTie4Qq/zrT9X5n4ZXf5B8M/JC77V2OWIlsPsp+ECj
	yDCCiHJH5FPjDZoujG5Wj77Ebmftl2dL9tDJ+xQNgOYZEXZFSWs3mZy16cIKzk76RJXIVOSS0wyDr
	xQhI4lLw==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1wc7z3-00000004gOS-0fXk;
	Tue, 23 Jun 2026 22:44:37 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Guodong Xu <guodong@riscstar.com>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	Guodong Xu <docular.xu@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-riscv@lists.infradead.org (open list:RISC-V SPACEMIT SoC Support),
	spacemit@lists.linux.dev (open list:RISC-V SPACEMIT SoC Support)
Subject: [PATCH v2 1/5] riscv: dts: spacemit: set console baud rate on K3 Pico-ITX board
Date: Tue, 23 Jun 2026 22:43:45 +0200
Message-ID: <20260623204431.498700-2-aurelien@aurel32.net>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260623204431.498700-1-aurelien@aurel32.net>
References: <20260623204431.498700-1-aurelien@aurel32.net>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:guodong@riscstar.com,m:aurelien@aurel32.net,m:docular.xu@gmail.com,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:krzk@kernel.org,m:conor@kernel.org,m:docularxu@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314992-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[aurel32.net:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[aurel32.net,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,aurel32.net:dkim,aurel32.net:email,aurel32.net:mid,aurel32.net:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 96C2F6BA16F

Because the default console's baud rate is not set, defconfig kernels do
not have any serial output on this platform. Set the baud rate to
115200, matching what is used by U-Boot etc on this platform.

Fixes: 7a6131804986 ("riscv: dts: spacemit: add K3 Pico-ITX board support")
Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Reviewed-by: Guodong Xu <docular.xu@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k3-pico-itx.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

v2:
 - Collect Reviewed-by tag

diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
index b89c1521e6649..509cebc0c9568 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
+++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
@@ -18,7 +18,7 @@ aliases {
 	};
 
 	chosen {
-		stdout-path = "serial0";
+		stdout-path = "serial0:115200n8";
 	};
 
 	memory@100000000 {
-- 
2.53.0


