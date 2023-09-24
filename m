Return-Path: <devicetree+bounces-2864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1457ACC80
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 790C31C20443
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2889DFC13;
	Sun, 24 Sep 2023 22:26:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9563FC0C
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:26:21 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E857EFE;
	Sun, 24 Sep 2023 15:26:19 -0700 (PDT)
Received: from p200300ccff1ebc001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff1e:bc00:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qkXYA-00492B-QT; Mon, 25 Sep 2023 00:26:02 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qkXY9-008YMu-1H;
	Mon, 25 Sep 2023 00:26:01 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	bcousson@baylibre.com,
	tony@atomide.com,
	jean-baptiste.maneyrol@tdk.com,
	chenhuiz@axis.com,
	andreas@kemnade.info,
	andy.shevchenko@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH 0/3] ARM: omap: omap4-embt2ws: Add IMU on control unit
Date: Mon, 25 Sep 2023 00:25:56 +0200
Message-Id: <20230924222559.2038721-1-andreas@kemnade.info>
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

Andreas Kemnade (3):
  dt-bindings: iio: imu: mpu6050: Add level shifter
  iio: imu: mpu6050: add level shifter flag
  ARM: dts: omap: omap4-embt2ws: Add IMU at control unit

 .../bindings/iio/imu/invensense,mpu6050.yaml    |  2 ++
 .../boot/dts/ti/omap/omap4-epson-embt2ws.dts    | 17 ++++++++++++++++-
 drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c       |  5 +++++
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c      |  3 +++
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h       |  1 +
 5 files changed, 27 insertions(+), 1 deletion(-)

-- 
2.39.2


