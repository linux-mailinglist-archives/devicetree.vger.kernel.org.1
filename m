Return-Path: <devicetree+bounces-258928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HN2BUNqc2l/vgAAu9opvQ
	(envelope-from <devicetree+bounces-258928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:32:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 879D375D58
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:32:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 213493052636
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 905BA343D74;
	Fri, 23 Jan 2026 12:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="NMob3UpE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49232.qiye.163.com (mail-m49232.qiye.163.com [45.254.49.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326F0285CA9;
	Fri, 23 Jan 2026 12:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.232
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769171377; cv=none; b=nLu86162Q3x5DySdKRUUJ7syL8QMfM9W8OGuA4PwMLkVT7jktP7zdGVhbIqbMzM2+yONJsvSC8IFcc/S/gPeq9IcRmN/5tieFAHYqr1ZlAE+Aq7SXZLAA5RPPfHudc/+kamBJ95kZzy6JSQHqgoZZrYKq3vbyOw6qPurkGtY3FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769171377; c=relaxed/simple;
	bh=yIsoZFxBx2FcprJnBncPxfU8hMNqTOmstI551MPOEtg=;
	h=From:To:Cc:Subject:Date:Message-Id; b=jJ6z7WP8zlPNXW3yCRmVyr++4mY0cErR+C8ybVL9R4SSpIln+KjgurlCKSjXS8nIt0AfX8nYLP7QbjwukC7RcYKUMIFgJbBPudc5ecJljzpJSTN5RpLQgBaAjFHDqNKMGBYTV7J7jaJ9kOIFMKLJLuwmXbWDKOSfO2KkhYs/QWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=NMob3UpE; arc=none smtp.client-ip=45.254.49.232
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 31c0b4afe;
	Fri, 23 Jan 2026 20:24:21 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Wei Xu <xuwei5@hisilicon.com>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 0/3] Remove deprecated mshc alias support from dw_mmc
Date: Fri, 23 Jan 2026 20:24:06 +0800
Message-Id: <1769171049-74327-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9bead008a509cckunm9fc1f74e1df6b1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUxIHlZKTBhPTUhDTENMQkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=NMob3UpE4J1KX2QFHZ+L1/e+9a55dSOV0cU+fh394sPhZW9imyBfLNpJ4Kz7s5sfg4EYDPScpYsHcR1WrM78deL06zgdBxI7chbED/4j1J4tAF7mxV+vbSgBWRETmTnmDeh1aDbEgs93Rx5m1IrQ13G8CjniBrysW71HGjLm5DY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=qc2s5frO8kQf1I2AmabvtDyNquMPLCME0XB8JozIRj4=;
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258928-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Queue-Id: 879D375D58
X-Rspamd-Action: no action


The support for the mshc alias has long been deprecated[1], as the mmc core
already provides standard alias support for obtaining the controller ID[2].
With mshc aliases removed from the last Rk3036 plaform[3], the only remaining
users are the HiSilicon hi3660-hikey960 and hi3670-hikey970 boards. This patch
series removes support for mshc from the dwmmc driver and updates the DTS files
for the hi3660-hikey960 and hi3670-hikey970 to use the standard mmc alias instead.
Considering that the hikey960 and hikey970 are open development boards, users are
expected to use newer kernels, and the need to adapt old DTBs to new kernels is
relatively low. Therefore, backward compatibility of DTBs is likely not a major
concern here.

[1] https://lore.kernel.org/linux-rockchip/20211124184603.3897245-1-john@metanate.com/
[2] Documentation/devicetree/bindings/mmc/mmc-controller.yaml
[3] https://lore.kernel.org/linux-rockchip/c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com/


Changes in v2:
- Fix a warning(lkp)
- reorder patch sequence

Shawn Lin (3):
  arm64: dts: hisilicon: hikey960/970: Convert to use standard mmc alias
  mmc: dw_mmc-k3: Remove mshc alias support
  mmc: dw_mmc: Remove mshc alias support

 arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts |  4 ++--
 arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts |  4 ++--
 drivers/mmc/host/dw_mmc-k3.c                      | 23 ++++++++---------------
 drivers/mmc/host/dw_mmc.c                         |  9 +++------
 4 files changed, 15 insertions(+), 25 deletions(-)

-- 
2.7.4


