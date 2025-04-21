Return-Path: <devicetree+bounces-168939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5072DA94F34
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 12:13:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11951188FA95
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 010C6A92E;
	Mon, 21 Apr 2025 10:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Wh2msPt7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65369213E71
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 10:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230387; cv=none; b=DOyC0tV3m4Y4CCfKridk28lPxRSBhz5XfyMTYc56Hl8Si3EDgmRsiVX2YbydoOiG2mRP5/TBkxxtg+DS50YuJr/V/XTCkRDF5hBea1EIKkxvHTmfLlh6ghFxkpQ4/m305ycM7rytMzTplyfgPq0MEZhy9bRHWd2bwkBU7/KJxr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230387; c=relaxed/simple;
	bh=ixRYONgnygzUENQX+ohridJXTFmoDUomB21ryQ2dw9c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sBoYQutsHnOgMHcb0EHtAtyZ93FbdFQx7h3uRtMcDBLflNFBs3S4CyIHcGz+zCBkefmYkJfvBs5uP+jgQ/iB8Ym+Lc331EkdGQRt3Qtl8KdECWpE8YS6cj/G1jjaqQB05NlSon37Yhxj6d2CJgog6neP4RJLtQSDrSV6Sv3ZkNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Wh2msPt7; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-224191d92e4so37706255ad.3
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 03:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745230385; x=1745835185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9AOgrKhqWzlPfaierQD2uw1OzuGW6898QT6wOBkGCJE=;
        b=Wh2msPt7jsueLcvAy5+60KWTolGX9G3PuktwgH0Gt2s0FUohgMLsjOozc45LSXogOW
         JRVGDUpgz0ynQupyUjie7Bkf5SWLxP8vlXYL//H1jViNAq5DreLSlSgkxAqbdc5AiWut
         MvW9fxk/b5J1Cfu/ghgeZLq3wJ0PxrXWh30nI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745230385; x=1745835185;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9AOgrKhqWzlPfaierQD2uw1OzuGW6898QT6wOBkGCJE=;
        b=ksNpxOiL1zitRb5XRWjiOZDMtBa1mVBsmV85HMPXx2TRn5j2PwJdvWIW5BpQsR37ow
         onNH20UDvCAEbdSDmkHQFmhKuGDbVBSxmNCWTOujlUYxtXSNH2otcF+72YyWFD3ECBz0
         jIKsu2f5sVIQs2KsT3BbR4WU7CRPBAmhWQnfBmeUoaAjzMwjj8ZcVCT24N2EdlHYuY8U
         gv3N7Xy+6Q9r374ZRtWFHuRj6gtgpPdBX8e/QGEeTWkzhgJ75ZOUbDvG3e+x0wrjSYdn
         dl0dQUevwG4/07W7B0/PjWvjvSXIyr8HFgSyBEm34O8XrSyWQjQq06K6idzETGIOmIsb
         /8eQ==
X-Forwarded-Encrypted: i=1; AJvYcCUC0FRMqFWGOc66dFLBQV7cgjM+eXxrx2SsUr/+aLb5q9gUab0GDPdql6UJNqlSmBjef4TnRe0R7hw5@vger.kernel.org
X-Gm-Message-State: AOJu0YyvsIcfN+PgM84DM39iGCzsM0ga5i0JqSMWTFfIf3brGv0yo98y
	pajfPfW1vCSygrgRP3LnaswakfnqZmBDm+tSMkbel3jny7ChK/1ijz8qmDEb/A==
X-Gm-Gg: ASbGncs5lEk/hP9VZGuzD0yT8y2VAv9YLVWEHOw0b7R2Ui3KqXL/DUnsL9Q016J5ByA
	0P7EzsKJjHuZ4zpJ4zK51Qkz/FjWr2wBdYHSR0sp/JPYciWZ2Hx2wUfTZrpiOPOR7bpC20LZpmL
	MPb3KKIhprD8j/4ZjS324AN83bwyBejBkdsB15qPhfrOyxqXf1MxBr5tmx0DqJfqbz1Mx4+mUxZ
	6+MCcmu+QkX9HWr7E9Ho/ENsglCun0CXxxJZjTzjhioKZT3YaUuuCbStiIzKDASoZ5qQtrEVyfZ
	jmFfHJm0ENm8o5uvY0l7wjGsgtNGv22TY93mqimoxNjsTGYjnPSyrepUM9c=
