Return-Path: <devicetree+bounces-212270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D2BB4237F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:24:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EC513A8F6B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E73530F52B;
	Wed,  3 Sep 2025 14:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GowLDbcu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF513093C4
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 14:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756909482; cv=none; b=WIO1mr2IZaE+97m2B/y2kH8eBcbXnXDK9M4xnGpTnoV0hPpGLl4zRgDUWzSoHG6Wnl3Aq6GOiDko+zXxi1M0KCYNuZgnbT1GYikoUw45Wcf4X8tXDIbUtmGqR57HR+FogUp5KE2UzMeNQirDWgMoVidfYj5YaV9xqqr4+B2oOSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756909482; c=relaxed/simple;
	bh=boXlFe+neX+rbXfuMW2IbPpgXk7Xd+Trui4cXXc1XHI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ivnZmUexwqOPtkJ3Id8Ejt6evhTYODQvCPbeo85S3vK5vLBlTUGnRnfNsfDNkr/LD3NGoDvBKKOCRdQnNURtnPn6Xnv/wtIpWcHniGrQil+pyUWAK3GTOkYJVpQhtQyTUpYDzE7m9TBgWUYjdmWOuIP1QqEgYRjzhRTtamGGBbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GowLDbcu; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45cb6d8f42cso5013975e9.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 07:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756909479; x=1757514279; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=11JUQ5ev+7cUmEafuoYU8OrU4sJAEkKk/NLhU0bkFyo=;
        b=GowLDbcuCW8V88vjNmnsasQ4ROJT3JBVTVpij+GyHOm7/c7XaC51PiLJ3BCpxsmziJ
         VCwev1FZJKPZUcFkDBp3brW4XTNS/gsFq0tf1VF373KW96Wl63Fq+Us2jirXB0/O5UTh
         akIXpbBXuB3pK/vmc+uy5eMCKyzEH8pbiqeBLkAspFj1ueO5Idk5x5t2q1ofpJu/zo/s
         g9jj7j/cmldpiustFWTX+oUsKhFghX/3f49LsUai3v6JJLUH6hu4kT13lLv0uB4O5SWX
         6DAaw7o1p1no5mRLxXN0eV0HbdrvxpXfdA6DONvA/hzQCQcJMhezzcrlgwt7XS/uk1TP
         L5zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756909479; x=1757514279;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=11JUQ5ev+7cUmEafuoYU8OrU4sJAEkKk/NLhU0bkFyo=;
        b=B/dIeGtpi97Mb2B/jrMWXmMgdnJTL7raN4soejQNfafBA3iMEHlX/oxrRaX48c01gZ
         lxd2vbKclUqYZut5IQCdX5imQM+rVIKOsh6H6eNfe5jMZdZLyP02Tzp5F4vvbepHH34M
         Wh7w1p5B50cW1FTqZstQ63LZtoWAoZHiT2KH4n0SyNaBexqSxc3UDR6tgOEVJtRm7mGZ
         4Es39GthN+4cF11VaQOQB5cp2JhbCe/S3aHf8LcPw0F35anmE33IoH+zPhYK82LXGml5
         g+Ti54rQWbJmQEUsvaUHqUb/mQXU2rIF2kXxlRfCRNaHwfpyyyhqzM5SeGa27b4F/g+7
         a4vg==
X-Forwarded-Encrypted: i=1; AJvYcCUabZpJTaD7XJUNxcek00Dvk8hElHriVHB/YI9cgJezvysT97CZ0HJ5Fh0SYz8LV+mW8Z8y0ZLDK/h6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8RLY0X/tlpC5IMwyoX4+ypYeVD0xMuupFKBHGf5mo0PxGLK8M
	sh6WK4qm6YlfkwdYLi73gSevwdn766rCKycBffGj523ggjkfGten9r1Bt0XDkG9NTdA=
