Return-Path: <devicetree+bounces-99049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EE7968802
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 14:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90622B2611E
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 12:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CF4185939;
	Mon,  2 Sep 2024 12:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="fQ0m3Y0T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781AA19E99C
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 12:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725281712; cv=none; b=shNoCBfkWC4oQU9i20Q5ahglxQookmO/BC5PudqmtixloUOWnf2T3wekIyCyHsqECWUiXeggqStgjXwz+7A+ZbXEQkD0fFY8/Dta2NDcWyq2cCY9k/g7ZYbhkliwlLdHFsNZjGWi3UWytCOPrAD1Cv/uLq7yYcP3J6H9f5oaIuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725281712; c=relaxed/simple;
	bh=NQilyP7wSAA2j+Ki3ENk2C1yBNz7P3bhLYUFecekNIQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iwHFCpXGgGIpv1QR0gpjorHqL4gRksM7RpH7Po4/Qr1W4lUtnvq+5Zc9az+MP8tBu3Cq1B2LnYowaLhz07+ca0oeDGtAAXbMxnl0ZvOyYINJsZJ3zZTcT0rRuDkxjNIBuC8PbSamNgI+U3ng1pYC3uWghVlS1grHTG8/v3+hdDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=fQ0m3Y0T; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-76cb5b6b3e4so2555665a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 05:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725281711; x=1725886511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ThRWljmoH7Hb4Hd8MB1zdTAbR9SpnQuP38bmtHqE+q8=;
        b=fQ0m3Y0T/qMXYFZP3Q8ubHEosDR2WxLO+/qHui5nDye76VGb3FLwt57nfAqlYs+bFp
         x+bFpn68cxxW57EspQgvrurqO1czH9leKlRYJDAY0fPLThWlYXablFMwQ5U2/CGG4dFi
         lkYrIyzrpRs8IaCm7lT70mdJ+C+15Ca2TYrCyKdp/vVFs8MDkg83i2tJLroJp8+O+jrJ
         +T9c+CKyhDkH5McZw1KxxsIdn0eLbNnjVKkscRyVaQV/P6qEmc4wlDzvZeHhUoha+vfD
         iocQ/uE/F49jup31gK5/GJZt6eNH05cqO2hf7DmmkaIJ46hijzXnukHXa5AZP/zyLNNV
         tEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725281711; x=1725886511;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ThRWljmoH7Hb4Hd8MB1zdTAbR9SpnQuP38bmtHqE+q8=;
        b=e2n/PXzbikWlY0yGwmzpGtRZ5BpGa6jmKkSll2pTbkPKfqzAaVi/4XC0P07nt6q51w
         PfBAGEaAorelsxWHpIb5XoS1GV/AARukql11V2PCi20AifCjPy495smjHOtgwcLflzRf
         Ur3eb9XI4b2uIIdvR8xucdROAE9sgY1uMxYZxYYgBAHO7fYfaUXd8ZGBcY1SOuxCdPzm
         cM9oebenqPbEvmp3pX0FbPb4tt8g4ur2TtzP+ZaLDoLI0oWiB9424popWY7AVP4dVC67
         xcRB/nDAB2/dowUpZNJHIsU2mRGFhJ79acEbywTzCVh3jjMIpoJqVOsfqrUZRvvsUwjv
         sUvw==
X-Forwarded-Encrypted: i=1; AJvYcCXXk8pOYYMFCowMS9yZPhJNGtAn77FYtRXRaaQhYaWLUpQqGiVdZbxQ5JeN0F6hJEFGPLcKcDKLutVf@vger.kernel.org
X-Gm-Message-State: AOJu0YyznPOjlfTDl0ZZ9mV81ZdM+LCc4s8L10LqRlmjO9SD/Aj9THb+
	sYTNCD8R1FHAD6GcUR7OClUdlfFtC+rrBhKSLQw5q9ml4Ji21vD41hNJ8d4r/pY=
X-Google-Smtp-Source: AGHT+IFWYfklAZRYA4/RL84tZfC0b6rpcrS93I5FeoZ5eC3ChpSILTafiqClMF2uMDYki1jXpxc+PQ==
X-Received: by 2002:a05:6a21:6b0c:b0:1c3:b1e2:f826 with SMTP id adf61e73a8af0-1cece5d1548mr6768179637.35.1725281710762;
        Mon, 02 Sep 2024 05:55:10 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e55a99eesm6773955b3a.50.2024.09.02.05.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 05:55:10 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] arm64: dts: mediatek: Add MT8186 Ponyta
Date: Mon,  2 Sep 2024 20:55:00 +0800
Message-Id: <20240902125502.1844374-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v1 of the MT8186 Chromebook device tree series.

Jianeng Ceng (2):
  dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
  arm64: dts: mediatek: Add MT8186 Ponyta Chromebooks

 .../devicetree/bindings/arm/mediatek.yaml     | 11 +++++
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 24 ++++++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 27 ++++++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 44 +++++++++++++++++++
 5 files changed, 108 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

-- 
2.34.1


