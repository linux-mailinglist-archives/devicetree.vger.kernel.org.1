Return-Path: <devicetree+bounces-140243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79669A18F9F
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:25:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D8E87A02EE
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B068210F45;
	Wed, 22 Jan 2025 10:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="A8llg4Kq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A3220F970
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737541509; cv=none; b=TPvKns4MDrSyfl6EUrK8phgVty0aR6tVYTXJHrU8WB/BrtD2bEcFks8QiopvrtGctmjqaA6PAwo+YtyzQ4BvwZzCPvrEKEKu0aDLlVrIDlqjp+pSD6wmqEMWzkVrTLL/vN8XwL8ZslPFH05gnUOgDT8E2png0nLPLpbngPCK5CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737541509; c=relaxed/simple;
	bh=eLqqISzAEibN/RsSoa/Ahf79y4yOwqmAAtxfAfv+ph4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=eYmhnOtXImKHWRj7ms5GLiKyE4u4IXmuUxhUl97VQZ+HhU5TnXU2xZknXCy+z0bupFOwk8zPp1DHzaSaI89OvPrZxgrL0DdB9yTwYrQDCX8PrhVZrJPjc33BWCj6uLm2ANaUpO+JWv6w5mds4sEHtwCNCKRo+pZY0m5JpDVuNqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=A8llg4Kq; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43624b2d453so73327365e9.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737541505; x=1738146305; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GwHv2aPcEWoD0loupYwRcf7PKkvnDo+yTNth+u2DuQc=;
        b=A8llg4Kqt3K3EwcyHB/mdt8QnS4/FyB6HaCrWeYLgOVqDcMLDGP90jVC4nRfsUl4fO
         joWGB1fpg5ltBbj+6NrrC1hhAJQVqgFAXDOPKYf1W0/Gc9Yeh5sY8VbFBeQJE2Sn0j50
         9MnJ+EcLsdQ/yM4WPsg90pRE4RIB+PVSqZhtktBibyyty/vavjTAYr+vcNvdLHIrNIJI
         U1Cs6Ah5bIxEgrMcFBwPq91tMoynsm1K+dn8RxmSM7/Ld3m+jOwKCb8MrcGRbs8ER84E
         g1DeKnk4u9RhR2s3n8R4XvBPvxi2w4zict+XWQkYB+QtwbaYr+sAjBFf4U2HMRf0Vbwg
         04oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737541505; x=1738146305;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GwHv2aPcEWoD0loupYwRcf7PKkvnDo+yTNth+u2DuQc=;
        b=LwyrgpRvOlEjB+SERvfEAZjIr9Xep+1QhqpJtzAvPCCMF0Ar3xbktU/WP7p337FuVW
         /c63JTCQ7aGgvrBpsi44o9I7dVUnxe6JkI4lV57jjmWbD6JK1jvtFHGDJnE0iGsTvM3t
         PDXLObPIFcBLrBSLJWyNBs6wiSWq9NBZPAoIcURVmUew/OIp9ycySpQUCZK0OYwXr3Nl
         w+WgwS4R1JhKtJQ7aubfqGvXO4MAC5FhvsgfgPC1hhPglXL2UFEjtQ1FohCbVahd02XR
         q+JY4LIEW0pzcmJu/FYFQzTgVChKyTvuKmn975qpNs9I78wBWuNVBleDryfeEQh3waDl
         9JdA==
X-Forwarded-Encrypted: i=1; AJvYcCVOve+ExTgIkp8kZ1AMQc9k+PlRW2DIKBdq9gYWNoZLgfEJ8DxVzPreRwsI3O/rYfendoaT+4qVeTSU@vger.kernel.org
X-Gm-Message-State: AOJu0YwZX6+JWaHlujkEnDG3E+2qoRpUDzV+Wk7Fhjhw1SDt4zX7TUmi
	IZEWujc98GmaUevV3+lODVPrfFB7QDmML+sgvX+EbSIy1M++MHQH8NL/Pui93ZhW9ih8fdHZbMw
	Z
