Return-Path: <devicetree+bounces-128788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7998B9E96FD
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:33:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8C65188F371
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E151C5CC6;
	Mon,  9 Dec 2024 13:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="sjQJpffV"
X-Original-To: devicetree@vger.kernel.org
Received: from ci74p00im-qukt09082501.me.com (ci74p00im-qukt09082501.me.com [17.57.156.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEE21C5CB7
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.57.156.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733750788; cv=none; b=qJAN0hxMZQTUIH/bhY0PAC7R/LFgf6dP5X4uTwuovxGdFV9/Sq4YKffH94Czzv3F1LyVmHJWrBnWEWvcrwtDonWUyQJhALQ71YpzNV20qdnrhW24Hbn3zcO9I/SH+ayv3V8hhrDxg43cGE6GkM6XbtjnBt5RvCbZ5qk/5UByu5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733750788; c=relaxed/simple;
	bh=5VVqPPvRcjm1Q+UOLuq6uPxhBk493mVdAeWVlp43m0k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=etqc9gVdiaajXqhNgviPpTeBn9DhHxBthxLub5i4Md15aEdLYTTuOqy+ggQtnkw0c84d/CvADEzAnjfoZJ7fv/+9Y027RMlZf8IHT3Rh793r48bT9gIMwJXJ/qbHRyMA8UOnZLZACG/Id2Im/tTZx3qeOevsHJgDnaBN7KUTIVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=sjQJpffV; arc=none smtp.client-ip=17.57.156.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1733750784;
	bh=EaIBefnB5FuCyox/NN+FFgOXA6+EGXb8U8I931UGETA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=sjQJpffVM2IgDHnlnstHFfttKUJM3XUNkRLBSFeK75TVHYI+mQD/1hSSIPCX+bmkm
	 cSZXAye/P+WJ1aSeOhlSQ1O9exCLVvvT+eCQIdpfudXgzONou/kzD2gv1LTrXh0YiF
	 Xo0NRPRN28oFKc8phxmzkYLRkrs3A5jX1pWs6Ae8yOF3z8nhKA/296kMrtguzQbeDN
	 q6CrsbFFScy/Ob3X4hFx7RyPZsEXrAEbgEDthclb5vJ9XsdNieGmTzu2gCvEGDKeBv
	 SKdLfwQ0u/fKOe7+ZRtIcdZnkY05Ah0a7Vmkp78f60qZXxWqiokAN91QFLRV7kVH4y
	 AEXEcMq+CMgpw==
Received: from [192.168.1.26] (ci77p00im-dlb-asmtp-mailmevip.me.com [17.57.156.26])
	by ci74p00im-qukt09082501.me.com (Postfix) with ESMTPSA id 27B824AA03F3;
	Mon,  9 Dec 2024 13:26:17 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Mon, 09 Dec 2024 21:25:03 +0800
Subject: [PATCH 5/8] of/irq: Fix device node refcount leakage in API
 of_irq_parse_one()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-of_irq_fix-v1-5-782f1419c8a1@quicinc.com>
References: <20241209-of_irq_fix-v1-0-782f1419c8a1@quicinc.com>
In-Reply-To: <20241209-of_irq_fix-v1-0-782f1419c8a1@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Marc Zyngier <maz@kernel.org>, 
 Stefan Wiehler <stefan.wiehler@nokia.com>, 
 Grant Likely <grant.likely@linaro.org>, Tony Lindgren <tony@atomide.com>, 
 Kumar Gala <galak@codeaurora.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Julia Lawall <Julia.Lawall@lip6.fr>, Jamie Iles <jamie@jamieiles.com>, 
 Grant Likely <grant.likely@secretlab.ca>, 
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rob Herring <rob.herring@calxeda.com>, 
 Zijun Hu <quic_zijuhu@quicinc.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

For of_irq_parse_one(), refcount of device node @out_irq->np was got by
successful of_parse_phandle_with_args() invocation, but it does not put
the refcount before return, so causes the device node refcount leakage.

Fix by putting the node's refcount before return as the other branch does.

Fixes: 79d9701559a9 ("of/irq: create interrupts-extended property")
Cc: stable@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/irq.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 64c005dfa23bd157d891f3f10526327deb5e2cfa..e5a9e24a5bd3606a57a07d0d12d3e774e9c78977 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -373,8 +373,11 @@ int of_irq_parse_one(struct device_node *device, int index, struct of_phandle_ar
 	/* Try the new-style interrupts-extended first */
 	res = of_parse_phandle_with_args(device, "interrupts-extended",
 					"#interrupt-cells", index, out_irq);
-	if (!res)
-		return of_irq_parse_raw(addr_buf, out_irq);
+	if (!res) {
+		p = out_irq->np;
+		res = of_irq_parse_raw(addr_buf, out_irq);
+		goto out;
+	}
 
 	/* Look for the interrupt parent. */
 	p = of_irq_find_parent(device);

-- 
2.34.1


