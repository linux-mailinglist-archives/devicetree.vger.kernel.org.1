Return-Path: <devicetree+bounces-265028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPtEHeu2jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:18:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9E012CECA
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:18:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F19C8304AD0D
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F133451B3;
	Thu, 12 Feb 2026 11:17:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D782D8792;
	Thu, 12 Feb 2026 11:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770895068; cv=none; b=CLk5FpYgK/UnrCEeo+GG/Du2kfZ5EHEKPXQkPnL/H/w+VrebpFGcx6HGvlGou354YEdtMPq5l6dfuO361UbMa5iW8RMnhBXQegNJDxbOb2CAnaHqzU0r4sNreEQT1dtZvzmAogoEl/JaLnnvksoysbAlC8LYg9UhKm0wuamr1l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770895068; c=relaxed/simple;
	bh=ByRtD0Z/Z5itOe1ilWqHHF5spJasDfNhMjZby+Up5qk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DckSrZdZwjnKGA8FevVLZYhQS1DHTJKvwl0baYSO5t0/KNQ2szWi8Ylwl4o/5Pl42ya1qwEvfSAcUiFeujv8Ov5el0zOXoOsJja/HjgigeTTlQWEMNUU5lDrk830lo85XRFSJEenQMtm+8e8Eut766S+7QU1dD9jHb3tNkOfgME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 222ED497;
	Thu, 12 Feb 2026 03:17:34 -0800 (PST)
Received: from e137876.arm.com (e137876.arm.com [10.33.10.100])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0A573F632;
	Thu, 12 Feb 2026 03:17:38 -0800 (PST)
From: Debbie Horsfall <debbie.horsfall@arm.com>
Date: Thu, 12 Feb 2026 11:16:51 +0000
Subject: [PATCH v2 1/2] dt-bindings: arm: Add Zena CSS compatibility
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-zena-css-v2-1-d33ea23cb9c2@arm.com>
References: <20260212-zena-css-v2-0-d33ea23cb9c2@arm.com>
In-Reply-To: <20260212-zena-css-v2-0-d33ea23cb9c2@arm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Linus Walleij <linusw@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Debbie Horsfall <debbie.horsfall@arm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770895056; l=1428;
 i=debbie.horsfall@arm.com; s=20260123; h=from:subject:message-id;
 bh=ByRtD0Z/Z5itOe1ilWqHHF5spJasDfNhMjZby+Up5qk=;
 b=GZ/hTY6oCHqjVnckHXwCr5TtiRzbtTJPMhXYLKPHii2ROsAaNozeK067gqzztuLtL7UIxq90g
 4gEPX5d5zssCjYw4pKx/EHS19CDaqwahyuUrdP1kagqOe8UJ8Ac5w5N
X-Developer-Key: i=debbie.horsfall@arm.com; a=ed25519;
 pk=PHSQwhhwfluuPcWn1fk950OfqGxCy2cjbyQb7dfAcFY=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:mid,arm.com:url,arm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debbie.horsfall@arm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-265028-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 0E9E012CECA
X-Rspamd-Action: no action

Add compatibility to Arm Zena CSS Fixed Virtual Platform [1].

[1] https://www.arm.com/products/automotive/compute-subsystems/zena

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
---
 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index 6430218ba1ce..8023f6ffe183 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -119,6 +119,16 @@ properties:
         items:
           - const: arm,foundation-aarch64
           - const: arm,vexpress
+      - description: Arm Zena Compute Subsystem Platforms
+          Arm Zena Compute Subsystem (CSS) is a compute platform targeting
+          the automotive sector. Arm Zena CSS is a high-performance Arm
+          Cortex-A720AE Application Processor system augmented with an Arm
+          Cortex-R82AE based Safety Island and real-time domain.
+        items:
+          - enum:
+              - arm,zena-css-fvp
+          - const: arm,zena-css
+          - const: arm,vexpress
 
   arm,vexpress,position:
     description: When daughterboards are stacked on one site, their position

-- 
2.43.0


