Return-Path: <devicetree+bounces-253495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 951FFD0D8C7
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 16:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9765D300B89A
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 15:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B0134888C;
	Sat, 10 Jan 2026 15:44:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA40D29D29E;
	Sat, 10 Jan 2026 15:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768059873; cv=none; b=Y+80VMFriC6S05AMUEOsGpBCfzG8Vf7mIHgEQqj4avnoBxBaD3U0esDcK97XRBeEr5py2TQipbEws89QV7oNTBAx57ip+zw/rBCu/i+hQvfjrD4nX3coLPjy+5s+ugDlbIJc+x3waxZyg7azTHHv/2nwSkGexUHok4amDiSwt7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768059873; c=relaxed/simple;
	bh=LYZKb98+WFaCLB5+qgl7KZpoBapIetKdb/DW6n+k12A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=puRhhTZGZNxSEW3VEoD5gPl4Y30iOLfqvjdIZ3/mDYgnAUEHLVI5bbXs1Xjg90ZlTF0ZDbMlh53nBpuqWH0kpF8mBwBdAp1yxUqhH0/sdDb3IEuHMOC6gue/uR+GNfFAS/WyTmsN5Y4SSmZYZgeE/+yl1il9bpWHmZzibqjOOXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id 9552E1C2451;
	Sat, 10 Jan 2026 16:44:12 +0100 (CET)
X-Spam-Level: 
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdde:8c00:6078:eb97:88d9:587f])
	by srv01.abscue.de (Postfix) with ESMTPSA id CF4F91C243A;
	Sat, 10 Jan 2026 16:44:11 +0100 (CET)
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: [PATCH 0/4] mailbox: sprd: add UMS9230 support and fix interrupt
 handling
Date: Sat, 10 Jan 2026 16:43:34 +0100
Message-Id: <20260110-ums9230-mailbox-v1-0-5941cab4f4e5@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAKZzYmkC/x3MQQ5AMBBA0avIrDUZUxp1FbEoBpMo0oZIxN01l
 m/x/wORg3CEJnsg8CVR9i2hyDMYFrfNrGRMBkKq0JJRp4+WNCrvZO33WxlnuMKyNqgJUnUEnuT
 +j233vh9Z27NoYQAAAA==
X-Change-ID: 20250926-ums9230-mailbox-6a6e50486032
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.2

Add support for the new mailbox revision in UMS9230 and fix issues with
interrupt handling that were observed on this SoC.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
Otto Pflüger (4):
      dt-bindings: mailbox: sprd: add compatible for UMS9230
      mailbox: sprd: clear delivery flag before handling TX done
      mailbox: sprd: add support for mailbox revision 2
      mailbox: sprd: mask interrupts that are not handled

 .../devicetree/bindings/mailbox/sprd-mailbox.yaml  |   1 +
 drivers/mailbox/sprd-mailbox.c                     | 117 ++++++++++++++++-----
 2 files changed, 89 insertions(+), 29 deletions(-)
---
base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
change-id: 20250926-ums9230-mailbox-6a6e50486032

Best regards,
-- 
Otto Pflüger <otto.pflueger@abscue.de>


