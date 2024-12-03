Return-Path: <devicetree+bounces-126579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A5B9E1C55
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAF0A166D2E
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3DF21E884D;
	Tue,  3 Dec 2024 12:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qU/IOEMT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F071E767B
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733229630; cv=none; b=WhMjgCeHMrIrgeNbjof83D12OMzWkLDcMl+ZPCZonjhK7t6AWaVOS9WmyCEWy4Y8z2YgEsUtCWhhl296cCLJbehR9STHCIhefP87SsaUdSw4GESuLy7JXpiEhDwaubA8CntK5cc2OIsgIFM6DJa2LPg+/axmGQ7YbYp8xXZ1jnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733229630; c=relaxed/simple;
	bh=xjq7GX6XBYQ1ztBrGduyhRQK8vyP1UVc/11WrT6pxzM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=McCtp8ct8Obrpz0lpCY/DchFjbnJSMwADmGV6nHlMtoCKv/a7c9VFAVWf4EWauiveK8DyMpT4w7TsBnDCRDGxxbZ9XfCLyil5BGv2mkjjCZOaGdVl8LM5ovtqSEUJaJ1lyZ40n0Vh4KDTXTjRW5g3VqVghsOLSI97moYiUz4PYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qU/IOEMT; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a9e44654ae3so708970566b.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733229625; x=1733834425; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KidvB40Fo4maqTRIu0iP08tZ2RUHssOz5eIQKLC5Snw=;
        b=qU/IOEMTZ6ag3D44Aer4wfalpMBF0/ufpuLC4OUcSi/zW6JC1pHy7d9YUv9KTYzu0q
         AyzKJ7mYHwpwjMtb/wnPvdk9zHqCE2sF+zFPn1uS50l+Xj5Xe/E6S52hEJEACrzdz7uL
         i5CKIwlY396Asuuoy3/zPvJKQpwdREF1GWlU/B3+7DjnkHqazC1d84xfMwZJ+vphLlM4
         36XuAoQH85PfvQjs60H4AhgxB/cJmJxqnZjKKz4ZvpdYGvsMlwiDHtGRjbtEzgs3Mnhv
         bdHCPxBnuxL9FczSTLgJgt0+T48eM4/9oSe7uKKyvE6mLsAJO8UDHGcMf8gTTct33ol+
         oiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733229625; x=1733834425;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KidvB40Fo4maqTRIu0iP08tZ2RUHssOz5eIQKLC5Snw=;
        b=L9E/TMj86Wo6wPXdylAm++7dDhv/fSt2Hk6l4SWlGVVrMH8pXdC0pOpW85W8jCfBek
         F3W1FNdK1AVxLWbIyRn97MVAByhhNDxXwiKCBM8njNJdybadaRx0jcUrkZGgP+/4gh3Y
         98x4juTXZge4NOKM+jYud6Vn3MdFGQ1dC29H7kaRZtbxjXbPmOEWn3lgYc8BcIj6z23P
         H/6SxRDBNWHpGvlFEhWvoFy/clF+y9AvJxX7SnUgwu0eyGajXvrtZ0DOiBs4kwv/9oL2
         OgHWGTv0rbc8oDRGI/7BRUT3hl2r9nqh/bIULgL7HX1uaEXjnfRtsOGkHdjK/Rx0Ktmp
         93iw==
X-Forwarded-Encrypted: i=1; AJvYcCUKfu/uGCmkyyHTPhN+0y/SyxbMINgVNqJ9ahsvyA7QdZi2X6NXhteSU/bVYWw5qyTDpF2i1SXhzm0Q@vger.kernel.org
X-Gm-Message-State: AOJu0YylvKzyilmyA61x+jAJ0sDo+fp5YpEKKCLl1ggeiRs0kpUIGFRe
	rg4MmALS1Jyd2vfJM3PKFz5tmeTF8NK2XFnX3NRV5UpBOdJpIk4NcNDVMYH5/CdnEplAvpVbd0/
	kTRI=
