Return-Path: <devicetree+bounces-1356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1337A5FFC
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:47:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 733C11C20BD3
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2D53EAE1;
	Tue, 19 Sep 2023 10:47:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3ED18622
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:47:26 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40C3E131
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:24 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1c43166b7e5so37263235ad.3
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695120443; x=1695725243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KWGm7rEFBvHLc7sisUwhAvmPpqKlBaLPdqOGIMWnd7E=;
        b=GPuzohc9sFRM0MUxJUoItB0ckY/DcakzLlLj+CC9tzDL25jshfTEGEJcFKR5KogljP
         RovGyY5un9eRd5itglcshCFnZXVWSeF+67yfM2SVhK1yHZJV0DXZyR1R3Kn/huHsEEZ1
         Fq8hiK3tUzOTxGYCp8FMntoUhNxiWhRrCULGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695120443; x=1695725243;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KWGm7rEFBvHLc7sisUwhAvmPpqKlBaLPdqOGIMWnd7E=;
        b=OtFAK9biX5A46vBiCumbx1bHN+YjNg7n+tnvXc8arTyMt/+rSTkVJRo83omBYlQWXT
         iuqPL2oPr2O0+EsmC5XEKh6U1HowYmBp+i0YEJA5CBpht2E76MD1Fk2UBUnkg5ME5LBt
         ynREj8qO1C6rCK0QkwEdSIBWI0DTPJfVDhoxk/A+zv3TaH+mV3uVw1MsJUMloJvWFAtN
         2oDsSIjVyd3eh70oE4iTIoF+Da2p65+zox64X6ms2SMJ+CrUGdYQZ8csh2UH4xDHQsBH
         Ywk8Ck2K8E3kxE2ln5kzNPKHbANSuLxvDGY2QePUZJFk3uQh/2W9cdHGDstkRWEb12OV
         MKzw==
X-Gm-Message-State: AOJu0YxTyYDzlY1QpI5qNfszC21F37fmRZ+BXNSVHAXpzDYq4BL59NgL
	I88vryUGAQuLr+gcJraE+X6iYg==
X-Google-Smtp-Source: AGHT+IGi1Aeqtw4GFcstj89ewGDN7GqUr/PGJ3DhkAfwr8aE99yDTv1Dd8EIte2UBmPkwW10M7f49g==
X-Received: by 2002:a17:903:1103:b0:1b9:e241:ad26 with SMTP id n3-20020a170903110300b001b9e241ad26mr14863164plh.9.1695120443688;
        Tue, 19 Sep 2023 03:47:23 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:40a:900d:e731:5a43])
        by smtp.gmail.com with ESMTPSA id c10-20020a170902d48a00b001bc445e249asm6719578plg.124.2023.09.19.03.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 03:47:23 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Zhiyong Tao <zhiyong.tao@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 00/12] regulator: mt6366: Split out of MT6358 and cleanup
Date: Tue, 19 Sep 2023 18:43:43 +0800
Message-ID: <20230919104357.3971512-1-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi everyone,

This is v3 of my MT6366 PMIC split-out-of-MT6358 cleanup series. The two
PMICs are mostly identical, except for the regulator bits. The MT6366 is
missing the VCAM* (camera related) LDOs, but in their place has a few
other ones. This thus requires a separate compatible to handle the
differences.

Changes since v2:
- Merged "mfd: mt6358: Add registers for MT6366 specific regulators"
  into "regulator: mt6358: Add missing regulators for MT6366", as
  suggested by Krzysztof.
- Reworked the bindings so that all the regulators are commonly defined,
  then filtered out by compatible, like every other binding does.
- Added some missing end-of-string matches to the LDO patterns
- Added patches to reuse the MT6397 regulator binding macros
  - regulator: dt-bindings: mt6358: Add regulator-allowed-modes property
  - regulator: mt6358: Use mt6397-regulator.h binding header for buck mode macros
- Dropped "regulator-coupled-with" and "regulator-coupled-max-spread"
  properties from the DT binding example. They don't make much sense
  without the coupled regulator.
- Fixed up selector values in pickable linear ranges

Changes since v1:
- Switched to using MT6358 compatible as fallback compatible
  Differences are detected through chip ID register
- MT6366 regulator binding merged with MT6358 one instead of having two
  separate ones
