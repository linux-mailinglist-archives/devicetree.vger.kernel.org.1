Return-Path: <devicetree+bounces-255637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E08D25193
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:56:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2084C30B2920
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B060D3793D7;
	Thu, 15 Jan 2026 14:53:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1385F3A0B2A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 14:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768488797; cv=none; b=E25SSF0K2XWnca//DcOC6YREpkOGid9AgBhBXr+oZO3uzi+yXwf64lY7oh9qhOn0CCw4E+qMShJ/nZn9zQrSI9vBaNBmfMeoFkarGvvXvWoVwJ22dxQ9J0Dq8k1lGoMRxfP3hd8bXPdfeuo84a6rIZNrXkEVOotnDjLgCuCWUL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768488797; c=relaxed/simple;
	bh=5Qc8oGuiDO8ImGQamjCXgHbyoIQK6gCoEzuGy7f//Qo=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=quIPkJh5ACKXdwSL0+yYiy9Qu1nILa40bWRnBWRltc7SusNIpf65Ve4MBaunNoQ3ZbtcZ2E/TxI9hnx7XHG8UAu8ZszhSLYE9C2aw+Dwjt44I4hn7nxumdEJGPdzixjbSDLEO+SCoTxsSkmvXHdsq7hdTkYpArKsoJiWDhoaCdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=permerror header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 60FEqoH5039422
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 15 Jan 2026 22:52:50 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Thu, 15 Jan 2026
 22:52:50 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To:
CC: <andi.shyti@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-i2c@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <pjw@kernel.org>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <linux-riscv@lists.infradead.org>,
        Ben Zong-You Xie
	<ben717@andestech.com>
Subject: [PATCH 3/4] MAINTAINERS: add an entry for Andes I2C driver
Date: Thu, 15 Jan 2026 22:52:43 +0800
Message-ID: <20260115145244.435890-4-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260115145244.435890-1-ben717@andestech.com>
References: <20260115145244.435890-1-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 60FEqoH5039422

Add an entry for the Andes I2C driver in the MAINTAINERS file.

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index dc731d37c8fe..3b05039ef497 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1817,6 +1817,12 @@ S:	Supported
 F:	drivers/clk/analogbits/*
 F:	include/linux/clk/analogbits*
 
+ANDES I2C DRIVER
+M:	Ben Zong-You Xie <ben717@andestech.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/i2c/andestech,atciic100.yaml
+F:	drivers/i2c/busses/i2c-atciic100.c
+
 ANDROID DRIVERS
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Arve Hjønnevåg <arve@android.com>
-- 
2.34.1


