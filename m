Return-Path: <devicetree+bounces-28421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA1E81E495
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 03:38:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 085CB282AD9
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 02:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F81F367;
	Tue, 26 Dec 2023 02:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="o8Ol0Rmc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06908ED0
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 02:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3b9d8bfe845so3129571b6e.0
        for <devicetree@vger.kernel.org>; Mon, 25 Dec 2023 18:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1703558271; x=1704163071; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7688HJ/rcUi3p00pdT4WrWHdJeyn0WG00Iltm/DVmAw=;
        b=o8Ol0RmcMNsjfIySNP35q3kiYJVN3MWlnfe7Op6NCGsUqFoRMbwRPMJ6oyRRXkIpmM
         6bfiMuHFgVIUr8vfcSd/NfwXYmokflWvscbS0x8jPB7eMv/xKFe+0RcXRsaXxRTWRvcf
         tu3bPBF6+IiSWy8w0TRQAG4ir1K3+ky2quiutWyNROXh+zp1zpzI3hA57FyQpsaZ/4NO
         lj2+FTJbrTaev5OMwI8jESRhNCqaFY1QWh/2Aku46urt0RpXIcrkR13Uv/7pnCSAUjJc
         WU0yDiKzhm1PrHhW1El7VPteAMVf3iA6yEAODwr40/ad38Jfhb55e64oJkn66LKHlveX
         nLcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703558271; x=1704163071;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7688HJ/rcUi3p00pdT4WrWHdJeyn0WG00Iltm/DVmAw=;
        b=QbxW7Lk6fNon43z7zqcG+S2EUy2uG+Nho3nXRtkcUanaXglnGoXif8vYd65dyOMWEk
         07SEw25d4OxZAEdV+MsM7BAxRqjfOb6qxtG2G8qHRRT7kTQ4ePF4ziNk596Bdkme48mT
         EzCZIvmjpBpEV2K5DH79E99TxaeFgmtpaEcMpQqyRCzBwpQY1f8G2/yiZxaSuvU8z9Ym
         LT/9iQ+2R3UzdIIiZqgQukcc10+aT+M+skHcstpHxcne1bcNtL1d+LXRjIWi0KukE/tg
         6duAx9hh82p8Wx5JEIvieRHDNfgm6TAwtyjSJqDltXSfOdWPDLsNbDr5FhmkhjsrogRP
         /Qxw==
X-Gm-Message-State: AOJu0Yyf0slSXQstCc8etQSi01LMQo/Wp3ObunOp1hzgeNzzf/ZanEOt
	IOOHv2hx3D2TAYyI5TkESKLL0m4ubBPgVQ==
X-Google-Smtp-Source: AGHT+IFLfchui9buIYuRgIzZ5I2RBFLDU6NLV2WfH5+BDv5h7cOk/TH7yU/SdXaP1bLR+zOV/ac//w==
X-Received: by 2002:a05:6808:1a06:b0:3b8:b063:6ba8 with SMTP id bk6-20020a0568081a0600b003b8b0636ba8mr8926977oib.87.1703558271056;
        Mon, 25 Dec 2023 18:37:51 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id b11-20020a17090a8c8b00b0028c2de909e4sm5083190pjo.50.2023.12.25.18.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 18:37:50 -0800 (PST)
From: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
To: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: dmitry.torokhov@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.com,
	dianders@chromium.org,
	xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [v2 0/2] HID: i2c-hid: elan: Add ili2901 timing
Date: Tue, 26 Dec 2023 10:37:35 +0800
Message-Id: <20231226023737.25618-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

ILI2901 requires reset to pull down time greater than 10ms,
so the configuration post_power_delay_ms is 10, and the chipset
initial time is required to be greater than 100ms,
so the post_gpio_reset_on_delay_ms is set to 100.

Change in v2:
- PATCH 1/2: Modify compatible properties values
- PATCH 2/2: No change
- Link to v1: https://lore.kernel.org/all/20231225092843.5993-3-xiazhengqiao@huaqin.corp-partner.google.com/

xiazhengqiao (2):
  dt-bindings: HID: i2c-hid: elan: Introduce bindings for Ilitek ili2901
  HID: i2c-hid: elan: Add ili2901 timing

 .../devicetree/bindings/input/elan,ekth6915.yaml          | 5 +++--
 drivers/hid/i2c-hid/i2c-hid-of-elan.c                     | 8 ++++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

-- 
2.17.1


