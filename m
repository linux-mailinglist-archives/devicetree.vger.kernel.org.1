Return-Path: <devicetree+bounces-128783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7526F9E96A8
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 14:26:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFCF8283EC1
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:26:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 214271A2389;
	Mon,  9 Dec 2024 13:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="uzLQtbmp"
X-Original-To: devicetree@vger.kernel.org
Received: from ci74p00im-qukt09082501.me.com (ci74p00im-qukt09082501.me.com [17.57.156.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 948C03596F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.57.156.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733750735; cv=none; b=IkWgKEZhmeMy2d9hPsXlcMbAHwDkdZMD2dPJIvKtxsQd9+ukaCc3GP7vKl2qNuT5PFCej8iIBrpodHu7ng2lODW96CMFeMlOm53QHjuUSUknD7GvLhpJsz9buXPTNFnDy3a2pIEGn3qBWj7tfAuINDgMeQ2Ccn8bmGFzsHhcVkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733750735; c=relaxed/simple;
	bh=cIsLpDzxg/O78TjiwVY6xfVOn/s9Hl2qzAqGoFPgsyw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=K1bahCfY7EgGddirEX8yApd8w9KJKDbMLFQ+zEfheId0YtNUowu7aZZ9QJGexoJ0rXi9lvc9YGMsusmCcfMzP9uTm7vKKHrMs5bXuA4H6Nbr1THZ1Cy4lXVmjVpQXNhmIpfEvDc8xFBFBqkFMbCAaZjxRg9WAIENTHjn0d0uvKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=uzLQtbmp; arc=none smtp.client-ip=17.57.156.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1733750732;
	bh=Jg01KlCWEyryfswH+6Mz0EliiB82cdWBn2LiyicOsKY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:
	 x-icloud-hme;
	b=uzLQtbmpbDmWzr5xhkTlrN/KgHdG7eaABaF3jgjjwvd/ySd5+MAn9ypH1OrQYdxJH
	 UBQ3/zr+rxjtmqKFPHg5+wiwAtgnvHPSA+dAB9rNUoDqHumcHwsCx3NCy5AWZYz1BN
	 2F49Dpb37BN42V8nRBbnzKtMsXrkjup4T/OvPg0ddSgANfe5+F9NmCzXupZ5sQpLgi
	 7YcooaqTrLpv08uno0Hz4xJYvBZgqx2ddtyqxRzyji6ozMLYCHdVfZcoBg/cWJDT3U
	 hGoQcg9xhlOvcQL2h+idu82pXzMwqIqk7YDyZ4AX/fQIKtw2fjbZzBa06bbfiGrVS6
	 t9foKg6tQY4kQ==
Received: from [192.168.1.26] (ci77p00im-dlb-asmtp-mailmevip.me.com [17.57.156.26])
	by ci74p00im-qukt09082501.me.com (Postfix) with ESMTPSA id 22B9F4AA033B;
	Mon,  9 Dec 2024 13:25:24 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH 0/8] of/irq: fix bugs
Date: Mon, 09 Dec 2024 21:24:58 +0800
Message-Id: <20241209-of_irq_fix-v1-0-782f1419c8a1@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKrvVmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDIwML3fy0+Myiwvi0zApdM1NLU0OTpGTLxERjJaCGgqJUoDDYsOjY2lo
 AiiIh11wAAAA=
X-Change-ID: 20241208-of_irq_fix-659514bc9aa3
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
X-Proofpoint-GUID: GBwb3WpfS47vy3H8oyXbgCgNhUN0ZgWL
X-Proofpoint-ORIG-GUID: GBwb3WpfS47vy3H8oyXbgCgNhUN0ZgWL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-09_10,2024-12-09_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 spamscore=0 mlxscore=0
 clxscore=1011 mlxlogscore=610 suspectscore=0 adultscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412090105
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

This patch series is to fix bugs in drivers/of/irq.c

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
Zijun Hu (8):
      of/irq: Fix wrong value of variable @len in of_irq_parse_imap_parent()
      of/irq: Correct element count for array @dummy_imask in API of_irq_parse_raw()
      of/irq: Fix device node refcount leakage in API of_irq_parse_raw()
      of/irq: Fix using uninitialized variable @addr_len in API of_irq_parse_one()
      of/irq: Fix device node refcount leakage in API of_irq_parse_one()
      of/irq: Fix device node refcount leakages in of_irq_count()
      of/irq: Fix device node refcount leakages in of_irq_init()
      of/irq: Fix device node refcount leakage in API irq_of_parse_and_map()

 drivers/of/irq.c | 30 +++++++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 5 deletions(-)
---
base-commit: 16ef9c9de0c48b836c5996c6e9792cb4f658c8f1
change-id: 20241208-of_irq_fix-659514bc9aa3

Best regards,
-- 
Zijun Hu <quic_zijuhu@quicinc.com>


