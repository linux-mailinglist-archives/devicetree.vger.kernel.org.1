Return-Path: <devicetree+bounces-93058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 680BB94F924
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 23:51:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EAC528112E
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 21:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 462DE194C83;
	Mon, 12 Aug 2024 21:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="PMmIkIhW"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50812192B73
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 21:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723499498; cv=none; b=Y/oNYKQ4J1wa/j/AKT8OQ6+lJrkg/pVpc8EOa5jtU7YVENdGqL90EptUmN7hQ7Qd6Pe24gy4Vaj3cLRhpk4bd31QkU1Hu/QJIo6Pq+ibEG0/MWFHp3+OFX6bXA2JQ2q3IksJf4aysNSlYZ/Y8jYSzLaLDD80fJ4IC++sv6fLRZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723499498; c=relaxed/simple;
	bh=aw1/HfkSBdh3WSDCAWFHn8dEEtZI74TQMpw/dEhww/s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GMDUdNJVvENlsfpVU37wBbVUEcEkj//Bx+pPEjGrevrb1La+IcYC5SOI5x/yDprAdCuy25pA844e80srNbCq4d2+x9ZBD38cOd5tYWtTV0a0MCKJ4q8FbPeIcfUukbUa0hH8LET8hwOkbWRklBXlOwJ1wPZL10/vfyn5aWXv+b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=PMmIkIhW; arc=none smtp.client-ip=91.218.175.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1723499494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=emftv3NAPMFtQJGOiajAqRPblL8P/mZGsVYvU9uyAIc=;
	b=PMmIkIhWWDdi4zDKw42HWl029qyE0wIogAoj/bzplbR9loRk+VG4HuEfci/WSm5hjrWnlC
	ru008TPonpEEmPg7WDxNy64Q/kMnqPki9KvoatKb1bNhYTvYJVb/RD3iFUTJBHvdVD5mN+
	Ibpf/z44xno1GQl4dyEJFlhiTDsoxtM=
From: Sean Anderson <sean.anderson@linux.dev>
To: Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 0/3] arm64: zynqmp: Add thermal zones
Date: Mon, 12 Aug 2024 17:51:25 -0400
Message-Id: <20240812215129.3599832-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

At the moment, the ZynqMP Analog Monitoring System (AMS) is only used
sporadically. As it is built into the SoC and doesn't depend on external
hardware, it can be exposed to userspace for all boards. Additionally,
we can use it to implement thermal zones.


Sean Anderson (3):
  arm64: zynqmp: Enable AMS for all boards
  arm64: zynqmp: Expose AMS to userspace as HWMON
  arm64: zynqmp: Add thermal zones

 .../boot/dts/xilinx/zynqmp-sm-k26-revA.dts    |  18 ----
 .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    |   4 -
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    |   4 -
 .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    |   4 -
 .../boot/dts/xilinx/zynqmp-zcu104-revC.dts    |   4 -
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        | 101 +++++++++++++++++-
 6 files changed, 100 insertions(+), 35 deletions(-)

-- 
2.35.1.1320.gc452695387.dirty