X-Gm-Gg: ASbGnctxhKOG6+hbcFzhlLQb8yG6i2ffmmcNrUOV81jwzPxoGdAvGrrcn0UsvlE5Fga
	vGkeZyec83LnFhoeBEX1pzTVsRM36kj/FHrfjWsjoegMJxGz7wjoKM1BClMXc6lOIo4GnX3cMTg
	yLAjg95+v2CsXILN/84ErkI1CJpNHBbAMR2zTLKdDLHdsybuZFlwMUIWENJoNKWLJ2vXkEHvl6S
	q+NT7rUta/X5IEiCMT3JqFUiTjE1XJ4L9XRUFU50zh1HKh6mKC/rNH6UnaF6BTVw8k=
X-Google-Smtp-Source: AGHT+IFpt/XXXccsHvEFoIG6ujz+wEELGcCf+5voltza935oFhduQAAvS+EeH/1myB8fiPdsB+lIPQ==
X-Received: by 2002:a05:600c:4e06:b0:434:fddf:5c0c with SMTP id 5b1f17b1804b1-438913c60e1mr196869015e9.4.1737541505222;
        Wed, 22 Jan 2025 02:25:05 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf322a934sm15536132f8f.42.2025.01.22.02.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 02:25:04 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 0/5] arm64: dts: ti: k3-am62a/p: Add ddr-pmctrl,
 canuart-wake
Date: Wed, 22 Jan 2025 11:24:31 +0100
Message-Id: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAF/HkGcC/x3MMQ6DMAwAwK8gz1hKAvXQr1QdUOxQD01QjBAI8
 XcixlvuBJOqYvDuTqiyqWnJDb7vIP6mPAsqN0Nw4eV88LiWRSNOfwrIK9phsWTcCP2AlFg4uYG
 YRmjBUiXp/uSf73XdhXy2d2wAAAA=
X-Change-ID: 20250121-topic-am62-dt-syscon-v6-13-6fdedf036d64
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1391; i=msp@baylibre.com;
 h=from:subject:message-id; bh=eLqqISzAEibN/RsSoa/Ahf79y4yOwqmAAtxfAfv+ph4=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHE++crjV/ZzSpBNu9+45S91fcfHphpfTs4WScv40B
 x+bYHePpaOUhUGMg0FWTJHl7oeF7+rkri+IWPfIEWYOKxPIEAYuTgGYiJEvw/+S59yzuHsky9NP
 a35r2OBiczEt+iZDsPvG96xeb7n+zWRkZFjvGh7Zubg5/+OunepJK84vdVvyZsbuTbc2hM2v/iW
 rX8wBAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Hi,

Within the wkup-conf register range there are two register ranges that
are controlling specific other parts of the SoC. ddr-pmctrl is one
register that control the DDR power management. canuart-wake are
multiple registers that control the wakeup functionality of the CANUART
block.

The series first adds the dt-bindings to syscon and afterwards adds the
nodes to the wakeup domains of the am62a/p devicetrees.

First patch is a fixup I noticed missing.

Best
Markus

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
Markus Schneider-Pargmann (5):
      dt-bindings: mfd: syscon: Add ti,j784s4-acspcie-proxy-ctrl to second list
      dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
      dt-bindings: mfd: syscon: Add ti,am62-canuart-wake compatible
      arm64: dts: ti: k3-am62a-wakeup: Add ddr-pmctrl, canuart-wake
      arm64: dts: ti: k3-am62p-j722s-common-wakeup: Add ddr-pmctrl, canuart-wake

 Documentation/devicetree/bindings/mfd/syscon.yaml        |  5 +++++
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi              | 10 ++++++++++
 arch/arm64/boot/dts/ti/k3-am62p-j722s-common-wakeup.dtsi | 10 ++++++++++
 3 files changed, 25 insertions(+)
---
base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
change-id: 20250121-topic-am62-dt-syscon-v6-13-6fdedf036d64

Best regards,
-- 
Markus Schneider-Pargmann <msp@baylibre.com>


