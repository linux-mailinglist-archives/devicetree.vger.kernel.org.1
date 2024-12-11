Return-Path: <devicetree+bounces-129588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5149EC432
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 503FE1889889
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 05:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE001C174A;
	Wed, 11 Dec 2024 05:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RC8+PZ2G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331431C07E2
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733894676; cv=none; b=rpb2Ge9DGjlHr4tGut93YJI8wGNg65YQsXOa13EgJXA9yh6sqredW0AZYHagHeMrXCkRWjE1HC97GBfY2QuIPxov1mekhNHdkcyacZCtkgXl+LcVnvz9inK1Hk11jNO7fLOBo88g9eZSw0hMxGwU7YObw3Bfc1ivd5VqrnkhiiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733894676; c=relaxed/simple;
	bh=otYeShkAnGaMRzpsS7tfYUNkIhd1EXYWi/E+Tcp+/7A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d3B321eU/miLNzQ/1tULx1V/YQOaFRC6dxi0jluYZN0XIcCq6Lm3OcLSOBKexO/A27nIYbkKf4dnEnXJrXNIE/Z+qHbPqTXUWpzj3OZ0v+2EA3a6jrkXsz5YsCbcw9Z82qfv8Lwpio8iY/v/9olFxNcymZDhuhfrAnZ7637EdVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RC8+PZ2G; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-725abf74334so5232291b3a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 21:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733894674; x=1734499474; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9rNAO84080ar9QYUBnFcj+nugyjxelBE79eeObQSfkg=;
        b=RC8+PZ2G5wzJnsG7YEbQp2+TmszGV3VEzRzqcy9/MSPdFOq8YjNYBKoRCGLG6fB7nT
         U2x53v9z1nTusdefaMbYFjmRNhw4VLfWC3ReuPcLoIcfrehrxWBvV9KTBAbBGNnxO2ao
         FxDC8Wg7y3rQH081XmEzaxTbWt4HQL6hxQs6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733894674; x=1734499474;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9rNAO84080ar9QYUBnFcj+nugyjxelBE79eeObQSfkg=;
        b=BTCQxuXT8OdRekJPgo9ye3sOo2YqgP62CPXUbo8qyGCDyJmEVKhvkzw5+Mz68s/GBB
         ICWkCHyNsdyYT0HZ0ay8yc0h2e7IMYM7/itnXWTV5BanKMHdT8HFvrGR81MItvsl+R+9
         CM/wqjf9gzShqC5gj4ywz/qXd0H4D80mdKxnD17Xl+K/I+o5SK+Rn+LTq/wWtQz8NbIg
         gG5S6c/kSc8+1FbNvNnybKzSjHe+MLmLKpWr1I81P+Im93Tq0hWUTAaetz6YTKLTLz1m
         c64TqnJ9FdGrCTrh9/RiMBJKJaKpNxBftowh5Y2Ez925KM7voppEui/i0itnvDWCRlEv
         0hOA==
X-Forwarded-Encrypted: i=1; AJvYcCXKmC6iqKYAPU9uokXPEd6Hh/300H3GTqnlzljKi6ajsaqutSoMiA4H0CKxDCnNRn8dtotKz0N3faQU@vger.kernel.org
X-Gm-Message-State: AOJu0YwJuymrC4J5xf0c8nsMEsFZz4cRF4p8VFs1wdBnlN6p8aA315oR
	NWO643vLCsEZhexARh4rr57SrqNEyhtpGNKUW98Inm9jESa60Jg2l8JjEpahmg==
X-Gm-Gg: ASbGncu4yob1Y4NOpKEAHkct6fFSqlVDMY7SwOO/LMkL0fi+0+2jjU/RNYpX+ermEvk
	VJ7ZTrLrnT4yfbXe3QeF1o07RswxVmrQnWcxdQ9EIlW/3o+FAcKJPQHmY15TdQgXm8RATn6kVq+
	qs2V3vR20FN70ciJgM56IMu4qcolIatEnCDGGB+VmaSB2UvSx/GiAPhIJkiwba4+Qb5LOcIB1UW
	Me7MOb2+jYmKWuWsDgbfEFlFU8typaxzAezZPH9EYFubv9CUOpmutVbJBUbFqHSsKVZ+6h7
X-Google-Smtp-Source: AGHT+IGRXZyCR9vBPnWrRkfxCl9FFb1KFJmcBVsUf9/kW06iS0cwlLUslN7QIGTATGDeY32DTij/Zg==
X-Received: by 2002:a05:6a00:1915:b0:728:e969:d4b7 with SMTP id d2e1a72fcca58-728ed3e8533mr2451508b3a.12.1733894674483;
        Tue, 10 Dec 2024 21:24:34 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4dfb:c0ae:6c93:d01e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e66801e2sm5397702b3a.160.2024.12.10.21.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 21:24:33 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] arm64: dts: mediatek: Drop regulator-compatible property
Date: Wed, 11 Dec 2024 13:24:18 +0800
Message-ID: <20241211052427.4178367-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi folks,

This series drops usage of the long deprecated "regulator-compatible"
property from MediaTek device tree files. The property was introduced
in 2012, and then subsequently deprecated after two months. It was
never carried over during the binding YAML conversion.

Drop the property from the MT6315 regulator binding, and all MediaTek
device tree files. IMO it should never have been used to begin with.
This also gets rid of any validation errors [1] related to them.

Please have a look.


Thanks
ChenYu

[1] https://lore.kernel.org/all/173386568696.497617.3727087837255802552.robh@kernel.org/

Chen-Yu Tsai (8):
  regulator: dt-bindings: mt6315: Drop regulator-compatible property
  arm64: dts: mediatek: mt8173-evb: Drop regulator-compatible property
  arm64: dts: mediatek: mt8173-elm: Drop regulator-compatible property
  arm64: dts: mediatek: mt8192-asurada: Drop regulator-compatible
    property
  arm64: dts: mediatek: mt8195-cherry: Drop regulator-compatible
    property
  arm64: dts: mediatek: mt8195-demo: Drop regulator-compatible property
  arm64: dts: medaitek: mt8395-nio-12l: Drop regulator-compatible
    property
  arm64: dts: mediatek: mt8395-genio-1200-evk: Drop regulator-compatible
    property

 .../bindings/regulator/mt6315-regulator.yaml  |  6 -----
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 23 -------------------
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts   | 23 -------------------
 .../boot/dts/mediatek/mt8192-asurada.dtsi     |  3 ---
 .../boot/dts/mediatek/mt8195-cherry.dtsi      |  2 --
 arch/arm64/boot/dts/mediatek/mt8195-demo.dts  |  9 --------
 .../dts/mediatek/mt8395-genio-1200-evk.dts    |  2 --
 .../dts/mediatek/mt8395-radxa-nio-12l.dts     |  2 --
 8 files changed, 70 deletions(-)

-- 
2.47.0.338.g60cca15819-goog


