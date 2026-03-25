Return-Path: <devicetree+bounces-280593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMN7F5v5w2klvQQAu9opvQ
	(envelope-from <devicetree+bounces-280593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 16:04:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4252327771
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 16:04:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 38AA43088037
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 15:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C0F43FEB2A;
	Wed, 25 Mar 2026 14:51:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8677413234
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 14:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774450308; cv=none; b=u5yWvLrtYZ5E7/1SNMJkb4rc52+6KRCCaxAdRE1+aK/98dkMp0snJAT78InwfJIRP9Upz4Dh78fjoOK66yy6QXFbvx0sofNibfV7AydsnWdL8WnHH8P4ccVPR5UEw4wrhw6d1z+/dvtb7L5J5HqM2s2wbjteDnJw3aHKLr7ldvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774450308; c=relaxed/simple;
	bh=nZSrFuvFUk2eYBCSImH40k01BqJUCO7b/Ox72Quu2ns=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=USdqa992h4kFGdQ12RhPKriAhAOE4dyCbhu7emdcGvqY9hV9ITODF0xBzomRzC7DVpTx3vKxsZnL8uFSfgsNrA+V1M4TMtdsLsV261kUCFbv/Ade3KUY13dcWh92Vu93aZc//ZF/ydJ/C3xagqkzaJFGqS0OILZRGd2yjzKFmro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1w5PZV-00050C-Py; Wed, 25 Mar 2026 15:51:01 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 25 Mar 2026 15:50:51 +0100
Subject: [PATCH v4 20/27] media: rockchip: rga: share the interrupt when an
 external iommu is used
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260325-spu-rga3-v4-20-e90ec1c61354@pengutronix.de>
References: <20260325-spu-rga3-v4-0-e90ec1c61354@pengutronix.de>
In-Reply-To: <20260325-spu-rga3-v4-0-e90ec1c61354@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Michael Olbrich <m.olbrich@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280593-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.pueschel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,pengutronix.de:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:email]
X-Rspamd-Queue-Id: E4252327771
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Michael Olbrich <m.olbrich@pengutronix.de>

The RGA3 and the corresponding iommu share the interrupt. So in that
case, request a shared interrupt so that the iommu driver can request
it as well.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 5bdc8dc51ab68..eb7b211a99e66 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -761,7 +761,8 @@ static int rga_probe(struct platform_device *pdev)
 		goto err_put_clk;
 	}
 
-	ret = devm_request_irq(rga->dev, irq, rga_isr, 0,
+	ret = devm_request_irq(rga->dev, irq, rga_isr,
+			       rga_has_internal_iommu(rga) ? 0 : IRQF_SHARED,
 			       dev_name(rga->dev), rga);
 	if (ret < 0) {
 		dev_err(rga->dev, "failed to request irq\n");

-- 
2.53.0


