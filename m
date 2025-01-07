Return-Path: <devicetree+bounces-136179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B647A041EA
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96D777A2C80
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D98A1F63E2;
	Tue,  7 Jan 2025 14:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="LNphqriX";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="CR8z2CAT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11AD1F7075;
	Tue,  7 Jan 2025 14:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736259094; cv=none; b=mIcM8ud8nmn6FO9R0mVR5q4JDraPKVZCuB9L8BuF2agUJIxqPF7juj6dKw+2a1m0hfbR5OyYUk8xpZP2ZdffzC471rlVWHlcr/LjQyo/uoGmiZCHJnZozY3u2cKSAIsv4dGAGG6if6FsCzucmIaQ7R4Bz0/P28c4NeFKFgQrVOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736259094; c=relaxed/simple;
	bh=jAI9512y9D4h05w5zP6BO9BFIHx4BE83BEsJBTgjVaw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BJINIUWIrVP126QAMMn9CPgqewY2rT9j26mUA2wI3ASD2BPj9myvsLdMwb4fkgaOOXu/N3/frGNcl0/w34PQOyv3X0/QhgfNTZlta4seXFfa3MlmUIHPs30RZhKZTwoqR6mLJaMiXGUryPYPEYUF1MTHjSHhP+T/UcjMlWalNT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=LNphqriX; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=CR8z2CAT reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736259090; x=1767795090;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Fy6I1IWGnrcZTAl68S56qEqGFdO+Mwrk6gsO8fR527s=;
  b=LNphqriXVY2IWlxh8fU3hS8Z9eyNRPxB4zN7udvInloYXFGG376velhX
   ZoAakPcXjRjRplonv43u5uUSf5Sja1Lw6oYbrnjYk5yqmtvhVaT8iyC6o
   kIzBRWcyUJ7FXO2rqBH3CDZjMzkGSOW2sEeZGrhjvu3w2KTKUjAEReojK
   77d0a8JnDPq03WcoTUviNY/Ju9nSIdXmUxXHdjIv+/e3dlAERHQLYBCtn
   FRDSxbgqn9Qzz4jiocukDriw5lVxx+/V08gKlGcXN7H2JViZNZp9TmkQz
   YLXXkuVKwQwuj3jNy1F0Ol2YMMJpjNfWVbP6Iu3jeLyiNgYyRljwqjsLn
   Q==;
X-CSE-ConnectionGUID: 1dVWb36OSxiOrOR3rCv9tw==
X-CSE-MsgGUID: ROr3RqiQQ62xQBIoTg8drw==
X-IronPort-AV: E=Sophos;i="6.12,295,1728943200"; 
   d="scan'208";a="40896496"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 07 Jan 2025 15:11:27 +0100
X-CheckPoint: {677D360F-45-3C670366-E45AD810}
X-MAIL-CPID: ACA0EC46ECD6D8541640C2E855822D4F_4
X-Control-Analysis: str=0001.0A682F28.677D360F.00AC,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 56B19164ABB;
	Tue,  7 Jan 2025 15:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736259083;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Fy6I1IWGnrcZTAl68S56qEqGFdO+Mwrk6gsO8fR527s=;
	b=CR8z2CAT0SDqQOv4sd2dLPFi9NMRcBwtw9a8BqcQ3QtqvI7Egxen5qORLxdGdxdPuF6yM4
	GV2UyFTLO1QOK7j0YZFnZOYcnTrSu/1klrhDmBvnVz8Oi1ciQEsuPCRCpRundrLwh6vVbG
	iqZjFWjyOLvgez83s91xpAfL6eqMCrBSmlBL1CCn04HoEbl7Knp9DfiBI5O1QYzbcunEXe
	XJtUm83Qy2rMNpaKjkZPKvmZBOP3pp0rE4G5X+xv9C7TbvMzlGPzAzOZLFt55LFXCj0bck
	fiul5snGxxSRr9m7ep23+SU0AoCI7+kY813vkY2qPS2wmH7HqlruzaSP8Rxsww==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] TQMa93xx fixes
Date: Tue,  7 Jan 2025 15:11:14 +0100
Message-Id: <20250107141117.984652-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Hi,

this series includes small fixes to TQMa93xx DT:
* Sorting DT nodes alphabetically
* Invert default for Powerdown/Disables on Mini-PCIe slot
* Swap order of ethernet devices

Alexander Stein (3):
  arm64: dts: freescale: imx93-tqma9352-mba93xxca: sort pinctrl nodes
  arm64: dts: mba93xxca: Do not assert power-down pins
  arm64: dts: tqma9352-mba93xx[cl]a: swap ethernet aliases

 .../freescale/imx93-tqma9352-mba93xxca.dts    | 54 +++++++++----------
 .../freescale/imx93-tqma9352-mba93xxla.dts    |  6 +--
 2 files changed, 30 insertions(+), 30 deletions(-)

-- 
2.34.1


