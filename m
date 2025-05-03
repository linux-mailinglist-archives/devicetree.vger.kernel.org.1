Return-Path: <devicetree+bounces-173334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22567AA817C
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 17:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 601073BEE3C
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 15:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18EC927A93D;
	Sat,  3 May 2025 15:45:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823C6185B48
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746287136; cv=none; b=TFoaafEoD2yEDEoU3M3GGo5DJWNYrdaD28rmN/8kFVMi4zSA5uV8nDEkeRb0t/gXr3nW40e6IZNmnODKJWEM2euaS1ey9WbMtZGZCl5sgpxY08c/V4Kpp3IwoQoKCQA8MF/RpUshj8dTfwtvEi1iPbnb39/jRRbirLCnBMJTjs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746287136; c=relaxed/simple;
	bh=dtcaoh2xqaGYmtiiJ+J/CbddLJC0LkmAI4G/+8YEl8w=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VZ+NoflR0T4ikn+H55rUCnGsbLZTZt37bgUBt6lsVgEaVmDqKZpVutaS3HeTH6an1gsmRyjCr2ZndB542SK7HWt1wtTcyP2wMeA1i1obD5cXmNtan4Yd4iMyOjSUKqKElMJZ8CdBjc2a2BP7UCOmnesO4xM5C1BevknpjbSXTSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from Atcsqr.andestech.com (localhost [127.0.0.2] (may be forged))
	by Atcsqr.andestech.com with ESMTP id 543FJgo6088154
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 23:19:42 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 543FIj2C087569
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 3 May 2025 23:18:45 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Sat, 3 May 2025
 23:18:45 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To:
CC: <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>, <alex@ghiti.fr>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <tglx@linutronix.de>, <daniel.lezcano@linaro.org>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>, <tim609@andestech.com>,
        "Ben
 Zong-You Xie" <ben717@andestech.com>
Subject: [PATCH v2 3/9] dt-bindings: interrupt-controller: add Andes QiLai PLIC
Date: Sat, 3 May 2025 23:18:23 +0800
Message-ID: <20250503151829.605006-4-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250503151829.605006-1-ben717@andestech.com>
References: <20250503151829.605006-1-ben717@andestech.com>
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
X-MAIL:Atcsqr.andestech.com 543FJgo6088154

Add a new compatible string for Andes QiLai PLIC.

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 3dfe425909d1..7ae61518e9b7 100644
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

