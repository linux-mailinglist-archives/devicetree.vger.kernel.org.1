Return-Path: <devicetree+bounces-90388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F4B9452DD
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 20:38:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BE141F2528F
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 18:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D672F1487F9;
	Thu,  1 Aug 2024 18:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="W+h0pwkt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4127027452
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 18:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722537502; cv=none; b=cibKtZNu69olgSYLlCCgftudAmrnZt5NynU5N/V6CtiT6HC2VpRmjQV1x0Rrh3Cq+fJCk/9HvAzwZqfLZpt/Yp76e05zinZA8Sh06VW/qpkbMb1fia60disrAX8PjR92XbHUB3+KHCKuvpv8Y08CZyAyEM6qxmsY0+ah/uIJQfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722537502; c=relaxed/simple;
	bh=fc0TjBqsBBzAbreLePWGgYrgMgY88HZhgtkzJ+8R3sU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lqAIs95X7T717GI9NKsLIxG09LeMgH2MjQ6ZlHqGPOmbk0n0smqjWc4vmy8D+Vk/i6aUCLfOnqxWJARg+Bvz0v7iElBhnHfozeIIQfb+Qje5ZpIRukQ9/i+a8ZumxPM9y6t1qNIJNeym9B6lHcG0W8OE2+OD1F7/sdEugcVJSPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=W+h0pwkt; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2cd5d6b2581so5047071a91.2
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 11:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1722537500; x=1723142300; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=odurubX05L/alYO7ZB7p+uzZRMihsa585lYB4q5XK2s=;
        b=W+h0pwktD2QrMmhIXg6uoFh8zLkJzC5A51vS80S+i8dfYkuLlvz5UaCzatmHEcvF5b
         4tMYf9Y6df8qFdNnMKNkzfNPAYvGJwCZJReOR3rB4Hb2W45Dj5/L62/Nj67sPoDPxtoz
         4OrQkJCujEgrs+3y+iEAQvCyEhxtLLvvir0PUAcYEHE2M9oclKKTXRypnUTETXFY2sfR
         RLdwqMQsuPpcbvd5u4+br0dhHA2H8+3cyRkGxg16KB0d1/SiWWL7YLpJ56hP6jwnFkhL
         E3esB1cjc5b/djEpCP/A19DNO7GLY1Yyna7l1ec2s/Nfr79lQuM5OY6jwXAw64ZGixQc
         1FkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722537500; x=1723142300;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=odurubX05L/alYO7ZB7p+uzZRMihsa585lYB4q5XK2s=;
        b=b7TBesfdHbwbrKDOcig27E+3dIpGvz3fOJTZ1/ZCrqJR/90fZlzRbx/5GLP98vzBQ8
         Sj8RyhsiYUGi1W8Vj6t7DdAbRYOt8RZLnMAfV1lsT7FSK+zHpU7qECv696gouCXl8Gu3
         gr5u16f683CwbncE0eLaHT6w6C9kDTP4jTfmFup/taQPLU4Wqoev5TH4h/efMvCl6KQl
         5Q7hG1YizPpXqbJpfs6cfO2Z526C3CYeD6M8x3qiXBcz68OR/uDHtuC+QcvZfVbpMJFB
         6/WDoGVXmzIA+uV+nMrl6x389GWrtMHC/zCxqMOpusencBI+FkrvCjbMnlze3kJp1TfQ
         4eWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGUhgZVAecv4EJw2IP2rZgdCcCNiMKt/MHYfH/robZDyCMANC4HWLE4dtWVpNC8nP6Gyv7CyWc7MBnpmfGjFcE7+im95JcUsFTKg==
X-Gm-Message-State: AOJu0YzWQKmxLQHoeZZE32cXLZNbn1S2tgjk0lkUNQ5/G0N5v5POAcK1
	rUOQjTxm+Pxi5Hg2isMRUfPDn9ImXYslIC6fiRKfEzoC1CoFuJW1tcP1RTfTaqQ=
