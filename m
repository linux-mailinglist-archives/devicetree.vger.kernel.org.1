Return-Path: <devicetree+bounces-151578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 05463A4640C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 16:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F272D172203
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D69EB222591;
	Wed, 26 Feb 2025 15:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CDvdxTeC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5DE2222AB
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 15:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740582366; cv=none; b=JCfcFk9l0TMhpnSo8o3PBv98WvS3EMDEV+84nojpiJvq22LY7yR2wGxwubLUKSHpspAkGW3N4NXf9MaeV0mCXBHOhMu9wNdCm3MXWKTI0otdRRTUFHWJ1UpDl1R2Mj1uylvc+j0CHIJ28rd4xHLE5G9yYP8oYpP3R/tDLvUu3sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740582366; c=relaxed/simple;
	bh=eI25Tt3mzACaZCYbE2WlMOCEeAOnCyHGufi3Sm+c/D0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=g6TZKeLI2feNMtcSq7cb89o2j9p1Ycpmr+A4XjDuVjIdgGmWUy1w309G5cXmIygQQXh+e7XN24oav/c2ZWcCMJ7QdKx0Xu+KX7PhPAlrPTrKYSGkADh7v0JMJDYaa/aEe4ehZaH1nq/mC5RtY2o6pv+wCXYfvCBMJ05nmEwbg2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CDvdxTeC; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38f2b7ce2f3so4926213f8f.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 07:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740582361; x=1741187161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k2inlcyGrp4gsySkMajr9slvItZBIGY35voxeoHKWVw=;
        b=CDvdxTeCAC6tuYOVvBuxsOIoxwFs5wmcv1YB0Wb6futcKUCJYPVhFbJO4ovZ3dweuy
         6o/WogH704w/bi1OWxOfphppdKy6ZjaolI7yjS7qU1Bdpf7HvrX6p0I3cjq69COR9h2g
         ArLwHJdgAsc957c8MuP0xxH/a3IDFFYJxm+Fm7eCM5Ardr4FAe3G7Z+Lrke0Fs3o1M5r
         DprhHR8vfh9B+bMM11GOaNK/TTgeXNOMgYR4e3gimy9Mj/+O13COSmdN1T4vIU7ZBGM4
         zMWzsCwMfIeWvVLokObX4ijuvPVBeZMeAspneVbGnAD3R7DlzxYc/1dt8GuyF8NrQae4
         Qwow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740582361; x=1741187161;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k2inlcyGrp4gsySkMajr9slvItZBIGY35voxeoHKWVw=;
        b=Xv7deyAdNAT9N6RfBHRbB32eP2pmEELBoM8iaR40/3Cp4Hcjki+w6GK816ki/8zgtq
         7PxijrGIIzPl0N8HzouboCq2POIm0e0lKFSCbRqLGKSEAJuUp2pCy4MhlIJw+O50AdNG
         mE+xD+aqdYz0JikHChtdLmOp6kjr0nthhRcTQ7J7DS4EhxUBT2KQ6D8Psgjych/zyGEO
         oZqqVttUdjK+sSkO/fJSlq4fvP5XE1mvqVilz6AuCj7pcKfOqOGb+IK78+8TogNnDCHZ
         itPf2sw2K6qoZCCqkVlPKT270yTEzwWBuXiiTRm44k+Zj/OGKqy4ZUaNHCMwYFU1oFfj
         SfLw==
X-Forwarded-Encrypted: i=1; AJvYcCU31TLckNVl6+rIJpPl6D+cRdENRQFQ95bn2H0UnO3cswfBYPTU9YznHbT5dU0aXIC8MEZTzbfyTqdQ@vger.kernel.org
X-Gm-Message-State: AOJu0YysN8uuJPNW1U27ZbBM5oUzMo/T7sAyWGLFukJet6UJVsoWC0Xm
	aDwlNPxbbDWI/OovH9fM6rme7ECAiI9baQlTuvx6VO/lGGEvFtEntq1GfN0yncQ=
X-Gm-Gg: ASbGnct4hjT0NLhdwO6FhSeGpHWtWZitERCF6Z6vfRatYxb+K73yG8S+Jw4ovsrNQAa
	m7IVWl7Cvit0wjYhiRD02LJC8dnXc9WmmZADqg6dC5mthC3fMRTaWSD4WovVIc3F2WbbbuRG0Qk
	VaCzkTqC2ccWDS6npzseg+61TxwQRy91h49LpNS/7dBHWTLKrg327H521scLoyfxIKJ4UKL3Lgj
	4UGR2ADu63cyaXMwKF8/pQJQG7B980cQTq0u0ikwCUNgEndSI2muOINM7V0GDFG0ekbszmt1zSb
	4qogco7vYE9o4kVpyZZyboCU6ltTQeKGnoT5NLTipFJx
X-Google-Smtp-Source: AGHT+IHrAFGVYII4lZLYB2wkwkybgtbEsUBZpKLBTuPfS8zJ9+MgwZUvmEIcYf0/J2nGs7RrAxHRmg==
X-Received: by 2002:a5d:47a4:0:b0:38d:e3db:9058 with SMTP id ffacd0b85a97d-38f70799a46mr15169416f8f.12.1740582361041;
        Wed, 26 Feb 2025 07:06:01 -0800 (PST)
Received: from loic-ThinkPad-T470p.. ([2a01:e0a:82c:5f0:ad62:b2f0:914c:91ae])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd8fbc31sm5768155f8f.85.2025.02.26.07.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 07:06:00 -0800 (PST)
From: Loic Poulain <loic.poulain@linaro.org>
To: neeraj.sanjaykale@nxp.com,
	marcel@holtmann.org,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: amitkumar.karwar@nxp.com,
	conor+dt@kernel.org,
	linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org,
	Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH 1/2] Bluetooth: btnxpuart: Add VIN regulator support
Date: Wed, 26 Feb 2025 16:05:52 +0100
Message-Id: <20250226150553.1015106-1-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As bluetooth controller is usually part of a WiFi/BT combo chip,
it is important that each driver references the common supply.
This prevents bluetooth to be powered down if WiFi driver is not
loaded or removed.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 drivers/bluetooth/btnxpuart.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/bluetooth/btnxpuart.c b/drivers/bluetooth/btnxpuart.c
index 4f2f429c9800..fc313559c2aa 100644
--- a/drivers/bluetooth/btnxpuart.c
+++ b/drivers/bluetooth/btnxpuart.c
@@ -17,6 +17,7 @@
 #include <linux/crc32.h>
 #include <linux/string_helpers.h>
 #include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
 
 #include <net/bluetooth/bluetooth.h>
 #include <net/bluetooth/hci_core.h>
@@ -1522,6 +1523,11 @@ static int nxp_serdev_probe(struct serdev_device *serdev)
 {
 	struct hci_dev *hdev;
 	struct btnxpuart_dev *nxpdev;
+	int ret;
+
+	ret = devm_regulator_get_enable(&serdev->dev, "vin");
+	if (ret)
+		return dev_err_probe(&serdev->dev, ret, "Failed to enable VIN\n");
 
 	nxpdev = devm_kzalloc(&serdev->dev, sizeof(*nxpdev), GFP_KERNEL);
 	if (!nxpdev)
-- 
2.34.1


