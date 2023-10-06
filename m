Return-Path: <devicetree+bounces-6426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9DB7BB557
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 196021C209D4
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 10:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 658B114AB8;
	Fri,  6 Oct 2023 10:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AN/IO7vf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54F61C296
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 10:35:10 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E24C93
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 03:35:07 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50573e85ee0so2398172e87.3
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 03:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696588506; x=1697193306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TDKNYOcEsBFqMrb3wRrzCP0mxdH1YRbc05OaBLwf4hI=;
        b=AN/IO7vfm7fpq1brOHJrff7TAgMYZVkX6yZ7QrEeyYMgE8nmrtnPl7yp/jXeNrkot/
         AbYvdvSMYIyDX2kLQFdxhPV3KeEcUL/91gIvgvlcilO9dlkb3+S8XrDoYRXc2usQzw/v
         6SY6V+0bO5KNH3r1tEZEfR6yXSpLTSYqQ9TiHPin1RIJaX4eOZAu3Z4n59tUeOMINBEw
         r+18bWnVnvE17JXHqqBcNGxxZXS0jZq+XzulYDRMWJvzpSbKPkhakMbrDBPPWV1+gSzu
         WwWW9ylSmIoyXFK1G9npWUe6ets9ouPC92BYSxomp/54oX5ZeflAFaIN1m7zM3WJkqvE
         eNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696588506; x=1697193306;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TDKNYOcEsBFqMrb3wRrzCP0mxdH1YRbc05OaBLwf4hI=;
        b=eFLDlfqjc5xyQWgsVJ2VkVCXQUa1ItWd4mARRjZurExfP+X27Uu03mLYhD2KiMT9QB
         EBiuelbZ7rW2TzCzna8Jbs+Jocp1imLLFt8hbnrucO+Oh7GnTXwvfPhCKosaTt4fV5g6
         NjJ8ZqDfgDNbbDr11Aaz4edg6PJ1/JDFJ5X4hbpMYQP+9T7pdc5jamEQQyAo+Iv2Yq9+
         qFtu6AYCN36quhiEmhKlNppRAxEWk+d+kZ7no7BKAFmJfD9gL5ty38k4goO3qDNj0zE+
         FoDbp29lG9Si+1p7XVcVVVf/0Vnq+cAK+qhRyN3ZKQuLl4GckRHt3Cp6SZilRczl7QLy
         js8Q==
X-Gm-Message-State: AOJu0YwkWGC2CoVfF4pEY/I6FXBiUvcqG3PvPfXG+9EIGvGRnSwL1VNq
	msN6usPCyWpZIsOcl0dfJN4B6A==
X-Google-Smtp-Source: AGHT+IEd+1rkwzUT09GxzwWsq6l0mV4x0bcd9Nx7ouA0iriK2HD32CfqtgEjU0x0dQ08/XXlTE5nXw==
X-Received: by 2002:a05:6512:2095:b0:503:5d8:da33 with SMTP id t21-20020a056512209500b0050305d8da33mr6525614lfr.20.1696588505433;
        Fri, 06 Oct 2023 03:35:05 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:8f44:72b3:5bcb:6c6b])
        by smtp.googlemail.com with ESMTPSA id l9-20020a1c7909000000b00401b242e2e6sm5664963wme.47.2023.10.06.03.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 03:35:04 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Da Xue <da.xue@libretech.co>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org
Subject: [PATCH v2 0/2] arm64: dts: amlogic: add libretech cottonwood support
Date: Fri,  6 Oct 2023 12:34:58 +0200
Message-Id: <20231006103500.2015183-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patchset adds support for the Libretech cottonwood board family.
The 2 boards are based on the same PCB, with an RPi B form factor.

The "Alta" board uses an a311d while the "Solitude" variant uses an s905d3.

This patchset depends on the usb support for the gl3510 [1] and [6]
Without it, there will be dt check warnings and usb may not come up properly.

Early u-boot support may be found here [2]. It will be submitted after
DT is accepted in Linux. As usual with Amlogic, u-boot must be packaged
with closed source binaries ([3] for the a311d, [4] for the s905d3)

Prebuilt bootloaders are available from libretech [5].

The devices are shipped with libretech's u-boot pre-flashed in SPI NOR.
If necessary, the boot source may be changed to MMC using the onboard
switch.

Happy hacking ...

Changes since v1 [7]:
* Remove extra dvfs opps
* Rename Alsa cards
* Reorganize leds for DT schema while keeping meaningful node names
* Change blue LED trigger to heartbeat
* Set panic indicator on the orange LED
* Move hub reset from under the usb phy node to the controller one
* Drop npu node

[1]: https://lore.kernel.org/all/20231002122909.2338049-1-jbrunet@baylibre.com
[2]: https://gitlab.com/jbrunet/u-boot/-/tree/cottonwood
[3]: https://jbrunet.baylibre.com/pub/amlogic/fips/fip-collect-aml-a311d-cc-20230701.tar.gz
[4]: https://jbrunet.baylibre.com/pub/amlogic/fips/fip-collect-aml-s905d3-cc-20230820.tar.gz
[5]: https://boot.libre.computer/ci/
[6]: https://lore.kernel.org/all/20231006101028.1973730-1-jbrunet@baylibre.com
[7]: https://lore.kernel.org/all/20231002141020.2403652-1-jbrunet@baylibre.com

Jerome Brunet (2):
  dt-bindings: arm: amlogic: add libretech cottonwood support
  arm64: dts: amlogic: add libretech cottonwood support

 .../devicetree/bindings/arm/amlogic.yaml      |   2 +
 arch/arm64/boot/dts/amlogic/Makefile          |   2 +
 .../amlogic/meson-g12b-a311d-libretech-cc.dts | 121 ++++
 .../amlogic/meson-libretech-cottonwood.dtsi   | 614 ++++++++++++++++++
 .../amlogic/meson-sm1-s905d3-libretech-cc.dts |  89 +++
 5 files changed, 828 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts

-- 
2.40.1


