Return-Path: <devicetree+bounces-286573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKHSJrUu2Wl+nAgAu9opvQ
	(envelope-from <devicetree+bounces-286573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 19:09:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD92D3DAE4A
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 19:09:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73D6C3099B65
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 16:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3033E3150;
	Fri, 10 Apr 2026 16:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="opqWbYQ7"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE93E122C;
	Fri, 10 Apr 2026 16:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775839752; cv=none; b=R4+dYDKX5wAZz28Sfzx9exv1n/n+1Dz6nIU1Q7+U6t6yPa3wMCtjo7mirzTW9qUN3DlFwretP4iLivAxZirTBltAKHfvYrs0IkFekHbkItot6BCzNM+2DoA4BQuU0rPOoyrIbKFRWKiQ9aL2AxNnMGiHo+A+1QQwSWvoW4xjSJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775839752; c=relaxed/simple;
	bh=WdROqCoECVugDQijrfKUvfX+9RIJRisOOsFej55YKwg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T3DOzsbTEMs4ZQHEMmiX+iUTJVIiRbNcJYE8K4iiOMSo1pZ0baHtUdNuLxR0Dxf2XP0cny3UHpZluJDTv7vdFGh9Ei+qi8OcdVoCMdl8kea89i66v6hfTy5gJCU6jVaNHuyGryuPAJyZdI015wk2qzVX065ktuI+4oaEHzlZDnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=opqWbYQ7; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1775839737;
	bh=WdROqCoECVugDQijrfKUvfX+9RIJRisOOsFej55YKwg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=opqWbYQ7sf6aabpzxm4KSRCgjtTIn5S/Wt8/TCvY+72UeS6EpU1jbmAEPp8B1NDoT
	 VrLrmuLR3zLcSHEkIHarpN2q9jHdpWoJCK/P9bTzkLwX9T+x12fSaj1vlIUTSVTT5y
	 r4QbhCMqTTxs64xL0eS4pvS/wLKFZ06bUr9ChStI=
Date: Fri, 10 Apr 2026 18:48:06 +0200
Subject: [PATCH 5/8] arm64: dts: amlogic: t7: Add cooling cells to all CPUs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260410-add-thermal-t7-vim4-v1-5-19f2b8da74d7@aliel.fr>
References: <20260410-add-thermal-t7-vim4-v1-0-19f2b8da74d7@aliel.fr>
In-Reply-To: <20260410-add-thermal-t7-vim4-v1-0-19f2b8da74d7@aliel.fr>
To: Guillaume La Roque <glaroque@baylibre.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openssh-sha256; t=1775839731; l=2093;
 i=linux-kernel-dev@aliel.fr; s=id_ed25519; h=from:subject:message-id;
 bh=WdROqCoECVugDQijrfKUvfX+9RIJRisOOsFej55YKwg=;
 b=U1NIU0lHAAAAAQAAADMAAAALc3NoLWVkMjU1MTkAAAAgMGec55oxeeisqykQiUedekMYyOnR9
 BG9E/7rDWyqdNoAAAAGcGF0YXR0AAAAAAAAAAZzaGE1MTIAAABTAAAAC3NzaC1lZDI1NTE5AAAA
 QKwgld/90fnSSYPI1cfBdoimdPnfSWBERAc4+VWy298WxeSWybBWmp8t6VK5lG9t69cBqxWs6b3
 J/1uKs0FbxwA=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openssh;
 fpr=SHA256:kch4osYZ6A1BrPps5AUs6KnfdE2wm4ocMtyTc8TmZMs
X-Spamd-Result: default: False [4.84 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286573-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[aliel.fr:s=courrier-s1];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[aliel.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c04:e001:36c::/64];
	NEURAL_SPAM(0.00)[0.600];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email,0.0.0.102:email]
X-Rspamd-Queue-Id: DD92D3DAE4A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add #cooling-cells = <2> to all CPU nodes (both little and big cluster)
to allow them to be used as cooling devices in thermal zone mappings.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index 560c9dce35266..7aec65f036a9c 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -63,6 +63,7 @@ cpu100: cpu@100 {
 			i-cache-size = <0x8000>;
 			i-cache-sets = <32>;
 			next-level-cache = <&l2_cache_l>;
+			#cooling-cells = <2>;
 		};
 
 		cpu101: cpu@101 {
@@ -77,6 +78,7 @@ cpu101: cpu@101 {
 			i-cache-size = <0x8000>;
 			i-cache-sets = <32>;
 			next-level-cache = <&l2_cache_l>;
+			#cooling-cells = <2>;
 		};
 
 		cpu102: cpu@102 {
@@ -91,6 +93,7 @@ cpu102: cpu@102 {
 			i-cache-size = <0x8000>;
 			i-cache-sets = <32>;
 			next-level-cache = <&l2_cache_l>;
+			#cooling-cells = <2>;
 		};
 
 		cpu103: cpu@103 {
@@ -105,6 +108,7 @@ cpu103: cpu@103 {
 			i-cache-size = <0x8000>;
 			i-cache-sets = <32>;
 			next-level-cache = <&l2_cache_l>;
+			#cooling-cells = <2>;
 		};
 
 		cpu0: cpu@0 {
@@ -119,6 +123,7 @@ cpu0: cpu@0 {
 			i-cache-size = <0x10000>;
 			i-cache-sets = <64>;
 			next-level-cache = <&l2_cache_b>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -133,6 +138,7 @@ cpu1: cpu@1 {
 			i-cache-size = <0x10000>;
 			i-cache-sets = <64>;
 			next-level-cache = <&l2_cache_b>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -147,6 +153,7 @@ cpu2: cpu@2 {
 			i-cache-size = <0x10000>;
 			i-cache-sets = <64>;
 			next-level-cache = <&l2_cache_b>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -161,6 +168,7 @@ cpu3: cpu@3 {
 			i-cache-size = <0x10000>;
 			i-cache-sets = <64>;
 			next-level-cache = <&l2_cache_b>;
+			#cooling-cells = <2>;
 		};
 
 		l2_cache_l: l2-cache-cluster0 {

-- 
2.49.0


