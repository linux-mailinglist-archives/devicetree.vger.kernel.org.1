Return-Path: <devicetree+bounces-218656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77499B82C20
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:27:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A3841B251C1
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 03:28:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80D9523C38C;
	Thu, 18 Sep 2025 03:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="Y3yrUWal"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B441B238142
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758166042; cv=none; b=lo8JmZ+n/bquJgy9ntlE7R76UDv15t8o0JlC76POGxE5DxbhcP+Zw91T8/3aRJ611SYfPONeJG3dlY1vOm5foqoopVYcjd2Sz1X7S0q6jZyl4KpllPlTt6Enh/tn/FVNREHhL8MeWObABadL8Nz3Cp2wk85F+ImU3bFkIdHAItk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758166042; c=relaxed/simple;
	bh=IWAvZc9XNOhKSbefPW6ZuZDu3C9roTl6Uw9ZX8MCcnY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 References; b=t4t6DU4wWdxtAqm7nnmGWBOFRuYE7QKkx/d/OM4jqPsI4Y0ewKo+4gY+QM3CPF8YBm/bKy5IQ9scjMtbHsjeDHv8WKsq4BdMMsKnN4SJnJB/LQN+8AbEwDFv/Iw6GJ7Oqjf3ANg723mcVCnEOBT66/ckv/jfD2Lx+yfd2vk+Z24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=Y3yrUWal; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250918032717epoutp049cdb432d40a22a26ff4f3afbadbcc4a8~mQrI-ENGb2973629736epoutp04z
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:27:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250918032717epoutp049cdb432d40a22a26ff4f3afbadbcc4a8~mQrI-ENGb2973629736epoutp04z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1758166037;
	bh=NE3XfrRkhwEKqjy08lI0S/9Q38XrQ40aHbrikvthnuI=;
	h=From:To:Cc:Subject:Date:References:From;
	b=Y3yrUWal/rfn3draRh9ilZvKOqQh6Hxx/sLwKVZ/svR5bpPXrgmhbUqRnYQcm2Btz
	 SQupOnZ8mSJiWLdhzXhZaHihhh0NoNKKsDLlmpx2YQz/oU0f+PNc+RTiBUIW/PrIOa
	 EEoTgOl6pcgItWuAH9DGB1SNbeUBTcWCDIw3msv8=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250918032716epcas5p38f08377a24228c806b6f1569df328559~mQrILNqbe1789717897epcas5p3t;
	Thu, 18 Sep 2025 03:27:16 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.93]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4cS1KJ03X9z6B9m5; Thu, 18 Sep
	2025 03:27:16 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20250918032715epcas5p1d1144cc09fa9c301315a5e2778d8668e~mQrGiXWxN3008930089epcas5p1Z;
	Thu, 18 Sep 2025 03:27:15 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250918032712epsmtip2d9dccd5b8fb088ae2db9766928a16ca5~mQrDm1fkE1525515255epsmtip2V;
	Thu, 18 Sep 2025 03:27:11 +0000 (GMT)
From: Ravi Patel <ravi.patel@samsung.com>
To: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, krzk@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, ksk4725@coasia.com, pjsin865@coasia.com,
	gwk1013@coasia.com, bread@coasia.com, jspark@coasia.com,
	limjh0823@coasia.com, lightwise@coasia.com, hgkim05@coasia.com,
	mingyoungbo@coasia.com, smn1196@coasia.com, shradha.t@samsung.com,
	swathi.ks@samsung.com, kenkim@coasia.com, Ravi Patel
	<ravi.patel@samsung.com>
Subject: [PATCH v2] dt-bindings: serial: samsung: Add compatible for
 ARTPEC-9 SoC
Date: Thu, 18 Sep 2025 08:57:03 +0530
Message-ID: <20250918032703.8885-1-ravi.patel@samsung.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250918032715epcas5p1d1144cc09fa9c301315a5e2778d8668e
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250918032715epcas5p1d1144cc09fa9c301315a5e2778d8668e
References: <CGME20250918032715epcas5p1d1144cc09fa9c301315a5e2778d8668e@epcas5p1.samsung.com>

Add Axis ARTPEC-9 uart compatible to the bindings documentation.
It is similar to the older samsung,exynos8895-uart design.

Signed-off-by: Ravi Patel <ravi.patel@samsung.com>
---
Change in v2:
- Removed "axis,artpec9-uart" string from allOf section
Link to v1: https://lore.kernel.org/all/20250917071342.5637-1-ravi.patel@samsung.com/T/#u
---
 Documentation/devicetree/bindings/serial/samsung_uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index 1a1f991d5364..d12018aaac9b 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -48,6 +48,7 @@ properties:
           - const: samsung,exynos850-uart
       - items:
           - enum:
+              - axis,artpec9-uart
               - samsung,exynos7870-uart
           - const: samsung,exynos8895-uart

--
2.17.1


