Return-Path: <devicetree+bounces-75842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C81BA908DFF
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:56:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 60916B243A8
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 14:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A68115FA7E;
	Fri, 14 Jun 2024 14:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="DkCCCk9u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4764615F3E1
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 14:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718377000; cv=none; b=Ypad0NP1LtZfRX0hABtfJF6RhJhoC9jyph1y24WMpToNuOGLNpxHw03QZc1pULV8CPa9uoMHhg2PXmgFC3kiVVq7vO6M7mP3QCFlBnJjev1KTbbVqbNsUtoIyzKUmfw8wl0OugFnzCujMXdpLzr6UbVs3mm0FHYyZkcnnXeCv1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718377000; c=relaxed/simple;
	bh=aGppeyuNsaOvw+VIPUqT0+KoR8BYjLO52v3ZXx67G30=;
	h=From:To:Cc:Subject:Date:Message-Id; b=kkmJUXBzQeCzqTtY8qq0Pivu5RxcZew7gtxIXJt2l0OKRYsN/IStsGrP90pEcI712i52j7ZJThaqRR+nS//JolDxanpdVSwvVyapHmAJrgm9Ev4i7bERmh4esJNZmHyvFhv0sDnRsAV+OlhHX+JJ5UWppSeBJdQI+8HS2a8uxr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=fail (0-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=DkCCCk9u reason="key not found in DNS"; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2c306e87b1fso1858790a91.3
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1718376983; x=1718981783; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JGygWhumk+tcqwp5GMYArhejKx0AliClordD1s0bXAA=;
        b=DkCCCk9u3HwiMDbI7Pl8xC3niDLmXBNkK0u7y76ZEueJ2w2vWQr3LpHtYq/0JYiktk
         2TejGHdsq44bDkqr7wnxOd2CzOff4yxg/jMXsBIJrma4U2cRfsDHyQgC3nwHMNSM2+mk
         Znz4i0iUc1LJ48tBI5SVY/5B9VbEGHVaFY9f1zE2Ts6HKrV1GIjJ4I6IGr4MjjWikdmq
         jv2ZnWQ16yQWg4xICiCS6F65gwNYYXxjcy9AhwlhedmnDDDdT+qGFkQIr1H/KxydxrvK
         Qea/FnizdBSvHkQ5XxWZYd5GH2Ncw3QOKU3jnvHzlNcV55XPhROenslP+SCRUiTzwIgl
         hINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718376983; x=1718981783;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JGygWhumk+tcqwp5GMYArhejKx0AliClordD1s0bXAA=;
        b=dDtGfRBld+hVkoCGrCmOUlZaxVYjI4oCbRVXRY14rN/fstmnDuURxzGov1hfJur6d/
         oVntilgHi0peyesYsIg8nNDH1Xh+VIIgUXMOCD1/qPJu/9mpEYxc8HhBIes1YPxJSSZC
         viF4oU4yMmuNhTKcWnBEhudGJuEeDE6/m2IlfoHp3fF1IW5B4LVrtzXJpnjnwL5YMCzy
         6A9nxEu2zAHzjhsXNT39yXi7dCcbeNqL9by+2zmHGqczEtmu1SJERHO37S+cA4RHoCJT
         gKrNgwu/PHS+6P3Mspe+pOFZlcWKsvg1VFsBkpt5suIatfNVIJ6GC+S7Nd1ZYy7pg8+N
         vXdA==
X-Forwarded-Encrypted: i=1; AJvYcCVnUSdYmKnx6tcj296NTsn1pTViR9VbUpxKeRS5THlljxVQotxRaVlqBYP5xyoMvrXxEKkpnQlYx6o2qhMwNy19mj1ZkXgQTKee3w==
X-Gm-Message-State: AOJu0YxncEFF1/vdIhK32esNVp8O3MvjwLMbtMa8u9oSQ81lWA3gZyZ7
	4T0udeuS7J9uLKupY37/24wTgOJVMk2dK1FGFfreTOkNjrHCSySBF99Az14tHY3PAlCuIoqIFFB
	r
X-Google-Smtp-Source: AGHT+IFF8YyHtiWKRfgYbPogRWZMDRHsWrrRNIRMzbrYy6fGxcj5I4OrroNKrSwkZwkeuKPImyd0Sg==
X-Received: by 2002:a17:90a:1542:b0:2c0:f62:7b88 with SMTP id 98e67ed59e1d1-2c4db44b9dfmr2912524a91.25.1718376983559;
        Fri, 14 Jun 2024 07:56:23 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4c467c60fsm3985913a91.53.2024.06.14.07.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 07:56:23 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 0/2] Support Starry er88577 MIPI-DSI panel
Date: Fri, 14 Jun 2024 22:56:07 +0800
Message-Id: <20240614145609.25432-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Starry is a 10.1" WXGA TFT LCD panel with er88577 controller
Because Starry-er88577 and kingdisplay-kd101ne3 are not the same IC, 
separate Starry-er88577 from the panel-kingdisplay-kd101ne3 driver.

Changes in v3:
- PATCH 1/2: This add the bindings to panel-simple-dsi.
- PATCH 2/2: Add a separate driver for Starry-er88577, and Use the new mipi_dsi_dcs_write_seq_multi() function.
- Link to v2: https://lore.kernel.org/all/20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/4: Delete some unnecessary information.
- PATCH 2/4: Use the new mipi_dsi_dcs_write_seq_multi() function, deleted some unnecessary functions.
- PATCH 3/4: Add compatible for Starry-er88577.
- PATCH 4/4: Add starry panel configuration in panel-kingdisplay-kd101ne3 driver.
- Link to v1: https://lore.kernel.org/all/20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  dt-bindings: display: panel-simple-dsi: add Starry-er88577 DSI panel
    bindings
  drm/panel: starry-er88577: add new panel driver

 .../display/panel/panel-simple-dsi.yaml       |   2 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-starry-er88577.c  | 343 ++++++++++++++++++
 4 files changed, 355 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-starry-er88577.c

-- 
2.17.1


