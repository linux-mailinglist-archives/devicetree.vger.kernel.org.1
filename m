Return-Path: <devicetree+bounces-258079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLgyLiglcWl8eQAAu9opvQ
	(envelope-from <devicetree+bounces-258079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:12:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1E05BE5C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 20:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8C54B76F623
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 014254D98FD;
	Wed, 21 Jan 2026 17:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Oa/3vuDV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213124D90BA;
	Wed, 21 Jan 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769015135; cv=none; b=bTeQuVdgmhSHgztt+xazOMT2x5JG9Red6kzd3Cq069KxozobRH8ma7Mry7gIF77isxzARYL01ZZmhIX9sV7hdtYMM9o2ws5hGMg36E7pFY/dAk4lZfrwaDm/mag4u05QHtjeKegn3hi3Y7by5na4qrIMK90VVJno+sa6Ed6pEXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769015135; c=relaxed/simple;
	bh=bm9R2Lb2fFoSME4oOP2tzvaj3qQ5iES+rkam/nGTCOw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=utVrfH1e3pSP5BFSoG23UQWeUVJrLQe5EYW9pTpa/lbbQqSozyCpIUmSnzhrHdxwQr/fMByPuMmb+BhXK8nF5UehOkqoLUPMFm7e8Ukgpx3LsCI/uFhxjmE/OvjpYexr3G0nIFI7DeZsxGqp9IQDUGf6lO/6bTWx6X4y3zGcpig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Oa/3vuDV; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id BD6CB1A2965;
	Wed, 21 Jan 2026 17:05:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 94DBA6070A;
	Wed, 21 Jan 2026 17:05:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 24726119B18AF;
	Wed, 21 Jan 2026 18:05:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769015131; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=1dYR1lsf1+/uGCewQmsxVMEPBYVxpmGk/RUoFKBx98M=;
	b=Oa/3vuDVkLixO+cszqRJW52q8p0WgR9CVLP0eQJ2VatcLv2vRRAIky/lhhRBOe7CkEOpXL
	nXP8LeZKytELVom3L77genXNHPCPMUM8RxN7CwOuyVfMw2bGpiFhCjy5oXtDVo1qCmw0s4
	4FPl/SnvKIoQ22IZhzBi1URW6DATnwI5t/rzitifI+Av6uTQz5MjEzT7Jc+V7byUl++iVB
	H9jnxjUc/uCpPC62Dr4Zj/rcvZC/SA1OVBd9YAWeX4HmTg1rkqrpRt6uI21q/piJJpYLJ3
	gDcW56WruNstbBdQxaCuOdJSf0O8oQp6V9VzAH8kT9hxGQyrgfDIbdiQfXOW0w==
From: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Date: Wed, 21 Jan 2026 18:05:07 +0100
Subject: [PATCH v3 11/17] spi: cadence-qspi: Try hard to disable the clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-schneider-6-19-rc1-qspi-v3-11-43e70fab4444@bootlin.com>
References: <20260121-schneider-6-19-rc1-qspi-v3-0-43e70fab4444@bootlin.com>
In-Reply-To: <20260121-schneider-6-19-rc1-qspi-v3-0-43e70fab4444@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Vaishnav Achath <vaishnav.a@ti.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Santhosh Kumar K <s-k6@ti.com>, 
 Pratyush Yadav <pratyush@kernel.org>, 
 Pascal Eberhard <pascal.eberhard@se.com>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258079-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[bootlin.com,reject];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com,ti.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[19];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5D1E05BE5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In the remove path, we should try hard to perform all steps as we simply
cannot fail.

The "no runtime PM" quirk must only alter the state of the RPM core, but
the clocks should still be disabled if that is possible. Move the
disable call outside of the RPM quirk.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>
---
 drivers/spi/spi-cadence-quadspi.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-quadspi.c
index 4bfe65af458e..af0ad24d8d39 100644
--- a/drivers/spi/spi-cadence-quadspi.c
+++ b/drivers/spi/spi-cadence-quadspi.c
@@ -2039,6 +2039,7 @@ static void cqspi_remove(struct platform_device *pdev)
 	const struct cqspi_driver_platdata *ddata;
 	struct cqspi_st *cqspi = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
+	int ret = 0;
 
 	ddata = of_device_get_match_data(dev);
 
@@ -2058,8 +2059,10 @@ static void cqspi_remove(struct platform_device *pdev)
 		cqspi_jh7110_disable_clk(pdev, cqspi);
 
 	if (!(ddata && (ddata->quirks & CQSPI_DISABLE_RUNTIME_PM)))
-		if (pm_runtime_get_sync(&pdev->dev) >= 0)
-			clk_disable(cqspi->clk);
+		ret = pm_runtime_get_sync(&pdev->dev);
+
+	if (ret >= 0)
+		clk_disable(cqspi->clk);
 
 	if (!(ddata && (ddata->quirks & CQSPI_DISABLE_RUNTIME_PM))) {
 		pm_runtime_put_sync(&pdev->dev);

-- 
2.51.1


