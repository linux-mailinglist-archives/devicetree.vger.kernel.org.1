Return-Path: <devicetree+bounces-55938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF1C89715D
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:40:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEEF91C22E78
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 13:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E36E148318;
	Wed,  3 Apr 2024 13:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="Wdbmf0PS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51ADC1487F8
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 13:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.25.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712151640; cv=none; b=he+7yZJDzvsPxMq7vWz3D+oZLV2qflsdfS70ZuyW7V2jcyrGLWInu5yLVSD33TkBCR7WL8xk4EKpWZPPO60zX+4AxDwxOgPhHCO5ihvDF+m5T0999l2HkFoM/OnU1Oplr8kXvEJmmqZwMBIVcoLz7fveSbYxVuJ0DMDdjSg0mu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712151640; c=relaxed/simple;
	bh=FqNyiUeqU0Pi3/GSVu8yFgj/1p765NCY3NVehafqT10=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=CJjj3De8by+o/X4tlBp4FZsIF995+V1kdPQdhtI7eNZjZn8/qyR1e3aM2Gdp/70hwZvq2GktxymQnf41FvS1PBm7vWWQDdeKirjcJhdnBI+XXV+obMpNkbWay6x2LMM+4QKdH6f6pUDAbnviHtlW3mPIDtwny2SuXCahUg1qs6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rnplus.nl; spf=pass smtp.mailfrom=rnplus.nl; dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b=Wdbmf0PS; arc=none smtp.client-ip=178.251.25.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rnplus.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rnplus.nl
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id 0EE0037947D
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 13:37:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVKOvKFbq_uL for <devicetree@vger.kernel.org>;
	Wed,  3 Apr 2024 15:37:32 +0200 (CEST)
Received: from localhost.localdomain (184-179-179-143.ftth.glasoperator.nl [143.179.179.184])
	by mail.rnplus.nl (Postfix) with ESMTPSA id 7CD69379443;
	Wed,  3 Apr 2024 15:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1712151450; bh=FqNyiUeqU0Pi3/GSVu8yFgj/1p765NCY3NVehafqT10=;
	h=From:To:Subject:Date;
	b=Wdbmf0PSAjMBK1k8e50gyXubKjLSTqiAFqXXSasBGIjuLMSPlTy+wci0jMXX9dca3
	 ph80GzB/yb8rBfheED55l2O8AqLrCVDLyKbKV61Wso338InwQE+/8SuclWq0XlBwkh
	 NCTS69t5KOjgsy6YSVZjIqukolrdEoNo+XWz7bLw=
From: Renze Nicolai <renze@rnplus.nl>
To: renze@rnplus.nl,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	arnd@arndb.de,
	olof@lixom.net,
	soc@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au
Subject: [PATCH v2 0/3] ARM: dts: Update devicetree of Asrock X570D4U BMC
Date: Wed,  3 Apr 2024 15:28:50 +0200
Message-ID: <20240403133037.37782-1-renze@rnplus.nl>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These patches change the GPIO table, ADC channel configuration and
I2C bus configuration of the devicetree for the X570D4U BMC as part of
ongoing efforts to support OpenBMC on this platform.

Changes since v1:
 - Fixed warnings indicated by checkpatch.pl
 - Change commit message of ADC channels commit to match imperative mood
 - Restructure GPIO table to better match other ASPEED devices
 - Clarify naming scheme better

Best regards,
Renze Nicolai

Renze Nicolai (3):
  ARM: dts: Modify GPIO table for Asrock X570D4U BMC
  ARM: dts: Disable unused ADC channels for Asrock X570D4U BMC
  ARM: dts: Modify I2C bus configuration

 .../dts/aspeed/aspeed-bmc-asrock-x570d4u.dts  | 131 ++++++++----------
 1 file changed, 57 insertions(+), 74 deletions(-)

-- 
2.44.0


