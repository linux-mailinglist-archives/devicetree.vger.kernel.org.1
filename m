Return-Path: <devicetree+bounces-3581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1A17AF558
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 22:38:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C1E952827FA
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFE428E08;
	Tue, 26 Sep 2023 20:38:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B22125B4
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:38:04 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2F9A11D;
	Tue, 26 Sep 2023 13:38:02 -0700 (PDT)
Received: from p200300ccff2a5b001a3da2fffebfd33a.dip0.t-ipconnect.de ([2003:cc:ff2a:5b00:1a3d:a2ff:febf:d33a] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qlEoX-004D54-H1; Tue, 26 Sep 2023 22:37:49 +0200
Received: from andi by aktux with local (Exim 4.96)
	(envelope-from <andreas@kemnade.info>)
	id 1qlEoW-008tVG-1I;
	Tue, 26 Sep 2023 22:37:48 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: jic23@kernel.org,
	lars@metafoo.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	bcousson@baylibre.com,
	tony@atomide.com,
	jean-baptiste.maneyrol@tdk.com,
	andreas@kemnade.info,
	chenhuiz@axis.com,
	andy.shevchenko@gmail.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: [PATCH v2 0/3] ARM: omap: omap4-embt2ws: Add IMU on control unit
Date: Tue, 26 Sep 2023 22:37:36 +0200
Message-Id: <20230926203739.2119963-1-andreas@kemnade.info>
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
 drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c       | 10 ++++++++++
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c      |  3 +++
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h       |  1 +
 5 files changed, 35 insertions(+), 1 deletion(-)

-- 
2.39.2


