Return-Path: <devicetree+bounces-40795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B199C851681
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:08:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CC0D28394A
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:08:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 835ED3CF4C;
	Mon, 12 Feb 2024 14:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WSa0/Y2x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF0E3D0B4
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 14:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707746621; cv=none; b=LMrvdCWIvJJlS0WfCxIGKPQvkWwPvdWowsocLmeRqDT2HZrFsjOqtQV3cH6WqLP0ymNbsYEP8fBdLqWZktwAl0RnYzRPYYNwpRWsFs5oV72gHlovOBZwPCkCa3vLB0fREU5N2JPmJwrHKLlcLYF6Y9gCUxJgHMnyd1uofn2nM0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707746621; c=relaxed/simple;
	bh=6tebE1i+8uRkrGpkVZOD3OOkqyqqHXPKa5dm8fJa6M0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=H5xffOYJp/AHVCz0PB1SN2gnauc/p4KaLWYWBOUKh45rWblotb1t49zrnO9ZtPIC1Rs4zth+LcnEtipVaBXnhRNWideSzG2BlA2OtWdX3pvfAR3l4gGU1KEJHsRSzWtfuv8ApYtE1if2O3kx6LKEiRGMhEvf4DhzeaA8Dv84DOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WSa0/Y2x; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-410cd2c7f27so7636695e9.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 06:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707746618; x=1708351418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3fwygQHFsBzQHW5VKr94J8/MYzLiHXjL2S+HWa6z3Po=;
        b=WSa0/Y2xruKgwRhYkos26f5TnMdopytcyGZ/2b+X46r6Cj4iGnC6XYt9Ef9bdzuc6Q
         j7UDZQKQXJxWsa4115fJrL/GBXqdJzEg6JRGq1TyipXHvbFmjnkKLCJ5m5yVJoyEb1Tp
         cz1HdlK0VQPYoGgEdS5EJtGQfuKwMOUIvG5Vnc09wsB5+BMb8p0WsS4hwcDFQ0MYuaoE
         FQr/f/LGOpqTiZRlQNoKyI3qs85Dqy0N6dCD1tkgvkVbkKtiAHJp87l5bJOkl3L/aixP
         DBo/4TUBJc0/k2Bn/dslunQ1SxkKvec0swzuQlIuRtqD9yyAa/RSBkuInAh+ljrvJhPM
         HW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707746618; x=1708351418;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3fwygQHFsBzQHW5VKr94J8/MYzLiHXjL2S+HWa6z3Po=;
        b=UeI04OjCYexldDjpXdVxin+57CnDk5s7hHSfSjz9ghENJ5A7mZkgPx3uFSuGMgKUnx
         g6vfIY2pqgVewA3Q2sYtiksjztR07g7aA7vaaZWPoi0xbG5f68qDxr3Vn9CfkL0OvaYw
         WKgVaIsQtqfY+OznVofpW2S7BSTROBj0B4zpk+eEvDeeoQcrDfCPsZvTgzf6pdE7sTA6
         ybWUvpCnOfVwJYLyJf35+Cb21p05rDNMlEmBbHQOPJNqwisEEfzdqxT0avTvFBMdsQQs
         qDyyj8jxDHEQLB82x1Qafbu5jqrYw4Hlf8SYZ+6dOeVgzE6DvqxyN98W6nrrQ8gPAB/E
         759A==
X-Forwarded-Encrypted: i=1; AJvYcCXom7mSMabD+S4o5KaTTwN2KC8w/7o2ASAx/40DTwUsRF+DQjnE19q2usTs9CpLkZ+H+g8s60QrCizvAlFwLXI2v9JSmDskImiEwQ==
X-Gm-Message-State: AOJu0Yy0K8Cj90JRpMkiWmgk/iHomxwrGFRRVhGAiZb+K4+8FINrv1C+
	w2Did2ePo8AiWgbi1nubB5r9rb4IKH6RJtvsAPRUunyE/l1FyAu35R57qqFO8GA=
