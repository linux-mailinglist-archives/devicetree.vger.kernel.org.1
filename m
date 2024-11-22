Return-Path: <devicetree+bounces-123748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA149D5D7B
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:50:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B3F6B219BC
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 10:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E631DDC12;
	Fri, 22 Nov 2024 10:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZY7EgGCi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9321710A3E
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 10:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732272592; cv=none; b=ZXUH61BNtteXDmMGPf6KdTbNc46rc7GqrwnDZ+xhz06GC/Art2nliSDwlm4U2/ZdOaEJ74G09eKR5xcMHJbFZsRxb5ad7kX6Qi4K4aWP7QFT5IJz/hEi3SrGHBFZFFKFt8q1/E/1UIGob/2tESTj0hCJuPcI3sQhxsjo8Mi69vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732272592; c=relaxed/simple;
	bh=qjWqLrCVJW7yLRP9TOihAqD5vjNVfL16o5s5MqU/e0U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RYZGOivwWQrlyavbX9IuZcIchOjhMTKSr8tUKv4BHaJtiODHWiAHvN3V0+nBrg1a2Uz915S9IcO10+9QOXhHDNYXtyDxjG2o1IzEjIk8iQwMGcAbzgxDfTb+Nx+e6kf5mjGEOOoAwsx6lOHhA08lzdkFowvsWcQZFVfjH91je/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZY7EgGCi; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9e8522c10bso319876966b.1
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 02:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732272588; x=1732877388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4VCCZYEFyPvvi9pJLrfTrBaqaVLRyI5f0XR9dqSok6s=;
        b=ZY7EgGCisu5F6hOLhr1MH7dP/z0Sqbd9LC0aMBGGvmMPfZ4GFHy1E2z22iXsxFBhDX
         fxhgZfjsViJWnGBHUzPc1QG+QFNwYvP/7QqhjIcmgWQoJuO+RqAVNUh3wqmEtyjNpgSt
         5zRfLQk3YooDj9/tI/szbvcUIDBoMBw9X9gnE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732272588; x=1732877388;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4VCCZYEFyPvvi9pJLrfTrBaqaVLRyI5f0XR9dqSok6s=;
        b=GHkybWu2X07UzUycEN+BGyMxHB2LQ/827DI3S8zhQIank2wN3wxJ8hQuV2jEKNwJOE
         knmiUysfHAzfrIkPEiGjbkUf8ldRqWV9D1WrrkQkTAKN3OeMYLE0WsCyUVMg1PeqAIIk
         8MatVdXf4Zp4GmfaXn71nwVwqq+x6Pvrtusdo0opmuJs2ECwg+F8okHVHQhWNAP6lrR7
         /Kqz4o+fVWWXkJpTWxd8hXoZiC0R7e9J9Cg6MwVb3BWD5IJF2cfTSYf6GqHjNBGo0N77
         O2WBVyNF7TZ7SfF8C3fygmaKApT83xhETwxwtW5tvxRZbp03dcbXN/6uNBFL9s8dHTM+
         5xwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVImpvOJR45BklioMCYCyyiXKcH8FY/twEeqlieYGLKbOCb0+GpR1dV1Ns3+yLfZrWZ45Fmfp18bOnT@vger.kernel.org
X-Gm-Message-State: AOJu0YzAF3+s1sHH3Lw+bewD8g9ZjzjApmbf/kn8jId4dofR39LwR9XW
	AihRxV/5JaEMfLs62mf9axel7ayItRuqn37ng4ntvSHdf7gLLTqdc7IlgJnnGA==
X-Gm-Gg: ASbGncsnwzLHyhcVzHBLpk2yJw5NiHFFnEvHpuuTpmMpJ9QVC+Je9+BcqkIODqDbdWe
	y3vT4tmf6hjUfxInF2E+P0U5aQnzg8+/0VHftTVvx7EGFOxnxDHnDR+LjaEbDHj6uq+bZg5LYov
	1b5OfbFNdJjHqbEOtx6LxF1FAH5dxRxSKwepG38PI3CeFvYj8TyFvetJjEoIvJZKJh28NvffEA5
	cPw+71pUVZWTu8MH8wrU98r/MQGml60fr21Y/XaO02fniRi63xt6Q7Isf74wnuEISK3xFcuosG4
	VL8G/TeM
X-Google-Smtp-Source: AGHT+IEtqFLgN4QldlEpfUVybXqSI/MRA5+30+n/3WXfgfU0sDT9bCvRjWg4moxr2vE/+F91ZGikZQ==
X-Received: by 2002:a17:907:762f:b0:aa4:de84:3a23 with SMTP id a640c23a62f3a-aa509d09bb8mr253938966b.26.1732272587279;
        Fri, 22 Nov 2024 02:49:47 -0800 (PST)
Received: from localhost (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-aa5175972f5sm55606966b.63.2024.11.22.02.49.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 02:49:46 -0800 (PST)
From: Wojciech Macek <wmacek@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Rafal Milecki <rafal@milecki.pl>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Sean Wang <sean.wang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Wojciech Macek <wmacek@chromium.org>
Subject: [PATCH v1 0/2] Add Starmie Chromebooks 
Date: Fri, 22 Nov 2024 10:49:36 +0000
Message-ID: <20241122104938.1437925-1-wmacek@chromium.org>
X-Mailer: git-send-email 2.47.0.371.ga323438b13-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Starmie Chromebooks, also
known as the ASUS Chromebook Enterprise CM30 Detachable (CM3001).
The device is a tablet style chromebook.

Wojciech Macek (2):
  dt-bindings: arm: mediatek: Add MT8186 Starmie Chromebooks
  arm64: dts: mediatek: mt8186: Add Starmie device

 .../devicetree/bindings/arm/mediatek.yaml     |   8 +
 arch/arm64/boot/dts/mediatek/Makefile         |   2 +
 .../mediatek/mt8186-corsola-starmie-sku0.dts  |  29 ++
 .../mediatek/mt8186-corsola-starmie-sku1.dts  |  46 ++
 .../dts/mediatek/mt8186-corsola-starmie.dtsi  | 480 ++++++++++++++++++
 5 files changed, 565 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/
     mt8186-corsola-starmie-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/
     mt8186-corsola-starmie-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/
     mt8186-corsola-starmie.dtsi

-- 
2.47.0.371.ga323438b13-goog