X-Gm-Gg: ASbGnctDLSnEFeYFdrSMjia+58zX8PNySle7SyhjUmI3/WlP+bLaK2eIJrYV0NlfeIr
	5JJMYHrvADczy6oGlOjuLYD4a4yAV/srpYsabkQM5BZ2TpvIj3GUjL88zyEvAiSmBX2znawgN55
	6Mbhtwrg3DUVqphrji5GXFkKZDxy/04aRGCmo+S1mOZRzxzn8f3sbklkcuJJf7yTDCe2Ed8neFu
	FOvQJcCjptityTTWxvUMwrOVyFqtLeWmPl+hCFVmWQm4YXi6Q5NbuDpPelbSWU8nLR4Y9kFymfj
	39JP/2SXpVyWgV/gVx+xz8RZnzxzMsjS5Q==
X-Google-Smtp-Source: AGHT+IGhLdCxi2DbU4tBTCS3xMoJ+eN/NSNXdGYE86xU3cbMqxxR5/XeFJzbPPRvBrj5K6P11uTb2w==
X-Received: by 2002:a17:906:30c2:b0:aa4:fc7c:ea78 with SMTP id a640c23a62f3a-aa5f7d390bcmr168580266b.23.1733229625507;
        Tue, 03 Dec 2024 04:40:25 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6a4csm616809466b.106.2024.12.03.04.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:40:25 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/5] Google Pixel 6 (oriole): TCPCI enablement & USB
 updates
Date: Tue, 03 Dec 2024 12:40:23 +0000
Message-Id: <20241203-gs101-phy-lanes-orientation-dts-v2-0-1412783a6b01@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIADf8TmcC/42NQQqDMBBFryKz7pRkULRd9R7FRRqnOiCJZIJUx
 Ls39QRdvg//vR2Uk7DCvdoh8SoqMRSgSwV+cmFklKEwkKHaWmpxVGssLtOGswusGMs9ZJfLD4e
 seHOe29qRp8ZDsSyJ3/I5C8++8CSaY9rO4Gp/6//u1aLBhoiGrjHdq7WPWYJL8RrTCP1xHF8bp
 zQ6zwAAAA==
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Hi,

This series adds and enables the Maxim MAX77759 TCPCI for Google Pixel
6 (Oriole).

It relies on the bindings updates proposed as part of
https://lore.kernel.org/all/20241203-dtbinding-max77759-v3-1-e1a1d86aca8e@linaro.org/
and
https://lore.kernel.org/all/20241203-gs101-phy-lanes-orientation-phy-v2-2-40dcf1b7670d@linaro.org/

With these patches, we allow the usb phy to detect usb cable
orientation, and we make it possible for the USB DWC3 core to enter
runtime suspend upon cable disconnect.

To: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Sam Protsenko <semen.protsenko@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>   
Cc: Roy Luo <royluo@google.com>
Cc: kernel-team@android.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: André Draszik <andre.draszik@linaro.org>

Changes in v2:
- more appropriate dwc3 quirks to achieve reliable Vbus state detection (patch 3)
- drop patch 'dt-bindings: usb: max33359: add max77759 flavor' from
  this series as it should go via linux-usb (Krzysztof)
- max77759 tcpci compatible has changed
- Link to v1: https://lore.kernel.org/r/20241127-gs101-phy-lanes-orientation-dts-v1-0-5222d8508b71@linaro.org

---
André Draszik (5):
      arm64: defconfig: enable Maxim TCPCI driver
      arm64: dts: exynos: gs101: phy region for exynos5-usbdrd is larger
      arm64: dts: exynos: gs101: allow stable USB phy Vbus detection
      arm64: dts: exynos: gs101-oriole: enable Maxim max77759 TCPCi
      arm64: dts: exynos: gs101-oriole: add pd-disable and typec-power-opmode

 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 104 +++++++++++++++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |   5 +-
 arch/arm64/configs/defconfig                       |   1 +
 3 files changed, 109 insertions(+), 1 deletion(-)
---
base-commit: ed9a4ad6e5bd3a443e81446476718abebee47e82
change-id: 20241127-gs101-phy-lanes-orientation-dts-9ace74a2c25c

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