X-Google-Smtp-Source: AGHT+IGnpHCEjIJrIXmHvs6VqUJ4pvMmeTt+m8C/FSrMMx0dcqiEAz4cygU8b09pUtOZGuXYRXJLmQ==
X-Received: by 2002:a17:903:19ed:b0:224:1c95:451e with SMTP id d9443c01a7336-22c53607dffmr160232245ad.33.1745230385598;
        Mon, 21 Apr 2025 03:13:05 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7633:f42a:d31d:3f9c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22d78db8b04sm38985205ad.238.2025.04.21.03.13.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 03:13:05 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 0/8] arm64: mediatek: mt8186-corsola: Consolidate and add new devices
Date: Mon, 21 Apr 2025 18:12:38 +0800
Message-ID: <20250421101248.426929-1-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v2 of my "component probe for Corsola devices" series.

Changes since v1:
- Reworded commit message for Elan I2C-HID binding change
- Dropped I2C address constraint from Elan I2C-HID binding completely
- Dropped enum from new compatible string entry in Elan I2C-HID binding
- Picked up Rob's ack on two binding changes
- Rebased onto next-20250417, resolving conflicts with "spherion
  component prober" changes
- Link to v1:
  https://lore.kernel.org/all/20250312104344.3084425-1-wenst@chromium.org/

Here's a follow up series of the I2C component probers for Chromebooks.
This series enables the component prober for the Corsola series of
devices, combines the two existing Voltorb SKUs, and adds a new
device, codename Squirtle.

Patch 1 adds a new HID-over-I2C touchscreen from Elan.

Patch 2 merges the Voltorb entries in the device tree bindings into one.

Patch 3 adds a new entry for the Squirtle device to the bindings.

Patch 4 fixes up the existing device trees for the component prober to
be active.

Patch 5 merges the device trees for the Voltorb device.

Patch 6 adds a device tree file for the Squirtle device, with I2C
components ready to be probed by the prober.

Patch 7 enables the prober to probe trackpads on some devices in the
Corsola family.

Patch 8 enables the prober to probe touchscreens on Squirtle.

Please take a look.


Thanks
ChenYu


Chen-Yu Tsai (8):
  dt-bindings: HID: i2c-hid: elan: Introduce Elan eKTH8D18
  dt-bindings: arm: mediatek: Merge MT8186 Voltorb entries
  dt-bindings: arm: mediatek: Add MT8186 Squirtle Chromebooks
  arm64: dts: mediatek: mt8186-steelix: Mark second source components
    for probing
  arm64: dts: mediatek: mt8186: Merge Voltorb device trees
  arm64: dts: mediatek: mt8186: Add Squirtle Chromebooks
  platform/chrome: of_hw_prober: Support trackpad probing on Corsola
    family
  platform/chrome: of_hw_prober: Support touchscreen probing on Squirtle

 .../devicetree/bindings/arm/mediatek.yaml     |   7 +-
 .../bindings/input/elan,ekth6915.yaml         |  12 +-
 arch/arm64/boot/dts/mediatek/Makefile         |   4 +-
 .../dts/mediatek/mt8186-corsola-squirtle.dts  | 107 ++++++++++++++++++
 .../dts/mediatek/mt8186-corsola-steelix.dtsi  |   9 +-
 .../mt8186-corsola-tentacool-sku327683.dts    |   2 +
 .../mt8186-corsola-tentacruel-sku262148.dts   |   2 +
 .../mt8186-corsola-voltorb-sku589824.dts      |  13 ---
 ...u589825.dts => mt8186-corsola-voltorb.dts} |   5 +-
 .../boot/dts/mediatek/mt8186-corsola.dtsi     |  10 +-
 .../platform/chrome/chromeos_of_hw_prober.c   |  29 +++++
 11 files changed, 167 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-squirtle.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589824.dts
 rename arch/arm64/boot/dts/mediatek/{mt8186-corsola-voltorb-sku589825.dts => mt8186-corsola-voltorb.dts} (76%)

-- 
2.49.0.805.g082f7c87e0-goog


