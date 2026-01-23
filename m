Return-Path: <devicetree+bounces-259089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6P9kEkyyc2liyAAAu9opvQ
	(envelope-from <devicetree+bounces-259089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:39:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AACA791A1
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 18:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A7E83008461
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 558962638BC;
	Fri, 23 Jan 2026 17:39:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA50C26F476;
	Fri, 23 Jan 2026 17:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769189956; cv=none; b=KPINg5zMgHU/IiO7m+93sfE3ul5ea9zAmrCm61ACrL65fPRVfHbdv/MUBDrIQHsctj/yJt+AbLHsJEoVB1MCehx5fgSB6Uia/05cRBbYXNefrJ84xd8+s5ZWDvQd2pAijeYZfmV/gR5mbiGnMLELOR/xZom+bIa4S6s7Av6lJLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769189956; c=relaxed/simple;
	bh=DOfzTvyIRF2VTYHjgObrvMlh3h8qSDmceDc/FvwRn3k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nGXhyRHFiKOoZKKh8ylCfmFp7LSMlwF9Gvx+QpziM6dchoLUiHwxncwysuv/0dWFnapunQxwYwlN6U3iuOJeemTG12jvbzsYKBuQwkLEWkKDPxRW519jEqx5C0Ymb3fdkj4s2LVG7j5I3Ug7/302oZmHtZxkwe3fMseR4VxVP8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB6A11476;
	Fri, 23 Jan 2026 09:39:04 -0800 (PST)
Received: from e137876.arm.com (e137876.arm.com [10.33.10.100])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98FCA3F632;
	Fri, 23 Jan 2026 09:39:09 -0800 (PST)
From: Debbie Horsfall <debbie.horsfall@arm.com>
Subject: [PATCH 0/2] Add Arm Zena CSS support
Date: Fri, 23 Jan 2026 17:37:45 +0000
Message-Id: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOmxc2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyNj3arUvETd5OJiXfMkU6M0gzSjREszcyWg8oKi1LTMCrBR0bG1tQA
 NGlfIWgAAAA==
X-Change-ID: 20260123-zena-css-7b52f0f2a967
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Debbie Horsfall <debbie.horsfall@arm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769189949; l=979;
 i=debbie.horsfall@arm.com; s=20260123; h=from:subject:message-id;
 bh=DOfzTvyIRF2VTYHjgObrvMlh3h8qSDmceDc/FvwRn3k=;
 b=dgdlFfyOQ1HipxyLtChvoshI285OEA8omy4ObYmT56leHgH/HONPgx8K4qdMtEKuuHj9Qzs92
 slm3EJ6WsU6BZfJZUlkmT0HCZNzwuf3FxVZrbPAly+aXCW2+LT+WxLc
X-Developer-Key: i=debbie.horsfall@arm.com; a=ed25519;
 pk=PHSQwhhwfluuPcWn1fk950OfqGxCy2cjbyQb7dfAcFY=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259089-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debbie.horsfall@arm.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0AACA791A1
X-Rspamd-Action: no action

This series adds the Arm Zena Compute Subsystem schemas and
Devicetree. Currently, the only platform variant is the Fixed
Virtual Platform. More information on Arm Zena CSS can be found
at https://www.arm.com/products/automotive/compute-subsystems/zena

Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
---
Debbie Horsfall (2):
      dt-bindings: arm: Add Zena CSS compatibility
      arm64: dts: zena: Add support for Zena CSS

 .../devicetree/bindings/arm/arm,zena-css.yaml      |  31 +
 MAINTAINERS                                        |   6 +
 arch/arm64/boot/dts/arm/Makefile                   |   1 +
 arch/arm64/boot/dts/arm/zena-css-fvp.dts           |  55 ++
 arch/arm64/boot/dts/arm/zena-css.dtsi              | 826 +++++++++++++++++++++
 5 files changed, 919 insertions(+)
---
base-commit: c072629f05d7bca1148ab17690d7922a31423984
change-id: 20260123-zena-css-7b52f0f2a967

Best regards,
-- 
Debbie Horsfall <debbie.horsfall@arm.com>


