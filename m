Return-Path: <devicetree+bounces-173337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B880BAA817B
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 17:46:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C270464626
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 15:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7C89263C8A;
	Sat,  3 May 2025 15:45:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C77E1DF982
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 15:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746287147; cv=none; b=BgSLJUQkcnEm5DXyPOu37l+G1u+zeLE9eMoa31m/kc1OXJqF+deXYMmrdndR4UWSxKcfs2AnwlkG7Dxt4ApAijTOygUM7ZtMIBJe0I1OzPuiLA9na2hUtWDKeDfqZaGlK1ZY47DuZt+q9Dt5ArM/Pz8OQDoMNdWcze9RzBsg43E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746287147; c=relaxed/simple;
	bh=mdpLSxuVW+TpoTqhgBq+ZS9EqcdTqEudusik049hep4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jcySwpn6epPhlQnwCWnv1ZdJJbB6is7qhTW8LRHOAYXV6/6hw10dKv6UCRYUfkH1FMu0ih6tQC4aI/7s8xbKr2J3aCWTFuQPpllLOlfAKqjBI5ZCbrGqZJo96ZN9nZxah5NdDgSdA8heeH+DULwjkcPHARlBu19TBCTwmGrAluM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from Atcsqr.andestech.com (localhost [127.0.0.2] (may be forged))
	by Atcsqr.andestech.com with ESMTP id 543FJh9S088157
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 23:19:43 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 543FImFu087627
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 3 May 2025 23:18:48 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Sat, 3 May 2025
 23:18:48 +0800
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
Subject: [PATCH v2 6/9] dt-bindings: cache: ax45mp-cache: allow variable cache-sets for Andes L2 cache
Date: Sat, 3 May 2025 23:18:26 +0800
Message-ID: <20250503151829.605006-7-ben717@andestech.com>
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
X-MAIL:Atcsqr.andestech.com 543FJh9S088157

The current device tree binding for the Andes AX45MP L2 cache enforces
a fixed number of cache-sets (1024). However, there are 2048 cache-sets in
the QiLai SoC. This change allows both 1024 and 2048 as valid values for
"cache-sets".

Signed-off-by: Ben Zong-You Xie <ben717@andestech.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/cache/andestech,ax45mp-cache.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml b/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
index d2cbe49f4e15..798aa71dc4ec 100644
--- a/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
+++ b/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
@@ -44,7 +44,7 @@ properties:
     const: 2

   cache-sets:
-    const: 1024
+    enum: [1024, 2048]

   cache-size:
     enum: [131072, 262144, 524288, 1048576, 2097152]
--
2.34.1

