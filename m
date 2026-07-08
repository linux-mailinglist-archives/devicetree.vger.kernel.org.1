Return-Path: <devicetree+bounces-322550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hcmpK5X6TWpxBAIAu9opvQ
	(envelope-from <devicetree+bounces-322550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:21:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28560722942
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:21:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HYDWuUEd;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322550-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322550-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D91D83041782
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31B303F786A;
	Wed,  8 Jul 2026 07:16:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16C93E172F;
	Wed,  8 Jul 2026 07:16:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783494962; cv=none; b=iPFaMr8PHAQWIVRwxi2BaA5PDk4ArpClrQTv3RcLSW3dOnCMOXaHPALR9PbLmiRWAt1L6QLigUckC6xwGKOFQUv/W5XarmIov8WMAsaPRSw9qz/tTIOWL4tEvZlHv+OQ9Prja+p+CoPi0mz4jI38rJtO+6vuDwLZQZF//jwW0Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783494962; c=relaxed/simple;
	bh=VWmWh6pzki/ShXejJu251uuQUSOrl8ApE+ih5NcCoSk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ft7tamZ4AjWYzboe7LrDx/w0YiKWyMcJyFNSNP2gCcluY2aGDvYVuIRbm71/cs71QS16dsZb3Ne8znNcz97bZWUXTUqSnI5KqTWw0Zj1ZO2oT6q8w+a/EHzrgE04ZKS7K0WeX4yOu0BXcJTzVoArPZk8RmRE8PEjKCDdKYQdvc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYDWuUEd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EDFC2BCF4;
	Wed,  8 Jul 2026 07:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783494960;
	bh=VWmWh6pzki/ShXejJu251uuQUSOrl8ApE+ih5NcCoSk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HYDWuUEd+swZZpJ5jxAfUsBbCQmJs9mkezhp4PvoaTS5uFeidGbF9ovIrS1N2XKiM
	 EkHAacBP5AOykWFH1bizsQnkn7NZUa06lj6Qb6bAvsNuvds1AaP3oNT/MbiPV6BGxm
	 R8lGD+trNsNhfOfmRFfYW3eSF4qVhiAWNACZwx6Hi9ab0Ufj8pRyHpR2RbOYX6GlPr
	 vh1ZYuv5uzpmPNngcEUIFtuWVcnB+qbS+uCQsT4xtxfCJtXWJWQ06mS9k5Qf1NjuoY
	 iUWH9MvQ6E+mKBRF9Nxgfjjxi6mLcYxYfCcVXbd78mbXYC99MW+vwZTU91M4rORMUm
	 4W+zCTsYGGjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87E65C43602;
	Wed,  8 Jul 2026 07:16:00 +0000 (UTC)
From: Sven Peter <sven@kernel.org>
Date: Wed, 08 Jul 2026 09:15:37 +0200
Subject: [PATCH RFC 1/6] dt-bindings: arm: psci: Add EFI conduit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260708-efi-psci-v1-1-9efb3abf0e4c@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1948; i=sven@kernel.org;
 h=from:subject:message-id;
 bh=VWmWh6pzki/ShXejJu251uuQUSOrl8ApE+ih5NcCoSk=;
 b=owGbwMvMwCXmIlirolUq95LxtFoSQ5bvT40an+LrNSsz3ou+eHBk0ZXtj533ymnX23xwvt15x
 YdfqJ65o5SFQYyLQVZMkWX7fnvTJw/fCC7ddOk9zBxWJpAhDFycAjCRg5qMDCvvckRZqXWc3Cb2
 W/IGc2WwDau3kNEPx6YTR8vSMlbsDGdkuPHeUvnjNHez9BTjI6zrxY8f0638FyfOeFRiqa7irW9
 LOAE=
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
	TAGGED_FROM(0.00)[bounces-322550-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arm.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28560722942

Apple Silicon machines run the kernel in the highest available exception
level and can't trap to anything higher for PSCI calls. Instead, we will
add support for a conduit based on EFI runtime services to be able to
share the same level with the kernel itself.
Add the conduit to the bindings.

Signed-off-by: Sven Peter <sven@kernel.org>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 6e2e0c551841..f9d607e1a213 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -28,6 +28,14 @@ description: |+
   Note that the immediate field of the trapping instruction must be set
   to #0.
 
+  Alternatively, when the "efi" method is used, the PSCI functions are not
+  invoked by trapping to a higher privilege level. Instead, they are backed
+  by EFI runtime services: the firmware exposes a PSCI handler that the OS
+  invokes through an EFI runtime call. This method is intended for platforms
+  where the kernel runs at the highest privilege level, leaving no higher level
+  to trap into; the firmware shares that same level and is instead reached
+  through EFI runtime services.
+
   [2] Power State Coordination Interface (PSCI) specification
     http://infocenter.arm.com/help/topic/com.arm.doc.den0022c/DEN0022C_Power_State_Coordination_Interface.pdf
 
@@ -69,6 +77,10 @@ properties:
       - smc
       # HVC #0, with the register assignments specified in this binding.
       - hvc
+      # The PSCI functions are implemented by EFI runtime services, and are
+      # invoked through a runtime call into the firmware rather than via an
+      # SMC or HVC trap.
+      - efi
 
   cpu_suspend:
     $ref: /schemas/types.yaml#/definitions/uint32

-- 
2.55.0



