Return-Path: <devicetree+bounces-182933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7B6ACE8E5
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 06:09:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6B9D3A8D1A
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 04:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC3520297C;
	Thu,  5 Jun 2025 04:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b="ZL3s7Jij"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8F71FF1C8
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 04:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749096544; cv=none; b=M199U5YwzUxJpS5dKGuH/HH2hpd4IQPBOT4a3XXTV/qBAIKMV/k3dh/5s2/x0AhY2BwtEuZEn2yK21BV3UCEcFVQ0bIlA7H6MtCgtggRPg63h2iViOMq0cH46ZNKFack2CbASRy6CZ1hZBpUh1ACpYWbWy0kyw82b/DnVAJZovQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749096544; c=relaxed/simple;
	bh=Du3nF+4TgAoVorAuFPh7JS2xEyp8iEm1n0JyZQ91gOw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LlI8PsqhIlP5qs0QOGw7ivDEe7P10oMqk1WTj81jd9i4V/Q5ScqRZQLpbMd3ZK7jzof8BwHGVe2lbgop5yUbYxMEutnTK1VeaBUYbYwZGyZmGyVE2/C1rM5L51copPAf/JvKUhkzokDKBjFSjbyAnGe6WCmx3hmXqi4Twyw+WDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com; spf=pass smtp.mailfrom=inventec.com; dkim=pass (2048-bit key) header.d=inventec.com header.i=@inventec.com header.b=ZL3s7Jij; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=inventec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inventec.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-742c2ed0fe1so607317b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 21:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inventec.com; s=google; t=1749096542; x=1749701342; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PX//QoBGHGr5lY3j3Fpx+uZHdmH7HbmvrluHo6+r6xo=;
        b=ZL3s7JijpBHSJjY37LY10NFS3IkO55lREIVNBcpWzhi1E408kmDTHs+bc1wAizsL+m
         5CBbGJUlLM4KiayAZprriu4IeuYuCtOhro/xIL/sjs6ma0PpGMei/1jcZM9JcJ6teLtg
         LOLVFEXHhDxOlBUlTp3UN9zojC9ISr9zeMmYE0lUf6z1wf1pdyBO1c0dqo/N10ZStFN3
         mI1IyWLZEygmacI5ZNeJgk7fBmuR3fECHYACYB6ZWPYHyoKODtBkVH1ywv0GSuvnk6KW
         FGLB5CEl/Vkl55iARr9DYKbu2PqexsQT8FGVRbwuZYj7bdFOr3YCUZ2yqA9yzg7q05Du
         q/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749096542; x=1749701342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PX//QoBGHGr5lY3j3Fpx+uZHdmH7HbmvrluHo6+r6xo=;
        b=RlGG+ZJqIr/WyKWUhUhx0e3LRkOpRs7rno4dAbX1Eq8vyArhPliLRMJVm8yoHHi7TJ
         XcY8ty3L/26NmCZb51AEx9MfxZkc5Lz7E7Fp3WSm5JhWyPzgNdmkSfQ4YuzH+yO64+kp
         m2O0R63KOhei7bb8N7eLLpJzhpxIV8Z+g//ytAcJQKHMwXVAdfLESRg+GfMR5xGBB6h+
         9wyab+/ktYNyfNCFTzeY95yxlw1hLCuD1mFaXalB0W1dAXvgdOP85wsfWfSp/vief/Oy
         9DWLGsTN8iER7GlxRL/r74x0kkMNsf8GICmDC6Y+xzP9v/F9HwDEY47gfHn8KeqfTrVA
         76EQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAhGFBDtAh96K7XeLbGOMmNjREDRe7xaCNL5o3Rwz9t5tqWAd81pD5dRp/Sqe1cRC11Y4vOL426ye6@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf5DBJP/cNPVUVTZF9W1vRilsQIDIzq3b8pCzzvGp+HtHaPM/2
	3eiTOaVOxW/EjEKej7CHxnPM7TRvwKIjDAUEvr28cf07eeb4uo4VNTyznMXekIoTz/I=
X-Gm-Gg: ASbGncv15VBVNz2YmAB0FHPfhpcCTwLYxZySlfJjpAwcS+SyhBDNWQBQAUNx4dUAQXj
	MqF9M1hkp6nrEybRQRks/FhjTaRopslvtNZ2AtnAJzjSOBgYO+9oYsikA4Ct/QVZCv/BI3er9u4
	BLH87tHpE54GTNWvmpgpFAXoTor6PN5dPeRAl32quzYxbhw1pChYcPNfDkPfXOOpIqUbF8oFS17
	1/EdUCtdZI0RU5wfVpDPchnsst36QgxO3gZNRpUkjtYkU4dvsVg1sq7eZB8BOW2qXYPS0sLTO5b
	bkasMGJFYX/iB/imhxK0yqTeAk2xM3gXzLkbrYllMNnAKNnfssm+p9uqtQJXwRRfW25VbBLXxy4
	uIT0fawviXjGH5XaK7CLpXJLwxGUpdg==
