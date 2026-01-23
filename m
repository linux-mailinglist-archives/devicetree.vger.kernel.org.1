Return-Path: <devicetree+bounces-258957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPJ2KEB6c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:40:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 327047665C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:40:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCE923025910
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 801D43233EA;
	Fri, 23 Jan 2026 13:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="i4KnQ4Ks"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m21472.qiye.163.com (mail-m21472.qiye.163.com [117.135.214.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB493033C8;
	Fri, 23 Jan 2026 13:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.214.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175613; cv=none; b=FWeWsRTOn7/cTtVcmayHHBA9+p6Bh1B21PLCyiTGAZmgdsu3wwBA3kE9VmpeeEVXMh0V/haIzXb0GQPB1UklsMdkZ2Qa3mgIuggrP7P+5cLRqY4gbdE1pklAhhPu5VrvHN9Y7iTzGwJnJwNRyJcPLS9ClufFH54A/m2AYa2p8qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175613; c=relaxed/simple;
	bh=RBnNDfNTIAgq7FGTJbxnoFMN3sTCw+UP4HBjKhddR7Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=NnXaXJWnk1E3/AGZcegQAl97dv/qVk0uP0Tr8wyCcX6v1qynUBbUJ4aqOyX62GCRgncQJK08uNjLIkLcDtd/TNm+aDwGNMFr8HtqRBNVOaC7F3nT/bSF6A3+CjT+l6tEJon8kS1RIAFLuBwneJtslyGi+JrEO982YmuW5bH88uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=i4KnQ4Ks; arc=none smtp.client-ip=117.135.214.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 31c0b4b04;
	Fri, 23 Jan 2026 20:24:23 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Wei Xu <xuwei5@hisilicon.com>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/3] arm64: dts: hisilicon: hikey960/970: Convert to use standard mmc alias
Date: Fri, 23 Jan 2026 20:24:07 +0800
Message-Id: <1769171049-74327-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1769171049-74327-1-git-send-email-shawn.lin@rock-chips.com>
References: <1769171049-74327-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bead0145b09cckunm9fc1f74e1df6d6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGksfSFZDSUlCShoaQkJOHR1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=i4KnQ4KsZOYlsv0Sahhfx88QTbKdFHGn6waCF1wwldp3TEAcvfp1dBOCygxOn7jF5WL3igCEaPfRzJFAvqikpKFX/tXKj/GSuhOTk9XjevRlUhY7BLsWzGBgQmh53TPpl9sy05umbeGTG3A3EoBCQxswH9AMakOiPxnmR4DkWxc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=LS3boldlDBGIc8QYsfZE5HOqjztG1rbfsuMsJHuInYU=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258957-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 327047665C
X-Rspamd-Action: no action

Convert the long-deprecated mshc alias to standard mmc alias.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2: None

 arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts | 4 ++--
 arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
index ed84ab9..c6056a8 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
@@ -20,8 +20,8 @@
 	compatible = "hisilicon,hi3660-hikey960", "hisilicon,hi3660";
 
 	aliases {
-		mshc1 = &dwmmc1;
-		mshc2 = &dwmmc2;
+		mmc1 = &dwmmc1;
+		mmc2 = &dwmmc2;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
diff --git a/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts b/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
index 7c32f5f..65764b3 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
@@ -19,8 +19,8 @@
 	compatible = "hisilicon,hi3670-hikey970", "hisilicon,hi3670";
 
 	aliases {
-		mshc1 = &dwmmc1;
-		mshc2 = &dwmmc2;
+		mmc1 = &dwmmc1;
+		mmc2 = &dwmmc2;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.7.4


