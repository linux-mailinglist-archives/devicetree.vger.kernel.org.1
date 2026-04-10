Return-Path: <devicetree+bounces-286457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFEKG+fL2GktiQgAu9opvQ
	(envelope-from <devicetree+bounces-286457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 12:07:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FF03D5690
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 12:07:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 336B430053DC
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:00:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D902D371897;
	Fri, 10 Apr 2026 10:00:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A280346763;
	Fri, 10 Apr 2026 10:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775815223; cv=none; b=NCXN298oxp+oHGccYBREo9h7gP1OJFTV1ibTd9EqS2IvDnygnSs5ey0B1Mtja7qaHGDbP0nVzB5d6NsH2eLB3AhGT9wlm8wj9K4Yc0KdFTF9VdGpbeZElfO55lY6zyXASeixDzuAYqMXw0OSyADD3EfX+ik2KTZ3FtSowrlaytU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775815223; c=relaxed/simple;
	bh=cQLM9YZt0ECGNami/NDJkS2qfdn62NsR7jxqtZzY7pU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cUOKTX+29TECkJeX71EzhzSUjAblL9WQj3eL8lgCWQecxhpU60agHh5lFR+Yqjo9f/NiAzt6Pt7ZzQRh12mtPxpNcE3SgXvS+V3n49q1ay6xnQS3qnxgfavJfbMBdmvlzA5s90aBlZduxwVzxFaWiyOcgV5XgbHr6R0p+VUbLKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from Vostro-3710.lan (unknown [116.25.94.53])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3a3f23e92;
	Fri, 10 Apr 2026 18:00:16 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v3 0/3] riscv: dts: spacemit: enable USB3 on OrangePi
Date: Fri, 10 Apr 2026 18:00:08 +0800
Message-Id: <20260410100010.1197804-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9d76d5cdbc03a2kunmc24b7d52bd019
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSx0ZVklJSUxLHU8YQxgdGlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VTkhZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVUtZBg
	++
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-286457-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jmu.edu.cn:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E6FF03D5690
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Changes in v3:
- Drop OrangePi RV2 part to avoid conflicts
- Link to v2: https://lore.kernel.org/lkml/20260402100007.110201-1-amadeus@jmu.edu.cn/

Changes in v2:
- Drop common board dtsi and PCIe regulator
- Enable USB3 on OrangePi R2S and RV2 boards
- Link to v1: https://lore.kernel.org/lkml/20260116100001.208334-2-amadeus@jmu.edu.cn/

The schematic of OrangePi RV2 is available at:
https://drive.google.com/drive/folders/1pcI_U0C3VJKTCg8A1zj08CwNbohnONSR

Chukun Pan (2):
  riscv: dts: spacemit: add fixed regulators for OrangePi R2S
  riscv: dts: spacemit: enable USB3 on OrangePi R2S

 .../boot/dts/spacemit/k1-orangepi-r2s.dts     | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

-- 
2.34.1


