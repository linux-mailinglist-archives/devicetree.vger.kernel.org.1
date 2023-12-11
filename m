Return-Path: <devicetree+bounces-23979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D7180D1AF
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23DE3B20DBC
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 16:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25A9D4CB42;
	Mon, 11 Dec 2023 16:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZDlnNNvV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73EE1EB;
	Mon, 11 Dec 2023 08:29:00 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1d32c599e83so4486505ad.0;
        Mon, 11 Dec 2023 08:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702312140; x=1702916940; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=P3ff7o7n+FjuYNe8xqkpUwOybfn2phT/0e/964mkD/M=;
        b=ZDlnNNvV3T+HPO/VaxAemNq/k3hfbxiGImDZ4KiLA1C2xZCBBgfuJdrucg/ocs1Bjb
         GJ+4w+1XhmXV6F6ny2ww+oDBWWMymlO7hIe2Xgn6qo1cL5GmyZC6pCi5EN/2BoyBUb+d
         iHIqEwHDiQlrnBR7vE6QnLTFFSCx8p6nC9lVGavIWW7pT5Gpp6f8f73YwLxQWUxffsKh
         C0lYx1vQ4D5Nrh84c8TPmmZojXT/fhd0HT5/eZJDXGmZAIDt/6N3vj0YU85l0lMyBFeh
         4Jvn+eCLEqU7lk6yYK503BByzPPFqA0p7JvrEyTC8irxS8kIDL5oiQOJD+4fLBF0Jpg0
         xsNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702312140; x=1702916940;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P3ff7o7n+FjuYNe8xqkpUwOybfn2phT/0e/964mkD/M=;
        b=j7+RFYchF4vmn/nJAw6JrUOd1KOjX4dw1kI05BY3zDVqpGgr+BjLpJVDjDF/eoybBH
         gwoE9EP5Ln4tzZG0q7/e1gLhiB0cvO4g4qIxKw1tovE8jhBrJG/BEG0HxcjZdhRt7crk
         kXI5zD7pikZpSy0EGnT2W/XVMY26K5PXbM77UP8l687THZcUfoywr/iSW4NZ0+P7G0nX
         BDBQzzAibhNxBMh8cJ1oOfw4DcVkJHvPp7ZL1OCGnuhi6GcEdm1voDWNvLvt21kD7hH1
         f+sRfBIVTEbGnY/K/Di0x735lHXcE3hfwy+ePazcUIaxtfJRZ5uGZVjp5mnLNBXjcdsF
         0MPA==
X-Gm-Message-State: AOJu0YwR9Drh7T6bHPComrUEvL4oVTVcxPHXDTlr9qa1s6WoNP92GX/i
	fxYi1xB7FqxHmi6SxW9qmiNpMzQnh2w=
X-Google-Smtp-Source: AGHT+IEAtUxVc1PSHY7J/29fTiTIIP0Fk+vZwO2uR/EFTtpt/Iwktg1HRVKUdvidyUdDnvYocaOpnw==
X-Received: by 2002:a17:902:c782:b0:1d0:c888:d128 with SMTP id w2-20020a170902c78200b001d0c888d128mr3774697pla.92.1702312139775;
        Mon, 11 Dec 2023 08:28:59 -0800 (PST)
Received: from peter-bmc.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id ja1-20020a170902efc100b001d04c097d1esm6867888plb.271.2023.12.11.08.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 08:28:59 -0800 (PST)
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
Subject: [PATCH v7 0/2] Add Meta(Facebook) Harma BMC(AST2600)
Date: Tue, 12 Dec 2023 00:26:53 +0800
Message-Id: <20231211162656.2564267-1-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Summary:
Add linux device tree entry related to Meta(Facebook) Harma
specific devices connected to BMC(AST2600) SoC.

v6:https://lore.kernel.org/all/20231206155316.4181813-3-peteryin.openbmc@gmail.com/
v5:https://lore.kernel.org/all/20231204081029.2272626-3-peteryin.openbmc@gmail.com/
v4:https://lore.kernel.org/all/20231204054131.1845775-3-peter.yin@quantatw.com/
v3:https://lore.kernel.org/all/20231123050415.3441429-3-peteryin.openbmc@gmail.com/
v2:https://lore.kernel.org/all/cdbc75b9-3be1-4017-9bee-c8f161b6843c@linaro.org/
v1:https://lore.kernel.org/all/20231024082404.735843-3-peteryin.openbmc@gmail.com/

Change log

v6 -> v7
  - Remove mac3 and vuart unsue property.
  - Rename the GPIO line name to match OpenBMC naming style.

v5 -> v6
  - Add Retimer eeprom
  - Add Power Led
  - Add GPIO/SGPIO Line Name

v4 -> v5
  - Rename document and file from minerva-harma to harma. 
  - remove Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
v3 -> v4
  - Add SGPIO line name.

v2 -> v3:
  - Fixed led schema.
  - Fixed i2c mux schema.
  - Add BMC_READY and SGPIO_READY.

v1 -> v2:
  - Add Power sensors.
  - Modify ehci number.
  - Add Led.
  - Modify SGPIO line-name.
v1:
  - Create minerva harma dts file.

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
Peter Yin (2):
  dt-bindings: arm: aspeed: add Meta Harma board
  ARM: dts: aspeed: Harma: Add Meta Harma (AST2600) BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-facebook-harma.dts  | 585 ++++++++++++++++++
 3 files changed, 587 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts

-- 
2.25.1


