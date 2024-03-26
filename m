Return-Path: <devicetree+bounces-53471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB43A88C674
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 16:13:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8EB771C2AFB0
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 15:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5EF13C811;
	Tue, 26 Mar 2024 15:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YBXNBRT1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D4413C691
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 15:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711465987; cv=none; b=knek9nUgsSmqsp/Q3VuLks8rOMJuuEVhvgZxhW9/v3mqVjLSgXbzWvenR1zRY+3Tw9wkVIODauROfid0n0gcQdnqqBdKLbM7qaOv7HPd7o3r3Q6GGDk3DR45VLTg8dya0PRTkfQmdCXKoU+/0UnfPPW5AFJyyVuUAnK0mWComjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711465987; c=relaxed/simple;
	bh=fX/nx+m1BFiKiTM4m9sMMyL20OdECnY0LP5bnlLStL4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=DHcrRG88BZL8yGK4oB+eEre5rV/sBc66nfutazx2Cl4X+Q7jgKHrSVssDJBCn9CYqUbkHEK2nc3Lb6Y0t5BfEq7jiRAIjIkgGisaoFrPVL4nYNeYRLcqxh0heRQlmgmk+8+T1cKq9TA5X60J8xmKxm6JS24cAgh/GWwBogJLdO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YBXNBRT1; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-341cf28e055so1511010f8f.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 08:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711465984; x=1712070784; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MStHYue38iKTpxQ86HVIzIQcYN+5CJRssW0pcCm7KCc=;
        b=YBXNBRT1dTS/9WLBUt7vCs1TXvEv8DPCDYpIQgQODIgTgOVN4sdsArYILy+u8CPXE1
         HgT9j+iO9PDFa+hLPzrr743T9S7Q74zIqeYU0uwNso9THQT/hZtoNgEAc7RUGfjTrD/I
         m5JZT/XJ9HtHAs7UARVRgTUfVJ7vhPXTWc4NPZnP/kV3MqtP0OF4ikXJX9K1QWjhWtjZ
         93HZP+5ayNlDZzTgZ0OtRvBjfO9sXmfJ00uA6mMhJFIdz+lu7SF6D/zfR2fSR6eHqE74
         b6va0zp5CTwkrfYf7xC1VjG2OIGTiRnmG6vfdyewMpQIJyhp8g0NoAgx64WddTRMeJHa
         uhIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711465984; x=1712070784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MStHYue38iKTpxQ86HVIzIQcYN+5CJRssW0pcCm7KCc=;
        b=CNOnjH3A2VmJvxCLEJdxLlHTZUU18rZPFYduTsWps7o05AqAePLsJ8R8NRhEsVhy3Y
         yPTRSvM8BajBQIfoH865URLO7XahQ/+2Z/Q/ZWI3O4SOiryqsOV22Q/sl95U6OGRqiRz
         a4krK8mYZnIEMqzBDlxHt7bRqjwjd1iNrQC3flYwpJ5UnwI+x/DwNadsdO4RIrMASGKJ
         VICHUS9YwsZhM4Njrwqg4JzzoQ5Dcx88lNL/SjthIDuSwg0JsNadjFdv0+h6X9/r6P88
         7r6IYQkCZBRaJc24cJFOjqwbNfzrJTHViVvdOoRNLxmKLvWdcrm0JyJsICyrEhoKXucM
         qB1A==
X-Forwarded-Encrypted: i=1; AJvYcCXG0iQZHZsvP24qfANOmj9iNFMYu77S6wtb3byk62unh2VJPkdhh8jIYcBZ5T+4FRBbgMzSL4xnSC+ZQiYbMZHu2IVu1hWIsq6apw==
X-Gm-Message-State: AOJu0YzsOZbNaw4zGMKsNymQxFY0iVsi9RwCCuQR4c0O3gskfw3oqGz8
	+F9CZ+IMOieQv0jGgwiAP4wxJRfH01tW4VAytLyG5yowZf3OtPKu2OtuU2la1VU=
X-Google-Smtp-Source: AGHT+IEA2QG9bjlKNWxsUlcMNUM9UhJrKHhbYNsI2pRHez/p0C8pbYsb3HBt3bxK5PYJlz+og/Y+4g==
X-Received: by 2002:a05:6000:147:b0:33e:7d7e:9af4 with SMTP id r7-20020a056000014700b0033e7d7e9af4mr7367090wrx.12.1711465983703;
        Tue, 26 Mar 2024 08:13:03 -0700 (PDT)
Received: from ta2.c.googlers.com.com (158.100.79.34.bc.googleusercontent.com. [34.79.100.158])
        by smtp.gmail.com with ESMTPSA id b1-20020a5d40c1000000b0033e7a204dc7sm12325692wrq.32.2024.03.26.08.13.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 08:13:03 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 0/5] arm64: dts: exynos: gs101: define all PERIC USI nodes
Date: Tue, 26 Mar 2024 15:12:56 +0000
Message-ID: <20240326151301.348932-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.396.g6e790dbe36-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

The series starts with some trivial cosmetics patches, then defines all
the PERIC USI nodes.

v3:
- seems that Andre' already reordered the pinctrl properties, take his
  patch (first in the series) and rebase my series on top.
- small updates on commit messages
- collect R-b tags

v2:
- reverse pinctrl-* lines, first pinctrl-0 then pinctrl-names
- move the pinctrl-* properties after clocks so that we keep alphabetic
  order
- join lines close to 80 chars
- use alphabetic order for the standard/common properties:
  address/size-cells, clocks, interrupts, pinctrl
- collect R-b tags

v1:
- https://lore.kernel.org/linux-samsung-soc/20240307135248.162752-1-tudor.ambarus@linaro.org/
- https://lore.kernel.org/linux-samsung-soc/20240307135912.163996-1-tudor.ambarus@linaro.org/


André Draszik (1):
  arm64: dts: exynos: gs101: reorder pinctrl-* properties

Tudor Ambarus (4):
  arm64: dts: exynos: gs101: move serial_0 pinctrl-0/names to dtsi
  arm64: dts: exynos: gs101: move pinctrl-* properties after clocks
  arm64: dts: exynos: gs101: join lines close to 80 chars
  arm64: dts: exynos: gs101: define all PERIC USI nodes

 .../boot/dts/exynos/google/gs101-oriole.dts   |   4 +-
 arch/arm64/boot/dts/exynos/google/gs101.dtsi  | 791 +++++++++++++++++-
 2 files changed, 780 insertions(+), 15 deletions(-)

-- 
2.44.0.396.g6e790dbe36-goog


