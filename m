Return-Path: <devicetree+bounces-313757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aQucEdEsNWq2nwYAu9opvQ
	(envelope-from <devicetree+bounces-313757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 13:49:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 913806A57F1
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 13:49:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=abscue.de header.s=dkim header.b=CTylMS1j;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313757-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313757-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6DD83053EA8
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 11:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30602380FE5;
	Fri, 19 Jun 2026 11:48:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCBA3803D2;
	Fri, 19 Jun 2026 11:48:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781869725; cv=none; b=EYZxEQ+2HTBHn4qxP2D0yMm9JkrXxanc0gt9ItkdetET03Scg8MhURvoTRvnMToJWI6PG5Ng/d9tWoOHO2KAAa696Gk8b/sjjVMhWXLIzH59fT/xgXLQEnRebx3nv1ebvBjIwe2CB/tLmmK+nhFM/+EcYlBx4XyFlxm26OpqwLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781869725; c=relaxed/simple;
	bh=lQVD6O/j7RCGUPBonXVQ2BeyOEbqDjRt/lw2yhbI+D8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ByHiM4GFGnYcZ+Rur93Q6oYQNZktp+CFMHQgf09IPrWn+mg1zvK3XcLyJV56dSjFX4GM1QJLcSM4XeVD3MObegnLza6gKv68Zz4mycIm/gGL326QVDkXFaYeOij3zXeEjYlDUWtR6bVobJtwXInXOXooXGiYP3ZwfeLd6LAkaFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=CTylMS1j; arc=none smtp.client-ip=89.58.28.240
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cde9:cd00:e6e2:e9fd:5a78:7bbc])
	by srv01.abscue.de (Postfix) with ESMTPSA id 2791F1C6F08;
	Fri, 19 Jun 2026 13:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1781869336;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uy5Iab8uR30j4n/hfab0GG0PxeEMAjvbqfamS1ALUD0=;
	b=CTylMS1j4Or1NFh2Lyo2piI7in2qU9vmkJ40wtU8s8y7IfUBbRTTwhxoVAjn6jR54cbjcU
	7JvFVOo+ye97+Y07Hwb5n5Gc2tnF3E9Kw+yG79lPAux/QBJiEbiTbecssicwkiQtxs7dy5
	sJ4M+SNs10Ndbi5DgbUyFhPuLPk3JmQvKWXhsvwp491Lsi1UqexA9uO0Inq8Qf1IOM5pIc
	HF4aM9PUC2E8l1k5YGyPNyUmqNzoHUVI+DdKmBmi4Ne7/W027RS9EHdT0rF1+B60LkycO8
	hdp1iQUFwfwQFO1SAYPE/G/j/s/TKuhamP0fKp+1mW23U0IgTfBvzfNMWzm9MQ==
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Fri, 19 Jun 2026 13:41:48 +0200
Subject: [PATCH v5 2/3] mfd: sprd-sc27xx: Add SC2730 regulator cell
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260619-sc2730-regulators-v5-2-0a24c7ed7a97@abscue.de>
References: <20260619-sc2730-regulators-v5-0-0a24c7ed7a97@abscue.de>
In-Reply-To: <20260619-sc2730-regulators-v5-0-0a24c7ed7a97@abscue.de>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:zhang.lyra@gmail.com,m:lee@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:otto.pflueger@abscue.de,m:krzk@kernel.org,m:conor@kernel.org,m:zhanglyra@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com];
	FORGED_SENDER(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	DMARC_NA(0.00)[abscue.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313757-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 913806A57F1

Add an MFD cell to register the SC2730 PMIC's regulators.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 drivers/mfd/sprd-sc27xx-spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/sprd-sc27xx-spi.c b/drivers/mfd/sprd-sc27xx-spi.c
index aa052f646623..214bcbef0c27 100644
--- a/drivers/mfd/sprd-sc27xx-spi.c
+++ b/drivers/mfd/sprd-sc27xx-spi.c
@@ -61,6 +61,7 @@ static const struct mfd_cell sc2730_devices[] = {
 	MFD_CELL_OF("sc2730-efuse", NULL, NULL, 0, 0, "sprd,sc2730-efuse"),
 	MFD_CELL_OF("sc2730-eic", NULL, NULL, 0, 0, "sprd,sc2730-eic"),
 	MFD_CELL_OF("sc2730-fgu", NULL, NULL, 0, 0, "sprd,sc2730-fgu"),
+	MFD_CELL_NAME("sc2730-regulator"),
 	MFD_CELL_OF("sc2730-rtc", NULL, NULL, 0, 0, "sprd,sc2730-rtc"),
 	MFD_CELL_OF("sc2730-vibrator", NULL, NULL, 0, 0, "sprd,sc2730-vibrator"),
 };

-- 
2.51.0


