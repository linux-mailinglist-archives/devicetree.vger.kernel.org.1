Return-Path: <devicetree+bounces-34243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5628392CD
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:34:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 128291F216EB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D0165FF07;
	Tue, 23 Jan 2024 15:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aJbX/nGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA68C5FEE8
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024069; cv=none; b=OFqq0zk1HqTOYBdED/7VrzIMQjRt7lzCi1a6VOfQ1Dxrl0JU/oCnuwNEjLVmIlQIVL1QPMyXtEz/+5Hes3wdauqo1binuJeVGCa4ULROcHFX53YErr4yedOxAzHruVUXs7R1PVQpE0Wqn0+cySmOAvz0Bk6TgbmlHFCAEPXJl3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024069; c=relaxed/simple;
	bh=gNyD7i++uD2R8coWU2KAe3MRsCKjSQZq+dn+mnbIQ9k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AkrlygwYFaLAWjkPbRy+Z6EXULpYBATYPb8+X/jeURoKOswHhIWcnTCNfwU5Lko9q9ceTG9UK03zvJmImoqCgLVdfQw/dnbRfYP5MsksgIDhRVeAuGIz4i6f3M/qMFJ5QD/W3Tqrk7Wk//iirBaFiU/EHzJ7xhLRov7OCmeE0FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aJbX/nGZ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40eb99a72dcso8385265e9.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706024066; x=1706628866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ziVeE+WCI2TynApAMc3yW1L2n22pt52jWdrqUi+I10A=;
        b=aJbX/nGZDECc65oOFslfQ1KnfvXsS9zh0efYToJqx/PDuzx5jaPujA7Fr3ED7vZByW
         oIXpH/t+G4ZTwynRofC8fSMu4OIfof1eT88+31V2juY3eZ+sj5y5C8qBapFLjJL4m8A2
         4wZ/i06M004CCYNR453CMoRwbp0+dBzrfSaeuJ3ZELx5SsKJs6dAlR7zLpENm2SMgarX
         +H3gw4tKbYgKz+smjLOknaw4UTP88mZp3PizDL3tJ0qLzGI8UgI7Xa6jda6Sh+aIL2uf
         wNxfGe/89dpGHY8vmjurcUea7RD0CUC64UUFEvR2mES/MS8ESoJJsZo4bkvefz0261fe
         Vcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706024066; x=1706628866;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ziVeE+WCI2TynApAMc3yW1L2n22pt52jWdrqUi+I10A=;
        b=KfERXdfBlQq6INDwfmLe8T1sOwbLy3Vs/dHemGlhzyykkbbwAyXKZ2NwZkgR48uicr
         UDAFYTcthkeX92NC0FihMDg383Y6SDkNSr31JcaxGHE1i+hlu5CSMFGpBPh1hTkkCa88
         T7E5ht0TJXODwRnTqWEv1sF4XeYVtJkUC+xQkcujRC98X8Js/h9OTEPM4P3PBIxhRR+i
         U1Lio68UlJLef6QkdsaTBZ99sVe0wm24H9N4Jl01XefpL9JX03NaD+UtrKvp477jfbft
         a4WiRjE7GS0PcORXGmZXXcXGT8aOTl5gQl1H1W/9TpyrLLBvxeNl/wvgnJK+Gk/zKtXg
         CUew==
X-Gm-Message-State: AOJu0YyC982MQXwuUIp+haZFtHFr7citWTV0N37/raar/x6X0+LlxLmE
	fpgk5jZHVpcqgmWEk2wXQM3QjZfOzdFWq33Hs3vLj/+GHMSbZAJP00ICf48QDeU=
X-Google-Smtp-Source: AGHT+IFHJyFWUBBJs2U3QAmGmiqakyommRSeQB3esKGCGNr9xKSS2oKCzm2qjt7cgP0Zzl31M0Ydlw==
X-Received: by 2002:a05:600c:5706:b0:40d:60b9:700 with SMTP id jv6-20020a05600c570600b0040d60b90700mr252998wmb.126.1706024065863;
        Tue, 23 Jan 2024 07:34:25 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id p21-20020a05600c359500b0040e3488f16dsm42457536wmq.12.2024.01.23.07.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 07:34:25 -0800 (PST)
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
Subject: [PATCH 00/21] spi: s3c64xx: winter cleanup and gs101 support
Date: Tue, 23 Jan 2024 15:33:59 +0000
Message-ID: <20240123153421.715951-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

The patch set cleans a bit the driver and adds support for gs101 SPI.

Apart of the SPI patches, I added support for iowrite{8,16}_32 accessors
in asm-generic/io.h. This will allow devices that require 32 bits
register accesses to write data in chunks of 8 or 16 bits (a typical use
case is SPI, where clients can request transfers in words of 8 bits for
example). GS101 only allows 32bit register accesses otherwise it raisses
a Serror Interrupt and hangs the system, thus the accessors are needed
here. If the accessors are fine, I expect they'll be queued either to
the SPI tree or to the ASM header files tree, but by providing an
immutable tag, so that the other tree can merge them too.

The SPI patches were tested with the spi-loopback-test on the gs101
controller.

Thanks!
ta

Tudor Ambarus (21):
  spi: dt-bindings: samsung: add google,gs101-spi compatible
  spi: s3c64xx: sort headers alphabetically
  spi: s3c64xx: remove extra blank line
  spi: s3c64xx: remove unneeded (void *) casts in of_match_table
  spi: s3c64xx: explicitly include <linux/bits.h>
  spi: s3c64xx: remove else after return
  spi: s3c64xx: use bitfield access macros
  spi: s3c64xx: move error check up to avoid rechecking
  spi: s3c64xx: use full mask for {RX, TX}_FIFO_LVL
  spi: s3c64xx: move common code outside if else
  spi: s3c64xx: check return code of dmaengine_slave_config()
  spi: s3c64xx: propagate the dma_submit_error() error code
  spi: s3c64xx: rename prepare_dma() to s3c64xx_prepare_dma()
  spi: s3c64xx: return ETIMEDOUT for wait_for_completion_timeout()
  spi: s3c64xx: simplify s3c64xx_wait_for_pio()
  spi: s3c64xx: add missing blank line after declaration
  spi: s3c64xx: downgrade dev_warn to dev_dbg for optional dt props
  asm-generic/io.h: add iowrite{8,16}_32 accessors
  spi: s3c64xx: add support for google,gs101-spi
  spi: s3c64xx: make the SPI alias optional for newer SoCs
  MAINTAINERS: add Tudor Ambarus as R for the samsung SPI driver

 .../devicetree/bindings/spi/samsung,spi.yaml  |   1 +
 MAINTAINERS                                   |   1 +
 drivers/spi/spi-s3c64xx.c                     | 447 +++++++++---------
 include/asm-generic/io.h                      |  50 ++
 4 files changed, 276 insertions(+), 223 deletions(-)

-- 
2.43.0.429.g432eaa2c6b-goog


