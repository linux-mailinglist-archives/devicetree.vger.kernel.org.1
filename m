Return-Path: <devicetree+bounces-190800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACD0AECAB8
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 00:45:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15A4A7A5FD8
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 22:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB7C6220F32;
	Sat, 28 Jun 2025 22:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="K/FNRWU7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533EE221550
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 22:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751150723; cv=none; b=KBO9huM8EviO0kQW2D7C0IJI5deawOLPs37Zqv/sqMSw+tjfhNFkHrTrYKNM/JbGVn1eEcaZ4RrMKSlH4KNH/45lelEzZczFSJD+HRKKKT3QUGIO/328dxNTWP7sKGgwbDOPQOuimV3ev7crOdCIUq+bfYusmJQVJ/AjMxsai3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751150723; c=relaxed/simple;
	bh=7G0+FpKbZ9GaPLV5BcrFUCj+7GnonYzZAuHe72qYZkI=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=CAu42/0DtRf5n5peie7M/mb27rsjvoLA84AmVyLB5UeIV4yVcxwlsmLHirdeQXFB3ru+WzH4wpdJDskWfHp/5Stnn4d+6blJQqa2TaqBkfavS2sI6Lw58JJuhZRV6+bEtjwqvcxMFjwuE5GKmvbudscmaqlheODdWhKicGd0Mbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=K/FNRWU7; arc=none smtp.client-ip=212.77.101.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 29690 invoked from network); 29 Jun 2025 00:38:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1751150319; bh=1Kv/5FIXJr4w7f7JBuDHHoZ7UQF55jJFpe21AqRti80=;
          h=From:To:Subject;
          b=K/FNRWU7zM9HVqBDxaqZKuZqrcf8NBx4gZQKCR1NaMbM3e8LVAYyZcT8SbFdmVOAF
           3MfJFhwI2Q6hQRIf43qP2SiZfhebNSe1BVjg8rW8v9NfsBmnnOK8MtoevrRM4Iff3E
           WJNIPjumyEPJ26UbmwVhk9tjQBUw+OW6vbE3lXxwzWynH9wuygI7DelNq7lmTraXVI
           HMJ4B0rwju5WHn41jls9oaPfv78qeVbfXokqCs85ufqLZkwcTZ7lxLQbE/2CT5lSa9
           9OZvSEkdqvI3YMiFDMYn2CN7g9xkTCgOH4Xqw+nR0U6Jb7CYNOeb+sqtwarsWD1yky
           3C9s35tSRffeg==
Received: from 83.24.145.121.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.145.121])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <rafael@kernel.org>; 29 Jun 2025 00:38:39 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org,
	rui.zhang@intel.com,
	lukasz.luba@arm.com,
	jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	olek2@wp.pl,
	zhiyong.tao@mediatek.com,
	linux-pm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 0/3] Add thermal sensors support for MT7981
Date: Sun, 29 Jun 2025 00:38:34 +0200
Message-Id: <20250628223837.848244-1-olek2@wp.pl>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-MailID: b810258631e11cb24906138186427c35
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [4TMU]                               

This patch adds support for the temperature sensor in the MT7981 SoC.
This sensor is exactly the same as the one in the MT7986.

Aleksander Jan Bajkowski (3):
  arm64: dts: mediatek: add thermal sensor support on mt7981
  thermal/drivers/mediatek: Add support for MT7981 SoC
  dt-bindings: iio: adc: Add support for MT7981

 .../iio/adc/mediatek,mt2701-auxadc.yaml       |  1 +
 arch/arm64/boot/dts/mediatek/mt7981b.dtsi     | 29 ++++++++++++++++++-
 drivers/thermal/mediatek/auxadc_thermal.c     |  4 +++
 3 files changed, 33 insertions(+), 1 deletion(-)

-- 
2.39.5