X-Google-Smtp-Source: AGHT+IGFn4s+BWHMZpFajqhE9M4XL5w1WKIteuwhvPtoIG8N5fx8W5N53z/3lQF0q6Q5jNGNoeQXng==
X-Received: by 2002:a05:6a20:4325:b0:1f5:8622:5ed5 with SMTP id adf61e73a8af0-21d22b46de9mr8166458637.3.1749096542055;
        Wed, 04 Jun 2025 21:09:02 -0700 (PDT)
Received: from localhost.localdomain (60-248-18-139.hinet-ip.hinet.net. [60.248.18.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2eceb029fbsm9480924a12.13.2025.06.04.21.08.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 21:09:01 -0700 (PDT)
From: Chiang Brian <chiang.brian@inventec.com>
To: chiang.brian@inventec.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	geert+renesas@glider.be,
	grant.peltier.jg@renesas.com,
	jdelvare@suse.com,
	krzk+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux@roeck-us.net,
	robh@kernel.org
Subject: [PATCH v5 2/2] hwmon: (pmbus/isl68137) Add support for RAA229621
Date: Thu,  5 Jun 2025 12:01:34 +0800
Message-Id: <20250605040134.4012199-3-chiang.brian@inventec.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250605040134.4012199-1-chiang.brian@inventec.com>
References: <20250605040134.4012199-1-chiang.brian@inventec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RAA229621 is a digital dual output multiphase (X+Y <= 8) PWM controller
designed to be compliant with AMD SVI3 specifications, targeting VDDCR_CPU 
and VDDCR_SOC rails.

Add support for it to the isl68137 driver.

Signed-off-by: Chiang Brian <chiang.brian@inventec.com>
---
v4 -> v5:
- Wrap commit message body at 75 columns
- Remove the incorrect description about dependency of dt-bindings
- Link to v4: https://lore.kernel.org/all/20250602050415.848112-3-chiang.brian@inventec.com/

v3 -> v4:
- Add Changelog
- Remove unnecessary "From" tag
- Link to v3: https://lore.kernel.org/all/20250303083537.3312250-1-chiang.brian@inventec.corp-partner.google.com/

v2 -> v3:
- Fix the corrupted patch by sending plain text email
- Link to v2: https://lore.kernel.org/all/CAJCfHmWJ9N1R8x6ikU02_RYq9ieq6yWY7CGdfvc4hRqHnX5szg@mail.gmail.com/

v1 -> v2:
- Modify subject and description to meet requirements
- Remove the override of isl68137_probe
- Add the of_match between raa229621 and raa_dmpvr2_2rail
- Link to v1: https://lore.kernel.org/all/CAJCfHmXm-fPD70uN-mNJdJkzf9B526y8p=Jh5E+W5cwJ0NVhEQ@mail.gmail.com/

 drivers/hwmon/pmbus/isl68137.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/hwmon/pmbus/isl68137.c b/drivers/hwmon/pmbus/isl68137.c
index 2af921039309..c52c55d2e7f4 100644
--- a/drivers/hwmon/pmbus/isl68137.c
+++ b/drivers/hwmon/pmbus/isl68137.c
@@ -63,6 +63,7 @@ enum chips {
 	raa228228,
 	raa229001,
 	raa229004,
+	raa229621,
 };
 
 enum variants {
@@ -465,6 +466,7 @@ static const struct i2c_device_id raa_dmpvr_id[] = {
 	{"raa228228", raa_dmpvr2_2rail_nontc},
 	{"raa229001", raa_dmpvr2_2rail},
 	{"raa229004", raa_dmpvr2_2rail},
+	{"raa229621", raa_dmpvr2_2rail},
 	{}
 };
 
@@ -512,6 +514,7 @@ static const struct of_device_id isl68137_of_match[] = {
 	{ .compatible = "renesas,raa228228", .data = (void *)raa_dmpvr2_2rail_nontc },
 	{ .compatible = "renesas,raa229001", .data = (void *)raa_dmpvr2_2rail },
 	{ .compatible = "renesas,raa229004", .data = (void *)raa_dmpvr2_2rail },
+	{ .compatible = "renesas,raa229621", .data = (void *)raa_dmpvr2_2rail },
 	{ },
 };
 
-- 
2.25.1


