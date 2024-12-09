Return-Path: <devicetree+bounces-128789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F189E96F8
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF66916CC38
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4358F3597A;
	Mon,  9 Dec 2024 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="zoDLof4u"
X-Original-To: devicetree@vger.kernel.org
Received: from ci74p00im-qukt09082501.me.com (ci74p00im-qukt09082501.me.com [17.57.156.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA6439ACC
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.57.156.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733750794; cv=none; b=GgeUPHg0X6NRn1euVtPAXzG9VEPGp9+BNNzCr1OWi5OIZ514Jt6q2K9e0uTlDh7qluMT8enO3eWL/8xLyxoKTmblY6llNV2TSwF1d4+x2pYK32DoJI14tlB+dXRtKHgvqFpCMMbapwNlbr5etHM3Igqjs+lFgPro3N5cHobWat8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733750794; c=relaxed/simple;
	bh=VfsUZCz1705t2zpAaYy35+8cMnelhz3feyNDmfryMpE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JTIefVZzNArLUdCoGn/R9MenUeY7tWqepkgBCEgRJuBJfY27VZyooC0AZxoXcdAok5cY/fNVdHQYVWGa8M/cgfsUr+P3wgxTJgNiAgN2+VBd2MCNekkRctfZMVYzseE1BjtM1/eAWQAs3eejAl2ovuU5HkOeKe21+BXzqAEQ/W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=zoDLof4u; arc=none smtp.client-ip=17.57.156.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1733750792;
	bh=XuLs87F95kBP+DCj58FcSGdEGZ6G9w8J0W6sQBQCzxg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=zoDLof4urm1ePZqE4cXxpDLtGTqx5x1YbGL3j2Dk9YRtxhm5YWCH2VOhBvRBphL8d
	 MJVnqIUkqDq67SoKIIyUS+ztr+dSdulJ6xL4XqFgrCBeA9aIqv94fSeFzPTECmLQ5V
	 spyg0gTxI8Aku6Q0QdMtwF2F7NM4GyQOCuMw91CYveKF87gRu1QEbNyNJGK8lfLzZg
	 huB6dgVc08KNj5aOec0gz2h3iJp1enUIclq+LgBmjkbL/ZV4mVfjuMCQsxlaG9ot5s
	 ybc5PMpcsxmaLqUWoe7h3vqTJafql2FYWbAw2Mzl5OoVdABawXA+jT4z8UXJ0pxati
	 MpAbMrh8o601w==
Received: from [192.168.1.26] (ci77p00im-dlb-asmtp-mailmevip.me.com [17.57.156.26])
	by ci74p00im-qukt09082501.me.com (Postfix) with ESMTPSA id 882E84AA041C;
	Mon,  9 Dec 2024 13:26:25 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Mon, 09 Dec 2024 21:25:04 +0800
Subject: [PATCH 6/8] of/irq: Fix device node refcount leakages in
 of_irq_count()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-of_irq_fix-v1-6-782f1419c8a1@quicinc.com>
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

For of_irq_count(), successful of_irq_parse_one() invocation will get
device node @irq.np refcount,

of_irq_count() invokes of_irq_parse_one() to count IRQs, and successful
invocation of the later will get device node @irq.np refcount, but the
former does not put the refcount before next iteration invocation, hence
causes device node refcount leakages.

Fix by putting @irq.np refcount before the next iteration invocation.

Fixes: 3da5278727a8 ("of/irq: Rework of_irq_count()")
Cc: stable@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/irq.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index e5a9e24a5bd3606a57a07d0d12d3e774e9c78977..d917924d80f563e1392cedc616843365bc638f16 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -514,8 +514,10 @@ int of_irq_count(struct device_node *dev)
 	struct of_phandle_args irq;
 	int nr = 0;
 
-	while (of_irq_parse_one(dev, nr, &irq) == 0)
+	while (of_irq_parse_one(dev, nr, &irq) == 0) {
+		of_node_put(irq.np);
 		nr++;
+	}
 
 	return nr;
 }

-- 
2.34.1


