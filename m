Return-Path: <devicetree+bounces-128785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE949E96EA
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93DE116C244
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF241B0430;
	Mon,  9 Dec 2024 13:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="rmtwx3AI"
X-Original-To: devicetree@vger.kernel.org
Received: from ci74p00im-qukt09082501.me.com (ci74p00im-qukt09082501.me.com [17.57.156.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D571B040D
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.57.156.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733750764; cv=none; b=M6CF1SZXpFHk3ibvw5wfSv3bViQds1P5750befvTdfY2e6VEcuo0LGFvbZcU0gYWydawl5FmwOFBwcI4VGe0rTCBO4hwf8XP8ZB/c8z+v5oTIwNQzgnthMmsgCxbgBs7uApKNY7Z4tErlr3E37XR++5bqFQ8dA4WAhClg87o4fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733750764; c=relaxed/simple;
	bh=lunfMj+OkQF1YbU/Hvegdk+70uQ6ogQFARMPAWKoCRQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jalRET4EzEw4XAJ2ky8PBgODATF/6yIYv8x40FO4op10Zdia47uSIDOauDpQCg6Z2HrYrghOvYohFfrrsEj5/a4IdGBuAjIWLhY/kCGdhXGwHbO47/Icm4LT9D3xcJY6FijQmOF2e+s5ntBQOU2vMXqYpVHmPWAaPa/EI72HcL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=rmtwx3AI; arc=none smtp.client-ip=17.57.156.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1733750762;
	bh=4VVA4adu+gEU1vT76JzxHosCOPZrovp9nyCp9xo0Oyw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=rmtwx3AIgG9xuJV+aEqXgTvzQNj0F4zHLYHsyL/ZrxWSLOcWMC+EZvEV2bQQJOVac
	 sP9m8ZzkI/Bk9LrpJ3yfx7Ck4uLzMr8kxHVHQhj2vQMNCxXV/EPeirGMS1laCirkN9
	 qYqcQqc/4d89E3RJ4K0/ausS1JHTA+hgy8LIpJRls29O66fgAdYQelvvWeBqspLAR3
	 qGD2LYNh+LLMdsWi+KuGWoPMv3o+iKcOdVD85+SumsSBTSiH22/X03jANFhrs9gkfm
	 7J9qB6udI9J/QrFWKiJYOX5tOipHuFfjc83VXx1/AjM/v+zDLnzeSeyFzl3w7+u+Jx
	 A0VzzbLfrFNlQ==
Received: from [192.168.1.26] (ci77p00im-dlb-asmtp-mailmevip.me.com [17.57.156.26])
	by ci74p00im-qukt09082501.me.com (Postfix) with ESMTPSA id 1E1D74AA045E;
	Mon,  9 Dec 2024 13:25:55 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Mon, 09 Dec 2024 21:25:00 +0800
Subject: [PATCH 2/8] of/irq: Correct element count for array @dummy_imask
 in API of_irq_parse_raw()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-of_irq_fix-v1-2-782f1419c8a1@quicinc.com>
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
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

Array @dummy_imask only needs MAX_PHANDLE_ARGS elements, but it actually
has (MAX_PHANDLE_ARGS + 1) elements.

Fix by using (MAX_PHANDLE_ARGS - 1) as max element index in initializer.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 43cf60479b9e18eb0eec35f39c147deccd8fe8dd..758eb9b3714868112e83469d131b244ce77d4e82 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -171,7 +171,7 @@ int of_irq_parse_raw(const __be32 *addr, struct of_phandle_args *out_irq)
 	struct device_node *ipar, *tnode, *old = NULL;
 	__be32 initial_match_array[MAX_PHANDLE_ARGS];
 	const __be32 *match_array = initial_match_array;
-	const __be32 *tmp, dummy_imask[] = { [0 ... MAX_PHANDLE_ARGS] = cpu_to_be32(~0) };
+	const __be32 *tmp, dummy_imask[] = { [0 ... (MAX_PHANDLE_ARGS - 1)] = cpu_to_be32(~0) };
 	u32 intsize = 1, addrsize;
 	int i, rc = -EINVAL;
 

-- 
2.34.1


