Return-Path: <devicetree+bounces-3953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E497B0B21
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 19:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0CBAF281D75
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A28D64B236;
	Wed, 27 Sep 2023 17:33:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E8234CF1
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 17:33:03 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45362B4;
	Wed, 27 Sep 2023 10:32:59 -0700 (PDT)
Received: from p200300ccff4287001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff42:8700:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qlYP1-004Exv-Lj; Wed, 27 Sep 2023 19:32:47 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qlYP0-0091bC-1w;
	Wed, 27 Sep 2023 19:32:46 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	bcousson@baylibre.com,
	tony@atomide.com,
	andreas@kemnade.info,
	chenhuiz@axis.com,
	jean-baptiste.maneyrol@tdk.com,
	andy.shevchenko@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v3 0/3] ARM: omap: omap4-embt2ws: Add IMU on control unit
Date: Wed, 27 Sep 2023 19:32:42 +0200
Message-Id: <20230927173245.2151083-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Contrary to the IMU at the head, a bit needs to be set to
make probe of the magnetometer successful.

Changes in V3:
- correct another - vs _ issue in device tree
- more standard kernel version description

Changes in V2:
- add types in binding doc
- more description / comments in binding doc
- limit register change to imu9150
- correct node name in device tree (- vs _)

Andreas Kemnade (3):
  dt-bindings: iio: imu: mpu6050: Add level shifter
  iio: imu: mpu6050: add level shifter flag
  ARM: dts: omap: omap4-embt2ws: Add IMU at control unit

 .../bindings/iio/imu/invensense,mpu6050.yaml    |  5 +++++
 .../boot/dts/ti/omap/omap4-epson-embt2ws.dts    | 17 ++++++++++++++++-
 drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c       | 13 +++++++++++++
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c      |  3 +++
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h       |  1 +
 5 files changed, 38 insertions(+), 1 deletion(-)

-- 
2.39.2


