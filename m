Return-Path: <devicetree+bounces-48561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4483F87283F
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 21:03:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D955E1F23CE3
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2690512A17F;
	Tue,  5 Mar 2024 20:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="ik2Puxjf"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-164.mail.qq.com (out203-205-221-164.mail.qq.com [203.205.221.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E3012A140
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 20:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709669005; cv=none; b=Pudeo8k8AQSNdv/ydvwQs0Tc9vAPBGiRQzuEM/jZYvKDBEZdLMnlWKyOrm4YEaSGUkpwgjNgxU1zuMij/Ks2dl/k3sD+ivQ9LgDw8IE03YMiaJPkUVVfRM8lffjaE8bihDOUW6ahpOMY8bhNFz5tCFN6qDC1wpTukN6kzv/IGU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709669005; c=relaxed/simple;
	bh=O7BvSwlYz5q/4vtoLO0hK6uwpygGTir//zkJjVtpwBM=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=Z7F3XSAGDICf2t/KCNFGIvUWZjcszzD8BfDSEVF1/iq2J5e5ElBY8Fjzju7H50avmsxRSbxlZK5CBQWrWSaS/3XHQX62x5GcEJlrMae/RvvmBj3tGaETvnVsBH4/2uI8m2LmFB3c54bnyNujh/bzfvXKyEMdr84NzIGeGMBbSsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=ik2Puxjf; arc=none smtp.client-ip=203.205.221.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709668996; bh=RRjix0llQAKkZ0Th8vUk4UX/Alg4KPw3+Xw8qybrfN8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ik2PuxjfyigyEZQirzJIcyjREFKznjHS3coUGqDBfyEsqM90MqomA9OO3E8ieaIe6
	 Gki3yQOUk+iMAQHBhdEzN9GDnR+qUEENMLQIcbuFHcCBbhzD9zOjpdwh+e6nqNdD1d
	 u2wkVGELwJkVDRppCjpbBzNAfufZn26tzjzEEHFE=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrsza1-0.qq.com (NewEsmtp) with SMTP
	id C898283; Wed, 06 Mar 2024 04:03:08 +0800
X-QQ-mid: xmsmtpt1709668993te08079ng
Message-ID: <tencent_AE58630CDF9DA09FF6B5633B2E4C8C668806@qq.com>
X-QQ-XMAILINFO: MM4ufCTznNl4ZcuhpieiNuvZ5tqX44Yafw+IBkMLVPpiqUBHnMOZOqobmBDCyl
	 Kss5hynsGzO5CjHA26nX59TyIgC2DZwCWNgOwNyFuGeoa28Jxq3tPkuO7Y7l0IGfjmS6wZ7PV9gU
	 G4Bee/DtUCrsjdt/BvSLIWzb8dNgF1fyQ2MOKPtfldWzAwQVpwWQb6G71yq7ffz/OVZi2hQaR3LT
	 bRNy8nht7Ijk/ukAjat+3pBtKq0wLIiXLWY44qsTLg3uJRSRwStOnCz5jhyv5XkLfF+Ayj64gCp5
	 hgx1E92nVjw6PQzlu6SmqE3NKBokxjw9yUEgJkMBA4fK93adD02bmgWIt3IuhZQZ45YoGCD4Ia5D
	 G59SFfWcNCFPoyzBXN+YpajYcszQSRqfYyJOUKRIr0xPxmIdN/kAD3MH6G/jOcSUrPFt4+JYdW1P
	 ZxwiLgqYGISL9LogTm7+6v3wVyUlBtqJiun0Dx3/3jBwp5JHMHCAxh2YeJsBPlmaJ2XFCe4+4bUn
	 uiAExpuna/hjZtgQnAfL0+NvowD3VgxqohcdVNp3OAoUiHOBYc9iyZ9DNVUtpM6/K8wMinAYPvCa
	 85WiWVU/TCTKJWY8m6VjlM5wGiXSlz6IiYKbqq5X85kSMlmtMRIiZKNxDQyXTB9ytca/ieBzqExQ
	 mopA32PSzjeuSIBYrfJrFJm9XsTK6isW0mtlXVQ6LrcvDa3jlT0oBRtTc2m47DAxL6sWQ10/oCeB
	 G4ENzDbBsBBl21QabCRZS0/5PTVVjcyPyoxiK3heGJRwKDUje2WytuNTxbzLcHo2XEZvNsO9sLFV
	 CusCGMpUv/EzphWecdSs+BaV/IKWPpTYlB1y+ZKKZ2ByxjuLqIhTEuLFy3y1l5AKcHfBtEHOrTTn
	 eFHzcdr4nyqUJFAmUasynLjtRgko3Hm8aWoqaLpeplvLxvZyXxwsVlwvzTgY3oPtrPh8stdCGZXh
	 CxIpNvgXJaJMM16dCioJwosPpIhYfnljaQb8jkdHznl03vwmuIG3v5JKMryU+mrvnJVgdupwgEtC
	 MKSz9Qr92n+80kpkajo3mWcps3LDnLyvQbbP+qORShRs3xv2WyTdXx1kzqmaQA+7hYlcRnOITLw1
	 GDiAWIOPJLESdDYsBaYrWHVWmF1qxSvV/A1ZFN
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Guo Ren <guoren@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yangyu Chen <cyy@cyyself.name>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v5 3/7] dt-bindings: timer: Add Canaan K230 CLINT
Date: Wed,  6 Mar 2024 04:02:58 +0800
X-OQ-MSGID: <20240305200302.1093082-3-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <tencent_FC10B3C630BE27412FED2547245CBE18D807@qq.com>
References: <tencent_FC10B3C630BE27412FED2547245CBE18D807@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for Canaan K230 CLINT.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index fced6f2d8ecb..06c67f20ad3c 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -38,6 +38,7 @@ properties:
       - items:
           - enum:
               - allwinner,sun20i-d1-clint
+              - canaan,k230-clint
               - sophgo,cv1800b-clint
               - sophgo,cv1812h-clint
               - thead,th1520-clint
-- 
2.43.0


