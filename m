Return-Path: <devicetree+bounces-126542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 861C89E1A72
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CB8C165B55
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06E51E378C;
	Tue,  3 Dec 2024 11:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="T1Mansl/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07671E3789
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:13:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733224413; cv=none; b=iknaZPy1mhwAYxsDTVH5TxUT4PcmlS46hHrSNNgSWPsOIuJ3ZabWipb5SV2RPtuRn0U/quvsU2At+Bqkz/n3VvwEaVzO4xvt2ST9yqsvawc6gS2ptEyz9JKkEdWC3JACAa/Bhyzp588ZBm4gemUsvdfee09mBxxoZXgYuDSVkvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733224413; c=relaxed/simple;
	bh=oGSk6hVxW1wYB/QI1mVV80YFrcUPoJqrE8+x2OzhEEI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OBvNFXPRwkAywXKhp2Ey9pGQrJN0t2lxL/XS5kOcm+5lRIm/G8gE8fWVs0nYQrmf4vl1R3lqeHiDeL/ui74QPiAlNOSCcIN/FVqFSIkiVTyas16NEpk5Z+XyaPZvXBWW+ibG65CsI6oR8ojpVsHtDbSMSRir+v4+XeiA8tb91g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=T1Mansl/; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-434a2f3bae4so50012235e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733224410; x=1733829210; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZHAew+5pIUtNZ469Ay/e6iOZX+tKVuk7Y65o+7qMTAc=;
        b=T1Mansl/VVrNqeYSnHiYEZTqakQvk/nx49YN3fgp8Rg+KuMxAhUWAZabiOdqYyOZsp
         8k5c0nH36NbZidcxPKY7IDdM3v/Ht8fzXEWFd0fiX3XvQhv4IieC7aCDgc8I/YHqNtv9
         svkoribsIoW7pcoCaZUykqDrB82Mu3Bam8E+jfgHavADowlFG2YMYeUQ+fCL+CTeo2Sx
         BniANs0Tr9sKS/rlgLv7q5QYW/UIwREHeuDPis1TeMDf5vLbPpfqMjBJRz+MBQVVN1XX
         LAsAqjQWVXK+FnMDXUCUK7Im5di9D0MLb6sgx9Ymh5XDKu1wDlx0naTRBVsLe/0lheSC
         bNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733224410; x=1733829210;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZHAew+5pIUtNZ469Ay/e6iOZX+tKVuk7Y65o+7qMTAc=;
        b=SwfG37hE91F+qqYqBEqV4YeH6+tGSCRgwy+g5FwOa/3OnbI1EmwL5LmNd1oiYLxwYu
         RikL6iHG5eVRsZ798+70M/TLQl/nA/4OHhwbQTpJT8sEcH5Za5XUZJAVh04Ldintp6az
         y0QF3ZAzBg30pVUI/w5M2EfxAnWgJGdR2AZwVyUfgktJwv2+7kHXMz2mHDOO7q/eBwsl
         DPascddlfn+tGe4LlIWfXVlHGJvIhE0awxWAKBOeIxOJMPeZZPYKouh7iAi110Gufo/5
         SYVDRYM3seWeI7LHg1yvd33OzMsN0sJ2PwdwEwXVxLrbqiUUKlVBHdaDb5pwGbd07rxA
         8evw==
X-Forwarded-Encrypted: i=1; AJvYcCVxQi6LKdoiVE+n9tipDW22jR/KIz/yR59zqavlhJDvRKIm3Mf0EUY03m1Kc+N1A+7aKpURblULPhoA@vger.kernel.org
X-Gm-Message-State: AOJu0YyFKIiIl24pyOVIAetuRi8NaYJuoCwIz6LRIjqUqcB65Tgpv6H0
	XP+LPO4ve8TZXHcyE3gxXcz/XWlm7F8CFeuJHAxIme/GjNRtFe99yR4wZYvCUjI=
X-Gm-Gg: ASbGncuGk6fCDZZJC7rToNT4yP64tW/GXOYTAFhR537vHBcjyPqALIkFsj1kNZDfpY2
	L9BRWf4kwDE+pb+27witpd/Gs7lQ9ZkWfvdS2M2NsuI2/iI+VbH63xvuZvF3T3XrUgkDViq67Sg
	nTbfppc0zip/HfMMQ8seLIXKrQOmyqA0OqzITd9/kOUZPRZso1CVhpN5gxDHWB7UYJgAIe+Q86/
	2snbco060GUeOwz0OSyYqKn7w7oKx0SLtE6o5MsE37vIimlvfKsgvLdJotJpWkAtrcl7TB42E6s
	rSfr
X-Google-Smtp-Source: AGHT+IErtKnY0Pv3GfVcIJwifhLrCQ99HAQ814LD/e3xtS/wVzvpDdVQw8u6DVBzuWDInXQU6dGy3Q==
X-Received: by 2002:a05:600c:1f91:b0:42c:de34:34be with SMTP id 5b1f17b1804b1-434d09acf48mr20434705e9.3.1733224409944;
        Tue, 03 Dec 2024 03:13:29 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e0117069sm11794315f8f.60.2024.12.03.03.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:13:29 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	jic23@kernel.org,
	lars@metafoo.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-iio@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 00/14] iio: adc: rzg2l_adc: Add support for RZ/G3S
Date: Tue,  3 Dec 2024 13:13:00 +0200
Message-Id: <20241203111314.2420473-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

This series adds ADC support for the Renesas RZ/G3S SoC.

Series is organized as follows:
- patch 01/14:		adds clocks, reset and power domain support
			for ADC
- patches 02-06/14:	cleanup patches to ease the addition of RZ/G3S
			support
- patches 07/14:	enables runtime PM autosuspend support
- patches 08-12/14:	add RZ/G3S support, including suspend-to-RAM
			functionality
- patches 13-14/14:	add device tree support

Merge strategy, if any:
- patch 01/14 can go through the Renesas tree
- patches 02-12/14 can go through the IIO tree
- patch 13-14/14 can go through the Renesas tree

Thank you,
Claudiu Beznea

Claudiu Beznea (14):
  clk: renesas: r9a08g045: Add clocks, resets and power domain support
    for the ADC IP
  iio: adc: rzg2l_adc: Use devres helpers to request pre-deasserted
    reset controls
  iio: adc: rzg2l_adc: Simplify the runtime PM code
  iio: adc: rzg2l_adc: Switch to RUNTIME_PM_OPS() and pm_ptr()
  iio: adc: rzg2l_adc: Use read_poll_timeout()
  iio: adc: rzg2l_adc: Simplify the locking scheme in
    rzg2l_adc_read_raw()
  iio: adc: rzg2l_adc: Enable runtime PM autosuspend support
  iio: adc: rzg2l_adc: Prepare for the addition of RZ/G3S support
  iio: adc: rzg2l_adc: Add support for channel 8
  iio: adc: rzg2l_adc: Add suspend/resume support
  dt-bindings: iio: adc: renesas,rzg2l-adc: Document RZ/G3S SoC
  iio: adc: rzg2l_adc: Add support for Renesas RZ/G3S
  arm64: dts: renesas: r9a08g045: Add ADC node
  arm64: dts: renesas: rzg3s-smarc-som: Enable ADC

 .../bindings/iio/adc/renesas,rzg2l-adc.yaml   |  37 +-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |  53 +++
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |   4 +
 drivers/clk/renesas/r9a08g045-cpg.c           |   7 +
 drivers/iio/adc/rzg2l_adc.c                   | 414 ++++++++++--------
 5 files changed, 323 insertions(+), 192 deletions(-)

-- 
2.39.2


