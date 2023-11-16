Return-Path: <devicetree+bounces-16099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0E17ED86A
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 01:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9984D280FDA
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 00:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC1E38B;
	Thu, 16 Nov 2023 00:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a0GSAAoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DB7819F
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:48 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6ce2988d62eso126918a34.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093868; x=1700698668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+T640iabDcn94YPGyLAPy5TpEuHJTBSfofResuK41VQ=;
        b=a0GSAAoTqYEtWPKNZHATkflefj8H06TWfTe0UY2bUCfJn+AMKMn09y6bJKLeYRNNre
         SnatSVwcpovzi9mnkV0yc1X3DAh0ghP+QaQ11+cJDX/gGPAnuGURlql5EDbE3o/fFqC5
         gtff046MX95D/13SOCwGgD3SU0c14uPMEgGk740pwcRonXRHSn79+KVh3tF2WnsliVWo
         /W9ulDkNuV2N+EhUjsg4O2lyeL7Wzg5lldiTyPoZPS+U2wcsYvTMp9Kk0qGIf0g7AL2S
         +popivwzcxqw0USO+W0Rr1ZHOI5A4KXhT72yA88Nt7wzesZGJPW6wfzcIRhUBgyNJgdP
         QIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093868; x=1700698668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+T640iabDcn94YPGyLAPy5TpEuHJTBSfofResuK41VQ=;
        b=gMKaMZ/3GrE6behLUKcNkevubPoQXNtDByK9MZQHMj6U8cgZGFCnzGhQezutDSrkUh
         LFHqnJAiTwmZVAaz/xsC9+MZrQNn37s+YKVj7KFyWIlEwWxKnvp+S3j+3fcDcgmmpD3t
         1Pd48rZUkguuEYANBxZSmnVgJFqgivywFXE5BG2JpbPSgSmC9n9oNxXhrrSH0U1CCD+e
         9RGx0bzytLzbpN4qLsi6MUV4ILfMke4SDE3MwLdZKB5MiMLDSVCB9u0NozyJzi5fU71B
         PpU/faJCMF+A+nbnMHHUDUVowyabjmUZOaUUt9+mJLTCcO0tgw57P+APG2YAXc+tnute
         aCxA==
X-Gm-Message-State: AOJu0Yx5gpVx7G5iU+3no/cO6BkHLjdLJlHezArC5NrZo7Z7A8hN0V9j
	2xkH5YRoAoCKv/ZuXMXo1ZVDFWeNc2Q=
X-Google-Smtp-Source: AGHT+IFKl9kDcNbmofepMGj1Dnht7Xf1P87GcxVSLTppZx4COKkoDcBO4GGyvMHqiBZZYKfstb4zwA==
X-Received: by 2002:a9d:62d3:0:b0:6bc:fab5:e996 with SMTP id z19-20020a9d62d3000000b006bcfab5e996mr6517974otk.31.1700093867763;
        Wed, 15 Nov 2023 16:17:47 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:47 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/6] rockchip: Add Powkiddy RK2023
Date: Wed, 15 Nov 2023 18:17:36 -0600
Message-Id: <20231116001742.2340646-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RK2023, which is extremely similar to
existing Powkiddy RGB30 device.

Changes since V2:
 - Split "hold panel in reset" to a separate patch for the NV3051D.
 - Changed replaced common include to a new Powkiddy specific include
   to better reflect the similarity of these two devices (and so as
   to not have to delete so many nodes).

Changes since V1:
 - Necessary clock changes have been accepted to mainline, so removed
   from this series.
   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=f1db0865b4628d5e2e85347350c077a71f0629d2
 - Combined Powkiddy RK3566 devices in devicetree documentation.
   Dropped ack from binding as this change is vastly different than
   the previous update.
 - Updated panel driver to hold panel in reset status after unprepare.

Chris Morgan (6):
  dt-bindings: display: panel: Update NewVision NV3051D  compatibles
  drm/panel: nv3051d: Hold panel in reset for unprepare
  nv3051d: Add Powkiddy RK2023 Panel Support
  dt-bindings: arm: rockchip: Add Powkiddy RK2023
  arm64: dts: rockchip: Update powkiddy,rgb30 include to rk2023 DTSI
  dt-bindings: arm: rockchip: Add Powkiddy RK2023

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 .../display/panel/newvision,nv3051d.yaml      |   2 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 154 +--
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  38 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  | 875 ++++++++++++++++++
 .../gpu/drm/panel/panel-newvision-nv3051d.c   |  57 +-
 7 files changed, 981 insertions(+), 152 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi

-- 
2.34.1


