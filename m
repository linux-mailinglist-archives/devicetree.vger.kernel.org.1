Return-Path: <devicetree+bounces-323438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RljUFGFbT2pufAIAu9opvQ
	(envelope-from <devicetree+bounces-323438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:27:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF1972E425
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:27:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=VCLhaRXO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323438-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323438-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C7E4302F9AD
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 249F53ED13B;
	Thu,  9 Jul 2026 08:26:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E837C3806DA;
	Thu,  9 Jul 2026 08:26:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783585613; cv=none; b=njLNgelu4yHjA2xyd7z0jBquTg5kR1W7DQTEhvneEAx4CgxX3AGIca6Hsj5l+s856z4jH6Moj4+JrRyDPTWDl8dHidjyvM83T1vcazL127oshZZcdmdGOEkMJkP0H9iMMnDNJbzIDy1pmZ2o32b3Z0EVDfwdiBWvcD5a/unjYLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783585613; c=relaxed/simple;
	bh=wy5SZcpI6/jWc/lOr/zKxKWEbpIR/CMuHGQUzKbv9qY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AqZw+FU6u03QI/PXNAVYlVOPM+jo44FR0LL5h1RhKRqtgjcDBJyiKpZ/z3QS/VVJn2WXBTGg74QH0zO/Qmp1evYKohBulMPUa7uIu9d4Bd2T1G1izEBIxreMoslNBrKC2+HpzBjmiTMafyqzLO+q+xiFHRZkHxV7yAlvsFcvVig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCLhaRXO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9668CC2BCB7;
	Thu,  9 Jul 2026 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783585612;
	bh=wy5SZcpI6/jWc/lOr/zKxKWEbpIR/CMuHGQUzKbv9qY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=VCLhaRXOUoZ7zkZUf3rbYh6H6r9VVysnQmXfaOT9ZaJOldwR489rV1Ga3nToRF+Vi
	 aATrIp6IaeRsOKOzDyghiCzWbgqTmzBufW6RzdsIlSOe2dyI5AOtlSpUYeCI2dW9j8
	 1GGY3prAEbIQ1RVw5mZirDSmHOLLOIj8kECIoBdeWBMN6ss9JfEeYsgGn7oft/HEzh
	 vEZDV+YwjF47N+J4DGm5YcZ1SzNZwTuAyE6kLyes0Ujx+woxrgJZb9aSWodK3wz18U
	 S2G4f62ZpZS+KaJwGwdbnZQLgcgKV8mCQAoqtNYT4snm1FOW3wXHQjQKJYfYS/tBK4
	 /2fiO522uIwAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78BBCC44501;
	Thu,  9 Jul 2026 08:26:52 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Thu, 09 Jul 2026 08:26:48 +0000
Subject: [PATCH 1/3] dt-bindings: reset: amlogic: Add A9 reset compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-a9-reset-v1-1-fd7cf039b853@amlogic.com>
References: <20260709-a9-reset-v1-0-fd7cf039b853@amlogic.com>
In-Reply-To: <20260709-a9-reset-v1-0-fd7cf039b853@amlogic.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783585609; l=1435;
 i=xianwei.zhao@amlogic.com; s=20251216; h=from:subject:message-id;
 bh=7LNW8ZvaZWeVEkBMdvk9VNvgoGwo+rCuBHKz7WRUMqs=;
 b=uONKi2L9TMAYQPdEjU+xjWFSPacFpUyOPj/7ey/WJawPT5d9d7oUYGyYwElqMKrmSROx/YAT6
 mvpejoyMxsQC/NK7D3hLvk4NGmdJN1+MHHtqheucvSKrVtHXXoHJ2wc
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=dWwxtWCxC6FHRurOmxEtr34SuBYU+WJowV/ZmRJ7H+k=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20251216 with
 auth_id=578
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323438-lists,devicetree=lfdr.de,xianwei.zhao.amlogic.com];
	FORGED_RECIPIENTS(0.00)[m:p.zabel@pengutronix.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:xianwei.zhao@amlogic.com,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[pengutronix.de,kernel.org,linaro.org,baylibre.com,googlemail.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[xianwei.zhao@amlogic.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amlogic.com:replyto,amlogic.com:mid,amlogic.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACF1972E425

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Document the reset controller compatibles used by the Amlogic A9 SoC.
Add support for the A9 AO reset controller and add the A9 reset
compatible with the T7 reset controller as fallback.

Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
index 150e95c0d9be..e585f71879f2 100644
--- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
@@ -19,6 +19,7 @@ properties:
           - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
           - amlogic,meson-a1-reset # Reset Controller on A1 and compatible SoCs
           - amlogic,meson-s4-reset # Reset Controller on S4 and compatible SoCs
+          - amlogic,a9-ao-reset
           - amlogic,c3-reset # Reset Controller on C3 and compatible SoCs
           - amlogic,t7-reset
       - items:
@@ -26,6 +27,10 @@ properties:
               - amlogic,a4-reset
               - amlogic,a5-reset
           - const: amlogic,meson-s4-reset
+      - items:
+          - enum:
+              - amlogic,a9-reset
+          - const: amlogic,t7-reset
 
   reg:
     maxItems: 1

-- 
2.52.0



