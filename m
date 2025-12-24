Return-Path: <devicetree+bounces-249373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8752CDB68B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:37:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E68F9302278F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 05:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85FAA27EFEE;
	Wed, 24 Dec 2025 05:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wj+0OOiI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFDF1F7580
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 05:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766554645; cv=none; b=oM85Ky3YNgFYugvMQwwDNKc0ed/UK+IgT5fxUKJ5g9IKVtHekOGs/n8S9j1M66ynsB6+gNFW9DIgYdh+FZ0Z0VoQWWKoq2xLP877TfgHgDFhgkFIb/m7mixJaPyS2BzmW8a9ejHyti/UqXnK07EVmZR0/hikEfiXRSilAriFd2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766554645; c=relaxed/simple;
	bh=PS+RHY9pcXMjyoqHfN6I1vpgC/vXoQd6ABaBTl5wnH4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KIXwpz7MVrUFjwKC2GvCqlLJKTcKV+ByJolW2fPqIyvmhk8qcKzNS0Gm5t2qlOaQ3fOrf2ULH5KtUCRsvEOBK9NAOzw9u1fVV6MGfvwcurZ3R29QLUBPgK8sfoyejtCzA29ljQRwWfk+T9Hl/sD+E2+T3URNyTlo/Mowf0mp4s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wj+0OOiI; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-34c9edf63a7so6045639a91.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 21:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766554643; x=1767159443; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VQyZjDvsMhgADmmLXef4r9AmX8haHJsx0MdiIhOB3mI=;
        b=Wj+0OOiIn82RrTp5VCHYOgTMSSxFSDLKmeRo7v2JX+SDtoh89CJhX7yebiUZs3hXhk
         cxVpp1lUMfG6IOQCEkNtOPDpd5587A7Z0hkOK2gzkn99DGoPY5wMdDZNezlWjamfz4cb
         lgz2N2JRbgHGO9LbmPPNKBr/ljhkUW6Jk/oi9A0S8rfu0your0h9CeMhNWY91nHfc7DW
         K7eBOkZcgqXVCc6Wr9Bi640hyn84xzNaFNOsWJqF+IIwMi7Eqr0hvz6WtS8w9LztAGz3
         lcDzJocwGILL38dKRbLVxugDMRd8NTjDUEPLu068QS1kXtFYQLwG0X03+J53kucFxrxH
         LguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766554643; x=1767159443;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VQyZjDvsMhgADmmLXef4r9AmX8haHJsx0MdiIhOB3mI=;
        b=WXOs/HtyF/RKU4jkuWQGB5635DqvIb4qctmjmSDUtRoE182twee+iPb+RO/VaoLAJo
         utdL7qEP2auLwhUZWk+AbLvg36DFv2Ll5TUlu2TYc9bKGjH/6MPmf4+DLnzNd7yopFox
         /uTtzXrWGEi8cBQ5a6pzfpGDe7AVhSfXqBa2riJbJ1h0hxvwM6MvLPJNgkIYJi9FRXfU
         dKU5YPrikhHNWmTev97XXMAYMnaNzOzqruediT8xc426XNQuSx+qLSV7ErHUaIrFuZUo
         cOM0h/m3SS3svWETd8tJoPylnHUnRqpmJ7/aDCvGFcK32CnMvoiA3Jy2sBHuyDXskqcc
         P06w==
X-Forwarded-Encrypted: i=1; AJvYcCVPli3SK4qSlSHEl3wAeqduf3wNtF1FIqalcLRbfLes1N9szgpKS4uHpObAW5rpr2IH9SxD5sl8o2hc@vger.kernel.org
X-Gm-Message-State: AOJu0YxUoroXtxSS4FBZRz1I8Gb6uYXG4v3UbdjRAGu2VbjGfgu6xIwS
	NLK3R2yOUlhiCHzn8ogkIjz3TsCy35ExhTtGSF0wv3safeLjdOplbgDP
