Return-Path: <devicetree+bounces-11170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9E67D49F3
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 689F9B20BAA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA441C696;
	Tue, 24 Oct 2023 08:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TfL8J5Ye"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1545D15AD9
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:26:12 +0000 (UTC)
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 369E912C;
	Tue, 24 Oct 2023 01:26:11 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1c9fa869a63so25463395ad.0;
        Tue, 24 Oct 2023 01:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698135970; x=1698740770; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ElAJ7T5lyM2rNfb9sdirLY+VRjlwidQbRBMl87dIYmA=;
        b=TfL8J5YevsSt2Tl53CQUZcOCAfD99JaejgqTJa1F3MXX229ryzXXcj1JLKlUmmM751
         75NX8Iw8YZcjbD88E3FiWfGW4fCG38FagVUlutT8F9EbltVZntkv3zeNv3x6CuAH/OQJ
         vLV5di2OiVEIzTqFMgp46XpLZ9Aa1FG3LBMhkMstQd1c2XzbJ+0OhLVQsdeO0J4XOLtE
         ULk6k+UDZy1yd8GKxByAdABSmZzYdRLzlT/Vo3xpQclaOqaCAEQtDO9vlXGehkvZVwKl
         a5wcIFqFmTiboqDwK/TxXq2oQUnLbllyUdcES2zVX061C1tOZzsc2zp5uHd8kC/7dWsw
         GrkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698135970; x=1698740770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ElAJ7T5lyM2rNfb9sdirLY+VRjlwidQbRBMl87dIYmA=;
        b=nNW/Tj4JPMLmz1JWkO2GSS/CtZRfd5Sdzo0O54JeTn1dHje2LkSy27rRPp18ZIhnSS
         rdw9VcBezla15+xjizp3Wd0eCLeoMW+t7OVbPyyqGY8DDx24Wq2ITWcJNNKQYTSBRerh
         XNXcZB+fJW2EE4zpymTfIGAiS6rNvO8y2LTc+pkS0+E/sDVOyVsxPZwPks+dB0X7THgM
         A4UGQefkbCPMqOfOeon/eQLyEnOOFEIaPcX9r6ZRR0evFNZyKjJ8OR3txgkklAV1HBxg
         Jh6TOwz6g0XBcDGZJdu3SHHVWT14EopfP3xGAuZ836sLKYlV11QEqP97cQ3RoG/WT1E+
         yJsQ==
X-Gm-Message-State: AOJu0Yz5Gb9DlLspqrG/Ncdf1Znfxx8r5OfPpdMBSLTHK7NABqOdCZbP
	/s6+Kmd6O5ivRXKrh18clJhsHL7gDSQ=
X-Google-Smtp-Source: AGHT+IE7Sdfd2gCzc6kKD7SwZlRXbF1gQ7AoSLA/Lok7KF+6ZMR9Nyn9J0rAXXPFWPaZ9osXwKzFyQ==
X-Received: by 2002:a17:903:3211:b0:1ca:4d35:b2f3 with SMTP id s17-20020a170903321100b001ca4d35b2f3mr7282603plh.67.1698135970656;
        Tue, 24 Oct 2023 01:26:10 -0700 (PDT)
Received: from peter-bmc.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id q9-20020a170902dac900b001b9c960ffeasm7010665plx.47.2023.10.24.01.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 01:26:09 -0700 (PDT)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: patrick@stwcx.xyz,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Peter Yin <peteryin.openbmc@gmail.com>
Subject: [PATCH v1 0/2] Add Facebook Minerva Harma (AST2600) BMC
Date: Tue, 24 Oct 2023 16:24:01 +0800
Message-Id: <20231024082404.735843-1-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Summary:
Add linux device tree entry related to Minerva Harma
specific devices connected to BMC SoC.

Change log

v1:
  - Create minerva harma dts file.

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
Peter Yin (2):
  dt-bindings: arm: aspeed: add Meta Minerva Harma board
  ARM: dts: aspeed: Minerva Harma: Add Facebook Minerva Harma (AST2600)
    BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../aspeed-bmc-facebook-minerva-harma.dts     | 484 ++++++++++++++++++
 3 files changed, 486 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva-harma.dts

-- 
2.25.1


