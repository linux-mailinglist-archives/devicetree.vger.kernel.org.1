Return-Path: <devicetree+bounces-10581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 850DB7D20CE
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 05:12:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC0561C2092F
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 03:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3F27A2C;
	Sun, 22 Oct 2023 03:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE9C37A
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 03:12:12 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E911E8;
	Sat, 21 Oct 2023 20:12:10 -0700 (PDT)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1c8a1541232so18143495ad.0;
        Sat, 21 Oct 2023 20:12:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697944330; x=1698549130;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kTE3l55gNJfTgpToBiEzGfghsQJLPENxo1XqtPQrIRQ=;
        b=gomYCh80OINtvBX14HrVQn6ewG7HIbUVqLGmGl0VLCRwcjK2B4eNHJSJUSN0cdrr4k
         D8bRG0ZcJq63isDyEIoPbv+HGUN6CpYhwaNuti9GK568lbyy4DE88jQILWsOhvknVzrp
         0RQoKVQ+BaEI34iE/8CwN8v+3RsnLB2X2R7IifLpqePwhAtB1aGttLqLLIlxSayxQkgI
         7CGYAtDahe7QFoeeS0RL09j0sxIh83WFp+jYo50a5EL5c2mL+E6ynCXQWxR0a6RzGAL8
         NDK9dPcttH3iH++dakocBfvCHYKh6JMP5nE8HazzV1LceCME1GlqqJA4DRlo7gt9Xm1l
         HPpw==
X-Gm-Message-State: AOJu0YyLCCweiV+CY/4Z2K8Q3W5oeXuUiN1eLtvTk2GusPosPL49D2hh
	Nb1p4h0SpL8HkMmmoodKGUmlDqWDtGkZiKte
X-Google-Smtp-Source: AGHT+IFMW9sJSYehBy4iZOCumx39lSqsDxkoap9ve7q9h8PmEc8jebQhje4BaU4Vv/7rjbeE1dVMFw==
X-Received: by 2002:a17:903:1cf:b0:1b9:e241:ad26 with SMTP id e15-20020a17090301cf00b001b9e241ad26mr7114046plh.9.1697944329675;
        Sat, 21 Oct 2023 20:12:09 -0700 (PDT)
Received: from dev-linux.lan (cpe-70-95-21-110.san.res.rr.com. [70.95.21.110])
        by smtp.gmail.com with ESMTPSA id n8-20020a170902e54800b001c9c879ee4asm3789589plf.17.2023.10.21.20.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 20:12:09 -0700 (PDT)
From: Sukrut Bellary <sukrut.bellary@linux.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>,
	Nishanth Menon <nm@ti.com>
Cc: Sukrut Bellary <sukrut.bellary@linux.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] iio: adc: ti-adc128s052: Add support for adc102s021 and family
Date: Sat, 21 Oct 2023 20:12:01 -0700
Message-Id: <20231022031203.632153-1-sukrut.bellary@linux.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch series adds the support for adc102s021 and family.

The family of devices are easier to
support since they all (no matter the resolution) seem to respond in
12-bits with the LSBs set to 0 for the reduced resolution devices.

Series is based on next-20231020

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

- Link to v1: https://lore.kernel.org/all/20220701042919.18180-1-nm@ti.com/

Sukrut Bellary (2):
  dt-bindings: iio: adc: ti,adc128s052: Add adc08c and adc10c family
  iio: adc: ti-adc128s052: Add lower resolution devices support

 .../bindings/iio/adc/ti,adc128s052.yaml       |   6 +
 drivers/iio/adc/ti-adc128s052.c               | 131 +++++++++++++-----
 2 files changed, 102 insertions(+), 35 deletions(-)

-- 
2.34.1


