Return-Path: <devicetree+bounces-14877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB487E73D5
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 22:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B16591F20622
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 21:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93EA138DF3;
	Thu,  9 Nov 2023 21:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pq67HwjB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABD337157
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 21:50:16 +0000 (UTC)
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2F8F3AA8
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:50:15 -0800 (PST)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1f03fdfcfacso731763fac.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 13:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699566615; x=1700171415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KHWtDVUYZSf0Guk+L6n4AjbYj4AnCFaIY1Xxcyv3l2c=;
        b=Pq67HwjBmGK6z4ZuKgjP0OotFcZbRoNiqSCXB0sNehJ6XjRsEn+IG1R/txbEVCswHF
         JzjUtViBR1/In2HKHdilYtV+Arp0IlY4hpMKdFR430HpAxVnIlApeocWsvbS1zFfJk5S
         h5PhW1O2bQ0s8t4CGbm3aEz41ZpaKna9DGHRhII98G2F/pt8R5fOqYHatYt2jRzDXQk2
         SKsIMkqIToeaW2ktgdXmz/tnuCoJt+Kv8qPIOCX19N/EVe097RmZMTmiHKYgKnN//vBC
         rlkruQVqTROCF1V1PrRoFKAiYGzr4bFmtTq0KqUfnDYM/dZgKsOMK5LOVRjzHMYRXQH4
         +/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699566615; x=1700171415;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KHWtDVUYZSf0Guk+L6n4AjbYj4AnCFaIY1Xxcyv3l2c=;
        b=ZGB2dgBrKU+6mFxYacaYMSp6CKUtHL7sLFH1IAr9HEGUIYN7jpP+Eio+VkxjrKY7ss
         b0kc6BvUFkZJQdQBeITGeLIDbtJg8aCc4xJL9pAckb5InzxSGliUPGP/fOGwBFtmGPwa
         BrZj+i0wWcQJvJu9lyOmgaPOTEfESRusaaTyC37tb5XSawdNutWH54/L0KnXwXOgKSNl
         NcFmIauEFWMUS9nbABkTdw6LgGwACD/HOeMK4QLxxb35MzHUnA2zJXxeA1f9FBpy9oZl
         mr49epzEy0epAkNNCCMSxx0HV5kWoZASpfw5qQA4GXFlZBfAwjpGUFue8bJsL97lfR+u
         DLvw==
X-Gm-Message-State: AOJu0YziTqMMR05Ss9MpRYAMQvUEhbMHij3htUWqJ6jj6Y1lqXTxB8/F
	yT2N9AA7bL/sghnN0lZlzo0=
X-Google-Smtp-Source: AGHT+IG1tUCieKLhfvTf/RY4xeb9CnluV/OI/K5u8iVdMN1jloug13hPXlZ6R1USTMrKbhXhGYgFWw==
X-Received: by 2002:a05:6871:723:b0:1ea:fd4:58fb with SMTP id f35-20020a056871072300b001ea0fd458fbmr6987340oap.52.1699566614875;
        Thu, 09 Nov 2023 13:50:14 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id tp22-20020a0568718b9600b001d4d8efa7f9sm864003oab.4.2023.11.09.13.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:50:14 -0800 (PST)
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
Subject: [PATCH V2 0/4] rockchip: Add Powkiddy RK2023
Date: Thu,  9 Nov 2023 15:50:03 -0600
Message-Id: <20231109215007.66826-1-macroalpha82@gmail.com>
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
existing devices from Anbernic.

Changes since V1:
 - Necessary clock changes have been accepted to mainline, so removed
   from this series.
   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=f1db0865b4628d5e2e85347350c077a71f0629d2
 - Combined Powkiddy RK3566 devices in devicetree documentation.
   Dropped ack from binding as this change is vastly different than
   the previous update.
 - Updated panel driver to hold panel in reset status after unprepare.

Chris Morgan (4):
  dt-bindings: display: panel: Update NewVision NV3051D compatibles
  nv3051d: Add Powkiddy RK2023 Panel Support
  dt-bindings: arm: rockchip: Add Powkiddy RK2023
  arm64: dts: rockchip: add Powkiddy RK2023

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 .../display/panel/newvision,nv3051d.yaml      |   2 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   | 161 ++++++++++++++++++
 .../gpu/drm/panel/panel-newvision-nv3051d.c   |  57 +++++--
 5 files changed, 213 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts

-- 
2.34.1


