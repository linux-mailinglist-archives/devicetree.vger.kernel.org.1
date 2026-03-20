Return-Path: <devicetree+bounces-278383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEGgIzqAvWnH+QIAu9opvQ
	(envelope-from <devicetree+bounces-278383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:13:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0849B2DE627
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:13:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 723F131253CE
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F923D47D7;
	Fri, 20 Mar 2026 16:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8ZbO74R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8182F3D47CF;
	Fri, 20 Mar 2026 16:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025255; cv=none; b=Qil5fdvUssMSA1VRyGYr+OGREWYI+a2lQwsNVr7Nq/wrB6WJyTWN7P32uGbhlGTIyfFlqOVDKprK/q/gxuWKFSVuBu0xn5OuEV/LCCrvWne5trZGZZoRb1h1xQ67u1LUJ6SOxHhp6gfwNoxJBsNgoTKs2bMM8xhW5Ja54fv49R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025255; c=relaxed/simple;
	bh=FgOYDvJZfSmo7EDTl4VOVx7cZ1LLI5/WXtiITqbbNbs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=F+RCGfRcRgmjVwUmsXhrLHQLq5LhJ3sjjVh5+19vHAtjeOMMT+W/BCy0UpKfpeqCCijEp1Rqy7Ljh7YIPCtc+YQUQD/K8rogyADJwXeosg5Tw2onv4Rs76aniqNkI6QE4KROtKqm6fuRwFIKfiLI6lIR9qnwmlHbPcvrJXg7n2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8ZbO74R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E66E7C4CEF7;
	Fri, 20 Mar 2026 16:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025255;
	bh=FgOYDvJZfSmo7EDTl4VOVx7cZ1LLI5/WXtiITqbbNbs=;
	h=From:Subject:Date:To:Cc:From;
	b=E8ZbO74RyubCUNIUTKFcy/XPlKXvlamHwIAWkIUIFCUydanD4e2aSVITu1a4uqcOt
	 slSq8HEzMhMlSYbiuQ8xCbpnbAfHR8jIASNU46/G8px3nPqXk8XyrMVMzPjsTxIi0h
	 g6eQnCBMTtP2hWO8BlKGZUuTLo7TXV6THO+IUYyg/PBUHDeVOh14jTjnk5Jb82JlYR
	 4O7HF0Ek+lP2R2O6Rql9DDKwUaaWBOtxuEPU7BF54cLcoD8URbR5LG8Hjf3wHPU0LE
	 OxRe2EfRNRvkzuRrLWCH40YpDInWRDyhU8JpeAAGkmQPU9vljs1bNtVUFibnO6NIkb
	 +EVSv4g5h4Rjg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Subject: [PATCH 0/5] arm64: dts: Add Corstone1000-A320 platform
Date: Fri, 20 Mar 2026 11:47:13 -0500
Message-Id: <20260320-dt-corstone1000-a320-v1-0-a549dfcfe8da@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABF6vWkC/4WNQQ6CMBBFr0Jm7ZiZEjS48h6ERUsHaDStmRKiI
 dzdygVcvp///t8giwbJcKs2UFlDDikW4FMFw2zjJBh8YTBkLsSmRr/gkDQvKQoTEdraEPqhsVd
 ruRmdQFFfKmN4H7NdX3gORdDP8bLyL/0zuDISEjvvnWlLs70/RKM8z0kn6Pd9/wJgslL1uQAAA
 A==
X-Change-ID: 20260123-dt-corstone1000-a320-dc5a7aa15fbe
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278383-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0849B2DE627
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Corstone1000-A320 is a new Corstone1000 variation with Cortex-A320 
cores and an Ethos-U85 NPU. This series adds the new compatible strings, 
restructures the .dtsi files to handle the common parts, and then adds 
the new Corstone1000-A320 FVP platform.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
Rob Herring (Arm) (5):
      dt-bindings: arm,corstone1000: Add "arm,corstone1000-a320-fvp"
      dt-bindings: npu: arm,ethos: Add "arm,corstone1000-ethos-u85"
      arm64: dts: arm/corstone1000: Move cpu nodes
      arm64: dts: arm/corstone1000: Move FVP peripherals to separate .dtsi
      arm64: dts: arm/corstone1000: Add corstone-1000-a320

 .../devicetree/bindings/arm/arm,corstone1000.yaml  | 15 ++--
 .../devicetree/bindings/npu/arm,ethos.yaml         |  2 +-
 arch/arm64/boot/dts/arm/Makefile                   |  1 +
 arch/arm64/boot/dts/arm/corstone1000-a320-fvp.dts  | 15 ++++
 arch/arm64/boot/dts/arm/corstone1000-a320.dtsi     | 91 ++++++++++++++++++++
 arch/arm64/boot/dts/arm/corstone1000-fvp.dts       | 96 ++++++++--------------
 ...{corstone1000-fvp.dts => corstone1000-fvp.dtsi} | 33 --------
 arch/arm64/boot/dts/arm/corstone1000-mps3.dts      | 13 +++
 arch/arm64/boot/dts/arm/corstone1000.dtsi          | 13 ---
 9 files changed, 167 insertions(+), 112 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260123-dt-corstone1000-a320-dc5a7aa15fbe

Best regards,
--  
Rob Herring (Arm) <robh@kernel.org>


