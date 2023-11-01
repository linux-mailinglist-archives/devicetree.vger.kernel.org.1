Return-Path: <devicetree+bounces-13424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6717DE15A
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:14:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 700D5B20CC6
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 13:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267B612B90;
	Wed,  1 Nov 2023 13:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="gnMUe8Ny"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E56134A0
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 13:14:05 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37451F4;
	Wed,  1 Nov 2023 06:14:01 -0700 (PDT)
Received: from Monstersaurus.local (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8A68F8D;
	Wed,  1 Nov 2023 14:13:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698844422;
	bh=WeazysA2wZwO1k2cdJi8Xprj7J2sH0wuGVkt5qnZ4No=;
	h=From:To:Cc:Subject:Date:From;
	b=gnMUe8Ny1GFV6OP1eWkV4mqJ9gtaNaeM1B/Gq9UjoPzQIjwtOGlUBOKnt5yKpexYZ
	 1BUAODX10PvD1Cy5by48g293yeHQ5bw6EA9/CyBP1bOAaTiIaRky0dnVWqyevgWjmM
	 0YhnQh49OU2biciR9gj6L4PHdMTx1uNitlm6tCI8=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v2 0/6] media: Sony IMX335 improvements
Date: Wed,  1 Nov 2023 13:13:48 +0000
Message-Id: <20231101131354.2333498-1-kieran.bingham@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Sony IMX335 is not yet compatible with libcamera, as it is missing
the get selection API call.

It also misses a way to describe how to power on the sensor.

Now that I've got this camera functioning on Debix-SOM and Pi5, I expect
to be able to do quite a bit more cleanup to the code here. But these
patches should already be valid for consideration.

The series provides the bindings required to reference the power
supplies, and then performs some initial clean up to the driver for
error reporting before adding the regulator enablement, implementing the
get_selection api (as well as set selection, which returns the static
configuration) and restricts the hblanking to match the configuration.

v2:
 - Supplies are no longer 'required'
 - media: i2c: imx335: Fix logging line endings - New patch
 - line endings are fixed
 - error paths are handled for the regulator in imx335_power_on
 - set_selection is defined alongside get_selection


Kieran Bingham (6):
  media: dt-bindings: media: imx335: Add supply bindings
  media: i2c: imx335: Fix logging line endings
  media: i2c: imx335: Improve configuration error reporting
  media: i2c: imx335: Enable regulator supplies
  media: i2c: imx335: Implement get selection API
  media: i2c: imx335: Fix hblank min/max values

 .../bindings/media/i2c/sony,imx335.yaml       |  13 ++
 drivers/media/i2c/imx335.c                    | 135 ++++++++++++++----
 2 files changed, 122 insertions(+), 26 deletions(-)

-- 
2.34.1


