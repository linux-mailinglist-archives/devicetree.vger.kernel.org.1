Return-Path: <devicetree+bounces-140245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E03FAA18FA3
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:25:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D7447A1755
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9108E2116F7;
	Wed, 22 Jan 2025 10:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Eon4dcxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2C8211482
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737541512; cv=none; b=BKxcGnyiMjcgKi0xHtZih1Yyg1SO6spJeZUe/humUvRUWqCmSzx1f2NybYUWacWkCvnzOj3pYtSdwEcaQTO5g8xiOMSPXZg+49M3h7kQHYtWQxWplDJYLs8M2j7DKUxWQMt6MyQwcHQXYNgO8g8xYJI4pFOxxhZjHTYRne1Y+8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737541512; c=relaxed/simple;
	bh=Kpo81x2Y4TdW+Jd6LVcmPcH1pTM7VMyezCPlvqHWyMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FVrmFSGBNaD4EcSii1doyKOSbv1z5OuLEo9Y7bJA5YV+9bmKyv0UjHTvj5TNOT8zgTzSS7kWua5MBldA+oU9+m0hyEyNX+eKeDZ6ehpz9PIN4R19P98So7ts02j42IaGT1DWzcxwuG0d6Ij23wasLM9X383dbF0vPtrlBG75+eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Eon4dcxb; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso46781995e9.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737541509; x=1738146309; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BP9YoD1i/LSDmCGYFxq6dpyZTAVVlj4uIBrs32gFZLw=;
        b=Eon4dcxb8i8zcFojZPm7Yn2WG6jfTZri44dVPNE1FLK4vaiwF3HRXeZEQfVN/KHB3i
         1G999PEz6dhjJy9l3YBD+HoFC/wDcNInsK6Pq9U6Txej+Fx5ez4n+J8TeNdgtN3hoyUp
         MbMCCLwkADm0N+MgbfbH0RHpOLSvYl6+l/XzwEM+vZ9oL1Oc+AUugklnxVPR1J5VjiSh
         UXj7dR1Qyc5FoA3RLWujO+bLP5WzIQUGIFYvc7/zKmJuaqE0T747OKuC2QLgKrDaJMV8
         9pZ542dUqF8nblHTjzgEiowvEEjXd1Qfq1gJTm5oXMCguEWwsPY2rlubn/ssnLw7loBc
         A7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737541509; x=1738146309;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BP9YoD1i/LSDmCGYFxq6dpyZTAVVlj4uIBrs32gFZLw=;
        b=qRypE1TQcyhs52jtxTZHZywmV9ZY0fqjFoBLCh4GdsczquppVyKsmfYyOu6G0zuM3v
         vsMM30e0xviJUxc/xPGel/y3opr/BJIki4VAyfMV3je36jvyfjQfZwPaB22SOL/sQ3+Q
         zN5CVMsSMGHbGI1uR87egZcBmTF9mVbYjFP7REkpoit2RJKOhdund8RghehCDRRkgu5j
         EAm6nqqoynuuMSvgRY1sSYWtd6hamA83x8aW55qpELqSVcu9cN5F+Ca4vEkAjpK20c3y
         jBhJaL2xzoc8SKj/si+xZ6+/UCZwx/gtUYxgFdb/ciyBCgIrUAck9x+z8k9qbhy3GAd7
         Walw==
X-Forwarded-Encrypted: i=1; AJvYcCVXJhXcy/+4X+bUPjvQfIQZ/B7Jv8tM3po5bixvtVkzJsP0mtV6DHW+lJWT8orJDlBAJrs0WOOhrkz6@vger.kernel.org
X-Gm-Message-State: AOJu0YxgvNSI+UGVwOU0Bm8KHPmTA5t23PnnL9m9cd22oletQo+ck+v/
	qwgPshFyirzS3VkcfUxYWnTCtUtRiexim8hrAjqg2SrVDsMdyx+kGQ2RSVleVpFUgwY/RUuybqo
	f
X-Gm-Gg: ASbGncs0+kzmVQqZIwzvHLplyUOtjr8S61JB1/wMLUxN/iMKf+7cWxHe6mN9R4z6Box
	h0/8Dk/uJpCsjI0N+6VcNaPb6tGbUabKVOXj2EiWBc8zX2CbYO8tSnl5XyaUlBLKoYVFkZsebaX
	EzhIxTsZwEWcSQ3t2eGcsUn7S7WJgIhwWmKD2Rh7kjroeLjIzsIZIR0+bnGDDeoJODyINwahs2W
	Fjq/gFuCRWXyjXX4ofWuGuX/U7vhU9cn9aeTeiM9DzD2dsObWcL72qFLGLJBreQPDQ=
X-Google-Smtp-Source: AGHT+IHf1SGtbowYcc9tUYxc5ermxJbA44A5Ao+uF+UtMtDBlktlF57uZ9mNeChyxqdXa3/d9wNrGA==
X-Received: by 2002:a05:600c:34d1:b0:431:6083:cd38 with SMTP id 5b1f17b1804b1-438913bdd91mr187163175e9.6.1737541509094;
        Wed, 22 Jan 2025 02:25:09 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b318c0efsm18964115e9.6.2025.01.22.02.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 02:25:08 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 22 Jan 2025 11:24:34 +0100
Subject: [PATCH 3/5] dt-bindings: mfd: syscon: Add ti,am62-canuart-wake
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-topic-am62-dt-syscon-v6-13-v1-3-515d56edc35e@baylibre.com>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1236; i=msp@baylibre.com;
 h=from:subject:message-id; bh=Kpo81x2Y4TdW+Jd6LVcmPcH1pTM7VMyezCPlvqHWyMI=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHC/q+qoccsJ526qO9/xXGaOfWslM7Thx9pTJkhv2T
 dX52T15HaUsDGIcDLJiiix3Pyx8Vyd3fUHEukeOMHNYmUCGMHBxCsBE4jcxMuwN0br1YdfBlZeF
 /xvZ7u17bdFaWf3pSx7/t+9pnTZf7j5k+MNtUCYj43TV1GZ/4dTvpZcen4r8xxKoYWu+edWkoxu
 qw/kA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

The wkup-conf register space contains a number of registers that control
the wakeup through the CANUART block. These are present on a few SoCs
including am62a and am62p.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index fa2e904b52ea0baecbdbdc14a4fb636eb87abe59..2c8a3f654d82fc6114e71be28f2824597757e328 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -110,6 +110,7 @@ select:
           - st,spear1340-misc
           - stericsson,nomadik-pmu
           - starfive,jh7100-sysmain
+          - ti,am62-canuart-wake
           - ti,am62-ddr-pmctrl
           - ti,am62-opp-efuse-table
           - ti,am62-usb-phy-ctrl
@@ -209,6 +210,7 @@ properties:
           - st,spear1340-misc
           - stericsson,nomadik-pmu
           - starfive,jh7100-sysmain
+          - ti,am62-canuart-wake
           - ti,am62-ddr-pmctrl
           - ti,am62-opp-efuse-table
           - ti,am62-usb-phy-ctrl

-- 
2.47.1


