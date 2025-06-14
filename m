Return-Path: <devicetree+bounces-185878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B33FAD9BA7
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 11:15:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E7707ADB40
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 09:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 184831F5430;
	Sat, 14 Jun 2025 09:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vKAKbSD1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAF31B0439
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 09:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749892519; cv=none; b=cL8CIH5Y0xl1NcTbhsmcwtMHZ9M98zIKKORh8eJK4Kadutn1nmjb8d6gT1IKYmdngMRMw3M/CdSpa66mBius3DDaQWogzDbBK0B33mLVGYE2REvN17qwSNR+EPua4ZyC3YY8Uj0rEg3CyCa79LRdniZ559Q+3roG5zrr18IXg2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749892519; c=relaxed/simple;
	bh=fEzpTyK11rRSKQSfcZKNPllXPlsRTxswtMprAov9nP4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Lu/aZpLbA1tFDbyN0rzZQ+yH6j+sCPmGQH+3C912IxhAb2xTFfI7bauf41/jg37mmEnAR+6kqAvmM/5+P/UIvBEoZvwpU4fSg06TBbx3518vpZmZKpFS+HWDIe84anxqbZVKK5WZ87NPXYWb3ma1bfBM0A59fQ6E+NDbP19LAAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vKAKbSD1; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-742c035f2afso2068345b3a.2
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 02:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749892516; x=1750497316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SLsiR/h0cYGLeY9xxWYE+0j/YoSK9EqZas91R3KOacM=;
        b=vKAKbSD1ZxNyKEBT0x4N26D4sXd5wi22uGOpivx2o0rj5FApfyUZy8KGmDuyrVq41C
         qANtP68lQr8WVNOzFeLYf4SKZAkUL0EnlNCs2/oJE06sqQ2l8HG10xAVmOLE5gLz6scZ
         KzoupQ1OnI2kfl7HrFX3Hzdbb/nUTeprGTifrJl18/cUwUeRqeVLB4YhM4JMPc8nR2D8
         LEHiwSIfaj37BKa8W51MxH0gBPN6O7eyczwaOhDmslCVv/sZgrfxAnkA+arATBTs41hG
         Ou9U9MkaLe7WgIz3S2UCd8+HOaeVksqSjSbx+L7vmn951ooFHkhZrpBIunYbDA1X/j2u
         i/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749892516; x=1750497316;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SLsiR/h0cYGLeY9xxWYE+0j/YoSK9EqZas91R3KOacM=;
        b=ZoratNcp27mZR6eXXI6J50kTgOG+QdR9CGrsdYgJPs/SyxTI/BtchSM9OgpIEtAnAJ
         9paMaQeIf9VCUNO8Ma/yKbqblBLaNO3gfWAbC3pEBKGfQTXBPZ8Frg6WkhahMRkv2O3x
         FsqwaPYBIFXWDDxn9Eb8GBkBQvs60zDNuE9ljezfCYVldRxHudw0pCyWCXwt9mjssbX6
         LND0W270Zz6mKJz0eFdWPEN6pzaZhSvDI4GJU29MCckev6RRd5qEU/fhSjPUqjKQ2+TC
         PfFdY+xkR7ybAWb/KFwv+jhwhwmSmlrOrnMoWkK7G7uDoeOFRMoVq9Px8aP9nzuvlb6Q
         U+CQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEC422Jw4MJgtLrEY9s9X2LAKx1kV13pW4kE4qc5gSymK1Aihg2hXkp6ra+W+gns4uETaadnzfWwL4@vger.kernel.org
X-Gm-Message-State: AOJu0YwjRgVtS33y9YFdWxV50nHYWdyUfB+B8WBdOOOTvuxwzQjBFkZn
	MviJ5phSLrjrogCnh0EhI4U12ww6IQDkCWcZwu+g41OS7CskkrqrGesrTc85lIJkjX0=
