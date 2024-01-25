Return-Path: <devicetree+bounces-35103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6198A83C544
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 193FE295BFD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D8973175;
	Thu, 25 Jan 2024 14:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CIqZLFcg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8286EB76
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194214; cv=none; b=nYyZV0CPMT0uNX1AuLRG1NmzqQm3PC2/oG5OzjtCyZWQCAIccdEOXP7wlYg9Wr+Z8JPKjTSd3V1bxBBJeislz90CGW2d7T2YmSrgkPOwcMhCtH++aC86GHc1+zmYXWsOUKXRlr0ignadjo1OYOytRUEbazg5hGB2WIMNNL17qNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194214; c=relaxed/simple;
	bh=Q0ynWyqlB+TEhw6MG3HTpcZ4T0RZOvGsOvLniQtNrzE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d20An4yQW8Xbhi7rTyYLZcvGvwol5527/SgXQNBfEbyoLLUBbZfkJzP1/SmVQbC7Ly9CWa/F4JpfUYQuALlJFwL2opLBlVNBfgmek8g7GdPWZfMwG5QGT0ZS9Dveb4XJYoluqrqKHlDi5EXnxlPBlHWW7hKLYHJJtciojYhD4n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CIqZLFcg; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-33937dd1b43so3269034f8f.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194211; x=1706799011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7ZI/5KwC+xCytuTFH+W+O2jy1GV4Q+e+HfUN4cLRoNQ=;
        b=CIqZLFcgStI76l5gK60XB9FOirDUKaEc+dBxdcFYGFCNWAAXXzM0pSoFMUL5nViQfc
         Ezv+kXdCJFk11rkDi3oVOvZd4PwQwaPgOCI2P6rFsot6/Y5h5fFzxWZ3rJVZk3xxX3+r
         u11M/A+boLvDERrtQk5fMfGrTZ/Ov64geFky2TA48/YnlkC0VZbmi1ylWzXs7pcz7/Cg
         IlLjsyVytN6Zw1EECIzQ+OF+P+x/t5vFgasO1ZlPh0hKaUmIW46hTGIzVCJXtNFhXGYo
         ZnK9xCH/0/ZrjLgpvgqKjCJ1EjMTuJZAURH5JiFBTDiWTxz06zEFKCLLXPoXQuoHMJfs
         0Ppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194211; x=1706799011;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ZI/5KwC+xCytuTFH+W+O2jy1GV4Q+e+HfUN4cLRoNQ=;
        b=NBr5Kmu+EaEPCVOv7JH+oUelg5dFm8/MllDW5gT0uHI8mNYl84WZJ/I6FKghWXuz2y
         vzONHvd0YRAvOe9b2kwNtY7meLmNim9aK0hmXFZJkb1mB9Sicng1xKHmcp5Tjjb7ErYD
         ZpUP97Le5bU9PRNOhDuqu0y163bdag9sbhryLXjXjDk+gfbS5o16a7WawaBQDWt9UGih
         NcPg5ESTA1Ynhm0+toxzhe0fYf5nLsQc6FW/USEQ3O/B38TIUGjqnFmYycR41ruv9/1d
         tBd2rl52oEqVn0QmXkksNbT5VnRjx+6WzxyDMoTEYAx6FzvSAFpeeCp55A0lMeuvs56P
         f4+A==
X-Gm-Message-State: AOJu0YynQHP2waEyx61IvpnnX6a3g0k+B3NUZU3lksIfmvgXa7rlu2i1
	c+nCjijdC80QqpW+D9z0Uce4+qWTaduMIjpXDqw+HxGaBM3zGSfMoEA+pN5ngSU=
X-Google-Smtp-Source: AGHT+IErX2MgfpP0Fe4RLqMkR9jYxbhETFvxJ2DoDmgkGrm1I0WK2BsVFDTJMWeO23FcBD4LNFaINA==
X-Received: by 2002:adf:f28f:0:b0:337:c6ee:204a with SMTP id k15-20020adff28f000000b00337c6ee204amr824782wro.93.1706194210889;
        Thu, 25 Jan 2024 06:50:10 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:10 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	arnd@arndb.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 00/28] spi: s3c64xx: winter cleanup and gs101 support
Date: Thu, 25 Jan 2024 14:49:38 +0000
Message-ID: <20240125145007.748295-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Special attention is needed for:
``asm-generic/io.h: add iowrite{8,16}_32 accessors``
as it's not under SPI's umbrella.

