Return-Path: <devicetree+bounces-20412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 225C97FF35B
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:19:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 513CF1C20F22
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BDFC524A9;
	Thu, 30 Nov 2023 15:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="bsIZfcxu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F06A10EF
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:19:48 -0800 (PST)
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7B74D42234
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701357586;
	bh=umcOEKGECYpQBlUdbsEVmcT1M/LVbcCDI05+VTUKHOE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=bsIZfcxu6oOBMAxcaERG66KV7rpU3faN26czl6D3F3f7w/pLBBWnESFDUQDScqEaW
	 OEByqrIKGnx8WhTHswd909isoHLLPOj+kzLkYdJOFJ3j5k135K1/vm6T5BEvwpPd5b
	 tvWaB6dDsF4Md/vp71K8CZU8pyeTWT+efzB+66/FESBQ8mF7Ay/P/Xx3T8eoufbuc8
	 JnyK8aJZHbKvlbmAuIbOIvPsSyv2mwbyInfeCNXX9Qfi2YzKBxiQgitFhi7/bhu2+i
	 UIMVAcmkwqkpKQpJ6U1ZMhyUKXuGYWBQ4fGEz0LFGeYavIZNwXh5V9B2D+4jPDPfKp
	 dmw6K54h17C4g==
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-5b7f3f47547so919207a12.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:19:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701357585; x=1701962385;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=umcOEKGECYpQBlUdbsEVmcT1M/LVbcCDI05+VTUKHOE=;
        b=cDD/V2KEvzFb7vEV3LdnQjHc22nmiKfU2xNY+AscEUHaKdj4knPucv3Oq2SzrwhR6v
         gJ6kJipXf8DCge2nCsu/DdtjW5TQkkXhdb1iBkexsE0zQDH8G9oPPcfxSrhOf5XVtcEO
         IPBltYE6GdI5q3CPdhZBJUq7BwfVCU6f0g80kN21N5Lcv/Z4PwvDOFWPK5ZB/mAnjYZr
         GbdOtDnW/zahMr6hsPfTOqf4eRP3yLxLFAZ+4hyPF5dNZr5NYakCXm/S2pewFKqgCUKE
         ONpDZQLLWbH4F6XTYKw8j/14Pu9VFtuur75JN9weC6JUuVz+np40yNHY4NoV0gInlS/H
         mhkA==
X-Gm-Message-State: AOJu0Yy/LIqHIY8yHbKFV5KfmUM7WFQDaIOWMN6dVsOx88vp3W8kk4RZ
	z7fBVOWraASbMUH9ytS8enExeH/vxpZmXwF/MzJXk3uiY9NrTfAfI8oo1tFFNIX5ckbM0v9VDqx
	UJLf0lyFZytFu4dhCoq0rwHcQWmJBDuBFzINQXus=
X-Received: by 2002:a05:6a20:7f98:b0:188:290d:17dc with SMTP id d24-20020a056a207f9800b00188290d17dcmr23726548pzj.60.1701357585115;
        Thu, 30 Nov 2023 07:19:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEh65TpHQMiSKOAY4Ol//p0hGEk6OSzzktrSG601vYWHN3rGxFgZXjz0/38VtdY7gQaQkl+JA==
X-Received: by 2002:a05:6a20:7f98:b0:188:290d:17dc with SMTP id d24-20020a056a207f9800b00188290d17dcmr23726523pzj.60.1701357584835;
        Thu, 30 Nov 2023 07:19:44 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y125-20020a636483000000b005bd3d6e270dsm1356002pgb.68.2023.11.30.07.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:19:44 -0800 (PST)
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
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v2 0/8] Add JH7100 errata and update device tree
Date: Thu, 30 Nov 2023 16:19:24 +0100
Message-Id: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
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

..and its parent for dtb_checks to pass.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/log/?h=riscv-soc-for-next

Changes in v2:
- Add Conor's ack on patch 1/8
- Add my SoB on patch 2/8
- Update commit message on patch 4/8

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


