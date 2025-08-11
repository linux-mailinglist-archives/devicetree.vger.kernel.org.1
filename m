Return-Path: <devicetree+bounces-203463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F74DB2176E
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 23:31:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D44E33B113F
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 21:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63B642E3395;
	Mon, 11 Aug 2025 21:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="Ki2b8kgH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6982D63E5
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 21:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754947902; cv=none; b=J2D+jDGTdP2W6TWDAyl/9fEwVcSCHko9xu6zxzOWBXMVSBYls0/+1qr5pecDQw/V6qDDt6vqrhNJiLajsCgmJn67texDrAFCxzRWwAoiq2LSjcSPL1CzxfPaAicg3xLQROx7I3Oj9HXyCQnkXLmsNh9+/eZPDHrYQLenYlri+pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754947902; c=relaxed/simple;
	bh=A7sBPj0UtuSH9vGuJB9qRxAejgbw0PMmS5KnCE2Na3c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Y3sasNSMbPXOdNGzHHFuHsV4TgxgnPQ8wLiTH66Fy473xb+SF2WuOtpHpmC559wDdoPUXFx9TBJBnDXOaYyUAHqUFhm3MNueD5RjAC6wprJyzV3jmOlp1qx+hMx3TXcxRSRxRGaaC06nPKbF1wk5zn4zpBiW36uOelSIB9VFNjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=Ki2b8kgH; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3b78310b296so2618716f8f.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1754947899; x=1755552699; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DYzITiNffVuRdA1N1ljG/+eAuKtVyktyWrYwNqaZgpM=;
        b=Ki2b8kgHlRkL9NTL4lUhPAifvQ7VLQ+PcTJlqwGdsr9tw2UqZKyEG1relRdy2HkMUw
         dt3IX47BvVlSUgewlFlv2NesjMAlP3VqAacFV4wROCWZQ4AXccZFsO8zgMyvlxr1W9sS
         KVcEil56XRvj5/XpBjjlQxoDD6EMxc3LyIawxk5XH4hQ9pJGqXC0GH8T+i7oh9pZz7db
         fBh1tKrxSjhQDk5OlGw/noouiMmm6k7i8tTU+FrDIqRXWbt5dMWo23OrGZWScqvp9e2c
         j8nrpRuu0JwZ+UL/0x6W3jbSqZgvqs8SdxSmYLCZiwSn7t1UHifqrNMHhWw39qzRTU3w
         U1aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754947899; x=1755552699;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DYzITiNffVuRdA1N1ljG/+eAuKtVyktyWrYwNqaZgpM=;
        b=wvucQsBoE4UM7H90D2f5iPewPFQEieoEie9eyLonlrCg6Hdg0swqzXRrap1rHx6mXL
         R7DJ368/NBkizKP3bLLQ7rN8P5fozsc2qBo+MAIc0mvtSit75obIOKVDB0GJ/SqukkG7
         jFBj2b2mZW18nKxN2/nJygB3R34KvXV806QrvnZ36hnfUy4u1Yy8aldQHV34fjuTixpQ
         9EMS5BC9kJyIc0tVw0D7cPqe4Qgy8G5zQ5U2vlYukQdUHyigNdCR+r4PALehqlVYDWYQ
         4Dp6DrqYrVHIUnlIgJhPReaL88+8YWi+K6firseoq2z6iSd8sOmCayshGjMedhCbPV6a
         pv4Q==
X-Gm-Message-State: AOJu0YygtAgzY/4dkQ2uK1Xne+/bIHoLmBP3x3fQa0XDhiB8qRGekxYF
	hG1lZG4pQbnDqVhYl+J0YEc9DCxWw+ST64cmo6FHrk+YouDNyvMnKw516Baf9+ln1b0=
X-Gm-Gg: ASbGncsLw49qmRcgpSwQHpWGfLdG93Yu6vpJmakjRLIzQQIdd2fst+6L8ZIEo1emQQc
	/qulxRMFL+bk3IlvRKUwNfBaeFsNeoTSjLVjM/7p4Sy1ktcpfAqAiQjX7glHFgDGpLVyMbrBvNW
	w3/nPjyca404ofRw2x2cxWcIpUwBNl3k7zaTqBh4qGwAJVyF/HQni0S+jLEmmQ0q0Hge5DDfo8h
	j75jC5OaHgbzUMbEN2qhIPOd5LHcBS6uIBhXN6VkzpXCD18Ws8+C0ZKj/Z2e2eVqhHJPUVBdx9q
	Fr/3XNaVAbqmuiLhxgd4b9XpXZTNr1/OscVWkw31CUyWYr3mcU3Qr00umsNBkbwBw0P7+Hv44ep
	dB7Rw1oCNLCAZkU5x2x8gN159SurGfiXi0Y0KnNgRTTCY7ryp
X-Google-Smtp-Source: AGHT+IG6kJ5mVgtdOC96YHAJij3E32r9WMZPowvaweTxAYjG7iGvD+92On2w6MtfqnNA7HMakNZTVw==
X-Received: by 2002:a05:6000:24c5:b0:3b8:d7fe:314d with SMTP id ffacd0b85a97d-3b9110079e3mr944396f8f.36.1754947898457;
        Mon, 11 Aug 2025 14:31:38 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:f8cb:3493:2eed:8d11])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c485444sm42397387f8f.66.2025.08.11.14.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 14:31:38 -0700 (PDT)
From: Alexander Smirnov <asmirnou@pinefeat.co.uk>
X-Google-Original-From: Alexander Smirnov <aliaksandr.smirnou@gmail.com>
To: mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Aliaksandr Smirnou <support@pinefeat.co.uk>
Subject: [PATCH v2 0/2] Pinefeat cef168 lens control board driver
Date: Mon, 11 Aug 2025 22:31:00 +0100
Message-Id: <20250811213102.15703-1-aliaksandr.smirnou@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Aliaksandr Smirnou <support@pinefeat.co.uk>

This patch series adds support for the Pinefeat adapter, which interfaces
Canon EF and EF-S lenses to non-Canon camera bodies. The cef168 circuit
control board provides an I2C interface for electronic focus and aperture
control. The driver integrates with the V4L2 sub-device API.

For more information about the product, see:
https://github.com/pinefeat/cef168

There are no regulators on the board. The MCU is powered by 3.3V, which is
supplied either through the CSI connector or the serial connector directly
from the Raspberry Pi GPIO power pins. Hence, the driver lacks any regulator
handling. Please let me know if regulator support is still needed.

Changes in v2:
 in [PATCH 1/2] addressed review comments:
 - added optional vcc-supply property and example
 - made node name generic in the example
 - removed tree type and location from maintainers entry

 in [PATCH 2/2] addressed review comments:
 - wrapped devm_kzalloc line according to coding style
 - removed oddly formed i2c_device_id struct as not required
 - formatted of_device_id struct according to coding style

Link to v1: https://lore.kernel.org/all/20250810192609.11966-1-support@pinefeat.co.uk/

Patches:
  dt-bindings: Pinefeat cef168 lens control board
  media/i2c: Pinefeat cef168 lens control board driver

 .../bindings/media/i2c/pinefeat,cef168.yaml   |  52 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |   8 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/cef168.c                    | 337 ++++++++++++++++++
 drivers/media/i2c/cef168.h                    |  51 +++
 7 files changed, 459 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
 create mode 100644 drivers/media/i2c/cef168.c
 create mode 100644 drivers/media/i2c/cef168.h


base-commit: 2b38afce25c4e1b8f943ff4f0a2b51d6c40f2ed2
-- 
2.34.1


