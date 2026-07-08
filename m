Return-Path: <devicetree+bounces-322556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XPiHJsj6TWqEBAIAu9opvQ
	(envelope-from <devicetree+bounces-322556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:22:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBF9722976
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:22:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fn6fKnGu;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322556-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322556-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A41AC304ED5F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACD8E3D5676;
	Wed,  8 Jul 2026 07:16:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E963F6C2F;
	Wed,  8 Jul 2026 07:16:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783494962; cv=none; b=eNKLWahAny/nNZyKO0IoH4Iq0rf+o4lwSjiizMDPQFxfm/fPpx5T/qNCyZBuDP9xW+KFM2daAS9IdBjSZ/1HIVxTnIChr4Jq4Q+1MQKgGZtN5YpNVCCxr017EkJd6Imuo0elsS8hAsduq7VvXD/xi5wjZg1NPDV+83RC0WGhNHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783494962; c=relaxed/simple;
	bh=T2hjJ4VW2vv/BzLonzPN9qyF2cwvwXce9kLJVx7y2NI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EU3PR/XiS03EMMKFYflmg9u9t9EHzxrqR3IiI8TP8NkCRHSRTuF5HshYKtKAOmqEUm0IPjNrdr3SEzbaC2yIA3lZJeWYmKfXB1jWMKIEUYCIn0zJODSh4neBiq65/v4AgVtycgQqOGdKktsd+qw3ChI4caB2gUDJ0VgRgU81IW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn6fKnGu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF24C2BCF7;
	Wed,  8 Jul 2026 07:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783494961;
	bh=T2hjJ4VW2vv/BzLonzPN9qyF2cwvwXce9kLJVx7y2NI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fn6fKnGuJBujzL/KyGm3delqzpXmsKW5dP3Wq3eESKOtVlwlaqpdIedUcj3AuW2rF
	 KgUul1NOxy9OL71gCR9ZWwBoVscieLPJWKgGRwz0E36GpAXUB5RhyuokztQrqCb2vw
	 M8cdhTuehgpBUhUdN9jet/gVFt/+i+vfhKXzE3CQrylP13HvK0OLGT4luzacu82mi8
	 ZPKFHV0Y00NLMozbs8tVFUYUXq9XVR/cw7hmUN4FJDd3Z6RntzTVCSUXr4kbqLbn+C
	 ZIBnsBSZu5OOm/kLZPe3z6QztDtkx29JWyGu6xn3NuazO1AUay84AYmXIcCAzNOfds
	 lY5AlYcn9M/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5F26C43602;
	Wed,  8 Jul 2026 07:16:00 +0000 (UTC)
From: Sven Peter <sven@kernel.org>
Date: Wed, 08 Jul 2026 09:15:42 +0200
Subject: [PATCH RFC 6/6] arm64: dts: apple: t8103: Add PSCI and CPU idle
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-efi-psci-v1-6-9efb3abf0e4c@kernel.org>
References: <20260708-efi-psci-v1-0-9efb3abf0e4c@kernel.org>
In-Reply-To: <20260708-efi-psci-v1-0-9efb3abf0e4c@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Sudeep Holla <sudeep.holla@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-efi@vger.kernel.org, 
 asahi@lists.linux.dev, Sven Peter <sven@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4506; i=sven@kernel.org;
 h=from:subject:message-id;
 bh=T2hjJ4VW2vv/BzLonzPN9qyF2cwvwXce9kLJVx7y2NI=;
 b=owGbwMvMwCXmIlirolUq95LxtFoSQ5bvT91/7B+f1b4PCA9wehDms1b2+923e2YwzGTVqba8E
 tnh8467o5SFQYyLQVZMkWX7fnvTJw/fCC7ddOk9zBxWJpAhDFycAjCRS+UM/zSFc+T7pFeZbvEw
 ZXvzfb5XeJaBj7ex5MnovTJzT70MLmNkaI8yWerEprTO85ndrj4Nxdql25j5Ahw4f65xPjfJxqC
 JFwA=
X-Developer-Key: i=sven@kernel.org; a=openpgp;
 fpr=A1E3E34A2B3C820DBC4955E5993B08092F131F93
X-Endpoint-Received: by B4 Relay for sven@kernel.org/default with
 auth_id=407
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
	TAGGED_FROM(0.00)[bounces-322556-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:mark.rutland@arm.com,m:lpieralisi@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ardb@kernel.org,m:ilias.apalodimas@linaro.org,m:catalin.marinas@arm.com,m:will@kernel.org,m:sudeep.holla@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-efi@vger.kernel.org,m:asahi@lists.linux.dev,m:sven@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3FBF9722976

Switch the base M1 from spin-table to PSCI and also add two basic idle
states that we support for now.

Signed-off-by: Sven Peter <sven@kernel.org>
---
 arch/arm64/boot/dts/apple/t8103.dtsi | 51 ++++++++++++++++++++++++++++++------
 1 file changed, 43 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/apple/t8103.dtsi b/arch/arm64/boot/dts/apple/t8103.dtsi
index da774096b667..3dbcaa698a90 100644
--- a/arch/arm64/boot/dts/apple/t8103.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103.dtsi
@@ -24,6 +24,11 @@ aliases {
 		gpu = &gpu;
 	};
 
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "efi";
+	};
+
 	cpus {
 		#address-cells = <2>;
 		#size-cells = <0>;
@@ -64,7 +69,8 @@ cpu_e0: cpu@0 {
 			compatible = "apple,icestorm";
 			device_type = "cpu";
 			reg = <0x0 0x0>;
-			enable-method = "spin-table";
+			enable-method = "psci";
+			cpu-idle-states = <&cpu_retention_wfi &cpu_deep_wfi>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
 			operating-points-v2 = <&ecluster_opp>;
 			capacity-dmips-mhz = <714>;
@@ -78,7 +84,8 @@ cpu_e1: cpu@1 {
 			compatible = "apple,icestorm";
 			device_type = "cpu";
 			reg = <0x0 0x1>;
-			enable-method = "spin-table";
+			enable-method = "psci";
+			cpu-idle-states = <&cpu_retention_wfi &cpu_deep_wfi>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
 			operating-points-v2 = <&ecluster_opp>;
 			capacity-dmips-mhz = <714>;
@@ -92,7 +99,8 @@ cpu_e2: cpu@2 {
 			compatible = "apple,icestorm";
 			device_type = "cpu";
 			reg = <0x0 0x2>;
-			enable-method = "spin-table";
+			enable-method = "psci";
+			cpu-idle-states = <&cpu_retention_wfi &cpu_deep_wfi>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
 			operating-points-v2 = <&ecluster_opp>;
 			capacity-dmips-mhz = <714>;
@@ -106,7 +114,8 @@ cpu_e3: cpu@3 {
 			compatible = "apple,icestorm";
 			device_type = "cpu";
 			reg = <0x0 0x3>;
-			enable-method = "spin-table";
+			enable-method = "psci";
+			cpu-idle-states = <&cpu_retention_wfi &cpu_deep_wfi>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
 			operating-points-v2 = <&ecluster_opp>;
 			capacity-dmips-mhz = <714>;
@@ -120,7 +129,8 @@ cpu_p0: cpu@10100 {
 			compatible = "apple,firestorm";
 			device_type = "cpu";
 			reg = <0x0 0x10100>;
-			enable-method = "spin-table";
+			enable-method = "psci";
+			cpu-idle-states = <&cpu_retention_wfi &cpu_deep_wfi>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
 			operating-points-v2 = <&pcluster_opp>;
 			capacity-dmips-mhz = <1024>;
@@ -134,7 +144,8 @@ cpu_p1: cpu@10101 {
 			compatible = "apple,firestorm";
 			device_type = "cpu";
 			reg = <0x0 0x10101>;
-			enable-method = "spin-table";
+			enable-method = "psci";
+			cpu-idle-states = <&cpu_retention_wfi &cpu_deep_wfi>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
 			operating-points-v2 = <&pcluster_opp>;
 			capacity-dmips-mhz = <1024>;
@@ -148,7 +159,8 @@ cpu_p2: cpu@10102 {
 			compatible = "apple,firestorm";
 			device_type = "cpu";
 			reg = <0x0 0x10102>;
-			enable-method = "spin-table";
+			enable-method = "psci";
+			cpu-idle-states = <&cpu_retention_wfi &cpu_deep_wfi>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
 			operating-points-v2 = <&pcluster_opp>;
 			capacity-dmips-mhz = <1024>;
@@ -162,7 +174,8 @@ cpu_p3: cpu@10103 {
 			compatible = "apple,firestorm";
 			device_type = "cpu";
 			reg = <0x0 0x10103>;
-			enable-method = "spin-table";
+			enable-method = "psci";
+			cpu-idle-states = <&cpu_retention_wfi &cpu_deep_wfi>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
 			operating-points-v2 = <&pcluster_opp>;
 			capacity-dmips-mhz = <1024>;
@@ -185,6 +198,28 @@ l2_cache_1: l2-cache-1 {
 			cache-unified;
 			cache-size = <0xc00000>;
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			cpu_retention_wfi: cpu-retention-wfi {
+				compatible = "arm,idle-state";
+				idle-state-name = "wfi";
+				arm,psci-suspend-param = <0x00000000>;
+				entry-latency-us = <1>;
+				exit-latency-us = <1>;
+				min-residency-us = <1>;
+			};
+
+			cpu_deep_wfi: cpu-deep-wfi {
+				compatible = "arm,idle-state";
+				idle-state-name = "deep-wfi";
+				arm,psci-suspend-param = <0x00000001>;
+				entry-latency-us = <5>;
+				exit-latency-us = <5>;
+				min-residency-us = <10000>;
+			};
+		};
 	};
 
 	ecluster_opp: opp-table-0 {

-- 
2.55.0