X-Gm-Gg: ASbGncs1yUjjStM2O1a25bjfVv5Iboouy1Ab6OTZgixtKWUAJLN/zruSSbUvtJUDOnG
	F1JlxESoUEvj4sh5FyZIrKOpqEuqM5uytHWRZgM+yR8/nJT7aTNrGUGwd32J4V+kvRawlpy5Ck1
	TAfvYrFUmxWqcP4pkVbNkwOAy6trQlMLiYtut6TORZl1/pO82caazMkeKMu+aI5jAIKiVShrnjH
	ywsqVZSUtcZtgRUTjrABBoOGnN2YXvxHepZhq3eWxDxLOpQRZXPuHf/FmMtesh+B44QZJtWDTve
	Zq3bvvbPkPBPxKXaqmvL4W5C3v9K17+TinGC5YCJv1FgduvZx8hIsrHyW/FcGS011+6u+v34b7B
	XwLwHIu/B8D9e33NadYGgJNv5
X-Google-Smtp-Source: AGHT+IGfTFeWO8ChJdc77XTP+ru0Ua2v0yAMFICAz+nYxX5YCpZtBt3ZVrd9mU172jDJp9dnbk5w1g==
X-Received: by 2002:a05:6a21:69b:b0:1ee:e655:97ea with SMTP id adf61e73a8af0-21fbd68e749mr3579324637.41.1749892515696;
        Sat, 14 Jun 2025 02:15:15 -0700 (PDT)
Received: from dev-linux.. (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7488ffeca93sm2969630b3a.20.2025.06.14.02.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jun 2025 02:15:15 -0700 (PDT)
From: Sukrut Bellary <sbellary@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>
Cc: Sukrut Bellary <sbellary@baylibre.com>,
	Nishanth Menon <nm@ti.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/5] iio: adc: ti-adc128s052: Add support for adc102s051
Date: Sat, 14 Jun 2025 02:14:59 -0700
Message-Id: <20250614091504.575685-1-sbellary@baylibre.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch series adds the support for adc102s051 and family.

The family of devices are easier to support since they all
(no matter the resolution) seem to respond in 12-bits with the LSBs set to
0 for the reduced resolution devices.

Changes in v4:
	Patch 1:
	- No changes in dt-bindings.

	- Rebase on v6.16-rc1.
	- split changes in multiple patches.
	- Use shift and realbits.
	- Use separate structure for each device type.
	- cleanup - fix the order.
	- Add lower resolution devices support.
	- Add MAINTAINERS entry.

- Link to v3:
	https://lore.kernel.org/lkml/20250408132120.836461-1-sbellary@baylibre.com/

Changes in v3:
	Patch 1:
	- No changes in dt-bindings

	Patch 2:
	- used be16_to_cpu() for the endian conversion.
	- used config index enum while setting up the adc128_config[]

- Link to v2:
	https://lore.kernel.org/lkml/20231022031203.632153-1-sukrut.bellary@linux.com/

Changes in v2:
	Patch 1:
	- No changes in dt-bindings

	Patch 2:
	- Arranged of_device_id and spi_device_id in numeric order.
	- Used enum to index into adc128_config.
	- Reorder adc128_config in alphabetical.
	- Include channel resolution information.
	- Shift is calculated per resolution and used in scaling and
	raw data read.

- Link to v1:
	https://lore.kernel.org/all/20220701042919.18180-1-nm@ti.com/

Sukrut Bellary (5):
  dt-bindings: iio: adc: ti,adc128s052: Add adc08c and adc10c family
  iio: adc: ti-adc128s052: Use shift and realbits
  iio: adc: ti-adc128s052: cleanup changes
  iio: adc: ti-adc128s052: Add lower resolution devices support
  MAINTAINERS: maintainer for TI's ADCs' driver ti-adc128s052

 .../bindings/iio/adc/ti,adc128s052.yaml       |   6 +
 MAINTAINERS                                   |   1 +
 drivers/iio/adc/ti-adc128s052.c               | 184 ++++++++++++------
 3 files changed, 133 insertions(+), 58 deletions(-)

-- 
2.34.1


