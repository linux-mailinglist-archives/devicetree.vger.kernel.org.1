Return-Path: <devicetree+bounces-267468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJCQBDhlnGmTFwQAu9opvQ
	(envelope-from <devicetree+bounces-267468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:33:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 848101780E7
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:33:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38278304434E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6533229AB07;
	Mon, 23 Feb 2026 14:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2uIHCHz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4221329992B;
	Mon, 23 Feb 2026 14:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771857202; cv=none; b=R7qeFffEJ9zX1WlZPql5zv5TBGRRnZqA9DyoEuPaDHta2bKF+sCz517TPR60YkK6jBaAW6SyrSQWSzyw1Ii6ktVDlnORThH+jy1TtpdE34xENoQctnlB0BJ5mzhqgn6D6AbpHIoIglxBs7ViZHNSB5E6fL98dRFKHQT+wSmk7f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771857202; c=relaxed/simple;
	bh=/v1QnnnNv4WTrHPb7ljPxc518XT/vYR93bRoAoBZ+Ys=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SOoSGygig9nPwwBjrzRwVTPDBJYD2OM2vUFHyJB9lpaBjPE2/7GZwJ8MFNwdC2Y1xOn8BNnDooyrI54OiWucMyqPevAJXduACBCt42NZJXA44AMkWsTkOBsof6UavdQPtkdjgehFNjitg8TlRMTsZkqEMTfTZiXZF0qeYAylPx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2uIHCHz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99BE6C116C6;
	Mon, 23 Feb 2026 14:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771857202;
	bh=/v1QnnnNv4WTrHPb7ljPxc518XT/vYR93bRoAoBZ+Ys=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=g2uIHCHzDmD6gD9S4rl5/7Hn9cj7n4Umr0+DjuIxcEeP+OTZWPEFcFmuMHIoGZw+D
	 4tKj/N3vHVUhh0GRnxp96l1JdYKryFjTVJxeiRsvMw3oLsbI9PuCnTxw98Jcm68HQo
	 /bddYnN6L0baVIKO45NEsFK94X12SJWEIbxcH4MJs6DPIbiOrtAuIGoLr8MhDoNzcr
	 MabQmJfSSbC3PE/ttJSsHohtTyjsjaivW/LwvK7TsHT0ztie35l5goMD94TMyn0m/0
	 bInIwBa0wgzMFn7laHElg16/z143czXbMIii5oXBhBo3YTdtggaoHVbDU4yUmMDp3M
	 fx4eTeDezYGYA==
From: Thierry Reding <thierry.reding@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>
Cc: Jon Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH 04/10] dt-bindings: interrupt-controller: tegra: Fix reg entries
Date: Mon, 23 Feb 2026 15:32:59 +0100
Message-ID: <20260223143305.3771383-5-thierry.reding@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260223143305.3771383-1-thierry.reding@kernel.org>
References: <20260223143305.3771383-1-thierry.reding@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267468-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nvidia.com:email]
X-Rspamd-Queue-Id: 848101780E7
X-Rspamd-Action: no action

From: Thierry Reding <treding@nvidia.com>

Tegra210 takes exactly 6 "reg" property entries, as opposed to Tegra30
which supports only 5 entries.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../nvidia,tegra20-ictlr.yaml                 | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/nvidia,tegra20-ictlr.yaml b/Documentation/devicetree/bindings/interrupt-controller/nvidia,tegra20-ictlr.yaml
index 074a873880e5..d0c039d14ad2 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/nvidia,tegra20-ictlr.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/nvidia,tegra20-ictlr.yaml
@@ -35,11 +35,12 @@ properties:
       - enum:
           - nvidia,tegra20-ictlr
           - nvidia,tegra30-ictlr
+          - nvidia,tegra210-ictlr
 
   reg:
     description: Each entry is a block of 32 interrupts
     minItems: 4
-    maxItems: 5
+    maxItems: 6
 
   interrupt-controller: true
 
@@ -64,10 +65,28 @@ allOf:
       properties:
         reg:
           maxItems: 4
-    else:
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: nvidia,tegra30-ictlr
+    then:
       properties:
         reg:
           minItems: 5
+          maxItems: 5
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: nvidia,tegra210-ictlr
+    then:
+      properties:
+        reg:
+          minItems: 6
+          maxItems: 6
 
 examples:
   - |
-- 
2.52.0


