Return-Path: <devicetree+bounces-108982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 347B7994743
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 13:37:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 657D81C248D4
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEE7F1D2785;
	Tue,  8 Oct 2024 11:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="bPSaGZiY"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta0.migadu.com (out-176.mta0.migadu.com [91.218.175.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147A81D0BB1
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 11:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728387252; cv=none; b=TlQ6nC1/AVR8KSu++NQ+kAgtNR4OiWjHcr3oWzeuIBE+4kq2AN6J1IEjpbT5llCb8U1foOk9NTSuehB8mRcdpvi4ATD9twpST4DhC/RcV2Rnvz0Sg2jbUDEO9Cwc82KzpUqcSoogeSCwfHLeUojePcd6aKpqzlk4FZfe8J8ecSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728387252; c=relaxed/simple;
	bh=rpGvS2t3y+3TWFQc1wETlHxVabV0OP5REaHIdrfHnhc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bTd4iVkZgtnsZAFNHS3hX04JdqTbQYhZcDTpgWgAI2ITyY60HokboMHWYNFCMXKIe63PSmp9ZJwh8kB/iLhZCuZhVx5ildAhZle96mlpPKlsr7GDSwrGKDQRnAFTfPDYJHZPy5gNdkCVfFiV7acEAuHn8eNgLMsohxcQnYQFqsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=bPSaGZiY; arc=none smtp.client-ip=91.218.175.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728387248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GkXSrwYGj+r3EHOBY6jX2YS14tMcVCHahoRNr6iDfo0=;
	b=bPSaGZiYKu74eMq8EhYrbfQP9xjsSUGTQN6HZCFzF2kuUXoi/QdL1kAL0wJype1mRfEIlB
	RxhUUfC8rjdfRa9iimy6e1LPR7tyGews3MoXQCWZEQfrIMrt14OEcNKrLnDJrjQyDxmyFl
	h8lEEZfi+DdtHw5Iq1Z9DjwHicx79tYjOjcCVIOYLWMxYVr1Wev4iVprD9YnLq9KSUTR9v
	fBVJ9dVo26XpZGQMtvEjfBrTY6doPQw0nugiZyz8MDFSvUsW9oPu5Btf4dJy+WzTH3Ll83
	cejNKK41rvXYZ89kdCQthkLb7pIi59+WsHXDKX2CNWqnJkozCXcpPp/Wiyq3FQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] rockchip: Fix several DT validation errors
Date: Tue,  8 Oct 2024 13:15:35 +0200
Message-ID: <20241008113344.23957-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This is a set of 4 small device-tree validation fixes.

Patch 1 adds the power-domains property to the csi dphy node on rk356x.
Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
Patch 3 replaces 'wake' with 'wakeup' on PineNote BT node.
Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nodes.

Changes in v2:
- Added 'Fixes' tag to all commits
- patch 3: Dropped a wakeup fix as Heiko's patch already covered that
- patch 4: Extended commit description to explain why the replacement of
  'reset' with 'shutdown' is safe

Diederik de Haas (4):
  arm64: dts: rockchip: Add PD to csi dphy node on rk356x
  arm64: dts: rockchip: Remove hdmi's 2nd interrupt on rk3328
  arm64: dts: rockchip: Fix wakeup prop names on PineNote BT node
  arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes

 arch/arm64/boot/dts/rockchip/rk3328.dtsi           | 3 +--
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 1 +
 4 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.45.2


