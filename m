Return-Path: <devicetree+bounces-6478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4D37BB7E8
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:41:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD700281F50
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22C7C1D53F;
	Fri,  6 Oct 2023 12:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="BAosE2Zn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAE512B8C
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:41:24 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58132C2;
	Fri,  6 Oct 2023 05:41:22 -0700 (PDT)
Received: from uno.LocalDomain (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 665FB4DB;
	Fri,  6 Oct 2023 14:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696595972;
	bh=QcpkBJCn/+AcM+Si3xWukHH8rYg2q06d+mROc1c/BZU=;
	h=From:To:Cc:Subject:Date:From;
	b=BAosE2ZnCxjiV0I+GHrr8NRgIFWzXdk0a/BKWBk8peMHe9QYx+6v05IrfBpM3nWdq
	 0Ho2SKcTc/TuVlx+b8Y12D5FeA1UOGgkkv5kKiom5KTK7FrKWSCYm3qNWdee0O9VbD
	 ECSqsOPcJD3k02KQZAS09tmeIy+nm42IVuRjKTOk=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Fabio Estevam <festevam@gmail.com>,
	martink@posteo.de
Subject: [PATCH v4 0/6] media: bindings: Fix handling of video-interface-devices
Date: Fri,  6 Oct 2023 14:40:55 +0200
Message-ID: <20231006124101.181555-1-jacopo.mondi@ideasonboard.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

v3->v4:
- drop v3 2/7
- Add Rob's tags
- s/video-interface-device/video-interface-devices everywhere
- Remove the word "fix" from commit message and subject as there was actually
  nothing to fix

v2->v3:
- s/bindings/dt-bindings/ in $SUBJECT

v1->v2:
- Fix a typo in the ov5640 bindings

As discussed in
https://patchwork.linuxtv.org/project/linux-media/patch/20230928121424.388019-1-festevam@gmail.com/

all properties specified in video-interface-device.yaml are valid for
image sensors.

Some schema however either allow only some of them one by one, or restrict
the supported values for no specific reason.

Fix this by allowing all properties from video-interface-device.yaml
and removing restrictions on the accepted values.

Jacopo Mondi (6):
  media: dt-bindings: hynix,hi846: Add video-interface-devices
    properties
  media: dt-bindings: ovti,ov02a10: Allow props from
    video-interface-devices
  media: dt-bindings: ovti,ov4689: Allow props from
    video-interface-devices
  media: dt-bindings: ovti,ov5640: Allow props from
    video-interface-devices
  media: dt-bindings: sony,imx214: Allow props from
    video-interface-devices
  media: dt-bindings: sony,imx415: Allow props from
    video-interface-devices

 .../devicetree/bindings/media/i2c/hynix,hi846.yaml     |  7 ++++++-
 .../devicetree/bindings/media/i2c/ovti,ov02a10.yaml    |  8 +-------
 .../devicetree/bindings/media/i2c/ovti,ov4689.yaml     |  6 +-----
 .../devicetree/bindings/media/i2c/ovti,ov5640.yaml     |  7 +------
 .../devicetree/bindings/media/i2c/sony,imx214.yaml     |  2 +-
 .../devicetree/bindings/media/i2c/sony,imx415.yaml     | 10 +---------
 6 files changed, 11 insertions(+), 29 deletions(-)

--
2.42.0


