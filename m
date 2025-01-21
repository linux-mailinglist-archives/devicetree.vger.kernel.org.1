Return-Path: <devicetree+bounces-140042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2ECA17E21
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 13:56:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B72C63A5DDC
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 12:56:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5175F1F2C2D;
	Tue, 21 Jan 2025 12:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="RGag2DzS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D1B42A96
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 12:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737464183; cv=none; b=X//+qrrHyoGinYnrmcxz9QlucN7knMwteMKEhGrAT8tFx2j0NKJTRs0ESKs3xhF0hBAg92XkR1//eKXdCcAL0w5L/cxxEESpsXImSuF5tG8uVIG6HkMZJksAAkfpsoVt1B5R4rJRId/a5TQEYPyMg4mVbvs1IL9LPE/jn6tGHB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737464183; c=relaxed/simple;
	bh=Jb7gtavYJSMtEM+1uRO8th0lvhKIdkwy3noPsT0wP/k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jIxZUolE+eB00Ev3mwh62+zws+fb57SunlUhlgVQkN6iwMBaR1J5t3ZBtPPuHP7rk6Ax2JF7wdWcivEUvQGfbFyKQh6aOdkXNMDwf+TN7cZ/52raao9yPWuLC34dHILBxN3RGn6j7Kmh8QWHbIBlRhO5E3m8+Rnl8eLhI3ya024=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=RGag2DzS; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa679ad4265so1287762566b.0
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 04:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1737464180; x=1738068980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bx8ohLBrU/OokPvPfSuPsXKrA57TpfEKGJT/XmjQiVY=;
        b=RGag2DzSdABul/PR6TzDDb9klUcDYtHNw+rkbrp7QAl5fnDnZVXjb6gxklQWOYmPv3
         uT3tYQr3naxXq5osxTapigCqdlJt2ii/dUzs61H9PE12jcX4Xyb7JelnXZGDh7HxXpSG
         c4xrSgJvyQc+z3VXtwUp48UawbQ2BEKtB7MU6RhrnMqQRjgZ15wdHd9uggXqB/YwJfJ9
         M4+erak8NmqXQBh2AyDaiNbnvqkfq9VAWoYYzqKUsbztAVnxDrNGFgcwEbz4GsPFWyKO
         WCBAW1jUVz7yjj51LGRaXboIzofRyfUv5soIx0A0eEsEwXrUaiCUpPrId612X5i3YWmi
         sY+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737464180; x=1738068980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bx8ohLBrU/OokPvPfSuPsXKrA57TpfEKGJT/XmjQiVY=;
        b=ekW3WSyNXHiDclvyU23LDAtvgIw4UeJejYXWd2dp9rc3hEebDED75Xnr51ZP3uPs0V
         ipF3IZLv3ReTBba1JeRcO1osYt/usgftYV2Plql52aeyOZgFpPM00BqqwLI0LWDMbDhQ
         HqZhJ2lHEDarJV20FqvPSAYt/eB2M7yp27eI6TTtNjgl+ct3NNcbIYi7VXKTBvhupAF8
         PLmQtLI95cEavtvRq+AhExVKBAgXTrCOKG466m+d30db+HV7gCdYVet4yE/g2D6NjTZe
         t7aQAEYmFkEdkDUxfaNtE8qOkum3/KOo80X3h0DRBzXa29xWADLg8Qkf49p8OpCNHgQ7
         7WQg==
X-Forwarded-Encrypted: i=1; AJvYcCU4Moixkm1eR227SJohkJsB2IxW1Egwx84dQl6OrNESEgkKMPE7k4v4U6jrKRIVy32dK8jR+Cozuhwj@vger.kernel.org
X-Gm-Message-State: AOJu0YzuSQ7vdXaVDEB/isigytlaiuMrvAdv5SBhr61tnCbMxZd/sn3u
	FB+0dHLjuysPCY6X3oxaxQA+lfQgUnvUjnrfBWKH0/+NRyHjCebHQiqOWiwteUk=
X-Gm-Gg: ASbGncs7lHVXmrNuYKG0pFMzCM194QVgXtqUTCWXIlKl1GXCpWI+WgNUeR/tvrNNoYH
	1NdW/AYABT4lcsaa8roVlDJfBFz/Ts6ethChBT6JiuJ3IMZlqugWUYh5NYO3eXoajpff4YGrgQK
	9d3nPvr3iusOF+F5I4z++/L1kAyg+saOjeowR0pAIWWx6cTkQIoe1kTR2OPVbAWL2IiSIKKEAlx
	a893IQFF11m0Pf/miurrIZssrEHNPqoqrxGTqeDERLXwQsNyGnv8LJCjnuM1jiUOIKv4M7rdQnm
	dosgYzqY3a3VDj6VL3+YSwvZ8A==
X-Google-Smtp-Source: AGHT+IH2YjsrPDohH7bzIMs9wAWWL8aTE7Di9cAl1bb+50e+R1QaTdoPlQwcV1unai0DN5r3lzmS/w==
X-Received: by 2002:a17:907:7b8a:b0:aa6:8dcb:365b with SMTP id a640c23a62f3a-ab38cba3335mr1373905766b.5.1737464179884;
        Tue, 21 Jan 2025 04:56:19 -0800 (PST)
Received: from lczechowski-Latitude-5440.. ([78.9.4.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384ce0529sm740943866b.43.2025.01.21.04.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 04:56:19 -0800 (PST)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
To: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: quentin.schulz@cherry.de,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
	stable@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Disable DMA for uart5 on px30-ringneck
Date: Tue, 21 Jan 2025 13:56:04 +0100
Message-ID: <20250121125604.3115235-3-lukasz.czechowski@thaumatec.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250121125604.3115235-1-lukasz.czechowski@thaumatec.com>
References: <20250121125604.3115235-1-lukasz.czechowski@thaumatec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

UART controllers without flow control seem to behave unstable
in case DMA is enabled. The issues were indicated in the message:
https://lore.kernel.org/linux-arm-kernel/CAMdYzYpXtMocCtCpZLU_xuWmOp2Ja_v0Aj0e6YFNRA-yV7u14g@mail.gmail.com/
In case of PX30-uQ7 Ringneck SoM, it was noticed that after couple
of hours of UART communication, the CPU stall was occurring,
leading to the system becoming unresponsive.
After disabling the DMA, extensive UART communication tests for
up to two weeks were performed, and no issues were further
observed.
The flow control pins for uart5 are not available on PX30-uQ7
Ringneck, as configured by pinctrl-0, so the DMA nodes were
removed on SoM dtsi.

Cc: stable@vger.kernel.org
Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck) SoM with Haikou baseboard")
Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index 2c87005c89bd3..e80412abec081 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -397,6 +397,8 @@ &u2phy_host {
 };
 
 &uart5 {
+	/delete-property/ dmas;
+	/delete-property/ dma-names;
 	pinctrl-0 = <&uart5_xfer>;
 };
 
-- 
2.43.0


