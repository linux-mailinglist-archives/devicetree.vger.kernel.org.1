Return-Path: <devicetree+bounces-232907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C61C1D012
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 20:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5241140074D
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 19:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27AC73596E5;
	Wed, 29 Oct 2025 19:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HV8reXkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E413357A32
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 19:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761766152; cv=none; b=stkvX+LaJ+A1ag3MyGNL2PxsKGl9b85ggrCDHSZIQqUZLa3QTFFF16HPTeYeRGgPL0faYGDASWRwTWpbpiI4CaJVN8rgsCbECyKLsg3RX+PXB/5+PPOdQlhBTe6/cp5788iaZ/VFK/QIiVW6IBKxU6FBz1NTUiRgC7nM83aoYm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761766152; c=relaxed/simple;
	bh=2wqxvv1LyQFzj8yk+I9X6hMiGmB+zBuKRmM0nZOP2cs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VHNFehE0O9mH5f0Q0te1h6JFKN9wHXUpdOraCG6KT4rKmFnC5qtXvmreBv0cdyIZnI6a/iC4jdjM3efyymbQ9nK2DOh4sZfemyzGN33+wMIBzoF0bF09zfRykusZaiVEtwSTxe+4detHNKAXPGjvB2rf/sSvrRhknyV2SgkESw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HV8reXkb; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b6d5b756284so58444566b.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761766148; x=1762370948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NKKJA6fRomltCp481BiLWPXK7LT4XBfRN+VIaJM7fMU=;
        b=HV8reXkbUK1Ebe1t+6oHtOQHE5GtRzTimSUH0QMURm46xDZQQo+HVUn2nQqAG84GhY
         NI7Qg8xshfo0kHde4UPuQcQvPoX+eo/humrQvd1TrN3uxHCYpKOhmb+5PNJV2AfdQ4H5
         UPzBhYCXUqezxy0tRNN52in992rjPVnAUCFtiXHUK30YaGUZ5R11exm1l+/F/xhlLsRh
         j2G2ZPvkKyHXxWhq7g4IjkpZVitV6IJ7uxXyTfzifgZzIh079Wf4LCdIiA8uVKzaur4Z
         oQLdATU1PL96ijVE1/ofbPGNRvT0PMdv7WvNTu4Jgoz5ZZBOfHCka8FkiGG1ajBCCA9O
         yG+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761766148; x=1762370948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NKKJA6fRomltCp481BiLWPXK7LT4XBfRN+VIaJM7fMU=;
        b=uDDkGepGWCHI7jNk5Hdw4hoIMhpGYZA86AiXXSn3uLm+uc15rjxH6WmWynfIWHyiFD
         ex3TYtzlgVX5iNwJTwXIoKZfGOmlW3mx/xmCUlzYCSQw2Gft7viHMb/qhQH4uWsdPzKj
         KjPvysV5SaJX/UwX8KdHImNFaMoGJ+WU1chRviZfqx+ExBbV23tajI7sY073ew10vGrN
         ithycbNpk/OWuk/Ov/ZL76C6CGoBu6v0OOhDukEaavzZSDzVu7+0VlWUauE/y6O+Iy2J
         nVPGS46hehuf4niWu+l6iIO38EIc8m4ypJMnX4rf25KGJGxCmMOnotOyGjTYUKumhy6u
         w6ow==
X-Gm-Message-State: AOJu0YxxDbSlw0rpwQ96ykj0/lGUU/X26OneE7SwY7OruC7t4tOgzxzV
	j/VBS0URiR4ah4jODxDwq1lvKnSLXN1is+m0tYUcrjKg8FVYHUgEDM0xMxR+KRt4
X-Gm-Gg: ASbGncvgyfJqnWFiyIgaL/pYbSlO512jjOzWrWQjK7f+mvx7/EiAimKtS5LvqUeDyIz
	UliTo34BdP3s6ArNn2+5clHgFQKdzDrXskbPkHsoZGwLPDo6sg4H5Ja4QnlRQ/tKTvClBF+85Ey
	b1P/9EGcETY1/L0PpGq9AOOl6sGWUufS0pfPjyZDL5ln2gh5UzUp55eOUvhmfhYoa607Nl+WvT2
	B1w/K6iGiijFOzpWPTCEeHWUcumvjWMOKV3tJpwnwSwbBIfRfGdQLpVRHx2gULQd7i5jQ+WnknX
	nHkVPc3rVnsyzM1FlrKxMQj9zF1BHCLHDA00oGgKWVp1sq6HyKvllMcKV9OryPXY539faT6fUdM
	2VtceF+kL4nj+/Qa7H8VSc8kiBv7afJRgxPU+WhIYkeZ8M4Rs6ZS6UmcNSkOTb3V2u/CFdRbXxe
	wjRq5CIviXEUax/cKYDjqSrZJX5/sjHubwSh1H+fsBDLWVTKxBdMhkXtg4J48xmQ==
X-Google-Smtp-Source: AGHT+IEDxtG1HkFG0ON1dBWQF24t0hiWuuyPwYA2hBUikGtOaNbTeVCqCxQo2KWiYZfh50Es8IqNeQ==
X-Received: by 2002:a17:907:9721:b0:b3f:f207:b755 with SMTP id a640c23a62f3a-b7053b2a721mr28389066b.6.1761766148261;
        Wed, 29 Oct 2025 12:29:08 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-146-98-100.cust.vodafonedsl.it. [93.146.98.100])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8548eda6sm1496673266b.75.2025.10.29.12.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 12:29:07 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 0/4] arm64: dts: freescale: imx93-var-som: Align DTS with hardware revision
Date: Wed, 29 Oct 2025 20:28:45 +0100
Message-ID: <20251029192852.656806-1-stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series updates the device tree for the VAR-SOM-MX93 to align it
with the latest hardware revision of the module.

The updates include the addition of missing peripherals and devices present
on the current SOM version, namely:
 - WiFi and Bluetooth module (NXP IW611/IW612)
 - PMIC (Dual NXP PCA9541)
 - Audio codec (NXP WM8904)
 - Resistive touch controller (TI ADS7846)

These changes ensure the DTS reflects the real hardware configuration and
enable full support for the mentioned peripherals.

Stefano Radaelli (4):
  arm64: dts: freescale: imx93-var-som: Add WiFi and Bluetooth support
  arm64: dts: freescale: imx93-var-som: Add PMIC support
  arm64: dts: freescale: imx93-var-som: Add support for WM8904 audio
    codec
  arm64: dts: freescale: imx93-var-som: Add support for ADS7846
    touchscreen

 .../boot/dts/freescale/imx93-var-som.dtsi     | 332 +++++++++++++++++-
 1 file changed, 331 insertions(+), 1 deletion(-)


base-commit: e53642b87a4f4b03a8d7e5f8507fc3cd0c595ea6
prerequisite-patch-id: bfa4df6e3787b415218cd441317fb838824e06c3
-- 
2.43.0


