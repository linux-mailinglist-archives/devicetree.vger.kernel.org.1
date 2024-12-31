Return-Path: <devicetree+bounces-134920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8389FEEA1
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 10:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 827A91882C15
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2024 09:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 048981953BD;
	Tue, 31 Dec 2024 09:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="nIwmylhp"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9B119049A;
	Tue, 31 Dec 2024 09:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735639083; cv=none; b=SIBEQsWLe74zC73mo/75/sW3fxrIjRggG6n+zS+BTXE5Wu7qonQqBtl7ghOzTWn8FvQSdUOqgTiDP9NCvo+JZHLWGFnoWj4YEmSQF/p+seLCR0Y7odl6ulxVR+XhgqYTUhgNs8VI69vIicCKnuDBElOmlO7TPOKa2v4nLT+yc0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735639083; c=relaxed/simple;
	bh=2lcdxzeAWNlVO1CdtEVOQdJ0lcVIkD+fYwUpi0yNTgY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BycxQYklbN3pz+9J9kjXo2euWj5DeHNuCZtOW2H5WcfZ/hpVf6h/hT00jzmTPtKETgbrdRsKTLUlzwGEvWK9R7ye5HSJP1x+kjJADui50BKps1PyYDkF86nuWXK0H/5NH+tVjvHbfuAJQuprk+XmsAmeZ01/Q7RBzuqsga8OvWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=nIwmylhp; arc=none smtp.client-ip=117.135.210.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=+GZ76
	Y3blfTqLHoRuuwSqk9FlkxSrFnwxSn1f2Uj200=; b=nIwmylhpoevGs9ECSQTIK
	XvZRJu81XztHHpQ7zjDYRQHPJNG7oAa4VWMzf8JP1lZXdYsWnd8MtF+Zfkkb3vUw
	Mmqz40iOD6rLM6JCzMd7th0W2qnJoZRNr5q5/TIooaYQL9fyzc6bICdvg7ZMqCiQ
	yDNf7Jrp1dnJ9rBtTno9pU=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wD3dxsKwHNnTaXlCw--.25571S2;
	Tue, 31 Dec 2024 17:57:33 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: detlev.casanova@collabora.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 0/3] Add display subsystem dt node on rk3576
Date: Tue, 31 Dec 2024 17:57:17 +0800
Message-ID: <20241231095728.253943-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3dxsKwHNnTaXlCw--.25571S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruFykGr4xAw47Cw48Kr15urg_yoW3trbEkw
	n7urykJr4rAF1rGas3ta47X39xC3yUKF1rGa1jvFyDJFnrXF1xta1fJa4rAw1Uur1I9rn7
	JFWUZr4kZanxWjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8aiiDUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hbGXmdzt4XXAgAAsv

From: Andy Yan <andy.yan@rock-chips.com>


As the VOP[0] and HDMI[1] driver have already been submitted for review.
This series enable hdmi display on sige5 board.

[0] https://lore.kernel.org/linux-rockchip/20241231090802.251787-1-andyshrk@163.com/T/#t
[1] https://lore.kernel.org/linux-rockchip/20241231094425.253398-1-andyshrk@163.com/T/#t

Changes in v3:
- Split from https://lore.kernel.org/linux-rockchip/3330586.aeNJFYEL58@diego/T/#t

Andy Yan (3):
  arm64: dts: rockchip: Add vop for rk3576
  arm64: dts: rockchip: Add hdmi for rk3576
  arm64: dts: rockchip: Enable hdmi display on sige5

 .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  47 +++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 126 ++++++++++++++++++
 2 files changed, 173 insertions(+)

-- 
2.34.1