X-Google-Smtp-Source: AGHT+IGB51NH93DGoNoMXTzCRIC1N1Z1dJ2qlaKI/1UBHwPiKMc9bmlKd5PFSbsiKPCKfG5LGfp0Rw==
X-Received: by 2002:a05:600c:470c:b0:411:6f3f:4950 with SMTP id v12-20020a05600c470c00b004116f3f4950mr661113wmo.32.1707746617687;
        Mon, 12 Feb 2024 06:03:37 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVdE45X2RafVhK2EB+ykUZM9RvsPvrceDujHA//0jL+xxiP+4n1I1kYEwYqurMODq5CHI+cESHCgB6fBwCHf9Xe22zXIx2Qp7f/YjU3mw8LTOD+1vj7bezY4XjEO/3zcENm4GqTW3M5CvhgMXi2jzkXChD/FxCupB7nqxUz2UJrXQ894bvh8F2cTIt65lcSMSVyaCrkdNQHSBj0maQ8PTDCMQhiTq9z7/kEIBba3MjC3wq2yDG2cGt+iUjz3oYUZ41m5M2zPFExn19FZe1ndbXtsVXM0miaZC/FNF5xb74Pvce3Jx5iD2XfkIocvW09knSlasadcXCVOllRvE0g+sp95i61XerBAXzF5ujl16KXolDWSLmQIkPAuoYnUcur2Hd99mN6/F4KMfLmZUBYSFidrpIF/TuzVyhDsCgSUqS0xc/eTw+0Feg1mV0kWGx5zQf0KW0KcDfdwYogWTmSPBIXsB9t/lCNYk28KW54EHhxKJrkZDT77HYOskEsNcJPwo9mLRbeBizP1ItF0+EynUm+c7Vau4Z0qk7sXwd/MeJ8T69ADyktROfI0c6uoFQWETNzeeYhs9bF7BLRi1ZfttHOMOngSAvkfRCz/eVue91GbMmKMmk=
Received: from ta2.c.googlers.com.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d4b09000000b0033b843786e1sm2135356wrq.51.2024.02.12.06.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 06:03:35 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	robh@kernel.org,
	andi.shyti@kernel.org,
	krzysztof.kozlowski@linaro.org,
	semen.protsenko@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	devicetree@vger.kernel.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 00/12] spi: s3c64xx: remove OF alias ID dependency
Date: Mon, 12 Feb 2024 14:03:19 +0000
Message-ID: <20240212140331.915498-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The driver was wrong as it assumed that the alias values in devicetree
have a particular meaning in identifying instances. This immediately
breaks when there is a dtb file that does not use the same alias values,
e.g. because it only needs some of the SPI ports.

Tested gs101 SPI with spi-loopback-test, all went fine. I updated
exynos850 as it uses the same USI.SPI_VERSION as gs101. Maybe Sam can
test exynos850, if not, we can drop that patch (12/12).

v2:
- update bindings to consider the asymmetric case where the RX FIFO
  depth can differ from the TX FIFO depth
- update commit message in patch 11/12 to describe the GS101 change
  (I was wrongly mentioning exynos 850). 


Tudor Ambarus (12):
  spi: dt-bindings: introduce FIFO depth properties
  spi: s3c64xx: define a magic value
  spi: s3c64xx: allow full FIFO masks
  spi: s3c64xx: determine the fifo depth only once
  spi: s3c64xx: retrieve the FIFO depth from the device tree
  spi: s3c64xx: allow FIFO depth to be determined from the compatible
  spi: s3c64xx: let the SPI core determine the bus number
  spi: s3c64xx: introduce s3c64xx_spi_set_port_id()
  spi: s3c64xx: get rid of the OF alias ID dependency
  spi: s3c64xx: deprecate fifo_lvl_mask, rx_lvl_offset and port_id
  spi: s3c64xx: switch gs101 to new port config data
  spi: s3c64xx: switch exynos850 to new port config data

 .../bindings/spi/spi-controller.yaml          |  27 ++++
 drivers/spi/spi-s3c64xx.c                     | 142 ++++++++++++++----
 2 files changed, 138 insertions(+), 31 deletions(-)

-- 
2.43.0.687.g38aa6559b0-goog


