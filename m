Return-Path: <devicetree+bounces-143910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35221A2C161
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 12:12:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 116D53ABBB0
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 11:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B8C1B4133;
	Fri,  7 Feb 2025 11:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="FrSR74TM"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7431DE895
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 11:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738926759; cv=none; b=f1hkA07MHUJtqFbi64p/9DYEtLmSCvs/8XiHE/9yUnYNpGjI0mFG6i2LpwrohSNqJk9cEo7zdc8lIYKfC223UuoDKLVHjhMhMB328drmIhinS85v+W4Ae31paPkF9Q9k0WzEIH9u967hAUK95OxZII/QX8xnjFC5o4SvnNyern0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738926759; c=relaxed/simple;
	bh=UVhLtM/e/Ecu9w7ogun1ZPTVaG58q25LWUWoAh5yJXc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ig6QPYW/TI4rNjyyegrk3+F5JbH8YLUrPYSc34wu0zuVCmeLma0wleaCPSl2dfeIUy8wGOX2WhAuUNKzVFdOUtx8TjPmAWIM6lAK6OpuXBn6ZN8ncyw1H92r1ITSH65LJXpOKPXc50QNAWdAXfsJaeR9tFdnwNYe8ycSZvkVCzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=FrSR74TM; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1738926739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ggZDy9K0QrESSAr+dEXYVccxkvpDwQbtlF19t9QLxNU=;
	b=FrSR74TMyWdTtAjGtKHYnqxV8zPXfJhNyyBsdsMklihOHeM5TI1huTO9BajAk3LCtHmF5G
	1b7mqcTk1hWuzDXqFwrQrcrcJUW1dUo4Pnx5bxASqKpEZp4B9yAePPiMfYMvzkeV6B3rNA
	eRgjnYCBtcxCYdP+C6rZl1P3BDd70bVXOCygyfEG/heeY09QLGBooV48c2IC6zwKQ/nux5
	xAlCQD/Nd85BD7Fr8DQljO9+zpY0dI3jNZFUHwbafz7VQ9Z7LBnZDP77HeoEnOxJYwt1xq
	BeQRFjXP6y3+uG8/8Y+rfV+pZe7zJcmqebJIlF3Td3W5gdxf6Uua68N1mDrtWw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	Marek Kraus <gamiee@pine64.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v1] arm64: dts: rockchip: add 'chassis-type' property on PineNote
Date: Fri,  7 Feb 2025 12:11:39 +0100
Message-ID: <20250207111157.297276-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add the recommended chassis-type root node property so userspace can
request the form factor and adjust their behavior accordingly.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
Link: https://github.com/devicetree-org/devicetree-specification/blob/main/source/chapter3-devicenodes.rst#root-node
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 2d3ae1544822..3613661417b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -9,6 +9,8 @@
 #include "rk3566.dtsi"
 
 / {
+	chassis-type = "tablet";
+
 	aliases {
 		mmc0 = &sdhci;
 	};
-- 
2.47.2


