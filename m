Return-Path: <devicetree+bounces-119191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BAF9BD4B8
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 19:37:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 826AA1C2277D
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 18:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085371EBA0B;
	Tue,  5 Nov 2024 18:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="1tEkNUuH"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767BD1E906B;
	Tue,  5 Nov 2024 18:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730831808; cv=none; b=hSbfhG2BbptyEne9gfXoOax9xuGTVo2y5FFXC5y1eyV+1DFwgzhOpLI2Lsqs9dYjH8O//XPeo8sjn8Wu0RF6cHh0bXqQ9InUgMn62FeTLdreinzz50KQmE7iDc876aEo1QkaLWVjqhTgmLy5AXwtNinS0cvxaRnNpQnSbVfSYwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730831808; c=relaxed/simple;
	bh=xWSs+CCHo2cnkHp+YQIYQ9pyFy661acsmyXS6RC2uDQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=brl/p5ZQ12Glk17WlYoA/uEjyGMQUUXVSEHkV8WjmVr7Ilmpnw2hUAZ4wd3S/HubIAYl+gMuSUKgY7D5CAdAK+xtxblg9C+b1toNatgDmpmZAFaq3dqQLOezlyKXkYSrLqTJyYRGRuyLXgnPqUHq/9qnzFoRcLTcQ2Pf2UThyeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=1tEkNUuH; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1730831808; x=1762367808;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xWSs+CCHo2cnkHp+YQIYQ9pyFy661acsmyXS6RC2uDQ=;
  b=1tEkNUuHRk7AUnaqYVaMsetONqN4A6xtUj9pXHAv5eRivupRqTEZo9cl
   lL7Pf3RGtVoq0dSbQmyTKctbkn2J3sljImJYp3fyt+wq2hZC4SLyAEmKb
   masjKwRzBQdSu4IRMdmeF62Z0gIoFLz80boSZzFUg5Ct0BIeErdabNum8
   pyynycXHC7VoPd4BSst+BxoggMkh5dFp8pGIb0DjQqW0Ng7y/eAnljIyJ
   uzm6Tkdf3yVZCnL1sCm4jXM3beZa+uHJ5wDMTZrZlknFVblu2Q78a2zDP
   vyBb9FfjphtJwRKd53QdtPHamVA+9yjKxndaP8jgwel2zUBt1pSeL+R7z
   g==;
X-CSE-ConnectionGUID: aPvpj/ErQpCvLHGNHY35EA==
X-CSE-MsgGUID: jnImxPs2QIOtuWapEmEzbw==
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; 
   d="scan'208";a="33910624"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 05 Nov 2024 11:36:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Nov 2024 11:36:18 -0700
Received: from valentina.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Tue, 5 Nov 2024 11:36:15 -0700
From: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
To: <paul.walmsley@sifive.com>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
	<ycliang@andestech.com>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	<peterlin@andestech.com>, <samuel.holland@sifive.com>,
	<conor.dooley@microchip.com>, <alexghiti@rivosinc.com>,
	<ruanjinjie@huawei.com>, <takakura@valinux.co.jp>, <conor+dt@kernel.org>,
	<jassisinghbrar@gmail.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<valentina.fernandezalanis@microchip.com>
CC: <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
Subject: [PATCH v3 1/4] riscv: sbi: vendorid_list: Add Microchip Technology to the vendor list
Date: Tue, 5 Nov 2024 18:35:10 +0000
Message-ID: <20241105183513.1358736-2-valentina.fernandezalanis@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241105183513.1358736-1-valentina.fernandezalanis@microchip.com>
References: <20241105183513.1358736-1-valentina.fernandezalanis@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add Microchip Technology to the RISC-V vendor list.

Signed-off-by: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
---
 arch/riscv/include/asm/vendorid_list.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/asm/vendorid_list.h
index 2f2bb0c84f9a..a5150cdf34d8 100644
--- a/arch/riscv/include/asm/vendorid_list.h
+++ b/arch/riscv/include/asm/vendorid_list.h
@@ -6,6 +6,7 @@
 #define ASM_VENDOR_LIST_H
 
 #define ANDES_VENDOR_ID		0x31e
+#define MICROCHIP_VENDOR_ID	0x029
 #define SIFIVE_VENDOR_ID	0x489
 #define THEAD_VENDOR_ID		0x5b7
 
-- 
2.34.1


