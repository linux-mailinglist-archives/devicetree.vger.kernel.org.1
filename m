Return-Path: <devicetree+bounces-52025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1004F8817D9
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 20:30:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF902285B5C
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 19:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B040E8563F;
	Wed, 20 Mar 2024 19:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b="ZXtVD+1M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FD38563B;
	Wed, 20 Mar 2024 19:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.149.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710963028; cv=none; b=epZA4sBiGJZI488Cp+rNyGEbjU0DXpHaHUWN0ZPOpGOB7D2zmWviGnV/E3gBvnISRIJRfsaSY2MGykAgc//G6IyDxzxiwUNwKmBj+/SBasjicMWWbpM+rBOk0wifc9nZR/FVnfpyHOVY7MjUek4ey7oM1nPAI/+T0ighZspkZTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710963028; c=relaxed/simple;
	bh=9Onb7SpSSXz/DSaTRYqETVrjUvaMxyS6VNi7FdiIpt0=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jf0AHhR5uSEy+CJI3H16uzJkHY2K6Mi2rsqgg8N6Yflvrs9CBg/6UkkuJbAwFZFJeTEYiY4FXlL0lkV6MR7a4VQHi64hZBPhKVivhDcVdQ+amwgzIixKeI7Qro6IUfl43gnAcSPJ1diDsKAaRw1q3q0ffdJCl5PhMSFDVoa/r/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=opensource.cirrus.com; spf=pass smtp.mailfrom=opensource.cirrus.com; dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b=ZXtVD+1M; arc=none smtp.client-ip=67.231.149.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=opensource.cirrus.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=opensource.cirrus.com
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42KITXvZ004430;
	Wed, 20 Mar 2024 14:30:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PODMain02222019; bh=w
	uhU3jyk69q+EFOCh/CvUNEU93sJaqDrjk2nglUf9VA=; b=ZXtVD+1MfbOex0ZBE
	RAk88AQ3wQyM9aUy+8b11GrXrifSuTPBGBZV0yy2tAPmaE5ZZnbopGKMOriV1VUL
	L7sfMZNH0SDI77FfsK9jPth2Ar5BbVIFK160S9SJ9ck/iQ4IQ1Ql92OOD81FpczY
	5gax+rpgLyZKgM92ASiUgyRV6H7XmlYHbK4oQPvM9MisVkHTs/jljlTCdldxly3g
	fiDGC3Z6KxAR2Qu5Iu8ONt2gjZw9/Yi+APnq0aqUMpqhXu4gthEcQvjk2AdSCyOO
	rUx+o8M2wKJnOXQVdP+q+CcA21VFSlQw2PRbDrB6E1q7RAhR0mrR9OxR+UYoQMIH
	dqljg==
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3wytta0upx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Mar 2024 14:30:14 -0500 (CDT)
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Wed, 20 Mar
 2024 19:30:12 +0000
Received: from ediswmail9.ad.cirrus.com (198.61.86.93) by
 ediex01.ad.cirrus.com (198.61.84.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4
 via Frontend Transport; Wed, 20 Mar 2024 19:30:12 +0000
Received: from aus-sw-rshr002.ad.cirrus.com (aus-sw-rshr002.ad.cirrus.com [141.131.145.53])
	by ediswmail9.ad.cirrus.com (Postfix) with ESMTP id 70764820246;
	Wed, 20 Mar 2024 19:30:10 +0000 (UTC)
From: James Ogletree <jogletre@opensource.cirrus.com>
To: <dmitry.torokhov@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <lee@kernel.org>, <broonie@kernel.org>, <jeff@labundy.com>
CC: <patches@opensource.cirrus.com>, <linux-sound@vger.kernel.org>,
        <linux-input@vger.kernel.org>, <devicetree@vger.kernel.org>,
        James Ogletree
	<jogletre@opensource.cirrus.com>
Subject: [PATCH v10 0/5] Add support for CS40L50
Date: Wed, 20 Mar 2024 19:29:51 +0000
Message-ID: <20240320192956.2395731-1-jogletre@opensource.cirrus.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: L-njsC35T00blTX4eYcgydr-uzt9LSgy
X-Proofpoint-GUID: L-njsC35T00blTX4eYcgydr-uzt9LSgy
X-Proofpoint-Spam-Reason: safe

Changes in v10:
- Minor refactoring and logical improvements all around
- Renamed and added supplies

Changes in v9:
- Fixed empty struct by utilizing cs_dsp's post_run callback
- Style fixes in MFD driver

Changes in v8:
- set_sysclk() -> set_bclk_ratio()
- Added ID table to codec driver
- Style improvements
- Fixed ordering of new write sequence operations

Changes in v7:
- Fixed sparse warning
- Moved write sequences to private data structure
- Logical and style improvements in write sequence interface

Changes in v6:
- Updated write sequencer interface to be control-name based
- Fixed a race condition and non-handling of repeats in playback callback
- Stylistic and logical improvements all around

Changes in v5:
- Added a codec sub-device to support I2S streaming
- Moved write sequencer code from cirrus_haptics to cs_dsp
- Reverted cirrus_haptics library; future Cirrus input
  drivers will export and utilize cs40l50_vibra functions
- Added more comments
- Many small stylistic and logical improvements

Changes in v4:
- Moved from Input to MFD
- Moved common Cirrus haptic functions to a library
- Incorporated runtime PM framework
- Many style improvements

Changes in v3:
- YAML formatting corrections
- Fixed typo in MAINTAINERS
- Used generic node name "haptic-driver"
- Fixed probe error code paths
- Switched to "sizeof(*)"
- Removed tree reference in MAINTAINERS

Changes in v2:
- Fixed checkpatch warnings

James Ogletree (5):
  firmware: cs_dsp: Add write sequence interface
  dt-bindings: input: cirrus,cs40l50: Add initial DT binding
  mfd: cs40l50: Add support for CS40L50 core driver
  Input: cs40l50 - Add support for the CS40L50 haptic driver
  ASoC: cs40l50: Support I2S streaming to CS40L50

 .../bindings/input/cirrus,cs40l50.yaml        |  68 +++
 MAINTAINERS                                   |  12 +
 drivers/firmware/cirrus/cs_dsp.c              | 278 +++++++++
 drivers/input/misc/Kconfig                    |  10 +
 drivers/input/misc/Makefile                   |   1 +
 drivers/input/misc/cs40l50-vibra.c            | 577 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  30 +
 drivers/mfd/Makefile                          |   4 +
 drivers/mfd/cs40l50-core.c                    | 570 +++++++++++++++++
 drivers/mfd/cs40l50-i2c.c                     |  68 +++
 drivers/mfd/cs40l50-spi.c                     |  68 +++
 include/linux/firmware/cirrus/cs_dsp.h        |  27 +
 include/linux/mfd/cs40l50.h                   | 137 +++++
 sound/soc/codecs/Kconfig                      |  11 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/cs40l50-codec.c              | 308 ++++++++++
 16 files changed, 2171 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/cirrus,cs40l50.yaml
 create mode 100644 drivers/input/misc/cs40l50-vibra.c
 create mode 100644 drivers/mfd/cs40l50-core.c
 create mode 100644 drivers/mfd/cs40l50-i2c.c
 create mode 100644 drivers/mfd/cs40l50-spi.c
 create mode 100644 include/linux/mfd/cs40l50.h
 create mode 100644 sound/soc/codecs/cs40l50-codec.c

-- 
2.25.1


