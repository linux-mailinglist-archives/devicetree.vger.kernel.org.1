Return-Path: <devicetree+bounces-35363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8048083D4D4
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D22DAB24204
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 08:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0234E134D7;
	Fri, 26 Jan 2024 06:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bxpTrb+M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570A91D535
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 06:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706250907; cv=none; b=offGzZpFhjIEgurV8Pg7X3cfn2O6I1IYlnYPVM4yZhsBLNmRj47oPnN+wORgpTXdxghSzEU5xD2ByXRfQyC7OJjwBh+ZP7b00sQc2f/6ca30fCJXNcThcphu+hs1jeE26EBBHTgrSr4AV6vY1rtmYIE8UGTS9Lxx4RRK6G1hDeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706250907; c=relaxed/simple;
	bh=NH2euUCqwPzQ8EOeRcSGE0TtlrdDDvu0F19oCXj/2VM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JYB+/9W8fwgKrkd+8ek9+g5157RLr8Wm/iP9G/ndNlnpLx1qFiIvOgJHswxO6XWXDVJug3C4/a6dBRf+VGegNSgpWaF5GmPKipkpYdvHDTEWBDRNUv6hNotUnhi9/jiYOi20dWr5OKCECeGzEbzs/gTlEDcc0ifiunjZgzaXvGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bxpTrb+M; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-5c66b093b86so1035832a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 22:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706250905; x=1706855705; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ySgp2UiszzMfNCnD6O5mfCcxxHNvIaL6WmT8mRfAk0M=;
        b=bxpTrb+MRMOYJIzkdauCkxaRZKK01HcEuQMG3e070C9PhDFEutxkdCGlJK8NSYYFcc
         8vx0bH2a/ZrlIG/rdsbLbIwEhWHY9XZkwA5o9+LvuIc/H8rgRluf5iDRk6Dkovr7gnFH
         xWjfxdQiW1+Om+itQt9LKXpd6ld3gNTjBLfok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706250905; x=1706855705;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ySgp2UiszzMfNCnD6O5mfCcxxHNvIaL6WmT8mRfAk0M=;
        b=hyVPMZQhFe/bTJzAczWTjkiywjyBRGe3B0BdCjX43+mCTQpy7rRc/hZ6BdNGHg7/lS
         lud6nm9r6pmUX3PV5sOpUR87RuTEF1iPlT7DrVimgIBKkMQEVSRDEcxM0iCD2fHJ71D0
         pZpxAVsqsNXi8RlLndkmtRk8LliQOGW6ukabA39ymNIV1JtBqDEotv2Qa8mj1d27Gfq9
         3jD//I9bEecZMS2EV4YYpHIv7QwwhlrlSDtq682i7kKJ6lKObxfPhkrgWxRcgqYSxXbK
         xmBcMOZ/a4zmikOaZJoY6HDCId5a4m8b7EdIme7aTONggGIZOfpS8sW7osk9fhfiFKb2
         F7Wg==
X-Gm-Message-State: AOJu0YxHTpxnukUFdEJpjeMjlo1melwVaeVfv9CBfxPpp+rf1AK95hXG
	isDMPYTnkSuQc72LeUwMqT2IE3tCpJHTOMBCtoSfS7ZpXadxhreesTcnNUpA2Q==
X-Google-Smtp-Source: AGHT+IF1szoUbF1JDZy6toVdzGRAw8HhVOL8J8FWhgQ/IhKqWQPq084VnvUGMXytbOdxbOyYMcX4MA==
X-Received: by 2002:a05:6a21:3987:b0:19c:53ab:d7d0 with SMTP id ad7-20020a056a21398700b0019c53abd7d0mr684905pzc.50.1706250905647;
        Thu, 25 Jan 2024 22:35:05 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2614:bbbd:8db2:1f54])
        by smtp.gmail.com with ESMTPSA id ka3-20020a056a00938300b006db13a02921sm488735pfb.183.2024.01.25.22.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 22:35:05 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] bluetooth: mt7921s: Add binding and fixup existing dts
Date: Fri, 26 Jan 2024 14:34:56 +0800
Message-ID: <20240126063500.2684087-1-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v2 of my MT7921S Bluetooth binding series.

Changes since v1:
- Reworded descriptions in binding
- Moved binding maintainer section before binding description
- Added missing reference to bluetooth-controller.yaml
- Added missing GPIO header to example

This short series adds a binding document for the MT7921S SDIO Bluetooth
controller. The MT7921S is a SDIO-based WiFi/Bluetooth combo. WiFi and
Bluetooth are separate SDIO functions. The chip has extra per-subsystem
reset lines that can reset only WiFi or Bluetooth cores.

Patch 1 documents the SDIO function and the reset line, based on
existing device tree and driver usage. I listed Sean Wang, the original
driver author and maintainer, as the maintainer of the binding.

Patch 2 fixes up the sole existing usage of the compatible string by
making it a proper SDIO function node.

Please take a look. Not sure which tree patch 1 should be merged
through? I suppose with proper acks it could go through the soc/mediatek
tree together with patch 2.


Regards
ChenYu


Chen-Yu Tsai (2):
  dt-bindings: net: bluetooth: Add MediaTek MT7921S SDIO Bluetooth
  arm64: dts: mediatek: mt8183-pico6: Fix bluetooth node

 .../bluetooth/mediatek,mt7921s-bluetooth.yaml | 53 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 .../mediatek/mt8183-kukui-jacuzzi-pico6.dts   |  3 +-
 3 files changed, 56 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/net/bluetooth/mediatek,mt7921s-bluetooth.yaml

-- 
2.43.0.429.g432eaa2c6b-goog


