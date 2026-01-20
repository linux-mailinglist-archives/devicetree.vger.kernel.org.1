Return-Path: <devicetree+bounces-257125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 317C2D3BCFD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 02:37:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D56A6302532F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 01:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C96B2459E1;
	Tue, 20 Jan 2026 01:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aFeun80R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FF919CCF5
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768873038; cv=none; b=ljR1GSaHuF/6afHFI4iInZYvDCtUdD555ZWh/WBH0JuNtCsY8JWDkSGBi5pg0cWun/XHOJ4XA9KLTDeOYrW0BbHWSYbARZXreq0kiToTGZhvF1K3QgMJTfpSfvU4C0TjFxhArQL1Vr9fReQDfJgaArY47Gk4bGqOhGIRRfKpQnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768873038; c=relaxed/simple;
	bh=zUN0mZoREK/NAS65dk2j9AeP7QPIja1OctRxEL4Ohek=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NuWK43G2MrwpXURJ1RzgQ6LE1WSTt80zhAlgpjALosWH19971KTC4K0zhjkNfIJZrbX/u/kuU9eMWWHJ79+kAf1tSQ1cv0QgwgFt2Ti3lz0+NWgobvibD4rsWfB9RWQNig6wlxTQ3uUhSwtwRf3DHF1GTuEeWQiB+ljgDlmha20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aFeun80R; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b6fd5bec41so224731eec.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768873036; x=1769477836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OBib4TZsFS9AcrU1FokovNxktrga1IgUe5Nw342C6rE=;
        b=aFeun80RtuMDdxwmBcSNlYAwe0V3jxgj5wOYnTEg05LnexJjX+j2onQEMgwk6yS3Z9
         p5rpY7e+kOE9cqNdhM/SBQg/tLLGcD/gVbMtbImYRyS6gp8tbpluSpLSjDD705arByr7
         rlQ5qhbViAnHh0XNuXhffEq/pD4WYJUpyQWEzY9wBlS64kMJKH410OB6pROlC1qaRG5B
         yyeDQTnEVO0qyTqovi3IxVK8JzGtJKZPL5Gxi5ulvvrbCf1X8oC8r2khHcArqjTCyy/N
         z+O3XZkWwOWWzG50Vr833TG3EnCbodzoMaG5ACyYYzztGuOsKNanrJGHgrvYvxuMJ/uQ
         BOMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768873036; x=1769477836;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OBib4TZsFS9AcrU1FokovNxktrga1IgUe5Nw342C6rE=;
        b=er9ODpwwdi6EUcoxc2Uv6SP0TTGExtD1+sQrRc69p5nZTudmdKY4YJ+Y/Nb8gOHlbX
         kPTle+kqPiEUB12rgj/+MsF2X9Zj6kYWJi/pjga/T6AUjr3KCjJgeVJ0tmbr4Le6xNuS
         4kIRFfTIN87HndW79/KlJpoZ02deUMNt57+uzk675GEYH7X/yTerDVRoPmO067qL9jAq
         Jjrma4w3lB2gZUE8+KmuAkKzE65cx9IOE9/X4GeSq7yJfqg5zZ3ZTGyF5C9VinyGoS1x
         wJpyoZq6omC0cikqGA6BLvZCwFXdfWeJf23GUp86uuTdfC8e2RxUHC8TFZAG7axyoCRC
         iMlA==
X-Forwarded-Encrypted: i=1; AJvYcCWMmKsbjI+FsctO3x7j5yJODUop3RcTQcrpl+dGUkPYRMGPDk/TMo4tuFACQPs7DrAyRYCX5F/k2AFl@vger.kernel.org
X-Gm-Message-State: AOJu0YxCdAP3lFXQpWl6Nxx0QzsBLORtjVcZdCa1XHUpEFbJBCXgWB92
	VUui7hvG7c9x6ZoXU2wwEDbSRTGZDtlLBHz6kQMqphW11BauXkWXqEjG
X-Gm-Gg: AZuq6aIApJGbqnVgXTxvQfraj7Nna13iAQzUE17OeQMTrQGleZPbWid+htAslqCr+Vw
	A8wuWiBL6CSb9XXgSYL/sqghVuZBFU4sXYmQSKgdNLqhUeX0yfK40+qmz5hWaqJJdG2yWsh3lNE
	JDbROL30Fn+tJvnnighzd0d7Jz+hxgqgsjFketxE3z9b50iE2Ovi4fDp0J77biosRXzogFiKI4r
	h+7uMVVlP+QRf0CZAPxEVDlnrqlcRjZ34a4qlroSgjnckGXI4ObaRPQCi/i1YzDjm1ExOKgw9GW
	E81zOo4bwgu/HSTrbW7190yHcSQs9y5TnCX7vpoTthndyHFGELf2hpetcU60isxS89I1JC8sDFj
	dqiZGxIDl5IIiWxblBQuE9x7eOWfzKwqYcUztP6EbyxeIjmWE7ieAAqAl1rdDDrHTO23V7Eu69H
	61QgTPTSxpGg==
X-Received: by 2002:a05:7300:3b1a:b0:2ae:5ffa:8da4 with SMTP id 5a478bee46e88-2b6b3f1d5eamr8624180eec.1.1768873035879;
        Mon, 19 Jan 2026 17:37:15 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6bd8e7cd9sm14199031eec.16.2026.01.19.17.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 17:37:15 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Longbin Li <looong.bin@gmail.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>
Subject: [PATCH v3 0/3] riscv: sophgo: allow DMA multiplexer set channel number for DMA controller
Date: Tue, 20 Jan 2026 09:37:02 +0800
Message-ID: <20260120013706.436742-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As the DMA controller on Sophgo CV1800 series SoC only has 8 channels,
the SoC provides a dma multiplexer to reuse the DMA channel. However,
the dma multiplexer also controlls the DMA interrupt multiplexer, which
means that the dma multiplexer needs to know the channel number.

Change the DMA phandle args parsing logic so it can use handshake
number as channel number if necessary.

Change from v2:
- https://lore.kernel.org/all/20251214224601.598358-1-inochiama@gmail.com/
1. patch 2: rename "AXI_DMA_FLAG_HANDSHAKE_AS_CHAN" to "ARG0_AS_CHAN"

Change from v1:
- https://lore.kernel.org/all/20251212020504.915616-1-inochiama@gmail.com/
1. rebase to v6.19-rc1
2. patch 1: remove a comment placed in wrong place.
3. patch 2: fix typo in comments.
4. patch 2: initialize chan as NULL in dw_axi_dma_of_xlate.

Inochi Amaoto (3):
  dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B compatible
  dmaengine: dw-axi-dmac: Add support for CV1800B DMA
  riscv: dts: sophgo: cv180x: Allow the DMA multiplexer to set channel
    number for DMA controller

 .../bindings/dma/snps,dw-axi-dmac.yaml        |  1 +
 arch/riscv/boot/dts/sophgo/cv180x.dtsi        |  2 +-
 .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    | 25 ++++++++++++++++---
 drivers/dma/dw-axi-dmac/dw-axi-dmac.h         |  1 +
 4 files changed, 24 insertions(+), 5 deletions(-)

--
2.52.0