X-Google-Smtp-Source: AGHT+IFyxM+4b6rxuziOtoQq+fzlqhfg2RrpGYQix6E4h5Nra628Qj6ThEm6sTZ/5/OUa1hkRYoZmQ==
X-Received: by 2002:a17:90a:3885:b0:2cb:511f:35f with SMTP id 98e67ed59e1d1-2cff9414351mr1286202a91.15.1722537500263;
        Thu, 01 Aug 2024 11:38:20 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:dfa1:41a7:9478:9d47])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cffaf69d54sm279728a91.12.2024.08.01.11.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 11:38:19 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
Subject: [PATCH 0/6] riscv: dts: thead: Enable TH1520 AP_SUBSYS clock
 controller
Date: Thu, 01 Aug 2024 11:38:04 -0700
Message-Id: <20240801-th1520-clk-dts-v1-0-71077a0614b8@pdp7.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAzWq2YC/yXMyw6DIBCF4Vcxsy4JMyBeXqVxATJW0qot0KaJ8
 d1L6vI/yfl2SBwDJ+irHSJ/QgrbWgIvFYyzXW8sgi8NJEnLRqHIM9Ykxfi4C5+TcKgn6TpreLJ
 QTs/IU/j+wetwduTXu7j5HMHZxGLcliXkvlKEhIx1q3VXHOONdcYRG+WIfOdbqRusjYLhOH7wD
 bT5rAAAAA==
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Kanak Shilledar <kanakshilledar@gmail.com>, 
 Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Drew Fustini <drew@pdp7.com>, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1943; i=drew@pdp7.com;
 h=from:subject:message-id; bh=fc0TjBqsBBzAbreLePWGgYrgMgY88HZhgtkzJ+8R3sU=;
 b=owGbwMvMwCF2+43O4ZsaG3kYT6slMaStvia5aV9uRVKRY8qdpJgFEkdLGLhvcdUc/hPEaS759
 9jfa6eXdpSyMIhxMMiKKbJs+pB3YYlX6NcF819sg5nDygQyhIGLUwAmkibI8D97tW/L6UkcS7Yq
 Bdxb2jHv/JTqo4KMhad+/Vxgnn/HtLKSkeGWQDNbBlvEXFZ+xzaV0K4Jy53uCnFH35281nXKioU
 Pb7ACAA==
X-Developer-Key: i=drew@pdp7.com; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

This series contains the dts patches to enable the TH1520 AP_SUBSYS
clock controller [1] and convert peripherals from fixed clocks to real
clocks. The dt-bindings and driver patches from a previous series [2]
have already been merged into v6.11-rc1:

 ae81b69fd2b1 ("clk: thead: Add support for T-Head TH1520 AP_SUBSYS clocks")
 1037885b309c ("dt-bindings: clock: Document T-Head TH1520 AP_SUBSYS controller")

Changes from that previous series [2]:
 - Move the clock-controller node in th1520.dtsi so that the nodes are
   still sorted by address
 - Add patch to convert SPI from fixed clock to real clock

This series is based on my clk-for-next tree [3] as of commit:

 32121e158449 ("riscv: dts: thead: add basic spi node")

Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf [1]
Link: https://lore.kernel.org/lkml/20240711-th1520-clk-v3-0-6ff17bb318fb@tenstorrent.com/ [2]
Link: https://github.com/pdp7/linux/tree/thead-dt-for-next [3]

Signed-off-by: Drew Fustini <drew@pdp7.com>
---
Drew Fustini (6):
      riscv: dts: thead: Add TH1520 AP_SUBSYS clock controller
      riscv: dts: thead: change TH1520 uart nodes to use clock controller
      riscv: dts: thead: change TH1520 mmc nodes to use clock controller
      riscv: dts: thead: update TH1520 dma and timer nodes to use clock controller
      riscv: dts: thead: add clock to TH1520 gpio nodes
      riscv: dts: thead: change TH1520 SPI node to use clock controller

 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 16 -----
 .../boot/dts/thead/th1520-lichee-module-4a.dtsi    | 16 -----
 arch/riscv/boot/dts/thead/th1520.dtsi              | 81 ++++++++++------------
 3 files changed, 37 insertions(+), 76 deletions(-)
---
base-commit: 32121e158449f0b6d6ab6b2e63b22d9d80471563
change-id: 20240731-th1520-clk-dts-b14f0b9a6efa

Best regards,
-- 
Drew Fustini <drew@pdp7.com>


