Return-Path: <devicetree+bounces-135387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8B9A00CF9
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:40:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E87C3A401D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:40:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F22A1FC11B;
	Fri,  3 Jan 2025 17:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="qg/3BdWM"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE3C21FC100;
	Fri,  3 Jan 2025 17:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735925999; cv=none; b=ilSBWY2kNX0stZvqpaxGAezc4o/oDkA/yPch6BDTMQ//t7CjZOsmL1EAz+rc6hzGUBFIThDpdhTrS9pbPAPr9c1CH1wBpRiB7STo8maE+6a7CD0emPMU27aZ1XBXX4+fzkR4FiaNKhT3hM6myvvwNmduNEIJmJ+5GuP0HISWYh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735925999; c=relaxed/simple;
	bh=E3GSHxFI0I9fSJuwgxt9gHhH1G41RBBVeLowbU6WGBo=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=N6xZHFLI+RGVzLPbW6vrevnP7DqZmI1nl3IqLBVZzYrXflxSyYBJQahT9H2An2h/n87K/sPEPcXypRd3XmMgZ32itd8NsnYt9+kcnLLX1n+3OkwJ3xIr3I7G5jyUcTvpqv0gxIdjdCGHsFfwVY7Op0EIOBexWWD6Kmscq3TXyyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=qg/3BdWM; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 503HdaZA2426793
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 3 Jan 2025 11:39:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1735925976;
	bh=IPnsZQForuRRuLC8XHYCf3uHvUwZy5LRkZRbdsKECvw=;
	h=From:To:CC:Subject:Date;
	b=qg/3BdWM7GJN9z+YWj3sg7OJQUAH8YTXh0AfmEhXejrLDzB7ljv0dqcUkb9XHThEM
	 zr9bd/u8TzPq4cBfA2DiDkuGNo5zbwFOtmf7z5FM1hhw5L4WjQ68bnQ8quUuF4cpjq
	 uIPaAPeSHxFQCNLsSsNBvbKU9MtqvT9uoTDXeGZ0=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 503HdaP7112803
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 3 Jan 2025 11:39:36 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 3
 Jan 2025 11:39:35 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 3 Jan 2025 11:39:35 -0600
Received: from fllvsmtp8.itg.ti.com ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 503HdZKS060939;
	Fri, 3 Jan 2025 11:39:35 -0600
From: Andrew Davis <afd@ti.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Siddharth
 Vadapalli <s-vadapalli@ti.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Romain
 Naour <romain.naour@skf.com>,
        AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Andrew Davis
	<afd@ti.com>
Subject: [PATCH 1/3] dt-bindings: mfd: syscon: Fix ti,j784s4-acspcie-proxy-ctrl compatible
Date: Fri, 3 Jan 2025 11:39:32 -0600
Message-ID: <20250103173934.27892-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

This compatible was only added to the list for compatibility with older
dtschema (<2024.02). Add it to the other list also so both new and old
tools work.

Fixes: 0d078d47cd3e ("dt-bindings: mfd: syscon: Add ti,j784s4-acspcie-proxy-ctrl compatible")
Signed-off-by: Andrew Davis <afd@ti.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 348025870b0f7..e440ef57fc9b5 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -216,6 +216,7 @@ properties:
           - ti,am62p-cpsw-mac-efuse
           - ti,am654-dss-oldi-io-ctrl
           - ti,am654-icssg-ctrl
+          - ti,j784s4-acspcie-proxy-ctrl
           - ti,j784s4-pcie-ctrl
           - ti,keystone-pllctrl
       - const: syscon
-- 
2.39.2