X-Gm-Gg: AY/fxX73zjL+xhUN1iraUl7fkA3gUguTtVsF9uHJrIKoWziQb/nwteEVDdhgo9bFRrc
	ePi7J26Y35slIee/TsVAH/g2eHlBXQiqtlhH9oeriUTCYr0ey7v2vUC2PM4QBduNJcr1JdFfdpO
	vnYJ+gR4AX6OMWB1vqGwHlRwDSEOE/QIgDeUhHt8uCfQ5GRhqNwVp1uZSzbXAKBAouATMFhRU3h
	2GLjz7FnWgj4GQyCLenx2/+mAGnBzJbaWmsXkD0WFIOpRFraExkBZlBl/FFm8lOivVSJZ9R5TCl
	8s26mAV9rVRTpo+l3Oai3IQZeUDbowE1Lw4RHqqniB11EebvwHMlIZIJ0Gyy0Hv4klZ5+BxNIsJ
	feSgMPTlUX4UBFYVvx0qGlh2kneAVh1RlPh/9riwGPPWz0lwhcPVY8CIp2vK2PnoqVfH+d/JD5F
	OfJFVW+cClO4ps7qqSzWB9GnMiObUNKeK6ZcD2xoTybUYERppiF+s=
X-Google-Smtp-Source: AGHT+IFpW2ChD8bRQezzrWY9/FO1tIZocGcwPTvWWLlHMoy8nWDXpxEQLIw2LeaynvqVz81TrhMkTw==
X-Received: by 2002:a17:90b:56d0:b0:340:c4dc:4b70 with SMTP id 98e67ed59e1d1-34e9211e586mr13677732a91.6.1766554643252;
        Tue, 23 Dec 2025 21:37:23 -0800 (PST)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e588a30sm15540214b3a.55.2025.12.23.21.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 21:37:22 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Subject: [PATCH v2 0/2] iio: adc: ltc2309: add support driver for ltc2305
Date: Wed, 24 Dec 2025 13:37:13 +0800
Message-Id: <20251224-add_ltc2305_driver-v2-0-061f78cf45a3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAl8S2kC/32NWwqDMBBFtyLz3ZRkRGP71X0UkTQPHVAjiYQWy
 d6buoB+ngP33AOiDWQj3KsDgk0Uya8F8FKBntQ6WkamMCDHRiDWTBkzzLvGmjeDCZRsYBI7p26
 iFS8toQy3YB29z+izLzxR3H34nB9J/OzfXBKMM+MU71A60yJ/jIui+ar9An3O+QuQQ/aktAAAA
 A==
X-Change-ID: 20251223-add_ltc2305_driver-728fa9161bc7
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Beguin <liambeguin@gmail.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1081;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=PS+RHY9pcXMjyoqHfN6I1vpgC/vXoQd6ABaBTl5wnH4=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpS3wPPbPBxFb2jW9prAtgKQ7wnS7TwhiovvwGh
 4gnjKmvdYWJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCaUt8DwAKCRClg0K3CVbE
 gWXbB/0YhN17MxexzwZIhr0cFJ04KY3yG8rLmRXiZRkIhU3BF+gysDR992ALKB8Ypr9CE1WmWBE
 nFFarsWBuOmpe0HbcRJrbXfdWNzyLz3bJF8h4yIYXe6BsEVXK2M4eRuKn5+qtrGwnfK4CUIsYg4
 UTTFK74I3CjEdbq0oNmT2/95LR4GkYxrIExqILOp7YXtcGf5UX217PwNXteiz/PCEjjjfU1qMC0
 vLRYhftQVKnnOTBggeHWSdeddVVqK79c1THoXLisT2SdlOrh2gayAYoEYdHCoyRhf2W+zmFMQNn
 ZFsVQS2QBf0gIXBeJLdqc64ZQNn+Z5xTu5C5RyPuq8n1V+0S
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481

The series add support for ltc2305 controller from 
Linear Technology Corporation(lltc).
This is low noise, low power, 2 channels 12-bit successive
approximation ADCs.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
Changes in v2:
- Reordered chip descriptions and code from low to high order.
- Renamed chip info structure to use ltc2309 driver prefix.
- Switched to i2c_get_match_data().
- Removed unused variables.
- Added chip info to i2c_device_id table.
- Link to v1: https://lore.kernel.org/r/20251223-add_ltc2305_driver-v1-0-dfa0827fd620@gmail.com

---
Kyle Hsieh (2):
      dt-bindings: adc: ltc2497: add support for ltc2305
      iio: adc: ltc2309: add support for ltc2305

 .../devicetree/bindings/iio/adc/lltc,ltc2497.yaml  |  7 +++
 drivers/iio/adc/ltc2309.c                          | 51 +++++++++++++++++++---
 2 files changed, 53 insertions(+), 5 deletions(-)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251223-add_ltc2305_driver-728fa9161bc7

Best regards,
-- 
Kyle Hsieh <kylehsieh1995@gmail.com>


