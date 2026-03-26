Return-Path: <devicetree+bounces-281362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6B6GHdN9xWnw+QQAu9opvQ
	(envelope-from <devicetree+bounces-281362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:41:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E835333A4C9
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3ED5430976A1
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 18:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 263673A1A50;
	Thu, 26 Mar 2026 18:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="RGtrnEJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214753A0B28;
	Thu, 26 Mar 2026 18:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774550288; cv=none; b=cePQ99YdN7Ls0QnRTbcTB/tK5tdaNndjSbq6ahCssxhKcnKTGKtb6uBZ+d+weVaT+isd8cCkBwdVY09WxfdRbSYn1NoqHW1S2DV9LLcY6BjtvyaWdmA+/Bg2fBgcKXLBOUixieiA851rWvGDhi/HkyjHKfx4nMfADdQwVahAZBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774550288; c=relaxed/simple;
	bh=IduRaeuUoF70vKj9/tomAbQZ2WCzwN9klfsFBVEmRfo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TJrHt9nqjuoMjx8jj9ovHq1Mz8H4952L33qd6t8k5Q5h6xS3GCvEp5InjIilLk1/yPLNeKMA31BuEE2c8s96l3AhOrO4VDsYVzisDe0XBAdsWNj5u5TJlvwFAx4SLiW1SRlqLlD3b3l32kj9KORqQ6iGnH0WSFLurtIX0V8V65U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=RGtrnEJJ; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=i+OkUBOkqN90FxBJF3iUtR3fbhuPAeGsJmHvGA9/AeM=; b=RGtrnEJJ1oAxXulgSTg5S34nCH
	CQkZAfLEbKBAtXCObwV7qdBbTVHkpvBFGicB0v+JSUpyHG5ezND3aziNGiFBz9sl1Zf9VqNs7cvqc
	5AkNhWyqnM+1ruPrUX98iihYg7d20gYSIVa/bcnkU86FvTvg7bTLjwDBVc/QYjrduDHvmEDkwfdiB
	jjAWB9tdrXPGWZ5AMNaZQLvm/Ikh9ZkpqYfXHzkr2ivFWVgCRpa+O+5/KfbmWIl83HLl8ZGhDW/zN
	7zOYOhIXzychIX60sHv+hd/yGMEtvtdeg2bMySpqVEKkESauJYBbUpC+lh02xQYt4ils31QX0JKtM
	77oE94vA==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1w5pam-0000000GAjQ-3Ol3;
	Thu, 26 Mar 2026 19:38:04 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	Javier Martinez Canillas <javierm@redhat.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-riscv@lists.infradead.org (open list:RISC-V ARCHITECTURE),
	spacemit@lists.linux.dev (open list:RISC-V SPACEMIT SoC Support)
Subject: [PATCH v2 3/6] riscv: dts: spacemit: add i2c aliases on Milk-V Jupiter
Date: Thu, 26 Mar 2026 19:35:31 +0100
Message-ID: <20260326183745.1370642-4-aurelien@aurel32.net>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260326183745.1370642-1-aurelien@aurel32.net>
References: <20260326183745.1370642-1-aurelien@aurel32.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-281362-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[aurel32.net:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aurel32.net:dkim,aurel32.net:email,aurel32.net:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E835333A4C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add i2c aliases for i2c2 and i2c8 on Milk-V Jupiter. This is useful to
keep a stable number for the /dev entries after loading the i2c-dev
module.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 2 ++
 1 file changed, 2 insertions(+)

v2:
 - Collect Reviewed-by:

diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index bd48208a370cf..836311c3f035c 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -15,6 +15,8 @@ aliases {
 		ethernet0 = &eth0;
 		ethernet1 = &eth1;
 		serial0 = &uart0;
+		i2c2 = &i2c2;
+		i2c8 = &i2c8;
 	};
 
 	chosen {
-- 
2.51.0


