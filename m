Return-Path: <devicetree+bounces-7061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B29B7BEFEC
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 02:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14EAD281783
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 00:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F4A38E;
	Tue, 10 Oct 2023 00:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="FnyVJiJN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CD6377
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 00:51:36 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B429A9;
	Mon,  9 Oct 2023 17:51:35 -0700 (PDT)
Received: from Monstersaurus.local (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E0F533D9;
	Tue, 10 Oct 2023 02:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696899092;
	bh=Zy8VCT+SRDvV4AB+75gEwkARzmfGl66VR2su70NKDD4=;
	h=From:To:Cc:Subject:Date:From;
	b=FnyVJiJNzV0zZ51rMjrRQoTaGbSHXsD57rmTV/2eq+ukvJrQpg0hEp5jtMDlwgoEJ
	 Tx6M4z+4zTTQUqnOZllHCfSN/1FLWHyigdHiyrRy56EALvgKLh2WCsH2NxfiraPFkg
	 QkzSweDTM3Z+xzac7KqdIaXwM33vWdazVqQrnpms=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 0/5] media: Sony IMX335 improvements
Date: Tue, 10 Oct 2023 01:51:21 +0100
Message-Id: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The Sony IMX335 is not yet compatible with libcamera, as it is missing
the get selection API call.

It also misses a way to describe how to power on the sensor.

Now that I've got this camera functioning on Debix-SOM and Pi5, I expect
to be able to do quite a bit more cleanup to the code here. But these
patches should already be valid for consideration.


Kieran Bingham (5):
  media: dt-bindings: media: imx335: Add supply bindings
  media: i2c: imx335: Enable regulator supplies
  media: i2c: imx335: Implement get selection API
  media: i2c: imx335: Fix hblank min/max values
  media: i2c: imx335: Improve configuration error reporting

 .../bindings/media/i2c/sony,imx335.yaml       | 16 ++++
 drivers/media/i2c/imx335.c                    | 95 ++++++++++++++++++-
 2 files changed, 106 insertions(+), 5 deletions(-)

-- 
2.34.1


