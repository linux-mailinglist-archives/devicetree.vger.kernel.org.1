Return-Path: <devicetree+bounces-5699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 981CA7B7889
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:20:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A8E891C204F7
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF746FBB;
	Wed,  4 Oct 2023 07:19:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C293610F8
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:19:57 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9B0BAB
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 00:19:55 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-523100882f2so2956838a12.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 00:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1696403994; x=1697008794; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vDQoG5ysT8EDNxnOtjtwrzyiSEy0xvqDP37xVnx8+0I=;
        b=petNBZmJe0LvZEadkQ6j7b7cxj7dQIXmmYmhdtWcfd12Uy3dL2jwqh30O86TL5oEE1
         fqlsNPmi20rTtbYLlUxrRcxoqtBz15S1pH3ptTBcEZAgXV9a+iIR3pptd6/KE6gZn8/V
         7eKq3jvq6DAZCH3wQyPP5D9c/dPuEY2NsOZj8qOxuNd8u+GLtWTG+m+VYs1gog7j3ghA
         x+1IP8hQLBiPV3lYmCoz/oQx6RhnUu/23C5J6c2P173RsJsfjVN7AO06TnwdtYpVFub2
         Kx0EbN2ok3ER+6oBnOKLJbD0aaV/sfI1JkhCvZ5Utpuep8ro7qzLTsDbDSNkTSfsfWAp
         aBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696403994; x=1697008794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vDQoG5ysT8EDNxnOtjtwrzyiSEy0xvqDP37xVnx8+0I=;
        b=D4mqEhuR+h6UZ3lwmYjXXQCxJ2dxARJeBsTCAEe1jiD1djFhsP7w/E0b6Ggnu0c8t4
         XPinHLLQmsvcKYw5vrnCzwTsP4Kg9iIwnC3+urJjSHoqINIyV2P+rbO0sxdIzLgEnHXu
         DyXkm4rUVq+ep7tvQz9UAje2TE8bwO7YTFfdYtyd6wlRoTQ241LJyetROWUoHe1SnuAi
         RvQJZqjJiYjFwq2lrB2LyDaTUhV6ms7KdVPyfUvp5pmwTfV8qZpU4mvdzUNrcw0YkcqC
         UDoLWnq5mPPudPkFpvd3qmYYs+7UrtXgGd8XASCUP7RCQGGFyE74jcTcgv2vfNSlcLDW
         ckCA==
X-Gm-Message-State: AOJu0YxUUoS3T7ulski8ijykWg37Nj7ZDf4tUtbL5ak0GoSSbxKazJVm
	VaBynIz84two0INtFNZb03/rQQ==
X-Google-Smtp-Source: AGHT+IG2ZRIUTt96YLhXGElyvkDUYr9bPzO4uyFOod84PFk/Qr+XhxT0lqHsgt12EVGjJMPnDnxDPg==
X-Received: by 2002:a17:906:3094:b0:9b7:2a13:160c with SMTP id 20-20020a170906309400b009b72a13160cmr1191779ejv.69.1696403994223;
        Wed, 04 Oct 2023 00:19:54 -0700 (PDT)
Received: from melexis ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id d18-20020a50fb12000000b0053801ca9a09sm1953928edq.33.2023.10.04.00.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 00:19:54 -0700 (PDT)
From: Volodymyr Kharuk <vkh@melexis.com>
To: <linux-media@vger.kernel.org>
Cc: Andrii Kyselov <ays@melexis.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v5 0/8] media: i2c: mlx7502x ToF camera support
Date: Wed,  4 Oct 2023 10:19:39 +0300
Message-Id: <cover.1696347109.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello all,

This series adds support for the Melexis 75026 and 75027 Time of Flight
camera sensors, with DT bindings in patch 7/8 and a driver in patch 8/8.
In patches 1/8, 2/8 and 3/8, I've add ToF controls as separate
ToF control class. Also in patch 4/8 there is changes which allow to
modify range of control with array type.

v5:
- MHz to Hz for V4L2_CID_TOF_FREQ_MOD

v4:
- fix output mode
- forbid array for menu and warn if validate_new return an error
- add enums to custom control OUTPUT_MODE
- update doc
- minor fixes

v3:
- move FMOD, TINT, PHASE_SEQ to common V4L2 as ToF common controls
- FMOD and TINT became dynamic arrays
- remove PHASE_NUM, use dynamic_array for PHASE_SEQ,
  ctrl->new_elems pass number of phases
- remove leden-gpios, will be used gpio explicitly in library for now
- remade probe: use probe_new, no power on during probe
- remove autodetect and wildcard
- make all supplies to be required
- remove trigger ioctl, will add in separate patch series
- remove temperature ioctl, will add in separate patch series
- add documentation about custom ioctl
- style: 80 cols
- minor fixes device tree

v2:
- added external clock to the sensor
- added all regulators required by the sensor
- added posibility to choose sensor type in device tree
- added prefixes to all custom types in device tree and driver as well
- style fixes

Volodymyr Kharuk (8):
  media: uapi: ctrls: Add Time of Flight class controls
  media: v4l: ctrls: Fill V4L2_CID_TOF_CLASS controls
  media: Documentation: v4l: Add TOF class controls
  media: v4l: ctrls-api: Allow array update in __v4l2_ctrl_modify_range
  media: v4l: ctrls: Add user control base for mlx7502x
  media: uapi: Add mlx7502x header file
  media: dt-bindings: Add mlx7502x camera sensor
  media: i2c: Add driver for mlx7502x ToF sensor

 .../bindings/media/i2c/melexis,mlx7502x.yaml  |  126 ++
 .../userspace-api/media/drivers/index.rst     |    1 +
 .../userspace-api/media/drivers/mlx7502x.rst  |   28 +
 .../userspace-api/media/v4l/common.rst        |    1 +
 .../userspace-api/media/v4l/ext-ctrls-tof.rst |   56 +
 MAINTAINERS                                   |   11 +
 drivers/media/i2c/Kconfig                     |   13 +
 drivers/media/i2c/Makefile                    |    1 +
 drivers/media/i2c/mlx7502x.c                  | 1747 +++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-api.c      |   25 +-
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |   20 +
 include/uapi/linux/mlx7502x.h                 |   28 +
 include/uapi/linux/v4l2-controls.h            |   14 +
 13 files changed, 2059 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
 create mode 100644 Documentation/userspace-api/media/drivers/mlx7502x.rst
 create mode 100644 Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
 create mode 100644 drivers/media/i2c/mlx7502x.c
 create mode 100644 include/uapi/linux/mlx7502x.h


base-commit: 2c1bae27df787c9535e48cc27bbd11c3c3e0a235
-- 
BR,
Volodymyr Kharuk


