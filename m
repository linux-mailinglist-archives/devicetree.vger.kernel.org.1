Return-Path: <devicetree+bounces-278384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II0bGQp9vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D32E62DE238
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:59:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B43E3169CBA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A2513D3D07;
	Fri, 20 Mar 2026 16:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OISUcGy1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9434B3D47CE;
	Fri, 20 Mar 2026 16:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025256; cv=none; b=L4oEgUjqb+Gkfidn5tHtC5l+pHPOsafc5sA01AMMwKfrd/Q/nEflvtU6VGAyzILfM6cVXoHPEHwEbqh8RAD77F8mWEz3Jx20fMbXL8W0TuRKell+YLbzr2LfqJI3c6HxUFrswFKKs8J0SW+/rXbcCvrzOwRuoBm++ECZmkCA8aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025256; c=relaxed/simple;
	bh=MyZDEC4YA2XUVdCFPz/d1D9B38/FSwdqJVLDQRdEA5o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FRGnkWlFT8jihnoR4G96m5Ilvmz5AZpj+6vWARhPGTRrrSfgdvDTs0docEaPJpgaSl5g4xWwiblc4s9U6CglbIt93Jofr2Vqb+PjcIPEijIgEuBQdbHs3c0FodNwav1XzEAtzMKLiQtIFCG4PKzRs++pv19iiCnUtaIdXnB0vCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OISUcGy1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF44AC4CEF7;
	Fri, 20 Mar 2026 16:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025256;
	bh=MyZDEC4YA2XUVdCFPz/d1D9B38/FSwdqJVLDQRdEA5o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=OISUcGy1sFHRTsHjircV7QmS8szmkxU1QAwSH7YXs41U4R2Hhz9H4YK1G8YVmSAnR
	 BJySdaPPw31dEuF3cmEDdSxIvu7ojrwOHn0bKgeV1xUD3AZ4VDDVlzg8NaqkAxbFzD
	 CDHPvS9ciB3Kx36J+STgqedpS9pL9aqIjsvnhjdFM+y3gBLfzpT0PsE2lDpbC79lY3
	 hoPjTVMgonxxyTqMMsFXepGWLNQSTO3RPMcVniHOzBjqwPfemZ60jRJOEQbdIKOw4t
	 NkYktN8FVXWdQ914SrrEOpINGmbH/57DrSFMUV7Wf/yjm6nMX/3Gf+AgtJCRf4hClj
	 NQG/vGqF28snQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Fri, 20 Mar 2026 11:47:14 -0500
Subject: [PATCH 1/5] dt-bindings: arm,corstone1000: Add
 "arm,corstone1000-a320-fvp"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260320-dt-corstone1000-a320-v1-1-a549dfcfe8da@kernel.org>
References: <20260320-dt-corstone1000-a320-v1-0-a549dfcfe8da@kernel.org>
In-Reply-To: <20260320-dt-corstone1000-a320-v1-0-a549dfcfe8da@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
 Sudeep Holla <sudeep.holla@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Frazer Carsley <frazer.carsley@arm.com>, 
 Hugues Kamba Mpiana <hugues.kambampiana@arm.com>, 
 Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15-dev
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278384-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D32E62DE238
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Arm Corstone1000-A320 is a variation of the Corstone1000 with
Cortex-A320 cores and an Ethos-U85 NPU. An FVP for the platform is
available here[1].

[1] https://developer.arm.com/Tools%20and%20Software/Fixed%20Virtual%20Platforms/IoT%20FVPs

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/arm/arm,corstone1000.yaml         | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
index cff1cdaadb13..48ab3356e383 100644
--- a/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
@@ -15,11 +15,11 @@ description: |+
   provides a flexible compute architecture that combines Cortex‑A and Cortex‑M
   processors.
 
-  Support for Cortex‑A32, Cortex‑A35 and Cortex‑A53 processors. Two expansion
-  systems for M-Class (or other) processors for adding sensors, connectivity,
-  video, audio and machine learning at the edge System and security IPs to build
-  a secure SoC for a range of rich IoT applications, for example gateways, smart
-  cameras and embedded systems.
+  Support for Cortex‑A32, Cortex‑A35, Cortex‑A53 and Cortex-A320 processors.
+  Two expansion systems for M-Class (or other) processors for adding sensors,
+  connectivity, video, audio and machine learning at the edge System and
+  security IPs to build a secure SoC for a range of rich IoT applications, for
+  example gateways, smart cameras and embedded systems.
 
   Integrated Secure Enclave providing hardware Root of Trust and supporting
   seamless integration of the optional CryptoCell™-312 cryptographic
@@ -39,6 +39,11 @@ properties:
           implementation of this system. See ARM ecosystems FVP's.
         items:
           - const: arm,corstone1000-fvp
+      - description: Corstone1000-A320 FVP is the Fixed Virtual Platform
+          implementation of this system with Cortex-A320 cores and Ethos-U85
+          NPU. See ARM ecosystems FVP's.
+        items:
+          - const: arm,corstone1000-a320-fvp
 
 additionalProperties: true
 

-- 
2.51.0


