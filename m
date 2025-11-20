Return-Path: <devicetree+bounces-240658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E10AEC73DA0
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 65479351F85
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 12:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D032F9DAF;
	Thu, 20 Nov 2025 12:00:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583AA1E5B71;
	Thu, 20 Nov 2025 12:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763640033; cv=none; b=HnrVdBfjQC2bipL3eEu034ONbaxkynE5Y7zXFo0tzLcNcn9WVV/HxVjDbB9fQx6MiIn4KTOnBY8C3jc436Sn/+AG39sGMwR9mgHgNfxKx7bz3gGxfd8kCBaAUlLRHd92bEeaVqDxuvr0rtENT/RcFw0NLqpcYXsXOVmX4nlKgZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763640033; c=relaxed/simple;
	bh=rf4K6qhOmgtX1Km8Oa4Iatrmi0Y+zPyH1U9IVZVy4ao=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mYMLpZo1awPWxTXtKnESzboZzEl5+ark/PIroRTV2YFBITdBwDpIz155auyLFRp583MBNq2CTiADga6BdW87zqIGFBBBmKuOVM3V6VueKmumzs8nx9DWFOnpKg8e7CCEGyy9VhIGfFhN64ridJRrBXVGszZZ7qFdta2Vqv2DB1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.94.95])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a4b77142;
	Thu, 20 Nov 2025 20:00:20 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: dts: rockchip: update 100ASK DshanPi A1 support
Date: Thu, 20 Nov 2025 20:00:06 +0800
Message-Id: <20251120120011.279104-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9aa1230cd403a2kunm2d0ac75b4ab40
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHxhMVkMaQxpNHhkfSEkYSFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VQk5ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0
	tZBg++

Changed from v2:
  Remove merged patches
  Split patch for more details

Chukun Pan (5):
  arm64: dts: rockchip: remove mmc max-frequency for 100ASK DshanPi A1
  arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
  arm64: dts: rockchip: enable button for 100ASK DshanPi A1
  arm64: dts: rockchip: enable USB for 100ASK DshanPi A1
  arm64: dts: rockchip: enable RTC for 100ASK DshanPi A1

 .../dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 93 ++++++++++++++++++-
 1 file changed, 91 insertions(+), 2 deletions(-)

-- 
2.25.1


