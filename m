Return-Path: <devicetree+bounces-311180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nc1EIPJ+LGp0RgQAu9opvQ
	(envelope-from <devicetree+bounces-311180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 23:49:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD49B67C914
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 23:49:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Mtt8Bcgv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311180-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311180-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A64E3146904
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 21:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D2037C93C;
	Fri, 12 Jun 2026 21:49:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59B81E515;
	Fri, 12 Jun 2026 21:49:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781300956; cv=none; b=AlzcOKPMlIFEgs73//6zMOqewhIbAQre+rsDP1qsScX5HQ58N2zxXWywIeha9G61/1UVuXBxD7m1woetCciOpeYt8TC/INuA1B7/KtK4rDm6Olb3QmJ9yeV0XamSzoC0HV+3JszkwtUGDfzqImRWE+dQi3U9lm6AwQI858fGmJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781300956; c=relaxed/simple;
	bh=nT7MZKVb6flS48THPY9L+sS1eL87G3YjEI7sZlmjvbM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=V7hODuJ9a2qVxObfyLpRB4zcecdMRzG9W7+PNUI7KhCySGWJFTE4WcC6QHe6wmjnB4w+BOdEYgdTMPwwyya0LWe6E6ScDXTdS89QpHwu9wYscbiISSVhUGlarUq4a8tH5Kiaw1WC5hdSRfLlkYpZA2nYN5ATWM/3WSg1a+RpMP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mtt8Bcgv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D93E1F000E9;
	Fri, 12 Jun 2026 21:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781300955;
	bh=fqKorzRLcfjvj6jlMCda0kbsnz+fwNILnxS1kauD/9s=;
	h=From:To:Cc:Subject:Date;
	b=Mtt8BcgvFjPc0F4uzboVLPfCrwR+KtZQ1O5nW5KWz5giktjpy47GoEBMhpxEhIyCS
	 wOPiuoGxJjtX6fLBTADIXefOb+yzDvrILfBH+vfFTg3hie1yeC0y5EI+X5y1hCBhaf
	 pAyEVgkDi8wpZyvE+F1Xwq2KdFVIn+JCsKy0+z1BFfme6QOlwngX4NBjGWeuXw/mQB
	 TjBSr+ZlwxYnBB68BhiXfnLToYi/BACwEJHNvgM2SsT+EU5RRWCwlfqjYA6fMr2kc9
	 P+4+NrByPxkdyfW3SgVCqQK1ftDURsQbxhrFbgr+kq81hRMUmiTqUOyeE/msg98tbu
	 5O6xfmoAWFUow==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Animesh Agarwal <animeshagarwal28@gmail.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: Fix RT5677 "realtek,gpio-config" type
Date: Fri, 12 Jun 2026 16:49:11 -0500
Message-ID: <20260612214911.1883234-1-robh@kernel.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311180-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:animeshagarwal28@gmail.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD49B67C914

"realtek,gpio-config" is described as six 8-bit GPIO configuration
values, and the RT5677 driver stores and reads those values as bytes.
The binding incorrectly documented the property as a uint32 array.

Document "realtek,gpio-config" as a uint8-array so the generated
schema matches the hardware definition and the existing driver helper.

Assisted-by: Codex:gpt-5-5
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/sound/realtek,rt5677.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5677.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5677.yaml
index 9ce23e58e5ea..ae27ae78b1b2 100644
--- a/Documentation/devicetree/bindings/sound/realtek,rt5677.yaml
+++ b/Documentation/devicetree/bindings/sound/realtek,rt5677.yaml
@@ -58,7 +58,7 @@ properties:
       0 - floating (reset value)
       1 - pull down
       2 - pull up
-    $ref: /schemas/types.yaml#/definitions/uint32-array
+    $ref: /schemas/types.yaml#/definitions/uint8-array
     minItems: 6
     maxItems: 6
     items:
@@ -130,6 +130,6 @@ examples:
             realtek,pow-ldo2-gpio = <&gpio 3 GPIO_ACTIVE_HIGH>;
             realtek,reset-gpio = <&gpio 3 GPIO_ACTIVE_LOW>;
             realtek,in1-differential;
-            realtek,gpio-config = <0 0 0 0 0 2>;
+            realtek,gpio-config = /bits/ 8 <0 0 0 0 0 2>;
         };
     };
-- 
2.53.0


