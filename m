Return-Path: <devicetree+bounces-313997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5r90OTdVNmpI9gYAu9opvQ
	(envelope-from <devicetree+bounces-313997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 10:54:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D646A89FF
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 10:54:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=abscue.de header.s=dkim header.b=qG9muSsb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313997-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313997-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3A0F43015D1C
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 08:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F0C346A0B;
	Sat, 20 Jun 2026 08:54:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B87F18EFD1;
	Sat, 20 Jun 2026 08:54:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781945652; cv=none; b=owcBfxjzX6etiKeGTYeE6uhfFJcWJaTctcuGkt3Jd6p83wR2PSuII2kLjg6OnK9WaL2sfDIIP/mdnXGaaSwJwPw3jmZdFeMSDwE4fxeEXQgeWEaMNr3BtR7xVlGD7jCa7evtAaYP+vKIVQUpMQNDnDp3JWBro/KvTgNy+9Qetok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781945652; c=relaxed/simple;
	bh=ydOZUlt4v1Nu5KD5JP8Wqh0M3BwFvsLsYCXGZlFjX0g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LlrArGJvUQ2hUNkJotKoSzc7ZZh2bOmIf/gXztF2hv2ygzXfXpVUeshy1bkTO7tAt/oYVQYkkjocbWUMml4TkaRfhNlZitbdHbs3S4/Y/be49ev7tVQmKZvekIbbZBqRKEL0u64N7xlAvee2yjITpcbYo1YWM6BWaQUx/feUAAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=qG9muSsb; arc=none smtp.client-ip=89.58.28.240
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdf0:7400:2cd7:7cb2:ecde:c017])
	by srv01.abscue.de (Postfix) with ESMTPSA id 601801C6F2A;
	Sat, 20 Jun 2026 10:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1781945647;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+yCXhxYi8a8HBXGPqqFX3Of1HmfR00C217g7dHBLQFs=;
	b=qG9muSsbU/cPkiEzCy301H9e+Y9FxKBjgaP8mUlE3OmWQ2obOvz9KUU7xkv3Z9FOMgXhRx
	LIwnr8E7CF1Dy7xYVlZWu7yLEJNDD0/GVO9EDfaYbeWFzg7Tl6R0lOhiXnWnmx6dtYt+lX
	zK1OQngMicIyREkz9RnPcjP/RWe7fGKy8w9ip3Z6HMiHG+3YPweqob5t4BGZHsH+Ctdeue
	vOrHMChjMyTkNMbMDT3+EPvNHYJQr4RO5QFmuom96ry/Gcb2+iL1WK9FQTwzypFPupqkHW
	TLytrzhql7j6UqIU0zO9hRoJpb1BM7UvYXZqr9Pk5+gtQ0Bm4WK9pDp2LxORIA==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: [PATCH v6 0/3] regulator: Add support for Unisoc SC2730 PMIC
 regulators
Date: Sat, 20 Jun 2026 10:53:59 +0200
Message-Id: <20260620-sc2730-regulators-v6-0-bbd2db395231@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIACdVNmoC/23OTWoDMQwF4KsEr+tiyX/jrnqP0oXs0SSGkgS7G
 RLC3L1OKGQYvHxC75PuonLJXMXH7i4Kz7nm07EF97YT6UDHPcs8tixQoVMITtaEXitZeH/5od9
 TqRJ0JD8EZ4CMaL1z4Slfn+bXd8uHXNve7Xlihsf0X0PV0WaQSuoJY0yB0wTmk2JNF34fWTy0G
 V+ChaEnYBMC2ajJR2ATtoJeC6En6CbYOClWaJVnvRXMSkDoCaYJQGkgHS2PA24F+xJc/wfbBEV
 okufRU/BrYVmWP1m21LC6AQAA
X-Change-ID: 20260216-sc2730-regulators-13ba789641a4
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Zhongfa Wang <zhongfa.wang@unisoc.com>
X-Mailer: b4 0.14.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:zhang.lyra@gmail.com,m:lee@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:otto.pflueger@abscue.de,m:krzysztof.kozlowski@oss.qualcomm.com,m:zhongfa.wang@unisoc.com,m:krzk@kernel.org,m:conor@kernel.org,m:zhanglyra@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	TAGGED_FROM(0.00)[bounces-313997-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[abscue.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53D646A89FF

Add device tree bindings and a driver for the regulators found in the
Spreadtrum/Unisoc SC2730 PMIC.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
Changes in v6:
- Use dev_err_probe() to simplify error handling
- Specify .name field explicitly in ID table
- Simplify regulator list by removing the min_sel parameter, which is
  always set to 0 for sc2730
- Link to v5: https://lore.kernel.org/r/20260619-sc2730-regulators-v5-0-0a24c7ed7a97@abscue.de

Changes in v5:
- Drop conditional binding patch, will be sent separately
- Rebase on next-20260618
- Link to v4: https://lore.kernel.org/r/20260521-sc2730-regulators-v4-0-1ac8a3b5ed82@abscue.de

Changes in v4:
- Add missing patch for MFD cell registration
- Use conditional binding for referencing the regulators now that the
  child node cannot be distinguished by its compatible for validation
  purposes.
- Drop requirement for removed compatible property (sorry, should have
  double-checked this before sending v3)
- Link to v3: https://lore.kernel.org/r/20260519-sc2730-regulators-v3-0-5bf0e02507e3@abscue.de

Changes in v3:
- Drop compatible property
- Drop unused VDDSIM0 and VDDSIM1 IDs
- Link to v2: https://lore.kernel.org/r/20260518-sc2730-regulators-v2-0-9a5b3a7b1e49@abscue.de

Changes in v2:
- Use lowercase names without underscores for device tree nodes
- Use oneOf for binding reference instead of making it conditional
- Remove some excess line breaks
- Fix author name in driver and add original Signed-off-by
- Link to v1: https://lore.kernel.org/r/20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de

---
Otto Pflüger (3):
      regulator: dt-bindings: Add Unisoc SC2730 PMIC
      mfd: sprd-sc27xx: Add SC2730 regulator cell
      regulator: Add regulator driver for Unisoc SC2730 PMIC

 .../bindings/regulator/sprd,sc2730-regulator.yaml  |  44 +++
 drivers/mfd/sprd-sc27xx-spi.c                      |   1 +
 drivers/regulator/Kconfig                          |   7 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/sc2730-regulator.c               | 375 +++++++++++++++++++++
 5 files changed, 428 insertions(+)
---
base-commit: 598c7067dd8b65b93f3ccada47e9014a13137f1b
change-id: 20260216-sc2730-regulators-13ba789641a4

Best regards,
-- 
Otto Pflüger <otto.pflueger@abscue.de>


