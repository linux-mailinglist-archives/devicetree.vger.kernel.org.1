Return-Path: <devicetree+bounces-257723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AN7NKypFcGnXXAAAu9opvQ
	(envelope-from <devicetree+bounces-257723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:16:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFE8504FE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:16:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 749026886E6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D79CF3376A9;
	Wed, 21 Jan 2026 03:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="qJZg4z57"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A933358D12;
	Wed, 21 Jan 2026 03:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768965377; cv=none; b=AaTemjhhfbye5ZgwqnuUP9znq7tQpCWzq2u+Fde51tWIiDA35snvdBZLuzb3MDIsPKj7Cm7lMqCJ4vmDAbECkE+AKO3uFAKXgHoU5bczEnX1Ih5p0ojiHC679oi0J6+DNuXowo6sDcwZ0AYCJoMrnSl33+R+GCSPSMk0Z+z52uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768965377; c=relaxed/simple;
	bh=QHWdW+HQ5Ps0fa79Q21RMTffXP5mrrn+X6L0BUXtejk=;
	h=From:To:Cc:Subject:Date:Message-Id; b=fkbYQyLNAIhDRx/YlduckmuOytJdb6rmWh0hgSNFPW16tl+0eXhklE1+ryOktfuJsP67FOXWwQ3KXVPjbbNyoZcikWjjg7V4ZHpmfBd6K4JIyajEkk6r/BPwLkv60KBvp3dSYBt7FCr/zZXxwIr8W5uqEMVgR1EPFmtjosAC+60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=qJZg4z57; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768965361;
	bh=3J3oQEO/xh+SVbukC6XlbGUfah97ZWP5SbeXmw4NSIQ=;
	h=From:To:Subject:Date:Message-Id;
	b=qJZg4z57UofC7yQ44zfLIRxsvBcL+Et8F889+M/5qScmjHJHPiUvGRUQlyV4oJXWD
	 YJUIUMC0lLa89DD1IlQ7/0MaDS2ST5axPGFUk6qeoVoyGzlx3o6rHoFx/1F2gaQoZl
	 dBemLhXmDray6gTkCq/anpeMInqgt3dVkTeCNDSo=
X-QQ-mid: esmtpgz12t1768965359tba34f95e
X-QQ-Originating-IP: 3MPUnYZ1/su2m2LgqRvqsJ9H2ai/1j9AvtHseSL1brA=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 11:15:57 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4757405007957753980
EX-QQ-RecipientCnt: 17
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Chen <stephen@radxa.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: rockchip: Change gmac phy-mode to rgmii-id for rk3576 board
Date: Wed, 21 Jan 2026 11:15:45 +0800
Message-Id: <20260121031548.402-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: N3mCDtMDZQvgxnqKqN3pUMBGm364FNtP6WggvCbB03iJaz00xQJ847MS
	oobE62CHeNx4yXI2/cvekqQtIn2lI0rKwFu+8fNisa5seBlZWHAeP7qrABF9IFNpJOB2PCW
	l0RYyQhjYyQhrjTAbfALW+YUrCQu6JDIJGoi5DTESMtQBNnQ2YMFnwgINAw1NwIOyYKz/9d
	aV+M+4hO0n5DdoVuyH0o7EVyQup1vczXpk/fs1fv3l7OBSD7W1f8Nf74VhQ4xNMoPCJKoeZ
	qXGvF28/xY+sY4wSD74F151qGBwYwIEnwIGEjQUIEMgkIQGVRZhSr916bPEMrso+8ns/mmv
	EGOoVri2g2yYMMSFn0OIMBbD9S4I5gLricdIb0+71m5C1zqynASZAK2o25pTRBMow+F0V1z
	VPzyIgnwMH4oT1PaJ8zp/tjEVQN5qETF6su9L6UOaS7ncJZ7Qme1ltKz3M/Tw6oOWGTJtCf
	LmoXF+jwEy+UCNg7Auvxe+OqjAmDVu+O+DQ7yYmMthovW9FOJ8BEW4cjIND0EXElDYAJr8b
	BkdR9YXmVq2SfHQFJ6shJbitxHfk7LTc2cv1pkjifHpEu/qDkdUgDuRCzJ3e4FH/2HE/6Un
	Vy4U68V8px12gsdiV9xdbik+HSeZmSg67IMzUCDfSg9mYqcp9pPiqxN7mG+RNrYHZKUfS6b
	8xos3aClpOmsIAdUV32WE5ACKiY011IRFOV1Eei+8aTCju45Atk+Zh8NcF8MLZWWSS0ZHm+
	jzfaTri3FR+wkyVREQuzjiqhCCFv0ToRibwWq1Vb2IMwg/AjloM2N7JOxtzzLO3cNFJe/xu
	iln9SIDBbCD3pjhS7tC0KHt+nhbA40JwYaHWcacKM1mWgKX3SIiXCUbulD1zubvBP3VvXuj
	xW9DhRMW7QxZtn0sMATT+2TOZk3NvmSHYWxgCHGmtufukYS6vGrZBv2tXBDtZ82nEFlcsKp
	i3/X/A1w9i090qJbEPPoYBYjl/AE/ucXLn+aZkfyDPhlJ69ka3asqAeyHxtEs/SOOm6UpKQ
	dgv6O3jXgFcaMOYUzlVcZc5hgJarmfrIolKUZkBlPTyZfVEc7Zcxkvi82cTE0bEH0ZJ4nAk
	SSYz7ewSM2X5cgJ3wZ9d6w=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257723-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lunn.ch,kernel.org,sntech.de,gmail.com,rock-chips.com,collabora.com,radxa.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[airkyi.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[airkyi.com,none];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 6DFE8504FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

According to the description in the net documentation, PHY modes
"rgmii", "rgmii-rxid" and "rgmii-txid" modes require the clock signal
to be delayed on the PCB.

The Rockchip platform has long used the above mentioned PHY modes and
private delay prop to describe the internal IO delay settings of the
chip, which is inconsistent with what is described in the documentation.

Some background, for RK3576, you can assume that:

        tx_delay_time(ns) = 0.0579 * delay_line_count + 0.105

For example, tx_delay = <0x20> means:

        time = 0.0579 * 0x20 + 0.105 ns = 1.9578 ns

Recently, Andrew has often mentioned the problem of phy mode in board
level configuration. So let's start with the RK3576 to modify this.

Please test this series of patches, thanks.

Chaoyi Chen (3):
  arm64: dts: rockchip: Change gmac phy-mode to rgmii-id for rk3576 evb1
  arm64: dts: rockchip: Change gmac phy-mode to rgmii-id for
    roc-rk3576-pc
  arm64: dts: rockchip: Change gmac phy-mode to rgmii-id for ROCK 4D

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 8 ++++----
 arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts   | 5 ++---
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts  | 5 ++---
 3 files changed, 8 insertions(+), 10 deletions(-)

-- 
2.51.1