- Added patches
  - regulator: dt-bindings: mt6358: Convert to DT schema     
  - regulator: dt-bindings: mt6358: Add regulator supplies   
  - regulator: mt6358: Add supply names for MT6358 regulators
  - arm64: dts: mediatek: mt8183-kukui: Add PMIC regulator supplies
  These bring MT6358 regulators to the same completeness level as MT6366
- Dropped patch "mfd: mt6397: Split MediaTek MT6366 PMIC out of MT6358"
- Dropped patch "soc: mediatek: pwrap: add support for MT6366 PMIC"

This depends on my previous "regulator: mt6358: Remove bogus regulators
and improvements" series [1] and patch "regulator: mt6358: return error
for get/set mode op on linear range LDO" [2] patch. These are still in
flight, but I think posting this earlier would help get reviews underway.

Patch 1 add a compatible string for the MT6366 PMIC, with a fallback to
the MT6358 one. This should go through the MFD tree. There are no build
time dependencies.

Patch 2 converts the existing MT6358 regulator DT binding to DT schema.

Patch 3 adds the "regulator-allowed-mode" property to the MT6358
regulator binding.

Patch 4 adds regulator supply properties to the MT6358 regulator
binding.

Patch 5 adds MT6366 regulators to the MT6358 regulator binding. This was
previously done by Zhiyong Tao [3] from MediaTek as a separate binding
file. I cleaned up the patch based on previous review comments, simplified
the regulator names, and added regulator supplies. Bogus regulators were
also dropped, like what was done for the MT6358 [1]. In v2 this was
merged with the MT6358 binding, now converted to DT schema.

Patch 6 makes the MT6358 regulator driver use the mt6397-regulator.h
binding header for the operating mode macros.

Patch 7 adds support for the regulator supplies to the MT6358 regulator
driver.

Patch 8 simplifies the MT6366 regulator names to match the new names
specified in the binding.

Patch 9 makes the MT6366 VCN18 LDO regulator configurable. This is one
of the differences between the MT6358 and MT6366.

Patch 10 adds regulators that were missing from the originally proposed
binding and driver. This includes MFD header changes and needs an ack
from Lee.

Patch 11 adds regulator supply names to the MT6366 regulators

Patch 12 adds regulator supplies to MT8183 Kukui boards.

Patch 1 should go through the mfd tree. Patches 3 through 11 should go
through the regulator tree after Lee acks patch 10. Patch 12 should go
through the MediaTek tree.

[1] https://lore.kernel.org/linux-arm-kernel/20230913082919.1631287-1-wenst@chromium.org/
[2] https://lore.kernel.org/linux-arm-kernel/20230919083647.3909889-1-wenst@chromium.org/
[3] https://lore.kernel.org/linux-arm-kernel/20220823123745.14061-1-zhiyong.tao@mediatek.com/

Chen-Yu Tsai (11):
  dt-bindings: mfd: mt6397: Split out compatible for MediaTek MT6366
    PMIC
  regulator: dt-bindings: mt6358: Convert to DT schema
  regulator: dt-bindings: mt6358: Add regulator-allowed-modes property
  regulator: dt-bindings: mt6358: Add regulator supplies
  regulator: mt6358: Use mt6397-regulator.h binding header for buck mode
    macros
  regulator: mt6358: Add supply names for MT6358 regulators
  regulator: mt6358: fix and drop type prefix in MT6366 regulator node
    names
  regulator: mt6358: Make MT6366 vcn18 LDO configurable
  regulator: mt6358: Add missing regulators for MT6366
  regulator: mt6358: Add supply names for MT6366 regulators
  arm64: dts: mediatek: mt8183-kukui: Add PMIC regulator supplies

Zhiyong Tao (1):
  regulator: dt-bindings: mt6358: Add MT6366 PMIC

 .../devicetree/bindings/mfd/mt6397.txt        |   4 +-
 .../regulator/mediatek,mt6358-regulator.yaml  | 247 ++++++++++++
 .../bindings/regulator/mt6358-regulator.txt   | 350 ------------------
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  28 ++
 drivers/regulator/mt6358-regulator.c          | 250 +++++++------
 include/linux/mfd/mt6358/registers.h          |  17 +
 include/linux/regulator/mt6358-regulator.h    |   3 +
 7 files changed, 440 insertions(+), 459 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/mt6358-regulator.txt

-- 
2.42.0.459.ge4e396fd5e-goog


