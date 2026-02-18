Return-Path: <devicetree+bounces-266367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBJMDJSVlWk1SgIAu9opvQ
	(envelope-from <devicetree+bounces-266367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:33:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F00E1557F5
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 62E423088AF0
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CDEA2FF651;
	Wed, 18 Feb 2026 10:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="j+fNq8Zn"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (pouet.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9322FDC40;
	Wed, 18 Feb 2026 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771409995; cv=none; b=ak5WOFzW7Hi2GAAleaRMnO/MqWAzWyCiXYX9vnvvunn74h1/hi64cNfrW2uoDEIB9Zv44rwe7mMXyND2+pDZikCdskkvakhUN27DZeLLH/RXu+n8zOySSP/D67YKbNNP2w7ulRFiUhCBSCRsNO3x5F35ii1AuRbOxAs8bCinU64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771409995; c=relaxed/simple;
	bh=1mPXmmMne05pYAaucmru6rWTvugDQH1iZH4JWLruXfI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mT8GxIGPSKhymxHN8D1ZmvSABGIMhCVT+l2mDK8ItMIELZJZts+tVhis/mCXjXiWDjQu/YQnfgIQ92nWX8xQrBorRjkNQQmE4dSyN24lHola7U5Tefa84WuvCoOY73PmxlswyfmaY2wEQfr11ul0gQo14G+qyGVtaBzl7SyxHfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=j+fNq8Zn; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from localhost.localdomain (2A02-842B-8136-0001-B865-661d-5641-E7C6.rev.sfr.net [IPv6:2a02:842b:8136:1:b865:661d:5641:e7c6])
	by courrier.aliel.fr (Postfix) with ESMTPSA id 9E0B14A551;
	Wed, 18 Feb 2026 10:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1771409991;
	bh=1mPXmmMne05pYAaucmru6rWTvugDQH1iZH4JWLruXfI=;
	h=From:To:Cc:Subject:Date;
	b=j+fNq8ZnvCqilBeAnFnjfbYRubTFgYCojnKlGGQ0cd8iJJRFhFJ7C/H0ES/a3oUC7
	 LU2RAVJbNLMtib7tpnwImc+rG9ki1afJfF+Kq4hVkS0/jVYzMyGZ3riL4O2vuqM40R
	 4jdFOvVJDHh4B07YFyDm2JuB7StrhuJSGikg0RFQ=
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
To: linux-amlogic@lists.infradead.org
Cc: Ronald Claveau <linux-kernel-dev@aliel.fr>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jian Hu <jian.hu@amlogic.com>,
	Xianwei Zhao <xianwei.zhao@amlogic.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] dt-bindings: clk: meson: Add Amlogic T7 fix pll support
Date: Wed, 18 Feb 2026 11:19:02 +0100
Message-ID: <20260218101904.35541-1-linux-kernel-dev@aliel.fr>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266367-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[aliel.fr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,aliel.fr:mid,aliel.fr:dkim,aliel.fr:email]
X-Rspamd-Queue-Id: 4F00E1557F5
X-Rspamd-Action: no action

Add PLL for the clock controller of the Amlogic T7 SoC family.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 .../devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml       | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
index 49c61f65deff..6a1598e6c359 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
+++ b/Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
@@ -23,6 +23,7 @@ properties:
       - amlogic,t7-mpll
       - amlogic,t7-hdmi-pll
       - amlogic,t7-mclk-pll
+      - amlogic,t7-fpll
 
   reg:
     maxItems: 1
@@ -42,6 +43,7 @@ properties:
       - const: in0
       - const: in1
       - const: in2
+      - const: xtal
     minItems: 1
 
 required:
@@ -72,11 +74,12 @@ allOf:
           contains:
             enum:
               - amlogic,t7-gp0-pll
-              - amlogic,t7-gp1--pll
+              - amlogic,t7-gp1-pll
               - amlogic,t7-hifi-pll
               - amlogic,t7-pcie-pll
               - amlogic,t7-mpll
               - amlogic,t7-hdmi-pll
+              - amlogic,t7-fpll
 
     then:
       properties:
-- 
2.49.0


