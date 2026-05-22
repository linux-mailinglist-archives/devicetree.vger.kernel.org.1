Return-Path: <devicetree+bounces-301660-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPAlH04rEGo1UgYAu9opvQ
	(envelope-from <devicetree+bounces-301660-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:09:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EC80F5B1B84
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:09:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A564E300FF9C
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA1B377EA1;
	Fri, 22 May 2026 10:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b="Mwbhf6sz"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758B030CDB6;
	Fri, 22 May 2026 10:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779444191; cv=pass; b=l15xNp2cTZ8To+mBNo+OYE1rKruPRCILfoocNnwE0262vnYiZFiOAxPriNFy0V+lUkQJ/PAXiX6uvHgztJnWfU3O/T8PEgGXZ0kI94hYNY9AMo5JTuroeqAhuXPuloZw4KcY9oe6yaYwuYUv3vhRvbiwIqdlyKRVwRWtg4n17AY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779444191; c=relaxed/simple;
	bh=hEkh1Pczn0aaj0ONuR8AqCQA/Ha96EV3U5jPPt4y1oo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ojglejJF0qlr2W2MykGtCmsUnsdX3T5OCwhBMTGnCIvFQNeyB7jJbGC/JBlE/nY5ZxD/Hh+eoaH5I5py2Yim8DUfTWVp+59X/hwIKC6haFunNjyjY+ZgwLDYCCSTzu64O7afxkyAEPo6cjI7ZzfEjuiPKTGul4371RQqcpSTqoo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech; spf=pass smtp.mailfrom=pigmoral.tech; dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b=Mwbhf6sz; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pigmoral.tech
ARC-Seal: i=1; a=rsa-sha256; t=1779444159; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gHIq3ixD9bRmVE+/Sy63lp/TQO7Ryf7D8wlX2vPyr7+uuZ4QslwDZJgBJczdpquW5XS0dIzNHj19Oui/C0Q2vTF9rhcFvPoByBEeiwZK36Ajm2mjSapYU+p5WuTqbRtWrsn7OQrV1Og00T6SgXzkTO8hopawDTMNXjtk1O+naSI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1779444159; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=OSYRXWdgPQ0qpSaOzFwa2vTnVH0eSYVEuTRMqO5a4RE=; 
	b=ha6VWbGe0WlLUFAEDT5QLxD0IhK7kreC1Zy0myB8I7DucaxOnkKM9HCoiIXRYZmv3j+TVdBPOOEv01sEQ01vHkcHdVSNJp7T6+JYWDG4pmOwd64wYVio8VP2PqhGbxwV7O8VYGXwQGT0E1/IBhbtqF4CPM+PxQ0zscLdu5VGsp4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pigmoral.tech;
	spf=pass  smtp.mailfrom=junhui.liu@pigmoral.tech;
	dmarc=pass header.from=<junhui.liu@pigmoral.tech>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779444159;
	s=zmail; d=pigmoral.tech; i=junhui.liu@pigmoral.tech;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=OSYRXWdgPQ0qpSaOzFwa2vTnVH0eSYVEuTRMqO5a4RE=;
	b=Mwbhf6szXkf7TRqc6+kAplUhx5h5cZQN2WdLJNVoBECygFyo1qdYh6ZBCURWj5i1
	eIlcqpnZJAo31zgYXuYxAMsdYjiBuCknyM07z42+/gwX8jLD1Atc6jSzmVO4ThGUZZc
	O9VVEQNUSit1RjYWGw+u7eVmHQDsJwm3w1Dlq5jM=
Received: by mx.zohomail.com with SMTPS id 1779444155920672.4289544688394;
	Fri, 22 May 2026 03:02:35 -0700 (PDT)
From: Junhui Liu <junhui.liu@pigmoral.tech>
Subject: [PATCH 0/3] spacemit: k1: Add support for Banana Pi BPI-CM6 IO
 board
Date: Fri, 22 May 2026 18:01:32 +0800
Message-Id: <20260522-bpi-cm6-v1-0-707ef1917a30@pigmoral.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMyw6CMBCF4Vchs7YJ0wEEX8WwaDtTnQUXWzQmh
 He3keV3cvLvkCWpZLhVOyT5aNZlLsBLBeHp5ocY5WKwte3q1lrjVzVh6gwH6uOAQlEClPeaJOr
 3X7qPp5O83iW4nSN4l8WEZZp0u1WdMA+uZrKCEntEIt8H33rynrC9uqZh1zDCeBw/UJtQxaUAA
 AA=
X-Change-ID: 20260522-bpi-cm6-dc38f91e3fec
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
 Vivian Wang <wangruikang@iscas.ac.cn>, Paolo Abeni <pabeni@redhat.com>, 
 Guodong Xu <guodong@riscstar.com>, Yangyu Chen <cyy@cyyself.name>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Junhui Liu <junhui.liu@pigmoral.tech>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779444139; l=1748;
 i=junhui.liu@pigmoral.tech; s=20251228; h=from:subject:message-id;
 bh=hEkh1Pczn0aaj0ONuR8AqCQA/Ha96EV3U5jPPt4y1oo=;
 b=c8pKUtG6Qf7XIhK7Sdr0k30OlDYgbdTnu/F0hVFQmfvDz3owqof13prOwKJMPOi6HTbCieMUL
 re3mGFGzlBlAiw+AG2QFyP+THrWLyGmAQreaPi2eiLoutuv4iIypg1v
X-Developer-Key: i=junhui.liu@pigmoral.tech; a=ed25519;
 pk=3vU0qIPJAH8blXmLyqBhKx+nLOjcLwwYhZXelEpw7h4=
X-ZohoMailClient: External
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[pigmoral.tech:s=zmail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pigmoral.tech];
	TAGGED_FROM(0.00)[bounces-301660-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[junhui.liu@pigmoral.tech,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pigmoral.tech:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: EC80F5B1B84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This adds initial support for the Banana Pi BPI-CM6 IO board. The
BPI-CM6 is an industrial-grade RISC-V compute module powered by the
SpacemiT K1 SoC, featuring board-to-board connectors similar to the
Raspberry Pi CM4 form factor. For evaluation and development, the module
is paired with a companion IO carrier board.

During the board bring-up, GPIO45 and GPIO46 were found to be used by
the BPI-CM6 hardware as Ethernet PHY reset GPIOs, while the common K1
GMAC pinctrl groups currently mux them as optional GMAC reference clock
pins. Since the reference clock pins are not required on all K1 boards,
the first patch separates them into independent pinctrl groups so board
DTS files can select them only when the signal is actually wired.

This is based on the "dt-for-next" branch of the spacemit-com/linux.

Link: https://docs.banana-pi.org/en/BPI-CM6/BananaPi_BPI-CM6
Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>
---
Junhui Liu (3):
      dt-bindings: riscv: spacemit: Add Banana Pi BPI-CM6 compatible
      riscv: dts: spacemit: k1: Split gmac_clk_ref into independent pinctrl groups
      riscv: dts: spacemit: k1: Add Banana Pi BPI-CM6 IO board

 .../devicetree/bindings/riscv/spacemit.yaml        |   5 +
 arch/riscv/boot/dts/spacemit/Makefile              |   1 +
 .../riscv/boot/dts/spacemit/k1-bananapi-cm6-io.dts | 215 +++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-bananapi-cm6.dtsi  | 227 +++++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi       |  24 ++-
 5 files changed, 468 insertions(+), 4 deletions(-)
---
base-commit: 6edd9a0d32e1ef81133b8cb5b3bb3157a44da4d1
change-id: 20260522-bpi-cm6-dc38f91e3fec

Best regards,
-- 
Junhui Liu <junhui.liu@pigmoral.tech>


