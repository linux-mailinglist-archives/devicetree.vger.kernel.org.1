Return-Path: <devicetree+bounces-286833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBI3N+HQ22l2HAkAu9opvQ
	(envelope-from <devicetree+bounces-286833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 19:05:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F103E4FC7
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 19:05:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AF84F3003637
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 17:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2A532C11E4;
	Sun, 12 Apr 2026 17:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Riai1qEH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE9C234964;
	Sun, 12 Apr 2026 17:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776013532; cv=none; b=fkD+cewy6Zdkr9EPrzv0koUJEGr0e+7yf9nDQU2DTQSbgU3xPzzN1MC5CQR3lwUaSWxDRcaETXph0wiqKJsBGm+awpHGFyU74Uz8DFqvmXfAlsp1cxLMv9AXXF1a+TYbqyK7lghvW/2lVm9dvr3MdgHi74yR6q70TYi4IKFVorQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776013532; c=relaxed/simple;
	bh=PthFYeljXqJ3i4XcIWqo/pxPDbf552L3YLDUc5+rmpw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To; b=mPLdUWX52i3uDBoALTEksaHmcehL2QtZHXWP+s0nknWvqVRe4IXRG/Jw3BmLsJsiJ0+4JxTxihHHkVaU86/HMbyVg9JMUuVVFAtELONvdzfGtmxNYcD+AVwjwoAvjlXLRjKmLOqVXqYphQOAMtx+xrFiZj+o9PauMZoKwL7PV1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Riai1qEH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B63DC19424;
	Sun, 12 Apr 2026 17:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776013532;
	bh=PthFYeljXqJ3i4XcIWqo/pxPDbf552L3YLDUc5+rmpw=;
	h=From:Subject:Date:To:From;
	b=Riai1qEHsgYCDx7681M+hSPQ9bDjcEj+b+SAPZVuRS2QQl1vSKSoqMSNrHwaLtovV
	 l9vkHKQM4nxqrUy5uh6yb1Hy7VrOzjh8cp7fDHZXB3J46esbZtUBGz+j+6sidjCc6T
	 rZu+F7dZ1bCTD+s6MkgX2r2mdu+ZCa4x3ogQqb1orq/Bh5ubOgdy9aJLFzOc3oxO4Z
	 LraJyNeg8Gcjz5crJ17JdwmZGqNv9P01+/6ri5BSM/mF+bovgcErDPs01W2xqyfX9y
	 5naLQH03Kgc1UR/1IfW5N/dUbStmc0HszgFXuROOPpEX2k9KKJuo9HljhyAVipR5mm
	 o7B0B3/MW0dEg==
From: Sudeep Holla <sudeep.holla@kernel.org>
Subject: [PATCH 0/5] firmware/irqchip: Add FF-A DT interrupt support for
 donated NS SGIs
Date: Sun, 12 Apr 2026 18:04:36 +0100
Message-Id: <20260412-b4-ffa_ns_sgi_gicv3-v1-0-af61243eb405@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAKbQ22kC/yXMQQqDMBBG4avIrBvQGCz2KqUETf6k4yItmVaE4
 N2N7fJbvFdIkBlCt6ZQxsrCr1TRXRpyzylFKPbVpFs9tKbTajYqhMkmsRLZRnZrr+BhfMDorwO
 olu+MwNvven/8Ld95gfucK9r3A4JXfsp3AAAA
X-Change-ID: 20260412-b4-ffa_ns_sgi_gicv3-ede4dfe9d76e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Sudeep Holla <sudeep.holla@kernel.org>
X-Mailer: b4 0.15.0
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-286833-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 86F103E4FC7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi all,

This series wires FF-A notification interrupts up through DT using the
standard interrupts property on the arm,ffa node and adds the
required GICv3 and binding support for secure-donated non-secure SGIs.

This has been long pending after the discussions here[1][2]. I have been
waiting for some ACPI story to shape up for almost an year now, but no
progress there. So posting this for now to start discussion on the approach
taken here instead of waiting for another year to sort out ACPI 😉.

It:

- documents secure-donated NS SGIs in the GIC DT binding
- teaches the GICv3 driver to accept and map those SGIs
- adds a DT binding for the arm,ffa firmware node
- updates the FF-A driver to use the arm,ffa node interrupt instead of
  synthesizing its own GIC mapping
- adds an FVP DT node using SGI 8 as the FF-A notification interrupt

The FF-A DT lookup expects a single interrupt entry, verifies that it is
a per-CPU interrupt via the reported affinity mask, and cross-checks the
resolved Linux IRQ hwirq against the interrupt ID returned by
FFA_FEATURES.

[1] https://lore.kernel.org/all/86plqayvu6.wl-maz@kernel.org/
[2] https://lore.kernel.org/all/86zfpgztmt.wl-maz@kernel.org/

Signed-off-by: Sudeep Holla <sudeep.holla@kernel.org>
---
Sudeep Holla (5):
      dt-bindings: interrupt-controller: Add support for secure donated SGIs
      irqchip/gic-v3: Support secure-donated non-secure SGIs
      dt-bindings: firmware: Add Arm FF-A binding
      firmware: arm_ffa: Use device node interrupts property for IRQ lookup
      arm64: dts: arm: fvp-base-revc: Add FF-A notification interrupt

 .../devicetree/bindings/firmware/arm,ffa.yaml      | 42 +++++++++++
 .../bindings/interrupt-controller/arm,gic-v3.yaml  | 27 ++++++-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts          |  6 ++
 drivers/firmware/arm_ffa/driver.c                  | 53 +++++++++----
 drivers/irqchip/irq-gic-v3.c                       | 86 ++++++++++++++++++++++
 include/dt-bindings/interrupt-controller/arm-gic.h |  1 +
 6 files changed, 201 insertions(+), 14 deletions(-)
---
base-commit: f5459048c38a00fc583658d6dcd0f894aff6df8f
change-id: 20260412-b4-ffa_ns_sgi_gicv3-ede4dfe9d76e


-- 
Regards,
Sudeep


