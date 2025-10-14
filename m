Return-Path: <devicetree+bounces-226316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A0766BD70ED
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4E44634EF8E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 02:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C39A3043D5;
	Tue, 14 Oct 2025 02:19:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg150.qq.com (smtpbg150.qq.com [18.132.163.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB1C303CAB
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.132.163.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760408358; cv=none; b=NxKaKq6kxZ/F0sIUjJbfUxwgN2U5B53GjeugfqoQIu1sX8oDrmgqSSGgxmmFTg3F6ASDB3FAVRSQkFvOgQvoqMk381xTABi4oM7fw3O/CL5aJEGtTJD4w9FO6wbPXJPX660HrHVptjHiXKjf3jlDa7/AHiHXnOGSIUYfmfmGBkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760408358; c=relaxed/simple;
	bh=yLfJAT+PY7nSBDSvahi6KaNmIMgHTqkexrWJJHc6Jq4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TRuxV/Ss/Yy0Pk4oHWz6EsLR92dWre8p3oN5JwnbbWGn7GYzJh+qkGkGK8CuJ272If5W/YuKUfk7Fw++uL7YL1IkA7ozrarUz/mEXEJiECRkj7hFkn/bQCzSvGf726MEtD4ZIRwo+FRmFrz4p0PQhod08H4Hki8XEbJp8+U71wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chainsx.cn; spf=pass smtp.mailfrom=chainsx.cn; arc=none smtp.client-ip=18.132.163.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=chainsx.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chainsx.cn
X-QQ-mid: zesmtpip2t1760408193tcc19e30d
X-QQ-Originating-IP: L97C2AOZ3ljzEh0zDfCvPHB+yq3dBgEQHwUDQ8nWgfY=
Received: from chainsx-ubuntu-server.lan ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 14 Oct 2025 10:16:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2101948375338814732
EX-QQ-RecipientCnt: 12
From: Hsun Lai <i@chainsx.cn>
To: Fred Bloggs <f.blogs@napier.co.nz>
Cc: Hsun Lai <i@chainsx.cn>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
Date: Tue, 14 Oct 2025 10:16:13 +0800
Message-ID: <0601AB836AE5F348+20251014021623.286121-2-i@chainsx.cn>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251014021623.286121-1-i@chainsx.cn>
References: <20251014021623.286121-1-i@chainsx.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: M1hhAs3UGlS86sv8CdrYj0h/ny7cm5gN8rXdwXDvtP6ZVfWfin03ngNb
	2EUxQAybovToVYSsIIq6hFhMAl5+ErjeXkfwaBI4OT43zSJFJ0UJOGKhgvFdtGY3pLr8p1g
	OlbXvcLf5QiuF0yGHrrT+4gHxLL+TWHHgretT1iOSpaNvB9Xi0FJzc2ftWnMXK8fNkARRRr
	vOGdm5/F/Nkl0MZG7yygTDeqglyJnVEKpytGfSWfrSV8X21+xlvt2hVgQd+WDzKjbWnPvwA
	3oW+s8NWVKu82kf/YQbifxgG5anxIknEbF7PbvmAOqibxuc9UqIeEeZmPAVOs7+yJjg9FSo
	d+tA5FQfDdf91GDRPXEmSLdgIqTFwEmzd3kqrzlfA2o0tqJDUzi2ITFyWxphS+z8xx2emjr
	gzR9U7yVcrn3V2gIHNtYKi8n/wtJk2M1xks71HBzgh0dLgA7R7/nPvZvj722+Q3XiL7Pfl+
	weWTZmM/rUUUcOH1nP/YTfu+2JRh//4jwHQpMuWKJI2vtK9I/ZeHBXRfljXX2UPG2h28SuR
	/ECxN6dsb+vy8VQYsk00bLjkERFEj6SxAI13Fnf2hUeTsHdwiYfzZyPNmiafAoxF3xidgkc
	oFQSsOE7bJfjZJFvxWWu58LUEetEhGtL8qBlYL/QEg7d7np0KelGTIhojDcHg7HsNOF0Ypm
	w767jRBZsF6gYrQX7P8HBMpr63pXjzBS69RtqxSIYbdiB7epW7Aq6EAvpXrYSb+PPdaSoF8
	uX5amHU6frV57GdOS/dOap0IPqrZ87EqfWtoXr6hkwlaXlJSeRALQNQQWL0lTZwA1dHlgxx
	jzXH74pBzmvTU0Xyg17PGhh5safTGJPzRxmCTMMfQnHrK0qaJwqG0GFfsAcQD2GudW6vyea
	x/hqSoYrSomjTFDz4wHhiGaKr7j1Z7KG54lgUAnBKPqW971IU3BCHx1ILzB0ZR9Vb5NkxeE
	O/2b0meIZuIjNXOa8wq2mNQhpLs1dQw0rO5gK/S1nODCXpQWfIi+1IrZLsmFmzRwuvS6fa5
	AtMnlh5pLutEysR1+k/3S/AwrYeM2ZwunRtmx9R7V6HPKxCOnU
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0

This documents 100ASK DShanPi A1 which is a SBC based on RK3576 SoC.

Link: https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/

Signed-off-by: Hsun Lai <i@chainsx.cn>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6a..033730861 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -15,6 +15,11 @@ properties:
   compatible:
     oneOf:
 
+      - description: 100ASK DshanPi A1 board
+        items:
+          - const: 100ask,dshanpi-a1
+          - const: rockchip,rk3576
+
       - description: 96boards RK3399 Ficus (ROCK960 Enterprise Edition)
         items:
           - const: vamrs,ficus
-- 
2.43.0