X-Gm-Gg: ASbGncv+JSNGXm06X8sWOhJItyPPWU4MWyI9ioQiEKR/ruya0vgRvveX/y+rA5gQYAo
	n5kS7H3nS4lRAtwWKejBgTlu7XY26UVo9pIrLRDfJ82mxQkJgN7EfL5lmfJiZv7qj256hj712SZ
	DoIB50yp4QAz4MctpTqHgTQhGmGjS1IDrIWtRxePmV1K/dNf9mU2ntOKOQx/RwxvO4IGomt1wyX
	YYdWbsw8peUfBAzsENJOZbl2JghMcoqwMBLApAiYTHQfzb1s6vuaFTiyC3Xm8wxWNgWpUx8p+5w
	IuwgunGhheg9KF5latwq6fivBEqGqwuVqWYNYxfLycviyGpWPg21dU/8V8lpsChWlgJnmoB2Gig
	gjWH/YNUXopV8h/rHcm4uopr8++hGWZOAvdjjKhrE5f5cjC9+5pm8z7vv3bM5lV0VICfY2zoied
	uChQ==
X-Google-Smtp-Source: AGHT+IHO7lF68sZSzRU3Ji9xQ8Bg+5ordTX8h7glVlsP3LEnejSEX9Agz2jxEBMCAJA/KkoY5VsH0g==
X-Received: by 2002:a05:600c:4588:b0:45b:86ee:4181 with SMTP id 5b1f17b1804b1-45b86ee4497mr127647825e9.22.1756909478846;
        Wed, 03 Sep 2025 07:24:38 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3dc1cd4a7d2sm3996035f8f.33.2025.09.03.07.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 07:24:38 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 0/3] arm64: dts: exynos: gs101: add cpufreq support
Date: Wed, 03 Sep 2025 14:24:34 +0000
Message-Id: <20250903-acpm-dvfs-dt-v3-0-f24059e5cd95@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKJPuGgC/3XMSw6CMBSF4a2Qjq1pL0VaR+7DOKAP4CZKSUsaD
 eneLYzUxOE5yfevJLqALpJztZLgEkb0Uxn1oSJm7KbBUbRlE2DQMMkV7cz8oDb1kdqFspM2rRL
 aGmNJIXNwPT733PVW9ohx8eG11xPf3j+hxCmjwtVSq0YwacTljlMX/NGHgWylBB8a2h8NRTtuQ
 SpmOehvnXN+AxSdEN3nAAAA
X-Change-ID: 20250819-acpm-dvfs-dt-06bc794bdccd
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756909477; l=1514;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=boXlFe+neX+rbXfuMW2IbPpgXk7Xd+Trui4cXXc1XHI=;
 b=L9P2BH3epk84RCrBmVx2GaIRgBviB5UvLL4K9afDUGFWG1bnkaX/YQ0iUz/gTH10jTAwgbS/K
 uCXKN6hqgpUCSs2U83YiZnWujnFKvoXNO7QtM+1u4yl4QYXFHL9A9cv
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Define the CPU clocks and OPPs.

Patch #2 has a dependency on the ACPM clock bindings sent at:
https://lore.kernel.org/linux-samsung-soc/20250903-acpm-clk-v3-1-65ecd42d88c7@linaro.org/

The following error will be seen without the bindings patch:
arch/arm64/boot/dts/exynos/google/gs101.dtsi:10:10: fatal error: dt-bindings/clock/google,gs101-acpm.h: No such file or directory
   10 | #include <dt-bindings/clock/google,gs101-acpm.h>
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Thanks,
ta

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Changes in v3:
- the ACPM clock bindings were moved to their own file, update the
  references accordingly.
- Link to v2: https://lore.kernel.org/r/20250827-acpm-dvfs-dt-v2-0-e1d2890d12b4@linaro.org

Changes in v2:
- acpm node becomes a clock provider.
- reword commit message, extend cover letter with info about dependency
  on a bindings patch.
- Link to v1: https://lore.kernel.org/r/20250819-acpm-dvfs-dt-v1-0-4e38b95408c4@linaro.org

---
Tudor Ambarus (3):
      arm64: dts: exynos: gs101: add #clock-cells to the ACPM protocol node
      arm64: dts: exynos: gs101: add CPU clocks
      arm64: dts: exynos: gs101: add OPPs

 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 285 +++++++++++++++++++++++++++
 1 file changed, 285 insertions(+)
---
base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
change-id: 20250819-acpm-dvfs-dt-06bc794bdccd

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


