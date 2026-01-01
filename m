Return-Path: <devicetree+bounces-250887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56191CECCAA
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 04:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB98330693E8
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 03:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C535246762;
	Thu,  1 Jan 2026 03:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="hAb/b4ke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B9B221F1F
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 03:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767239028; cv=none; b=gCqerRofOvsBx7RRnVJuFwSmWvFBT/N4xRKvYHc2M7zt47CqydQ/Bx7qlceqUySvULQqcr7L1icEvGgJfhbHOVYeR3s8+ufE/A5hGsKwEPm6c4n/xzOoEUtZ904oqPEdjObLzXJDCEbGkLCplT8EiYQGysb/r2P6IJlz3qSn/2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767239028; c=relaxed/simple;
	bh=oeYH7BpXqy9X4qfngGVahrpJZBTSCGqdfiu+EZuKTxc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ixW8sMHExqoTEnikLjFD1CJNFwRFQWfNbtL62aaUsJPIKd+cgKYRz4MS1F9rGiJ2mLGlxdSKFVYcclHGfSFXPYODIf6NjFJpnAH7ikcuxaTJx7YJpWilHjZIet8t+pLExgpDhST23nWS1pBxRDG/CEQEmFXI0easjgTG+3J1OqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=hAb/b4ke; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a09d981507so82533365ad.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 19:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767239026; x=1767843826; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OtxBcRpBORYIa5rqVGM8zqMG6Euvj5S5afX/620YI/4=;
        b=hAb/b4ke4xuLTq+bjt/TcnhDJMYJI7orMPC+EMnUMagmr7L/fKyT/POtxyfYR7Hq2+
         Y6DxPGElmwLeM+cxVQODJaW6+Wpoo8YoHjRnjGBmDB3b38vYeV5QHo7IDZQWB4qTHYSa
         AWDftFgqh02iarBGo6tp9RmzQiZ8VQcX+lTFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767239026; x=1767843826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OtxBcRpBORYIa5rqVGM8zqMG6Euvj5S5afX/620YI/4=;
        b=LmMAGg71CP9jcZ3+4yvjPS5h+o1XfopBSGubR7ZEvdAZMxcOE+1llXNUITcHb5h15X
         t+i8j2q0xV7jhsmQkJBvcG/BxTqFUkOVhQHKN1ra5kPFO0Y9w1ErQXR1ZumPdKRr5dQs
         26610odTm7yto9GXVnWVkzGvLUtRqNSW1tmxfx3ed/RXzuwuIRQCh9j50MP0V/VOmM8b
         kcQILdVfPa8fieZeVpmSul8jIetflffbZRkfXft/C+wo8RT2KnM8b6e9w/GJiB8QOmdH
         dVm8RaXJr/W/+GnEYbQlTKAFN73jXIjh4NFK1MX3OaZWvyiKOx1aIC3Bh/RwYsTen2lj
         0jKQ==
X-Gm-Message-State: AOJu0YyJiw1dPVkKaqQ42Gav5hLc48rwipyKuRdQNom9cHfD2OwlJS9I
	wDnEWHUVfrjT9sgypRoTUcD1Qr0MsmrW+KVLwMm9MTtYgX6da6N49zbNi/RWBs1OI4w=
X-Gm-Gg: AY/fxX5gpo/euQg/vn+zyfNkC85yEPwhnR59TEf/y4vcRq/Ae6gpyf6VVnjR6skXxu1
	Jy/JDTVQnldNwwRbY2mh//uQfTmxt9eOiMfJZGORo9STB4B86x9mEvZbOsCLDtA2tmg2/HclWND
	tpP44mCu/XhHXHv0bHTFxZJuRKlXECL4vElDvkwHy6e+NXqMBHyKTj6FXncZs6ZOzeXxdeeTDHZ
	GiGWj4Nr4r/1kviLwoExDHkhsdi1Re6ENJUY94Sr6brRs0k7jkMSLmbbwQQZ44KQW1o536+PmGn
	qnOLGm7mAopt+n5Aj2HnLe6/AsbHcKIMTKKAWLTjDFygySdBcIm91zbgFDX1ACAtefLlVqAneNv
	lzvYOr7s5IgRrJDREpW6+Z/WotULutaCrSR+vFCBWDOLnjqt6C501CQrX5PNQhIAVY5scUTpHIr
	jLeK/yRjGRDojzZmdGlgfo27Snq96RSPjqvHg4E6JnNM1+p1MC1UN5
X-Google-Smtp-Source: AGHT+IFbIGzY4aErWmVCmKLoR1euT8Y0I8p4TvriJh11SnfOuAjOjw4SRu58etUjZRyUVw10n6dkGw==
X-Received: by 2002:a17:902:da88:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a2f0d5dbc0mr435134325ad.28.1767239025888;
        Wed, 31 Dec 2025 19:43:45 -0800 (PST)
Received: from shiro (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm340437965ad.33.2025.12.31.19.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 19:43:45 -0800 (PST)
From: Daniel Palmer <daniel@0x0f.com>
To: krzk+dt@kernel.org,
	romain.perier@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 8/8] arm: dts: mstar: v7: Add sizes and ranges to sram
Date: Thu,  1 Jan 2026 12:43:06 +0900
Message-ID: <20260101034306.1233091-9-daniel@0x0f.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260101034306.1233091-1-daniel@0x0f.com>
References: <20260101034306.1233091-1-daniel@0x0f.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add some missing properties to the SRAM node to make the dt
validation happy.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/sigmastar/mstar-v7.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi b/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
index db661e189eec..e50e4000d1ee 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/sigmastar/mstar-v7.dtsi
@@ -187,6 +187,9 @@ pm_uart: serial@221000 {
 		imi: sram@a0000000 {
 			compatible = "mmio-sram";
 			reg = <0xa0000000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0xa0000000 0x10000>;
 		};
 	};
 };
-- 
2.51.0


