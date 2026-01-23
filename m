Return-Path: <devicetree+bounces-258663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NbZH5XVcmlhpwAAu9opvQ
	(envelope-from <devicetree+bounces-258663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:57:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F986F688
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:57:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5E75E3001CE9
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 01:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CF6636D508;
	Fri, 23 Jan 2026 01:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="e/SC6K+a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973172.qiye.163.com (mail-m1973172.qiye.163.com [220.197.31.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FC52F5313;
	Fri, 23 Jan 2026 01:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769133451; cv=none; b=iUjaVMujCNINdHXCHzRP/PSQ/INVxvA6ldDrOr9a18YlfJFhHZM9pOrd+RjBVo5vAzWkt3/wqx8D2oXNiLC0L2iXVnVgWPWs88/onV1yQojQpVieBEAXeUEbhKtpzpwa571BlVBcuJDTwj1uDoi67fYqrE+c3QtmkFxeLBoD1TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769133451; c=relaxed/simple;
	bh=KbkPcLSgWhMRy2uByW5kjCecLwkO78sdNmLKlruuvLc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=CQ1viVsu79PYs1ynjRojptf+oGRnmd4ejJEva2DsD6ozX5LDukLI0petdIkKsoHOqVj+uHP36UHV3Hi0lhN69aR3tkKtL+hDp2W4LdZuexWdJabfeerhdP+WL4PJkOcZ9ptpPZth52572bxnCaoZOvu6EcriSFNoYabyFN5UzD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=e/SC6K+a; arc=none smtp.client-ip=220.197.31.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 31a9def0b;
	Fri, 23 Jan 2026 09:41:43 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Wei Xu <xuwei5@hisilicon.com>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/3] mmc: dw_mmc: Remove mshc alias support
Date: Fri, 23 Jan 2026 09:41:21 +0800
Message-Id: <1769132482-177365-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1769132482-177365-1-git-send-email-shawn.lin@rock-chips.com>
References: <1769132482-177365-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9be883b0bb09cckunmb02720d3138806
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh9CGlYdQxgaHk9PSB5DSU9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=e/SC6K+ahSizOM38FpK37ER7KuUOjBaqlZiMd3QVtIDL7u0SJC+7pTF04u6B7SB3H9OD9yqKpOAu3Uphrk9VS8/VKjRdyv711AOK6OMjH6xYNvKkwSUnSjBSK06W/FDSUP85DcUkV9vbJ5HNi3qhS+BIKHphShUpX4KjmsPRWIQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=MEguZqYeZKQa/DxA6uAXNBQJK0dJFgjO0rurcGE0jEA=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258663-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 68F986F688
X-Rspamd-Action: no action

Remove the long-deprecated mshc alias support, as the mmc core already
provides alias functionality through the standard mmc alias. This eliminates
the redundant dual-alias system. The driver now obtains the controller ID
from struct mmc_host::index(supplied by mmc alias) instead of the legacy mshc
alias.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/dw_mmc.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index a328a36..8cbaa9e 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -2846,13 +2846,10 @@ static int dw_mci_init_host_caps(struct dw_mci *host)
 	if (drv_data)
 		mmc->caps |= drv_data->common_caps;
 
-	if (host->dev->of_node) {
-		ctrl_id = of_alias_get_id(host->dev->of_node, "mshc");
-		if (ctrl_id < 0)
-			ctrl_id = 0;
-	} else {
+	if (host->dev->of_node)
+		ctrl_id = mmc->index;
+	else
 		ctrl_id = to_platform_device(host->dev)->id;
-	}
 
 	if (drv_data && drv_data->caps) {
 		if (ctrl_id >= drv_data->num_caps) {
-- 
2.7.4


