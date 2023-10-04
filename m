Return-Path: <devicetree+bounces-5912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A257B8579
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 965D91C20506
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 276721BDFF;
	Wed,  4 Oct 2023 16:39:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC31BDEA
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 16:39:33 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1610295;
	Wed,  4 Oct 2023 09:39:30 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2E5EF240003;
	Wed,  4 Oct 2023 16:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696437569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OwinnMEh9kb+/6pTGYavBujahwO6cl+5NQfporXHEEk=;
	b=N764hc6BUMKfDD4eWHJiija+HENBxryR3BvX7ZUBz98Zwc3vVAt1aYAHIdIzJ5fhttn5bK
	IuwZ0D4FFaA1ZnGU8yzZ/9UisFlIt3BESkbI4p5lMT0k2duxG+qblfRiB834xnDDP5nzsO
	X5WnvWB56jDjrzkYip5G1u3DVGmHirMHBXhr08ekG71yNPO5QszWf5wmSQo+nxYNjhOun8
	k6AR8v20YGLgcX+EeSGF+v5DJ0ynu6CIab6bclDRbDbVrsH97Zw10IJHSHRZ6BqFVJxeM6
	JihqKe2tBJA90bB2+BnVVmc7D7Diuh/bhxpsM/x25LB4yCqDUjjNkVav6uPrlQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: [PATCH 0/2] mxc4005/mxc6655 OF improvements
Date: Wed, 04 Oct 2023 18:39:26 +0200
Message-Id: <20231004-mxc4005-device-tree-support-v1-0-e7c0faea72e4@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD6VHWUC/x3MQQqDMBBG4avIrDswiZHSXkW6CPG3nUU1TFQE8
 e4Glx883kEFpij0bg4ybFp0nirco6H0i9MXrEM1efGtEwn831MQ6XiocQIvBnBZc55t4SARnXv
 G4PGiesiGUff73n/O8wL8alMWbQAAAA==
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.12.3
X-GND-Sasl: luca.ceresoli@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This small series fixes the compatible string of MXC4005 in the bindings
and adds support for OF-based autoloading of the mxc4005 driver.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
Luca Ceresoli (2):
      dt-bindings: trivial-devices: Fix MEMSIC MXC4005 compatible string
      iio: accel: mxc4005: allow module autoloading via OF compatible

 Documentation/devicetree/bindings/trivial-devices.yaml | 2 +-
 drivers/iio/accel/mxc4005.c                            | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)
---
base-commit: 8a749fd1a8720d4619c91c8b6e7528c0a355c0aa
change-id: 20231004-mxc4005-device-tree-support-40ae517a42e9

Best regards,
-- 
Luca Ceresoli <luca.ceresoli@bootlin.com>


