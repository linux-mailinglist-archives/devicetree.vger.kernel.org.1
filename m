Return-Path: <devicetree+bounces-192976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88994AF8B67
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43269165CD6
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 750C92F364B;
	Fri,  4 Jul 2025 08:15:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DFB29B23E
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 08:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751616920; cv=none; b=KTGngZLxJPjpRNAYiCqb/k850nO5SbcrM467xdM6Fqe9gHK9wRyk2sHMQvFU+vhfL9MHF3ddtxucI6bqpBizs28eRRrEWawYD2d6Ujw2PhbZZW0sfAf8hASJAhWbXNKyGeGTdMnFlL2aAGX0HumZ+k6fnGO/0r/cKEOQJ+x4QdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751616920; c=relaxed/simple;
	bh=ouFEm89hCdrWb+Z8dVPbIyYMQBmtMRvDvolDrEMlw8g=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sWSt0OG3Bw3qHTZ9KxPI5R27fKCMGHPkanttahbN+qK/9H9Kqm4v2kRN1vTbtrMrFSyC1oETZA82u349t7Vonbav/UjiSVFgM5hHqZ746TqozMDLV69k3vJ0sJ2IcxCjdtyRoMSqyvI+GX/GH7EViTbg2eriLvkrIdoCnV+BdyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 5648ExEM091879
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 4 Jul 2025 16:14:59 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Fri, 4 Jul 2025
 16:14:59 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To:
CC: <arnd@arndb.de>, <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <aou@eecs.berkeley.edu>, <alex@ghiti.fr>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <tglx@linutronix.de>,
        <daniel.lezcano@linaro.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <soc@lists.linux.dev>,
        <tim609@andestech.com>, Ben Zong-You Xie <ben717@andestech.com>
Subject: [PATCH 3/8] dt-bindings: interrupt-controller: add Andes QiLai PLIC
Date: Fri, 4 Jul 2025 16:14:46 +0800
Message-ID: <20250704081451.2011407-4-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250704081451.2011407-1-ben717@andestech.com>
References: <20250704081451.2011407-1-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 5648ExEM091879

Add a new compatible string for Andes QiLai PLIC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index ffc4768bad06..5b827bc24301 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -53,6 +53,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - andestech,qilai-plic
               - renesas,r9a07g043-plic
           - const: andestech,nceplic100
       - items:
-- 
2.34.1


