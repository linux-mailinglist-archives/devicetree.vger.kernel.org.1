Return-Path: <devicetree+bounces-223781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C4001BBD745
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:35:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9564F3AAE9D
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 674821F416A;
	Mon,  6 Oct 2025 09:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="Zw+fS4MR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9045A1E1DFC
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743335; cv=none; b=j3bbxt4taOXlvifZgLb7r4du4piI2F+9DKWYLj5kOdSHb64nL0mnEBbAPEME55iw9V1wTLqMhhsIgn2ysPMG7y1Z3OXpvAw+IcjNqVR2Go5XwXy3pvSXSpJravT2vNjIAWqrSC8u9SdbK8FH2vVsNCqBGbWLbCm2GL0SS9PPI3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743335; c=relaxed/simple;
	bh=2TJUfjySb4YZUCd58TZgP7GJPQnecggYuJMcLyTBYgM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BHdV/wgl5OH9H5dRBgkHofYyP6nAgwlRLAqs65utEs5nfVoDgKAz4CyH7yVo8MYZeVLPu01QI2wTKkZJTadzT5/kdWVnbfcTR2Qj14xL2xmbmy05lHwZv9cDdi2QIgQJGbX1ucy7DmFaTfaN9NsawHte+DSKeVmiidiw62k/eKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=Zw+fS4MR; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-63163a6556bso10456284a12.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1759743331; x=1760348131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d6AqdaoZXPrDITnhyYtxNcdvaNUCH13ctl0+xFiOf1w=;
        b=Zw+fS4MRJyBM4KB383eS91O70V26lpAFvfeUyCsS7QBeG4W8jYP9gOibzCFJpGkvxe
         z2LltdBiGfNlyK0y65nZ+72k8HdSc7N8Elz6ttxAJ/TKQAq3SZ37jAbZGDTuQ3k6bysS
         TjYS65AMQip49nEFKDl81Cn3S1tZWrthph+oorW2CZ4Nv88Z4EQ92ObW4WlwHfgPc9dK
         PEgze6eETcq0hKYeSdyTU/BecMCzFNa8gb/nNdc9xUGi4NyPFGWQMPj0SehfM+YPd9+n
         PwoRplqsw/CPQD/+d9APpj/XM7tnIszzfmNiec9Stgr6GltPkZSFlLLtoimrOUDgAlNE
         MkhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759743331; x=1760348131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d6AqdaoZXPrDITnhyYtxNcdvaNUCH13ctl0+xFiOf1w=;
        b=LU687aVlFD7kqgGN8s9ngsa142MAG49DlhQH6wyneNmXxxOU2uv8rpy823gBFhIheL
         30dksPKeGnyjzxbAw5YFSa0nqnyF6UdLBTyzvTjMMY2/b3KSwjnyKahpPL20QXWozv8B
         1WhV1XkbLUpdwQXhXuBJORCUJRVGBTyXs/QCpsqZVogz7wZP7U8KPDlI/3iCVEIcqwJw
         ZJKk6uVO9B/2MhxZnxT7poT15LB/C/5K0J/4FtViJaMI1Z/91jTeiuARLR0bRfCKV96S
         bnn/npki/EAniI0Yys5hPk6VD/Bb+SVsL5RPPmh20d3Y/FelYC047Vqj8uP9Q2nNc4rm
         n7dw==
X-Gm-Message-State: AOJu0Yy2stkt1p6HyB2UPiLfe3YJc78eyPNCtrsEEWmR+qyFckdehEi3
	oAxI6x6mhUPANaCdJACqavBv6NeSRRzPYpd4Oticu++OO6cxnTY3TQ+zJ8ulKQ==
X-Gm-Gg: ASbGncvKnawPzmc7flv/hXYgf0LN1uewrqDq6p97AnTDIPsbeBVTNrVmpIFI1VD8QjM
	ygNcMHRs0sxBfLz4d8b9/ElWm+Uxm5FlOukkcTT25/z40O1NwUQoiYQNTIpRqoiNDTfFC8Z3Fhb
	2SOqG3I0UUXDKDDswoBnvyIMw0D1g08RbFX4obc09hW6xJML/WiAg22fqrujqmAT7rq4ivnkII7
	2C9CUgnrqQw4C/BgTXtkee1xZOJ0FKsmaE42MDgdDQu2RjRlqe5by8IASJM6Lc4AF93OERI+ge2
	n0zNdqlGFS2ZvH6mgwaJw5KA+1j5XqKa4zZD/gkNqq9i/AYKH918ZOu0nlenWHD4kCRb0zrE+NB
	NQIN4FFZTUBF4UJxOQ8X9sRN3nIofjxWbCK6IMx9eqGc/5BAy7cTOWd3jGiatKoRvEpoDuXcBCR
	A4rpOhXsEVBwkreoYgQ7WcomzfJWGpe0N+GmbDeg==
X-Google-Smtp-Source: AGHT+IHWpv7Wht2VS4TzuT2fp0+Kf65+amyLNs6YlnRTJHV3prWTZi1zk2GnRQ2EqJuhQDSO+45SCw==
X-Received: by 2002:a17:907:868d:b0:b2e:6b3b:fbe7 with SMTP id a640c23a62f3a-b49be9906f3mr1565134166b.0.1759743331109;
        Mon, 06 Oct 2025 02:35:31 -0700 (PDT)
Received: from development2.visionsystems.local (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486a174a6dsm1109176866b.90.2025.10.06.02.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 02:35:30 -0700 (PDT)
From: yegorslists@googlemail.com
To: devicetree@vger.kernel.org
Cc: linux-omap@vger.kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	Yegor Yefremov <yegorslists@googlemail.com>
Subject: [PATCH] ARM: dts: omap: rework Baltos LED nodes
Date: Mon,  6 Oct 2025 11:35:17 +0200
Message-Id: <20251006093517.3075431-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yegor Yefremov <yegorslists@googlemail.com>

Add labels to the Baltos LED nodes.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi b/arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi
index 049fd8e1b40f..ed194469973e 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi
+++ b/arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi
@@ -17,18 +17,18 @@ leds {
 
 		compatible = "gpio-leds";
 
-		led-power {
+		led_power: led-power {
 			label = "onrisc:red:power";
 			linux,default-trigger = "default-on";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
 			default-state = "on";
 		};
-		led-wlan {
+		led_wlan: led-wlan {
 			label = "onrisc:blue:wlan";
 			gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 		};
-		led-app {
+		led_app: led-app {
 			label = "onrisc:green:app";
 			gpios = <&gpio0 17 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
-- 
2.34.1


