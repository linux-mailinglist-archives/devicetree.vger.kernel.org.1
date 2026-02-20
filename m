Return-Path: <devicetree+bounces-267041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SElTFvWVmGlaJwMAu9opvQ
	(envelope-from <devicetree+bounces-267041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:12:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B436B1699F0
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:12:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 703593011753
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 17:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04E81311587;
	Fri, 20 Feb 2026 17:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=abscue.de header.i=@abscue.de header.b="M+mPw6O6"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4C929B78F;
	Fri, 20 Feb 2026 17:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771607538; cv=none; b=tZPUrlh07YIB0CcVuO5vtwj/ZlC7uHqzI/S610D3ZQ2yGBCImjEcbQh5Js1FPsMVAsj+gfLKz1aScNFSKo007oPZQ+M/y9//7VYoieqx8ogeZ3ohSmCavUD2Yyu0Tsv3wnbqpSwH0gG5aWTpjpQ4N/FOoEKeosdflUoDawlG5gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771607538; c=relaxed/simple;
	bh=XGZZ8MUn6dyvfuw1iKLX0KqeR8wVASXXohtXEu+Ad6Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RyBkriuyleITU28hJiPF9x/L3zpbs0JM8qb82kk1+C/4XcJlnyrNNDP5RKHJksSkKE++gzAolos5yKNKCNJARe97K1n3hDdUJTBlKC11xCrYbZhb42uxavYtODYB4L0lghkNj+C1Y11JFMElmNUAwdPFjDhmjahE3ej4ddz5MMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=fail (0-bit key) header.d=abscue.de header.i=@abscue.de header.b=M+mPw6O6 reason="key not found in DNS"; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdd4:c900:fc49:439e:37d7:68d])
	by srv01.abscue.de (Postfix) with ESMTPSA id 616271C6E33;
	Fri, 20 Feb 2026 18:02:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1771606959;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ot5dnXE/7alXMVZI2WFFP2i0YdDRzPLTtk9uZCBaLI8=;
	b=M+mPw6O6Dh00j0s08Q+gv3Cev3WsLN5lSlFbAOCqZjy2Taur6jyZqvRcWNIntQ8sxPKUWq
	u38vh14XbMn5J/++XRLYtuG8nOXQ0H1pJLCkcd+qTTRgZgKj1P5xyxv3HcDYrWeAqt4vV0
	R8mGCcxKkA498Wa905zWHqplMG914lYxBpyCF8KFN3RtApgnrppEzOxl9UKPIOg511lepR
	ZkX3boiilk9GsM52J1CpjnOBHD2VZy7hVTuhMPsqa103Zr8LndnTp9Wwxr2Izibrx5Z/pr
	pDx/nPk9PLNoCwvCO08GuskSZ1gN3ooPs8opKF7xcAofq/026rbbA0HsCm6uSQ==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: [PATCH 0/3] regulator: Add support for Unisoc SC2730 PMIC
 regulators
Date: Fri, 20 Feb 2026 18:01:48 +0100
Message-Id: <20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHyTmGkC/x3MQQ5AMBBA0avIrDVpq2lxFbEoBpMIMoNIxN01l
 m/x/wOCTChQZw8wXiS0rQkmz6Cf4zqhoiEZrLZeW+OV9DYUWjFO5xKPjUWZoouhrLwz0UHqdsa
 R7v/ZtO/7AU9IeTNjAAAA
X-Change-ID: 20260216-sc2730-regulators-13ba789641a4
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267041-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[abscue.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	R_DKIM_PERMFAIL(0.00)[abscue.de:s=dkim];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[abscue.de:~];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.691];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,abscue.de:mid,abscue.de:email]
X-Rspamd-Queue-Id: B436B1699F0
X-Rspamd-Action: no action

Add device tree bindings and a driver for the regulators found in the
Spreadtrum/Unisoc SC2730 PMIC.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
Otto Pflüger (3):
      dt-bindings: regulator: Document Unisoc SC2730 PMIC bindings
      dt-bindings: mfd: sprd,sc2731: Reference sprd,sc2730-regulator bindings
      regulator: Add regulator driver for Unisoc SC2730 PMIC

 .../devicetree/bindings/mfd/sprd,sc2731.yaml       |  13 +
 .../bindings/regulator/sprd,sc2730-regulator.yaml  |  51 +++
 drivers/regulator/Kconfig                          |   7 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/sc2730-regulator.c               | 419 +++++++++++++++++++++
 5 files changed, 491 insertions(+)
---
base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
change-id: 20260216-sc2730-regulators-13ba789641a4

Best regards,
-- 
Otto Pflüger <otto.pflueger@abscue.de>


