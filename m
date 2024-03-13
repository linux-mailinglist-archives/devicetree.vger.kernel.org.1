Return-Path: <devicetree+bounces-50269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CFC87A90C
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 15:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56E181C22828
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 14:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF19C45C16;
	Wed, 13 Mar 2024 14:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ASOgumZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AAD04437D
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 14:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710338931; cv=none; b=FrL39Gtl9+7fZVDfEvD+y41kbAuLog/0dGjjMRp8YZF1yInZIuTAu01kD3uQ/Gu42gCDdgboeAvzc3v+njz/5U0dGzkkhO5d+MoYLkOD664m6vbzTydkosq447CYM0numFMCEv8+FGYkfOpr2f8SzGaB/HSp5PTqTUpqgJM5Wr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710338931; c=relaxed/simple;
	bh=MHQ5MsizRo2+P4Qktsrzy/cEr2Tvjv/30W5YJIhvXEA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tOXEvVctN+B30lJ6GYn6UsMaljWjag2PAKoyweRFRGXwTXuV7RvtS4K7Tub1zUnl9BAVdDFjm5SyqNsP1gh8JyXMXAlbm2gceQViE/upR5bzqw/TX4i+7j8RfMZ7uSsS3y6RoZo0av1G868tbRbfY2h+zSVmIo2y0T/DtQkkHU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ASOgumZS; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5688eaf1165so308577a12.1
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 07:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1710338927; x=1710943727; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nFaFWSbAggIWNNRtL6qVwdZXd8rjrLSqMYNza7qT6dQ=;
        b=ASOgumZSHAKW3U1vuYD9yrfNQ/bb/+BsCNuxJ+2lR2WDdQG8v6j47NzWrQ8xojFoP8
         SF38Vv/GQZHKd64KarA1rNPeyyc+w0LChQt+BBm/S7wW2avIlP77M9K+l84yPLAmesgO
         9DLF7dboH8bCdK19RvUCBBwTXpH24lhSq3UKg9qsgWUGWdzHeo6IaWp1dQbsY3dSf8NZ
         WwIpUCDRVCrkC4+rIKUsGTw06KE2x4cTGM74EHxQOA+wIs2EAZHKDNQ7o5a7Lh/nl86J
         8OlCKn6oEV5wsTDXUKK0fpNT+Dic4400QS1fqFXI+Zt7uZxozuGtVN0AgRBXB6wKKBv/
         b/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710338927; x=1710943727;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nFaFWSbAggIWNNRtL6qVwdZXd8rjrLSqMYNza7qT6dQ=;
        b=LOLTkgvMOrqNqNt56aW/GCvhGLnMU+ZaeOTNWe1ewRH9LAS7RQHACuCtJYZAxMAqeh
         FOnjXzK+eTP+kvogHiGNgpC1BP60MxlNnTdrIJD0m2Xs6uRRlQxv0D+NY8gWkW3bZfs3
         H7KPePD6NGGanBrWlnWo5HgL8AKxoWGVw40PHzjq/t9wdfhoQfgAnmmHLgD7hgFgw5jt
         XcAgI9cuIKGzlMaGJ8ggMurjvUm2L6qoAE/oVeCm9p0Q6Knm+n0EoBgIkHcedc5zLi+I
         q0ID4HDpw14pbCYjNJ1oWY0U7y61IWrRqXBCNXIY13eY4QNoPVxXPXApH2R0AtpvuQdS
         9YWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWBmwgzHR3gaX0A7DTnYYtbCU77UkmUcJnQWXx40gZf62UZGUjg3OzsCiUxUsaDYB3MjiviQKItZeLJnRRuadpuwZ9SPEkki04PQ==
X-Gm-Message-State: AOJu0YwltoG/LCYS8LJ9nmnzehfUB+fhyD5MN478psbkaQNXQayTajiy
	ah3/oqQML4oH+k4g2hTzr1LfJ35nJVLh0sx/6AQokPXTdVS5lpf8rOvbO2dvlFc=
X-Google-Smtp-Source: AGHT+IFGEupu0zEFftAf3tP8pRRB7sRV7oLyxGKsi3LTI6oxXj6mdWTOqk8zm4iCBRtSwIBCI2TX6w==
X-Received: by 2002:a17:907:a801:b0:a45:94bf:18e6 with SMTP id vo1-20020a170907a80100b00a4594bf18e6mr10631233ejc.73.1710338926973;
        Wed, 13 Mar 2024 07:08:46 -0700 (PDT)
Received: from localhost (host-82-56-173-172.retail.telecomitalia.it. [82.56.173.172])
        by smtp.gmail.com with ESMTPSA id xe2-20020a170907318200b00a4666bfa979sm102216ejb.118.2024.03.13.07.08.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 07:08:46 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dave.stevenson@raspberrypi.com
