Return-Path: <devicetree+bounces-261726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MC0uJGx6gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:20:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ABDCAC9F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:20:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 944313006780
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F143590A9;
	Mon,  2 Feb 2026 10:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="c5sszhZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB09357A34
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.24
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027608; cv=none; b=mkb6wve3dn9HxVRcK+vbo9xzD6h5+gDMfRDr7vaPVXGMMqNpJR4oIvX5vVqF1CpJBZI6NEJBFivx2HQoevsmPsFTW5dVIguPp1d6gSxjZAvAIrJczzL/e96R0g3bZrpARXm6tUeTWwZXnxNKdWPJV7NHzFKfqu3aPG825FyGrgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027608; c=relaxed/simple;
	bh=W26wZTN4cYPmTG8/320nYWMNj9yUU3A1TuhhG1rew8o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=jWRLDFszkF7qjnq0yg0jnTiaJGmykNb5VG41MRTeTRiCS9v2l0JNCaqiS6K4nH1AxM8mteyFF9NkiH5UPVNMEKdGYEugFwYbV9KCzKuEQMmaMBEHUiH0afc26zFwW4ME2Uwi0XVnem51894iw5XUl/WwyFlSjgaCH/BcHk0VSxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=c5sszhZR; arc=none smtp.client-ip=203.254.224.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20260202101957epoutp014a328bd27afa30d75be2c33bb0bb4ee7~QZrjq2Fh82788127881epoutp01Y
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:19:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20260202101957epoutp014a328bd27afa30d75be2c33bb0bb4ee7~QZrjq2Fh82788127881epoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1770027597;
	bh=7rkA62EyICvB2Oj4g0Lcl7ZwX6bRw380njYJqIERUKo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c5sszhZRbIfY0Tra+7A60ZVQpsuKnJ1N6UEUglGps1UlVT0WmMS++pJEILqhEPsiS
	 0IwZTXVqvPZ9lxt9726sugrf3HR3UgZ2EsV4yC+YNNrpE1gooRrSEDrBO+jJIVeb1i
	 a0Wu/zJKU8negrp92S6AI9LN+DwriTvoemRLuUo4=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20260202101956epcas5p4f5ddc6ca95705d2df5dbe0da14bf8ae0~QZrio5skk1684616846epcas5p41;
	Mon,  2 Feb 2026 10:19:56 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.88]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4f4N0C5MrLz6B9m6; Mon,  2 Feb
	2026 10:19:55 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20260202101954epcas5p27735b03488efceba5d7f970931905ec5~QZrgxJzbN0775007750epcas5p22;
	Mon,  2 Feb 2026 10:19:54 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260202101952epsmtip18aba22eca8314236102eb90dda3f28a7~QZreYo_hN1761017610epsmtip1W;
	Mon,  2 Feb 2026 10:19:52 +0000 (GMT)
From: Raghav Sharma <raghav.s@samsung.com>
To: krzk@kernel.org, s.nawrocki@samsung.com, cw00.choi@samsung.com,
	alim.akhtar@samsung.com, mturquette@baylibre.com, sboyd@kernel.org,
	robh@kernel.org, conor+dt@kernel.org, sunyeal.hong@samsung.com,
	shin.son@samsung.com
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, chandan.vn@samsung.com,
	dev.tailor@samsung.com, karthik.sun@samsung.com, Raghav Sharma
	<raghav.s@samsung.com>
Subject: [PATCH 1/3] dt-bindings: clock: exynosautov920: add G3D clock
 definitions
Date: Mon,  2 Feb 2026 16:05:53 +0530
Message-Id: <20260202103555.2089376-2-raghav.s@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202103555.2089376-1-raghav.s@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260202101954epcas5p27735b03488efceba5d7f970931905ec5
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-543,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260202101954epcas5p27735b03488efceba5d7f970931905ec5
References: <20260202103555.2089376-1-raghav.s@samsung.com>
	<CGME20260202101954epcas5p27735b03488efceba5d7f970931905ec5@epcas5p2.samsung.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-261726-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,samsung.com:dkim,samsung.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raghav.s@samsung.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[samsung.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 70ABDCAC9F
X-Rspamd-Action: no action

Add device tree clock binding definitions for CMU_G3D

Signed-off-by: Raghav Sharma <raghav.s@samsung.com>
---
 .../clock/samsung,exynosautov920-clock.yaml   | 21 +++++++++++++++++++
 .../clock/samsung,exynosautov920.h            |  6 ++++++
 2 files changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml
index 1318720193b3..6b1fc61a2ff9 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml
@@ -35,6 +35,7 @@ properties:
       - samsung,exynosautov920-cmu-cpucl0
       - samsung,exynosautov920-cmu-cpucl1
       - samsung,exynosautov920-cmu-cpucl2
+      - samsung,exynosautov920-cmu-g3d
       - samsung,exynosautov920-cmu-hsi0
       - samsung,exynosautov920-cmu-hsi1
       - samsung,exynosautov920-cmu-hsi2
@@ -287,6 +288,26 @@ allOf:
             - const: oscclk
             - const: noc
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynosautov920-cmu-g3d
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (38.4 MHz)
+            - description: CMU_G3D SWITCH clock (from CMU_TOP)
+            - description: CMU_G3D NOCP clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: switch
+            - const: nocp
+
 required:
   - compatible
   - "#clock-cells"
diff --git a/include/dt-bindings/clock/samsung,exynosautov920.h b/include/dt-bindings/clock/samsung,exynosautov920.h
index 06dec27a8c77..f2628c220b22 100644
--- a/include/dt-bindings/clock/samsung,exynosautov920.h
+++ b/include/dt-bindings/clock/samsung,exynosautov920.h
@@ -309,4 +309,10 @@
 #define CLK_MOUT_MFD_NOC_USER           1
 #define CLK_DOUT_MFD_NOCP               2
 
+/* CMU_G3D */
+#define FOUT_PLL_G3D                    1
+#define CLK_MOUT_G3D_NOC                2
+#define CLK_MOUT_G3D_SWITCH_USER        3
+#define CLK_MOUT_G3D_NOCP_USER          4
+
 #endif /* _DT_BINDINGS_CLOCK_EXYNOSAUTOV920_H */
-- 
2.34.1


