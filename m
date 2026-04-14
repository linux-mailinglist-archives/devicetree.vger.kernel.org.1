Return-Path: <devicetree+bounces-287305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDXvFCwp3mmSoQkAu9opvQ
	(envelope-from <devicetree+bounces-287305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 13:46:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC213F9920
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 13:46:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DB64308B0C3
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 11:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5143E1218;
	Tue, 14 Apr 2026 11:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kDS7qidn"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01283537C4;
	Tue, 14 Apr 2026 11:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776167128; cv=none; b=M6pPGlBYyrXAJlmEqAcjup6bWtBpPhDULhngJJ6C+HmWEluNe5Moc5jpp42Jis2I8XuqEVTj8KzumDyV/y2xjd7xjjq+e29NHyEIhjFVn/m6gHYDg/NSS5USEUhB5YM+NbIsUGz9fHd2JrYjg6ymCte/xMr0dBwWbvjRKs0jJBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776167128; c=relaxed/simple;
	bh=tx6YHplKw2wzbPUqEn6qcYrqTXhPiMFKrMER9Kp00HM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HNeUS99TsZSwjHLroiKuVx+QPo9veFxxL0ZSKvpHz3XuXm6ZoODQ1L5siAEeA7g1f4xbgI8cABUvSPyKlnwfPk58U7YbJ4HmwKzWO9zyc/yHRDlbj++uz3Ndl4aIFdyzRq+V99NqMI+oODX2fHqH2Mdl5m/U+QO02o9UHiW2mgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=kDS7qidn; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776167125;
	bh=tx6YHplKw2wzbPUqEn6qcYrqTXhPiMFKrMER9Kp00HM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kDS7qidnpnqUHyiIcaFtEfHBBYYSt2EkBlFs2e2od6gdxcvH0cv1u/mxrQ98a/A0E
	 ZjlpQJyJP5+xaLeNMVmB5JtzXbSpfekQ89Q6nKQ6hWS5GrVGfApE/pL3ZiD1n4jONL
	 mewgXuDbcCEv5Ue0VK3E4H0zwf4n1dsUKtbOia+zrY5+Z4DTmY4yWge20f+iSrw89Z
	 2Dz2CPtqZs7opFvUhcw3HGNnxNHF+RQmcNpG03T4wZNKstJwVJrgJ8ZA8mWnJyC3c+
	 0Ja1gp74Axk89kRZMX8x42jSovQwKjkOnZNFbxCrls7YVk4jxdTXfSW8heRnom9fFT
	 kK+sehbySWosg==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 406B417E1313;
	Tue, 14 Apr 2026 13:45:24 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 14 Apr 2026 13:44:10 +0200
Subject: [PATCH 1/3] regulator: dt-bindings: mt6360: add buck regulator
 supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260414-mtk-g1200-pmic-cleanup-v1-1-2a7193ed4e93@collabora.com>
References: <20260414-mtk-g1200-pmic-cleanup-v1-0-2a7193ed4e93@collabora.com>
In-Reply-To: <20260414-mtk-g1200-pmic-cleanup-v1-0-2a7193ed4e93@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Gene Chen <gene_chen@richtek.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776167122; l=1149;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=tx6YHplKw2wzbPUqEn6qcYrqTXhPiMFKrMER9Kp00HM=;
 b=Bsu7eHJDGAZi8VLbWxRKUzSwo3gi7EeXTNYA7Etr10Z9AyArwuf8c5v4VkQb58/XgP1xMZ2I/
 sJZtLUkIcuUBH5dBMJMYd2WzMsi3tUWoJVnHczk5Ur6h6wsnDEulKrK
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,richtek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287305-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CBC213F9920
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

MT6360 PMIC provides 2 buck and 6 ldo regulators, that have each one a
separate supply.
Currently, the supplies for the ldo regulators are described in the
dt-bindings but the ones for the buck regulators are not.

Add the descriptions for these missing supplies.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 Documentation/devicetree/bindings/regulator/mt6360-regulator.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/mt6360-regulator.yaml b/Documentation/devicetree/bindings/regulator/mt6360-regulator.yaml
index 9c879bc3c360..cbb74e8e875d 100644
--- a/Documentation/devicetree/bindings/regulator/mt6360-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/mt6360-regulator.yaml
@@ -17,6 +17,10 @@ properties:
   compatible:
     const: mediatek,mt6360-regulator
 
+  BUCK1_VIN-supply:
+    description: Input supply phandle(s) for BUCK1
+  BUCK2_VIN-supply:
+    description: Input supply phandle(s) for BUCK2
   LDO_VIN1-supply:
     description: Input supply phandle(s) for LDO1/2/3
   LDO_VIN2-supply:

-- 
2.53.0


