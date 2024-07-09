Return-Path: <devicetree+bounces-84292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65192BBB0
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:48:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E7C51C20A57
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 13:48:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C6615B0E1;
	Tue,  9 Jul 2024 13:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="gxsJ06lu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C089C158870
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 13:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720532888; cv=none; b=dkixJWA1BcaJuGd/J1CoFbgi2deI5TncP8T8uoaknt1PJrN9h3ZvT8M+n/i54yPWTzrGSlfYsCWgfX4AuEw1n2u22Et17FoIvQ9IXSWF9VoeNzhuI83SHvuv/0k/aVOPs/zeoDQedmile88DcCmqoD599ltamtzkoCKZi0+JJD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720532888; c=relaxed/simple;
	bh=p6vgAX5u010C/grGylOQ6jhewZC6S25BmWB230HdiU8=;
	h=From:To:Cc:Subject:Date:Message-Id; b=B9JxMLuPS+UX9+EByvdwFSgGdm6QlANRWWpKGOt3+6BFFUMe69aVISzA+WLtKP7qqGiHQBZfQT9uAFom/JBNbTi8iy6Ny8OVjVvBTex210ydxoi0dcGvYynGA8AkvO+GvgiOOEBao4s0yPr3uTaDlHKXlJt6zFP+0oDifTnXIuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=gxsJ06lu; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-765590154b4so2489928a12.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 06:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720532886; x=1721137686; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=twhm5JhqawxLSrtm/hP6nNR4BfXjcByvCQnSymdx3U8=;
        b=gxsJ06luDkKwt28oXys+8/DS1c3nJGVK2PEtEnTrTqI+hWjtuuN1PWLC8/iDwx6l8b
         5sxI9bpgei6euRou+Vg4+oPF24WGyRmyMnku9OQZpztN8nNm8M88YD7swia1ES3yFvBI
         ssBX5+PMnhYYfdSPWuFwCQLVptUbkF8Q3/2f+m9jPm/J0OLVk9DEVibA+ocwKcUt7rmB
         ydPmrpk1aoaGSLzxRiUhEApZ6Mz3GHGuvz1LJLDelrEiIYzpEpE8qwYnQ9xKq6fzdOrW
         ABzq87dRHymPd5X4bY8TC6ci1NmFMEaVdxo32O881m51Cejy/2NLDIPgb/jo84nsoZ43
         A61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720532886; x=1721137686;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=twhm5JhqawxLSrtm/hP6nNR4BfXjcByvCQnSymdx3U8=;
        b=LxTibrzHbXB8W5caKDBfNUdJ1u+W1TJVc1+S7N2u+DtXzA6NviEMHAG7rtCK56relt
         CDRUnBkcFQuNmWAAi1ejRxsjvihXnTo+02yimUQ/v8q8PTv7F4QPqIusQIplN7YzMVRT
         dnssjq3seE9rx7FFo0Ps+jvXYHVw01aRGcLmg1xuzUVRet68UfX1dZdAs6RENczXbueB
         btvYgeOpcrueHmBIO/4TR7CSgAVwVdGptzumUgA2tcAR6olGN1Yc1PIvzr8obICIWR0o
         WuRHsvMaxpXskW8/LeaXNUYXbQp/ZwtnlhcyYwAyha3/TuoAr8Kzkcg7hb5oR/UlCy7a
         HseQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWfP513m2tzvz2/y6FTWTpjZ/mPHVW+8qiatZz1MN1/e+GWzNUw6vDyguBGb0o4NHFeETK2TpyszaAXAwqABLJcY9QYWYt5PVD4w==
X-Gm-Message-State: AOJu0YzEdjRRXt/ATGc8pX7c5Q5iE/1+m0U3ekFue9VehczotwzvD8h0
	A0nIxWoEnw5jwrXL1571a2XC+QCFV+qeO1kMToXgctp0C2WV0MxFq4v52+np/Sk=
X-Google-Smtp-Source: AGHT+IFKbx+aySEWXrw9l6mO6v2Qj5MAZYg+fkIy6r/nddJ2H4+OlIRSpHezE5qwyR7Sturj8RgDEg==
X-Received: by 2002:a05:6a20:244e:b0:1c0:bf35:ef42 with SMTP id adf61e73a8af0-1c2981fbfdemr2877962637.3.1720532886039;
        Tue, 09 Jul 2024 06:48:06 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fbb6ab6b9fsm16211685ad.138.2024.07.09.06.48.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 06:48:05 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	airlied@gmail.com,
	mripard@kernel.org,
	dianders@google.com,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v6 0/5] Support Starry er88577 MIPI-DSI panel
Date: Tue,  9 Jul 2024 21:47:49 +0800
Message-Id: <20240709134754.28013-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Starry is a 10.1" WXGA TFT LCD panel. Because Starry-er88577 
and boe-th101mb31ig002 have very similar inti_code, after 
discussing with Dmitry Baryshkov, We will modify it based on the 
panel-boe-th101mb31ig002-28a.c driver instead of using a separate 
driver.

Changes between V6 and V5:
- PATCH 1/5: Corrected the use of "->init" in struct panel_desc, and modify indentation
- PATCH 2/5: No changes.
- PATCH 3/5: No changes.
- PATCH 4/5: Modify the commit information and "reset gpio" binding.
- PATCH 5/5: Add two lines of init_code (D1 and D3) to modify the internal resistance of the mipi channel.
- Link to v5: https://lore.kernel.org/all/20240704072958.27876-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V5 and V4:
- PATCH 1/5: Add a new patch, make it compatible with more panels.
- PATCH 2/5: Add a new patch, change devm_gpiod_get() to devm_gpiod_get_optional() in the Probe() function.
- PATCH 3/5: Add a new patch, use wrapped MIPI DCS functions.
- PATCH 4/5: Add it to the "boe,th101mb31ig002-28a.yaml.
- PATCH 5/5: Compatible with starry-er88577 panel in panel-boe-th101mb31ig002-28a.c driver.
- Link to v4: https://lore.kernel.org/all/20240620115245.31540-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V4 and V3:
- PATCH 1/2: Move positions to keep the list sorted.
- PATCH 2/2: Adjust the ".clock" assignment format.
- Link to v3: https://lore.kernel.org/all/20240614145609.25432-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
- PATCH 1/2: This add the bindings to panel-simple-dsi.
- PATCH 2/2: Add a separate driver for Starry-er88577, and Use the new mipi_dsi_dcs_write_seq_multi() function.
- Link to v2: https://lore.kernel.org/all/20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
- PATCH 1/4: Delete some unnecessary information.
- PATCH 2/4: Use the new mipi_dsi_dcs_write_seq_multi() function, deleted some unnecessary functions.
- PATCH 3/4: Add compatible for Starry-er88577.
- PATCH 4/4: Add starry panel configuration in panel-kingdisplay-kd101ne3 driver.
- Link to v1: https://lore.kernel.org/all/20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (5):
  drm/panel: boe-th101mb31ig002 : Make it compatible with other panel.
  drm/panel: boe-th101mb31ig002: switch to devm_gpiod_get_optional() for
    reset_gpio
  drm/panel: boe-th101mb31ig002: use wrapped MIPI DCS functions
  dt-bindings: display: panel: Add compatible for starry-er88577
  drm/panel: boe-th101mb31ig002: Support for starry-er88577 MIPI-DSI
    panel

 .../display/panel/boe,th101mb31ig002-28a.yaml |  21 +-
 .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 303 +++++++++++++-----
 2 files changed, 236 insertions(+), 88 deletions(-)

-- 
2.17.1


