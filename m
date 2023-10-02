Return-Path: <devicetree+bounces-5114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF787B54C0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CFFC7280D3F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63DD319BB6;
	Mon,  2 Oct 2023 14:10:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4533199D7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:10:39 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 698589B
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:10:37 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4066692ad35so19229125e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 07:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696255836; x=1696860636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7wbehdpfeTskgBGeNboTr1Vt3I7y4UPyUbI3qTqn6yY=;
        b=qbe+GG1k4scQTfjMY0gNish5fb0uflshUS9QfF0/TnG4dqjayTkAGAXiMso/zT0YeG
         n/qFr8hUxkwETbq2StvC55t78FLNAN3hYAxeDkRWVdnANHNTtHMvLDCfMWCdRBjXDS/a
         tjvnGS81crq6gLA9MNR5TglsQzxGzxFGjzDsy6DgBMqwH20VRgWEhpGUl7DlLoaCiPBt
         9iqt2Icv0XIUAXiUWLKGwhXuA/p6IZkRm/75ejjCinIZdBz2fFV3l1BIIUs3bc0BMy5q
         7Z0MDMEmMd5D/FgqDSuncc0vS+x48ZPI1u4+Zzrbfr7bUGwl6/dUBDQ6mk3ccq6CA40U
         Cjew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696255836; x=1696860636;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7wbehdpfeTskgBGeNboTr1Vt3I7y4UPyUbI3qTqn6yY=;
        b=OmjF7VxVIb6AzAnTKE7ofbSDz0m6hA3PMZHnlkaYVSdJPbHcPfVYTVMECJqx8C4ECK
         jFT9y1m8GFa/m6M2j4wG+8RJovIjFPkRNqn9xo4V1ZxrfoALTTRAnjXg1rpiRtOGazgr
         hgWHQNFMyOb3l4CD++GDTVSG5/ifG1QfRujbVDeLKieAamVjtd6QyibWovxSuknNQmPM
         JlYU2cPBSJhxQQrMomQoNqX7VmQnklP+YH5ye5pj4GCVt7igvl8EK8NC7WZxgwh5VkjO
         HYfua98z49bqrqCKX+y+Teg93W6Bm8OfeM53oJHvqyQDIOLwCmVVKfhihVcZyZ/YaC8W
         04yA==
X-Gm-Message-State: AOJu0YxQ2BKv9EiJ8wq6519hhK5/E0PTsDy2aVTNS0sqsO5DS7UkX5Uf
	WPQQYMRpPMjchYDQABq1YldTBQ==
X-Google-Smtp-Source: AGHT+IHak2pzWxI31EARsFs3PYfLjm4QWGcS1E6hRazzJjbQPUoLCM7VWxR3/LzQtmwlQLZKnGLI1A==
X-Received: by 2002:a05:600c:2214:b0:3f7:cb42:fa28 with SMTP id z20-20020a05600c221400b003f7cb42fa28mr9119350wml.28.1696255835696;
        Mon, 02 Oct 2023 07:10:35 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:fcf2:65f1:853c:13be])
        by smtp.googlemail.com with ESMTPSA id k3-20020a05600c0b4300b003fe1fe56202sm7361911wmr.33.2023.10.02.07.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 07:10:35 -0700 (PDT)
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
Subject: [PATCH 0/2] arm64: dts: amlogic: add libretech cottonwood support
Date: Mon,  2 Oct 2023 16:10:18 +0200
Message-Id: <20231002141020.2403652-1-jbrunet@baylibre.com>
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

This patchset depends on the usb support for the gl3510 [0]
Without it, there will be dt check warnings and usb may not come up properly.

Early u-boot support may be found here [1]. It will be submitted after
DT is accepted in Linux. As usual with Amlogic, u-boot must be packaged
with closed source binaries ([2] for the a311d, [3] for the s905d3)

Prebuilt bootloaders are available from libretech [4].

The devices are shipped with libretech's u-boot pre-flashed in SPI NOR.
If necessary, the boot source may be changed to MMC using the onboard
switch.

Happy hacking ...

[0]: https://lore.kernel.org/all/20231002122909.2338049-1-jbrunet@baylibre.com
[1]: https://gitlab.com/jbrunet/u-boot/-/tree/cottonwood
[2]: https://jbrunet.baylibre.com/pub/amlogic/fips/fip-collect-aml-a311d-cc-20230701.tar.gz
[3]: https://jbrunet.baylibre.com/pub/amlogic/fips/fip-collect-aml-s905d3-cc-20230820.tar.gz
[4]: https://boot.libre.computer/ci/

Jerome Brunet (2):
  dt-bindings: arm: amlogic: add libretech cottonwood support
  arm64: dts: amlogic: add libretech cottonwood support

 .../devicetree/bindings/arm/amlogic.yaml      |   2 +
 arch/arm64/boot/dts/amlogic/Makefile          |   2 +
 .../amlogic/meson-g12b-a311d-libretech-cc.dts | 133 ++++
 .../amlogic/meson-libretech-cottonwood.dtsi   | 610 ++++++++++++++++++
 .../amlogic/meson-sm1-s905d3-libretech-cc.dts |  89 +++
 5 files changed, 836 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts

-- 
2.40.1


