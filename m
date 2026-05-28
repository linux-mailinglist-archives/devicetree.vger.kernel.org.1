Return-Path: <devicetree+bounces-303925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMtXFP90GGo8kQgAu9opvQ
	(envelope-from <devicetree+bounces-303925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 19:01:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 099735F556D
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 19:01:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ED20B3182F4E
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351F03F39C2;
	Thu, 28 May 2026 16:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b="edpOYz1n"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CB9352023;
	Thu, 28 May 2026 16:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779985122; cv=none; b=XDhE2wxWRdJx8QvCSD1F8W6iNTS3/mwbdp38tetsjTK4U9DY6BnVmQkekBFbShwOYzxvs5UlnLlJYDB2nt8OnNa7j7ju+vuSZos4jVeomLdXUnB2gBEOtAH2GAhAgVEKUWP7vPgBIb5ZRdpCdMuDmdkNoeRFKVCjG86I3S6Ps4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779985122; c=relaxed/simple;
	bh=MHHt2ANc8Qe7TWRx8Im5NLPa2izmN2X0SM9HOq6qFMs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uMOI76nz6t69NWIu7r4y0OY6NdLbV07H+O8FaoZPGcto+0y7mWNkVpnRCTtpanJVfv2ZFboR/0Efxv66wO7F8qIVJMG+5J57Qi9m9adRmPL1xZAyyztnKxjesRIQhEf8jyI7CfEQn+q8CVRK6Rw+wkpJfKvTUxVnfkX+rymHv2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=edpOYz1n; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cde6:a200:bc59:4aed:9f3b:ec21])
	by srv01.abscue.de (Postfix) with ESMTPSA id 9A7EC1C6B97;
	Thu, 28 May 2026 18:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1779985110;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BHiWGAaKNrxwaOndt6yaXs1hWGrtAVLI4xI13GIu7Wg=;
	b=edpOYz1njSYShku4xStilkWdRrFn2RxP+J+ki7CiBqY/ojKQ7s636YwZaKbsEHzJAFrPaQ
	I/ViREFEJCut9jqNQaGUXirznsU+ANw5lLEI/5C6X+7wpTm5bESmamXiYg/JGBZuixrOAn
	j/ScTETMdoXARl3EmhyGQS7g4yzLKUJLJ7yawOkcdhZiEUc19bUJZB0pDmRU3vXGH06H6g
	o5n6638uGucaA5h2rcNp91g63yKCrMS/3RHudAekO4OhOwzZg+NoCXzvbdxYqIuYwd8V3I
	B2f0mFekCjH2xOq3XxG37Vdz6t2w0jGAGtBRHZPF7mtmGG9oicOvHriCsTxfqQ==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Thu, 28 May 2026 18:18:23 +0200
Subject: [PATCH PARTIAL-RESEND v3 1/3] regulator: dt-bindings: sc2731:
 Deprecate compatible property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260528-sc27xx-mfd-cells-v3-1-25cd685d2743@abscue.de>
References: <20260528-sc27xx-mfd-cells-v3-0-25cd685d2743@abscue.de>
In-Reply-To: <20260528-sc27xx-mfd-cells-v3-0-25cd685d2743@abscue.de>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linux.alibaba.com];
	TAGGED_FROM(0.00)[bounces-303925-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_NA(0.00)[abscue.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[abscue.de:email,abscue.de:mid,abscue.de:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 099735F556D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The node containing the regulators is always a child of the main PMIC
node, which already has a compatible property identifying the type of
PMIC. This makes the compatible in the child node redundant. Mark it
as deprecated and remove it from the required property list and the
examples.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Acked-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml                | 2 --
 .../devicetree/bindings/regulator/sprd,sc2731-regulator.yaml          | 4 +---
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml b/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml
index b023e1ef8d3c..12b3258daef5 100644
--- a/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml
+++ b/Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml
@@ -222,8 +222,6 @@ examples:
         };
 
         regulators {
-          compatible = "sprd,sc2731-regulator";
-
           BUCK_CPU0 {
             regulator-name = "vddarm0";
             regulator-min-microvolt = <400000>;
diff --git a/Documentation/devicetree/bindings/regulator/sprd,sc2731-regulator.yaml b/Documentation/devicetree/bindings/regulator/sprd,sc2731-regulator.yaml
index 9bd752bab68e..7af20a4781b7 100644
--- a/Documentation/devicetree/bindings/regulator/sprd,sc2731-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/sprd,sc2731-regulator.yaml
@@ -26,6 +26,7 @@ description: |
 
 properties:
   compatible:
+    deprecated: true
     const: sprd,sc2731-regulator
 
 patternProperties:
@@ -39,8 +40,5 @@ patternProperties:
     $ref: regulator.yaml#
     unevaluatedProperties: false
 
-required:
-  - compatible
-
 additionalProperties: false
 ...

-- 
2.51.0


