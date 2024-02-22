Return-Path: <devicetree+bounces-44840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD5D85FC66
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 16:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C48971F23DA1
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 15:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00E3B14C5B5;
	Thu, 22 Feb 2024 15:31:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96F314C5AB
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 15:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708615899; cv=none; b=pKPofYpclPTxQ2Zu6wQLFWDr0pToJgEG+K/mRQufRlpMtUAjlwLMmOr5AMBbJQ/BjsAwNv2DwJCUZFJtkoRHvVZukHUwp8NIB+1fbNtY/iAUh8NP7MSt1gZhTjljxdj68xsilrlZY/FGaHE1cEsqVTL2OucuxiVyVM7V/ROhgLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708615899; c=relaxed/simple;
	bh=3k6jeQ5M8rD+ECwE6iuCX8aMkBXQsV1xBAQoZGK5npQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=K60IJHZW/F1wT0oBzNZHdVBMjWzMxPExDEqRpcw2l8Ic2SZaMleIIy1/LZ0zkoVa9zlmW92Kz3vEMXUBnShqL1vgmbBNb4VGLjzZpIG60eZksg3hr9nKdfS/1Pv9O5ADNkTviYTqp67FoKCIvt6LlRomUHorLdTwEqmOxdzm1Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rdB2q-0005f0-Ja; Thu, 22 Feb 2024 16:31:32 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rdB2q-002G3B-57; Thu, 22 Feb 2024 16:31:32 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rdB2q-009Wqo-0F;
	Thu, 22 Feb 2024 16:31:32 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org,
	kernel@pengutronix.de
Subject: [PATCH] of/platform: Inform about created platform devices using pr_debug()
Date: Thu, 22 Feb 2024 16:31:20 +0100
Message-ID: <20240222153119.2026363-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1106; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=3k6jeQ5M8rD+ECwE6iuCX8aMkBXQsV1xBAQoZGK5npQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl12jIIT3Br8idHZ677798JR1CKsHd56QhnOC7x BmsdVBUPgGJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZddoyAAKCRCPgPtYfRL+ TgvXB/0cqa1GNJH9H0EFfHmmg7pV0LWFJwRfFBwi+eAx0uAEEAtgm015St4NpbQmELcQy/zpeGz 7eyFJmVYXajQYirAawsxj+1PWJI5m63z9om2TXbXafeCj/PhjnMdyt8WBO3c9AQvMztAZ1OMvI2 zEepWKTv+KR9hTktC/QIv2w4AC4ex5L99Id/SSD7bWObz0dGgGZWB1dVr2DctYm/mzdGimTnZQV mNhSkyyApp6MD01RJNFqI9It0odg3j9F/qhN7at+LQnN6KszltvBULq2NWbAuznqP3cXyY4NbVC FTRMoWB+OSRKNXFpMVrEaAtbn1cHhBAvLSMPmxANmMxBIGqM
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

For most nodes with a compatible property a platform device is created.
For some an amba device is created instead. For the latter
of_amba_device_create() emits a message at debug level about the node
the device is created from. Add a similar message to
of_platform_device_create_pdata() to inform about the whole list of
created devices.

This also gives the right context for the following messages that
inform about created child devices.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/of/platform.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index b7708a06dc78..ba964df6b6db 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -166,6 +166,8 @@ static struct platform_device *of_platform_device_create_pdata(
 {
 	struct platform_device *dev;
 
+	pr_debug("create platform device: %pOF\n", np);
+
 	if (!of_device_is_available(np) ||
 	    of_node_test_and_set_flag(np, OF_POPULATED))
 		return NULL;

base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
-- 
2.43.0


