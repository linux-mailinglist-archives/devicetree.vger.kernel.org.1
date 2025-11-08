Return-Path: <devicetree+bounces-236354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 26365C434D9
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 22:15:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C845C4E0ED6
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 21:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28CB226FD84;
	Sat,  8 Nov 2025 21:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="kaTCmhHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614282556E
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 21:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762636529; cv=none; b=QgffOoDWUp5CMUTwIDrnNe8SNmAEZ9tSF5pofUfVzPfqEtM7RTbrIuiLnULuKjHuM9FiHepUXV5Hs00VMq5XyLIa/26q/qJG3b2vN4ZyNv/tLEl7tk0q2lVRFWwwQSYUG9go1K4vl40bZ1YYKfjtmTEmLGEqI9d/LLsQCKenf10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762636529; c=relaxed/simple;
	bh=DJH0FRQQUZ6Updyb0ntVzpcrwPjqdx0h766mMGOKd64=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=it0A04hSVAbkBo80/XNbMOqL/UlmMQVpnpT32IuvxpR0hoJardTWH+KjZYCA/1RG6UB3D4ckPO+sdgsn/1G+mqJsPHmQ0SNTHeK3DsR7LZmPhnWo8mT4yjk7Bxwu4vM6K0shchW07+OTj7Mlgi68PEx0/vOEhhcILiTXOk4wzT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=kaTCmhHs; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b727f452fffso316953466b.1
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 13:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1762636526; x=1763241326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7ZgY2Y5BzkIraCasJSMFe50CTMRyvNR5i+L9TZ55dRQ=;
        b=kaTCmhHsNIRvZeo5E/R9/fHL2GSO262ZD0Mp29IPAODbqNe+6lrj0cUolDIdtE42dZ
         NIPwrJIYRJoGMVHoUEPkDJFPhGKWA3GTNkDbSNdTGnh/r6tAl0gs0JonbCCw+CY7VCRT
         hxAOOfyOOH8RXoda71iJaDcKdd3vB0bzda2J7Kx9mlieEsVXj52iAF3WIwut2Nwg1eqL
         QzeFjgbmkSYRBI1CquexRzvSpOO6JzZmXIopH1djR2pMMBdiF9cOEX7UsBplv2fmFNvR
         fmyOFRgFvzOnO1gebzRpFJhRL1Z691D9I72XfPX2TCSrl1f9bwZ1iIjBLBPS9n+MuAos
         xgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762636526; x=1763241326;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ZgY2Y5BzkIraCasJSMFe50CTMRyvNR5i+L9TZ55dRQ=;
        b=lx+XA4rGc01rRy8D3dd5Pt1sSZwPtsG4dW100SRhcdPoQEL55gvoSKDTmIUlaKy5bX
         ahFrJaVxiUxn6mKlfL5pktePZPAQ6AOzCIRLtNUOVYZoKoDKNGp+89y3/jbKMf2OeA7O
         hplJN0NWaAqGiu128SmkhJ+Jcoqjw78xD/T0zT9i/1K9LTZsSHIA4o7Xp59AZKrKSrmJ
         Ms5ctvOgNXYFmhhkC3ZdHxB+KH5jHuQk/LT6HFmCfmtHrYhJBET1gaVbc0UOZSd6C55J
         vCP30yM9Ai/be8hJwmlkemKt3Pq7Pa/mSWYFgMvH+cPG7v5mVJ70yakuLAJlWxXmIDJY
         QuoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMFdenxvszCZCDNHQIr5SXb0tUdMfaQzuteHZ/79IWPb3v7LDx3yDxI4S8rOujZ9dKTeNVHl2uN7jC@vger.kernel.org
X-Gm-Message-State: AOJu0YyXD+fxtXDUMjm1f29V6AFTr8YImeasZr+aVbRXV2Obg1wGR/PI
	ndG6Y79+oNlX0swVa0ASimljsEsTJDAr7SJcqnzWaT869EfyvZ2OQZG0HlW5kQ==
X-Gm-Gg: ASbGnctU0SuANOaRurvD12tQunfngiYMcL39IGde3U4cYXEmE0gUtKQE1CiB+O7y5P/
	9nW7qdDQKFEd7o0Yb3A42qSRfck9IGK8vEWHP/X7jyqFZjz1H4USeuZPNQGkD/mz3uJW2LWpfkY
	cZA504ff1Hq23cur1Wrc2IOLsu4/xo0YgMfWcCmhgWtjP1fgx45CzIJ8K14yfQOGz0dSB09VIux
	8LpJgR5O6BWT6la8+AwbWOj41rqdFiCMvESQ+gVZEAcuv2ictlPKtHTD4a5SwSSsvcpRZXTyAo7
	YUhUKKlG839OugWHfBO1aPRSulnCsXUVPEOxCCnYtU9u73TMsUcxjKVpXY9UZAHawrnnsr8Cm0+
	Ln7/hsWGeIq5QhrIOOEMMfuJ4DJTvdIBw1KGMmBrAuq/Caxd0XEkqgwnGh/RHFkCBDOpa4d9grN
	VRGpvE8CNqs9XctgeHsRX03t7n8aDJoJYQFIZsIzu7CXor8Aib5zcQH6lACJBJeMo8H0sIX8rf2
	CFWJtaZWNd+m1cq8mFudQmMr9k4/vpBMImRoHK5jps=
X-Google-Smtp-Source: AGHT+IFDQ1XE4DMnxHGoDNAOKOn2R9RCApPoGixxW18C4L6aTC8U7/yf3/RbX4oWw9F4XY3sUBF55g==
X-Received: by 2002:a17:907:728f:b0:b71:ea7c:e501 with SMTP id a640c23a62f3a-b72df9055camr438123966b.4.1762636525488;
        Sat, 08 Nov 2025 13:15:25 -0800 (PST)
Received: from blackbox (dynamic-2a02-3100-a9b3-6600-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:a9b3:6600:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b72bf407a01sm625110666b.22.2025.11.08.13.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 13:15:23 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1] ARM: dts: meson: drop iio-hwmon in favour of generic-adc-thermal
Date: Sat,  8 Nov 2025 22:15:03 +0100
Message-ID: <20251108211503.1578711-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit 85b21fdec906e ("thermal/drivers/generic-adc: Register thermal
zones as hwmon sensors") made "generic-adc-thermal" also register hwmon
attributes. That means we now have the temperature sensor shown twice:
- once from iio-hwmon
- and another time from generic-adc-thermal

We need the latter for SoC temperature control, so simply drop the
former so userspace doesn't see duplicate sensors. Also
generic-adc-thermal provides a better name to userspace
("soc_thermal-virtual-0") than iio_hwmon.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/amlogic/meson.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson.dtsi b/arch/arm/boot/dts/amlogic/meson.dtsi
index 28ec2c821cdc..6792377b2841 100644
--- a/arch/arm/boot/dts/amlogic/meson.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson.dtsi
@@ -12,11 +12,6 @@ / {
 	#size-cells = <1>;
 	interrupt-parent = <&gic>;
 
-	iio-hwmon {
-		compatible = "iio-hwmon";
-		io-channels = <&saradc 8>;
-	};
-
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.51.2


