Return-Path: <devicetree+bounces-77813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 454AD9100BC
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:47:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7C6A28402A
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 09:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793FE1A3BC8;
	Thu, 20 Jun 2024 09:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="M37OBhf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D112594
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 09:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718876875; cv=none; b=BZ/QgbwS6g7PTceD1tntUK+HBPTb6iJc7XoWWpxVqLKl2lhcIYB66NuIUt626571fz5Jp4mrUOQwN1o2q2KnS2cq02jiQGZhjAytGkH13/pM5d77t42O2vqlTDE148FS1x9vl3b1j8gniB+4pIbdK25R80i5qWq2phVe0ch1zTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718876875; c=relaxed/simple;
	bh=j3C/MSc68szGmgajk/pVH5MuPLTbquJACCDFlK1wIts=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Fs5HlDAa2IKVCBwpXmTUIaKd8UE3Kmax8Rq+0SBKiXTAirawfI6gOXfnQoyZxc1Ii1V6aaoaPG030K1w3OrkaRxK4ajS0hn/y8ZFjBb6O/vJAal5puf9LoJpnyGW+DBf45+osA+dqc1srex6Jg4WsiXIg/BJGx6qPf1UIvlzjpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=M37OBhf5; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5c1a6685cd5so286673eaf.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 02:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718876873; x=1719481673; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JbS6t0OdeyDit4R19wkIMr1rdbV1YFpFh7032Z/OFdw=;
        b=M37OBhf5FhzzVItweTqh8Mp/sqTOQCwO0dgwQjZuPbaEj8ieemLaV5QZFaGt9u2VVj
         YAdvpjCY0Vch+HLuQzsu/o9aJpYWdJvIKmg791ZiTv2a/jlIrgo9SvxenyyIx46QGQQ/
         gq1hza2oCC4CYrBPJ735BPXMi9bNBbIF0Oyw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718876873; x=1719481673;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JbS6t0OdeyDit4R19wkIMr1rdbV1YFpFh7032Z/OFdw=;
        b=gmvlsZ/OiKfyw2SionulbuZx43bBsMDEZ9Rs7WR652AqGKG1fZI5oJilYrbZyVVYdq
         3R+dNHRY8pTjgpqjKREJK2JIfyibO9xScdJTbPxXqvsipe8+n6XrTYktkwfsLRKv7oyC
         Uv9EvAu0+qy0yDB/E86y6qvsRzAm3tY79B/CzmXqU6hwjg3SnREh+CEFMDRdOs1+Blgg
         vYXvCqIsQzug/a3GPQj+BQ1ONue0r0K1picAGAFDz0cJz6w+95sZhrDvcwvPK9BGjsaz
         OdeUCega62mgr7bE5CVATZroUgUn6ULcK+URZgO5dDROwGW6qoTnDK3XsNby2BDXOQ2m
         WyUA==
X-Forwarded-Encrypted: i=1; AJvYcCUB6a5fh6kFvU0FsLDuyQ1HWzPH5rifdkSslBe0Vt3gaNqgamfpPW4JsZWUXB7AD4YtSO2NuKmF2JXl0oUT1GpQbrlnNabxP4YMjw==
X-Gm-Message-State: AOJu0YxvXlfR5/MiFv2ftem12TRoGReF2A98nEeKDH+b+Ekebvz7ah1b
	NbU8dgQdhDKXv6ZVCg4uXTWcKc6LmFg6tLRxmMqlpy8QP8eENNxfN0yxJHuG4w==
X-Google-Smtp-Source: AGHT+IFjs9uCv20/yMoZbU/Ftof/qYHTbGsf6GsGiZo5ajKpwKplyAlUwHWHGLe5nJe1VzJUareDMQ==
X-Received: by 2002:a05:6358:6f12:b0:19f:6172:54ce with SMTP id e5c5f4694b2df-1a1fd45a713mr577519155d.17.1718876873177;
        Thu, 20 Jun 2024 02:47:53 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:c53a:5326:7f72:759f])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-70dbae52920sm4164469a12.42.2024.06.20.02.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 02:47:52 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: mediatek: Add MT8186 Voltorb Chromebooks
Date: Thu, 20 Jun 2024 17:47:35 +0800
Message-ID: <20240620094746.2404753-1-wenst@chromium.org>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi folks,

This series adds support for the MT8186 Voltorb Chromebooks. This is yet
another product based on the Corsola reference design. This particular
version features a higher end spec-ed SoC, necessitating a beefier
regulator for the big core cluster.

Patch 1 adds an entry for a new regulator IC. How this differs from
the previous iteration is not totally clear.

Patch 2 adds an entry for the Voltorb devices.

Patch 3 adds the device trees for the new devices.


Please have a look. I expect either all three patches to go through the
MediaTek tree; or the first can go through the regulator tree, and the
other two through the MediaTek tree.


Thanks
ChenYu


Chen-Yu Tsai (3):
  dt-bindings: regulator: mt6315: Document MT6319 PMIC
  dt-bindings: arm: mediatek: Add MT8186 Voltorb Chromebooks
  arm64: dts: mediatek: Add MT8186 Voltorb Chromebooks

 .../devicetree/bindings/arm/mediatek.yaml     |   7 ++
 .../bindings/regulator/mt6315-regulator.yaml  |   6 +-
 arch/arm64/boot/dts/mediatek/Makefile         |   2 +
 .../mt8186-corsola-voltorb-sku589824.dts      |  13 +++
 .../mt8186-corsola-voltorb-sku589825.dts      |  25 +++++
 .../dts/mediatek/mt8186-corsola-voltorb.dtsi  | 103 ++++++++++++++++++
 6 files changed, 155 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589824.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589825.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb.dtsi

-- 
2.45.2.741.gdbec12cfda-goog


