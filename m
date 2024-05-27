Return-Path: <devicetree+bounces-69485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A68978CFF7A
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 14:00:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 672B21F23424
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 12:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 897D815DBB7;
	Mon, 27 May 2024 12:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j6FZI09O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1121134B6
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 12:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716811211; cv=none; b=UhdqEGiuDaV3cQpxZqPEpz6K1C1Q30JZrEk3D7LS7N5AEhUoVanS8TVL/+tSb4A0svC/Uw+eOAy9poz6YYTKpc3jY+aUl5zMNhsxRBNwk944S3ByqCZkvT1wtzwWVTttxxbNAiO0NSsKJnotnaT9JnHRvBvu8+Iu7Kh3LnZL3oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716811211; c=relaxed/simple;
	bh=2h8Rqwlkewq9HA034vFUvlZEf0kGCrJO98FkmLJmxA0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=nSYnhSFEBa8WqoJmmhywU7uUhgUPC1lzS5KL+QfvL6EJxcf8Eu8MbOdMHE3Q5clf731mzNuBclh4AaHfPpG2Q0vxh205MQeN5C3S+tugFHucyGIz51IEUXGIvsguiwBCGk9wICcjc5VBIQ4HmFIPM08xsMh7pIvfw1fjSv5jt6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j6FZI09O; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a6265d3ccf7so376734966b.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716811208; x=1717416008; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hhafMyYkrX6Ps79nQk/HQYlP4TSCjh5F53nTwJudH2M=;
        b=j6FZI09O4+WZrX0aZEBDLlpHs3Pox6g+5lBch8fgOZ1PrxXZjlIPwN8wzrvTZWVo3V
         S87i4affKwAlMpoDzXgDPTW9BwYR0YwR2eBWl2nFfe86u2tJgS6SU3d3bG0n2UQCIrPP
         5Hm2cw+5bJShgIA+ayfSZ3PwoSHuxXBNpiw6kVcKwX/grfEhtqiTINZbxnm2twpwuPF3
         GbpN1vl83Ar3VmRduc1W8V2IfGgedrbAgUglI8GLYuDp34KJM9qf4myDytAY2yE8WfHr
         zaAT+55yE1Y6aokKN1kyCjAkh5Z6U71+Ke8WN8F0C1ahYmzCJ6NPxsDIKaLE/vfneCPw
         Drng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716811208; x=1717416008;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hhafMyYkrX6Ps79nQk/HQYlP4TSCjh5F53nTwJudH2M=;
        b=b9CgL6KUx7SYG9mDgFAspuI+LH7PQGI1GPOJQmvGsVt7BCmwbSapK2SIKPw9u5+RA1
         HzLTuazhefkzikM9Kqoy8R6MslIO9oASrUWh6fNTkcE28My2/2u/tqCL+KWypn+ZmqB2
         LQ2OtzYqQS88aDiZ3uNs10KFhgUsNkA6ZQ4EYnzkDmOmeqKAz+NXWFGaglOo8WcxKcX4
         /rtgIOJPF34tiDxSeS6aPrcSE2z3Ljp3/iT1srSCqZNDO2HR13cWfE0I+TIAGz4Wwga9
         s+aAR9Xdh34fpY6lBYHGrGVXE/oUS6dyBN+BEOYrT8Bs/txCYgGLxpl+zcXGqboDlCy3
         ICDA==
X-Forwarded-Encrypted: i=1; AJvYcCVnnzTf/bFYut2SZ4aGtxDbHsUayZAGa1GtXwJrPyhri5TWjedjb+BecJQljZtH5mWn9TBLcrXo0vZMKAaYu309OHbC6uzw1oDckQ==
X-Gm-Message-State: AOJu0YyTsE8vWeTvprsIVQJAcXnkhaOh0NOdeGJ6W1yDTHXKIAVGTb8Z
	EzXZDphl9e8LYquopFlFZx/2DdXLNsqkFMrMJwdQ9sQ4CW1xJGjy
X-Google-Smtp-Source: AGHT+IHXyqU91SZsF/SS8uKpX0+zjL62tJ/iZ7IZum1uxfDLP4xHlxHwVSiQEbMzdxUF/vH/7q7RvA==
X-Received: by 2002:a17:907:512:b0:a59:29ea:ed1d with SMTP id a640c23a62f3a-a62641ce042mr508744466b.22.1716811208070;
        Mon, 27 May 2024 05:00:08 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc8da37sm484669766b.183.2024.05.27.05.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 05:00:07 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sre@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	openwrt-devel@lists.openwrt.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 0/3] Add initial DT for OpenWrt One
Date: Mon, 27 May 2024 13:59:30 +0200
Message-Id: <20240527115933.7396-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

OpenWrt project (https://openwrt.org/) celebrates its 20 years by
releasing an OpenWrt One product. Early units have been produced and
will be followed by DVT samples really soon. Then the mass production
is about to start.

This patchset includes very initial DT for this product but with the
pending work on MT7981 all gaps should be filled soon.

Announcement:
OpenWrt One - celebrating 20 years of OpenWrt
https://lists.openwrt.org/pipermail/openwrt-devel/2024-January/042018.html

Rafał Miłecki (3):
  dt-bindings: vendor-prefixes: add OpenWrt
  dt-bindings: arm64: dts: mediatek: Add OpenWrt One
  arm64: dts: mediatek: Add OpenWrt One

 .../devicetree/bindings/arm/mediatek.yaml         |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml      |  2 ++
 arch/arm64/boot/dts/mediatek/Makefile             |  1 +
 .../boot/dts/mediatek/mt7981b-openwrt-one.dts     | 15 +++++++++++++++
 4 files changed, 19 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts

-- 
2.35.3