If the accessors are fine, I expect they'll be queued either to the
SPI tree or to the ASM header files tree, but by providing an immutable
tag, so that the other tree can merge them too.

The spi dt-bindings patches can be queued through the SPI tree, but
they'll need an immutable tag too. They'll be needed in the samsung tree
as I'll follow with patches for the samsung device trees to use the
"samsung,spi-fifosize" property.

The patch set cleans a bit the driver and adds support for gs101 SPI.
For the cleaning part, I removed the unfortunate dependency between the
SPI of_alias and the fifo_lvl_mask array from the driver.  The SPI
of_alias was used as an index into the fifo_lvl_mask to determine the
FIFO depth of the SPI node. Changing the alias ID into the device tree
would make the driver choose a wrong FIFO size configuration, if not
accessing past the fifo_lvl_mask array boundaries. Not specifying an SPI
alias would make the driver fail to probe, which is wrong too.

Apart of the SPI patches, I added support for iowrite{8,16}_32 accessors
in asm-generic/io.h. This will allow devices that require 32 bits
register accesses to write data in chunks of 8 or 16 bits (a typical use
case is SPI, where clients can request transfers in words of 8 bits for
example). GS101 only allows 32bit register accesses otherwise it raisses
a Serror Interrupt and hangs the system, thus the accessors are needed
here.

The first 3 patches are fixes and they are intentionally put at the
beginning of the series so that they can be easily queued to the stable
kernels.

The SPI patches were tested with the spi-loopback-test on the gs101
controller.

Thanks!
ta

Changes in v2:
- move fixes at the beginning of the series so that they can be queued
  easily to the stable kernels.
- break the dependency between the SPI of_alias, the fifo_lvl_mask and
  the FIFO depth. Provide alternatives to either infer the FIFO size
  from the compatible, where the SoC uses the same FIFO size for all the
  instances of the IP, or by using the "samsung,spi-fifosize" dt
  property, where the SoC uses different FIFO sizes for the instances of
  the IP.
- split patches or other cosmetic changes, collect R-b tags.

Tudor Ambarus (28):
  spi: s3c64xx: explicitly include <linux/io.h>
  spi: s3c64xx: explicitly include <linux/bits.h>
  spi: s3c64xx: avoid possible negative array index
  spi: dt-bindings: samsung: add google,gs101-spi compatible
  spi: dt-bindings: samsung: add samsung,spi-fifosize property
  spi: s3c64xx: sort headers alphabetically
  spi: s3c64xx: remove unneeded (void *) casts in of_match_table
  spi: s3c64xx: remove else after return
  spi: s3c64xx: use bitfield access macros
  spi: s3c64xx: use full mask for {RX, TX}_FIFO_LVL
  spi: s3c64xx: move common code outside if else
  spi: s3c64xx: check return code of dmaengine_slave_config()
  spi: s3c64xx: propagate the dma_submit_error() error code
  spi: s3c64xx: rename prepare_dma() to s3c64xx_prepare_dma()
  spi: s3c64xx: return ETIMEDOUT for wait_for_completion_timeout()
  spi: s3c64xx: simplify s3c64xx_wait_for_pio()
  spi: s3c64xx: drop blank line between declarations
  spi: s3c64xx: fix typo, s/configuartion/configuration
  spi: s3c64xx: downgrade dev_warn to dev_dbg for optional dt props
  spi: s3c64xx: add support for inferring fifosize from the compatible
  spi: s3c64xx: infer fifosize from the compatible
  spi: s3c64xx: drop dependency on of_alias where possible
  spi: s3c64xx: retrieve the FIFO size from the device tree
  spi: s3c64xx: mark fifo_lvl_mask as deprecated
  asm-generic/io.h: add iowrite{8,16}_32 accessors
  spi: s3c64xx: add iowrite{8,16}_32_rep accessors
  spi: s3c64xx: add support for google,gs101-spi
  MAINTAINERS: add Tudor Ambarus as R for the samsung SPI driver

 .../devicetree/bindings/spi/samsung,spi.yaml  |   6 +
 MAINTAINERS                                   |   1 +
 drivers/spi/spi-s3c64xx.c                     | 530 ++++++++++--------
 include/asm-generic/io.h                      |  50 ++
 include/asm-generic/iomap.h                   |   2 +
 5 files changed, 345 insertions(+), 244 deletions(-)

-- 
2.43.0.429.g432eaa2c6b-goog


