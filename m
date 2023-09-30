Return-Path: <devicetree+bounces-4766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B6D7B3E7D
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 07:51:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 426C7281E76
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 05:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62677525A;
	Sat, 30 Sep 2023 05:51:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CBC1FA8
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 05:51:37 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF3DA1A7;
	Fri, 29 Sep 2023 22:51:34 -0700 (PDT)
Received: from uno.lan (unknown [IPv6:2001:861:388f:1650:2f32:b6ff:a885:7d5e])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id EDCFC8D;
	Sat, 30 Sep 2023 07:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696052989;
	bh=vMGZHJvmuyL9BBK61IAhhBPP4I9hFANCfHoWe7Ga6qY=;
	h=From:To:Cc:Subject:Date:From;
	b=ZfyJTCqT/d9nRwJYotjvIRcJU/cJDyhIdpVlMpApb0GiB5KKdhamVNEFf4ZHqcvb+
	 L2NeFbHKJR6aCreCfztY1Ui3JDR7oTybAs0Ciqdr28PUFOe2UVtOx9YBICB64dTGco
	 FyZWfAGH/lnvxKyzva7FUwm306Fzply43NIXm5qQ=
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
Subject: [PATCH v2 0/7] media: bindings: Fix handling of video-interface-device
Date: Sat, 30 Sep 2023 07:51:02 +0200
Message-ID: <20230930055110.1986-1-jacopo.mondi@ideasonboard.com>
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

Jacopo Mondi (7):
  media: bindings: hynix,hi846: Add video-interface-device properties
  media: bindings: hynix,hi846: Restrict endpoint properties
  media: bindings: ovti,ov02a10: Fix handling of video-interface-device
  media: bindings: ovti,ov4689: Fix handling of video-interface-device
  media: bindings: ovti,ov5640: Fix handling of video-interface-device
  media: bindings: sony,imx214: Fix handling of video-interface-device
  media: bindings: sony,imx415: Fix handling of video-interface-device

 .../devicetree/bindings/media/i2c/hynix,hi846.yaml     | 10 ++++++++--
 .../devicetree/bindings/media/i2c/ovti,ov02a10.yaml    |  8 +-------
 .../devicetree/bindings/media/i2c/ovti,ov4689.yaml     |  6 +-----
 .../devicetree/bindings/media/i2c/ovti,ov5640.yaml     |  7 +------
 .../devicetree/bindings/media/i2c/sony,imx214.yaml     |  2 +-
 .../devicetree/bindings/media/i2c/sony,imx415.yaml     | 10 +---------
 6 files changed, 13 insertions(+), 30 deletions(-)

--
2.42.0


