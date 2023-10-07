Return-Path: <devicetree+bounces-6686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C81117BC76B
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 14:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51761281D5B
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9465C1C6A9;
	Sat,  7 Oct 2023 12:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dyxskFVa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF8168DE
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 12:15:17 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EC02B6
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 05:15:15 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c131ddfc95so37155251fa.0
        for <devicetree@vger.kernel.org>; Sat, 07 Oct 2023 05:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696680913; x=1697285713; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=awHR0gSsMLCE0LchcanHftVtRcwXvk49Jk6bRCcu1R8=;
        b=dyxskFVa+nZkkYP+djKmycESLIAA3LW80XEkCouzcM5y1x0DLVXMhRIap14PbvEY6L
         GxLDO8uCyx3B2mwbURenZiN6Bq5m8HC5k4Ov9U/tMl9T2RhGF73Rtz/71NkIB/0qgwJ7
         oXiUsVLGROa8NEI/UXQFHPC8QDPt9XYQbLsKTsOU50n3KVJapazQNQuRMr2E+7oiOOEk
         4mLCcxEB7vVRtcfeR3s5DlblfjLeHHrkGWtSQltYPzlqZ0iVdX1nM8LbDKWDfL2M61pq
         27FGBToL1Do4XrYQNzKhlAX5QVPqH62tgVsCCV4vQOnoRpAn8Af9Zv11MszKAZ02NtRC
         U7+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696680913; x=1697285713;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=awHR0gSsMLCE0LchcanHftVtRcwXvk49Jk6bRCcu1R8=;
        b=aaOSWTx36/3LWvq2856HvXvihESd6EtUBYWOiGz0j7IZwCH7ugaTSfjBExOhDEsG/b
         I16xg67u5SwSkYdntRXEjA7mEfuGwpPZT390bf8ap0ms0v9hBu0griOHjZhHNgXPzil5
         FTAsvajP+tFdtkLOIbTpIFwnUBQ+nV2PMQ2JMS3aiWVsqZU/M8V4TjnM4WqU0TEbx0iD
         S1iydm7mXq+WicmqLqjS3AsM1AwShCgmP07YOHPe63UglETSXDvxtD5MhTrZ+xWUdnBC
         NP+bBCy47oD6panQ0gr0jsWT0LpvIaRA/u6XTM738b6DmR1c2Q474kWFifmZczwjJZJ9
         3KvQ==
X-Gm-Message-State: AOJu0Yw2k8ax8tO2GWGB5l/Q2cvx8oz/kozm8lTTuz5XF+qYyb9AV/Tv
	WliwcZrb7pfMZ4v/VUNexKKybw==
X-Google-Smtp-Source: AGHT+IG5HygFVbQqWCR4H69nF6Tajsc52qi51RdxotX8cVX6JXVo0nMScNWHeKkB3rf8WGjLGUbAKg==
X-Received: by 2002:ac2:4431:0:b0:503:258d:643c with SMTP id w17-20020ac24431000000b00503258d643cmr8513051lfl.21.1696680913119;
        Sat, 07 Oct 2023 05:15:13 -0700 (PDT)
Received: from [192.168.1.2] (c-21d3225c.014-348-6c756e10.bbcust.telenor.se. [92.34.211.33])
        by smtp.gmail.com with ESMTPSA id v3-20020a197403000000b00502fe164ce6sm667819lfe.204.2023.10.07.05.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 05:15:12 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 0/3] Device tree updates for IXP4xx
Date: Sat, 07 Oct 2023 14:15:10 +0200
Message-Id: <20231007-ixp4xx-usr8200-v3-0-ec46edd1ff0e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM9LIWUC/33MQQ6CMBCF4auQrq1pp4DAynsYF7UtMImhZKpND
 eHuFuJGFy7fS/5vYcERusC6YmHkIgb0Ux7qUDAz6mlwHG3eDAQo0cqWY5rLlPgzUANC8BuUorF
 1b7StWI5mcj2mHbxc8x4xPDy9dj/K7f1QUP1SUXLBjT2BBieNa+X5jpMmf/Q0sM2K8L+H3JdKQ
 S2NVBqar35d1zcIQ9dG7QAAAA==
To: Peter Denison <openwrt@marshadder.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Krzysztof Halasa <khalasa@piap.pl>
Cc: Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This adds missing vendors and compatibles.

I can merge this through the ARM SoC tree unless
Rob wants to take it.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v3:
- Skip compatible triplet for the Linksys/Gemtek device
- Alter the device tree to just use one of them in an additional
  patch (intended to be merged with the binding update)
- Link to v2: https://lore.kernel.org/r/20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org

Changes in v2:
- Speling mistake: adiend -> adieng
- Link to v1: https://lore.kernel.org/r/20230925-ixp4xx-usr8200-v1-0-cd72a2e1ce91@linaro.org

---
Linus Walleij (3):
      dt-bindings: Add vendor prefixes
      dt-bindings: arm: List more IXP4xx devices
      ARM: dts: Use only the Linksys compatible for now

 Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml  | 16 ++++++++++++++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml   | 14 ++++++++++++++
 .../boot/dts/intel/ixp/intel-ixp42x-linksys-wrv54g.dts   |  2 +-
 3 files changed, 31 insertions(+), 1 deletion(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230919-ixp4xx-usr8200-b2408d6fcad5

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


