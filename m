Return-Path: <devicetree+bounces-19003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F8B7F9670
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B850280D48
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FEB315EB2;
	Sun, 26 Nov 2023 23:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="nSJcalq4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71FD113
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:01 -0800 (PST)
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E8DF340C4F
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 23:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701041279;
	bh=g2nzefL9abJS3V7F5jIo1B7LNOEauW6WFlyZ4XwqLeg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=nSJcalq49+OANyoXnUQEc4riU+vnj9J5Pm3EHX51sb2lnOkXUL90U+UgUkWWmnDPT
	 tQcuZfJFvkv4SQNWjjh4QSLGKDTwz/UD1tI7Oao9NbdvJ9egrOeDPG3Ewzpmxz5NcP
	 zrfHqa8xoxwnrPrRdvMttNqlp2jfzmJrE6EawVv48/FPr7IJPnMu4GG0/h48+FwKo9
	 2BEU+xAGKCRZJ/fPrnS2Mq+dKmJ3L6y5E2+RWyZ0GVFXT3Gtm8x+ALp+/bCPNcRBA3
	 EwcS9ZOJRPSoEMf7tmDPn8YV616iwGfousmSoFQhNzqXWaTN/LusMGL1KtSFvqCUJo
	 xhfAs/kMe2VKA==
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-1cfc3a062e8so9014625ad.1
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:27:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041278; x=1701646078;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g2nzefL9abJS3V7F5jIo1B7LNOEauW6WFlyZ4XwqLeg=;
        b=vNZeW4S65w7SkZCZFePjhhqdLe73f9w30qWaX0oJZsTttnqZtbgV3qTSsLX2cCd2wr
         EX2oXnBUgRQlFcyeVu/8bEzRJOVTEiVFTdLLAF7iulinnJ5UCbmpU/dM+TROoAG9upCa
         nkE9OogTfNHerqmn3EtXe0CxZ+XJeY/fm058w5H+KKXwPPDKk3QJxkB6QlxqaLQsaqaZ
         nryA5Efwo02sWpfCFjY9a3jQqptzLJO6Mw/qxSDMLTvOlZBKy2YeXcn4E5nciC4zCfXx
         uKcSU3dPph6R0yWyTlY60XY3DFwa1dkUyhcgEN1TGTRyOcd7+yYX96M6bOIQkHlfVJ+6
         7aPA==
X-Gm-Message-State: AOJu0YxTf4ippbwCIy/XAZXvIc+t3woP8t3m0ML4oyADcApDEnFcPzrs
	qsmS3zl5khsER3NgahX5prE9ipzqoqGLz9u1t2CHz75uPiV2GGfl34EyMplU6ZMcWAtyZxZKc6w
	E8VxSpr4fI6RWRjNUSnW4rc7jZe1znnxw3b1hlw0=
X-Received: by 2002:a17:902:e843:b0:1cf:d24c:7b6c with SMTP id t3-20020a170902e84300b001cfd24c7b6cmr592913plg.59.1701041278371;
        Sun, 26 Nov 2023 15:27:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHH60lQE3aZPaurMVIV4axuHzu18clG+N8+FOTOm8l4AK/mfUHBLQos1lPIK8CEhfQ0hwX19w==
X-Received: by 2002:a17:902:e843:b0:1cf:d24c:7b6c with SMTP id t3-20020a170902e84300b001cfd24c7b6cmr592895plg.59.1701041278076;
        Sun, 26 Nov 2023 15:27:58 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y10-20020a170902b48a00b001cfb52ebffesm3123853plr.147.2023.11.26.15.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:27:57 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v1 0/8] Add JH7100 errata and update device tree
Date: Mon, 27 Nov 2023 00:27:38 +0100
Message-Id: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now that the driver for the SiFive cache controller supports manual
flushing as non-standard cache operations[1] we can add an errata option
for the StarFive JH7100 SoC and update the device tree with the cache
controller, dedicated DMA pool and add MMC nodes for the SD-card and
wifi.

This series needs the following commit in [1] to work properly:

0d5701dc9cd6 ("soc: sifive: ccache: Add StarFive JH7100 support")

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/log/?h=riscv-soc-for-next

Emil Renner Berthing (7):
  riscv: errata: Add StarFive JH7100 errata
  riscv: dts: starfive: Mark the JH7100 as having non-coherent DMAs
  riscv: dts: starfive: Add JH7100 cache controller
  riscv: dts: starfive: Add pool for coherent DMA memory on JH7100
    boards
  riscv: dts: starfive: Add JH7100 MMC nodes
  riscv: dts: starfive: Enable SD-card on JH7100 boards
  riscv: dts: starfive: Enable SDIO wifi on JH7100 boards

Geert Uytterhoeven (1):
  riscv: dts: starfive: Group tuples in interrupt properties

 arch/riscv/Kconfig.errata                     |  17 +++
 .../boot/dts/starfive/jh7100-common.dtsi      | 131 ++++++++++++++++++
 arch/riscv/boot/dts/starfive/jh7100.dtsi      |  48 ++++++-
 3 files changed, 192 insertions(+), 4 deletions(-)

-- 
2.40.1