Cc: Phil Elwell <phil@raspberrypi.org>,
	Maxime Ripard <maxime@cerno.tech>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Dom Cobley <popcornmix@gmail.com>,
	Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 00/15] dmaengine: bcm2835: add BCM2711 40-bit DMA support
Date: Wed, 13 Mar 2024 15:08:25 +0100
Message-ID: <cover.1710226514.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BCM2711 has 4 DMA channels with a 40-bit address range, allowing them
to access the full 4GB of memory on a Pi 4.
This patchset aims to update the dma engine for BCM* chipset with respect
to current advancements in downstream vendor tree. In particular, it
supports the BCM2711 DMA engine in terms of extended DMA addressing to 40 bit.

Changes with respect to the first version (see [1]) of this patchset:

* dropped support of the new BCM2712. It will be the focus of a subsequent
  patch.

* merged patchset from Stefan Wahren [2] to support newer chipset with a
  platform agnostic design, while also retaining the new features added 
  from downstream [1], as follows:

  - patches from 1 to 5 are preparatory, adding some features and bugfix
    common to all chipsets.
  - patches from 6 to 12 add hw abstraction
  - patches 13 to 15 eventually add 40 bit and BCM2711 support

* fixed a couple of bugs from [2] relative to address shifting on 40 bit
  support specific code

* added the relevant entries in the dts and DT binding that was missing
  in the first patch

* used FIELD_PREP() wherever appropriate as advised in [3]

* of_match_node() has been replaced by the more generic device_get_match_data(),
  as per [4] 

* fixed several errors and warnings from checkpatch


Please note that there is still a pending discussion around here [5]:
this patch still use the current approach (used in both downstream
code and in Stefan's redesigned patchset) of getting the address as it is 
(dma_addr_t) and just add the relevant offset when needed (on 40 bit
channel, see .addr_offset in struct bcm2835_dma_cfg). This is not
optimal but still deemed as less hacky than using DMA internals (see
[6]). As soon as there will be guidelines for [5] or dma_map_resource()
will take care of dma_ranges, a subsequent patch will adjust accordingly.

Since there is an ongoing effort from Dave Stevenson to upstream a
patchset with similar goals, I'm adding him to the email loop in order 
seek for collaboration.

NOTE: I apologize to any of you that received an incomplete patchset: unfortunately
I had some issues with internal imap server that prevent correct mail delivery.
I'm resending the entire patchset again to be sure everyone is getting a copy.
Again, apologize for the inconvenince.

Many thanks,

Andrea

Links:
[1] https://lore.kernel.org/linux-arm-kernel/cover.1706948717.git.andrea.porta@suse.com/
[2] https://lore.kernel.org/linux-arm-kernel/13ec386b-2305-27da-9765-8fa3ad71146c@i2se.com/T/
[3] https://lore.kernel.org/linux-arm-kernel/YguMW8n1q0ZV5tKH@matsya/
[4] https://lore.kernel.org/linux-arm-kernel/1e71c153-e482-409c-b229-9b9c0662b67e@arm.com/
[5] https://lore.kernel.org/all/CAPY8ntByJYzSv0kTAc1kY0Dp=vwrzcA0oWiPpyg7x7_BQwGSnA@mail.gmail.com/
[6] https://lkml.org/lkml/2024/2/5/1161

Andrea della Porta (11):
  dmaengine: bcm2835: Fix several spellos
  dmaengine: bcm2835: Support common dma-channel-mask
  dmaengine: bcm2835: move CB info generation into separate function
  dmaengine: bcm2835: move CB final extra info generation into function
  dmaengine: bcm2835: make address increment platform independent
  dmaengine: bcm2385: drop info parameters
  dmaengine: bcm2835: pass dma_chan to generic functions
  dmaengine: bcm2835: introduce multi platform support
  dt-bindings: dma: Added bcm2711-dma
  dmaengine: bcm2835: Add BCM2711 40-bit DMA support
  ARM: dts: bcm2711: add bcm2711-dma node

Dom Cobley (2):
  dmaengine: bcm2835: Support dma flags for multi-beat burst
  dmaengine: bcm2835: Fixes for dma_abort

Phil Elwell (2):
  dmaengine: bcm2835: Add support for per-channel flags
  dmaengine: bcm2835: Add NO_WAIT_RESP, DMA_WIDE_SOURCE and
    DMA_WIDE_DEST flag

 .../bindings/dma/brcm,bcm2835-dma.yaml        |    4 +-
 arch/arm/boot/dts/broadcom/bcm2711.dtsi       |   16 +
 drivers/dma/bcm2835-dma.c                     | 1084 +++++++++++++----
 3 files changed, 892 insertions(+), 212 deletions(-)

-- 
2.35.3


