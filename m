Return-Path: <devicetree+bounces-81310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5F191BEE1
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:44:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F250A1C20C4F
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 12:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EFB9158853;
	Fri, 28 Jun 2024 12:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="vMI+92T/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058EE1CF9B
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719578695; cv=none; b=HV7+ycGgRj0JgH0Og/YIFgukBKGrJmnZbnYScENWEHdQw+AtXZpdp8pvAdNVoYGKcQZGY8lisW4f9I76CiuAPNombiTJokchGbTAJYeUNO6QHIYz6jbCDH5c1esZcgoHu02QLNBxSbbS8ru42nJWGPbBn9fUAhy0C5tN6GEIGZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719578695; c=relaxed/simple;
	bh=xZ09umop2njKwDmORIziHM7OVlyULHAxuuSQZf6Z7rA=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Zx6gCsqZ5bJbFu/85eXrfqn+UTXZUd//IbO0rIg4C1073uLmXJuN6mN5zuzhlJuqfUNRu+bYrFCY2i95w+VyZmA9JvjJmZ37l5DCcT5J/EI39vzGlYpgTNz1vHpm92mvsF+PTqRoF2KUCaNANF3rHfu5m6dRW1Wbpy1cm+EdsHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=vMI+92T/; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1f70c457823so2574485ad.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 05:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1719578693; x=1720183493; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ft63GgjralOgMe++xlYUJpktC9o9kPzkBcld+WAsA1g=;
        b=vMI+92T/1an93S8fZal64OdtepIi7buhrG/xkvJgiNcYNrCVZrzajlgrObSuPe4pfQ
         YyoSKMjTg9ockZjBRy8iLdC1eMascbjIyK7SXZt3ffUQXIDURgW+5y60kEQdyvBzw3YT
         fP2QtSy6FZaWZgtPlyI0h8qX1HA+ZQL7Aei0Wtk/hFB/39dh+29u1Y5JHjw/JTbu/Inl
         Ntv5hzpEeZ5cnzmChWxgB+eyo67k4lSBoEVehrTZbkagq1OTsh+0WXWMsi92JUGkDEU1
         6VkRaQ9B/PuclF0f9NdpRpskEkPjzJknoBplAdvHTM7Ypxoh2/aYJN/ZGZm1TI5k1FdU
         ZCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719578693; x=1720183493;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ft63GgjralOgMe++xlYUJpktC9o9kPzkBcld+WAsA1g=;
        b=tondGOc1UBeOWHVJ5CuPMeU+5hIJFrUBegXQHDvWqkfUqx5ks6PoFSMh3nMjHNJoti
         nGFp8MnoGWS/5fgJrhrG9UF22NbxPhB4aDKb6ww9+IDSRegDQELnfa0qak7oS3QzwjBv
         q/oXTQ7RSH9MU7xigHZFILuIkl8ueWgBMwfYBJPZawPKA1aqWBQggRXWsXGO910zhyz+
         xQdevqhyZV2DCNO58O+nGPnlORwhfjE21zmA/RO/DXR5gNAfBg5Cq0+nIOt1xuM41Tix
         s0EXjqPSit4uUU7hGXBQyBPv/bLxPqa4x+Mx7E41Nk/UBSI3QfRE9PMUOeNrerUg8DGd
         krkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBaVIxowerBBzMVTHkoTdcfC/O7GQ1d9aKIUHLEfdP/m8Zs57R5VjRJmiSnnEo8CfBctddGMGDfHZ6mygqk0b3hMdJYWLcYRm0pw==
X-Gm-Message-State: AOJu0YyLuhKilbPS82AqxXzGm6Wa0ZSWUElUG8uC4s/DddEjrZv3+bXS
	N6yplpO0G/NkZpQRGelnL7evbgLxYjnZpFM18RNP2AisDdlhq8McsjTjPFi8yM0=
X-Google-Smtp-Source: AGHT+IGNId4+C8dYDixct0tmKy6AQ4GcMFTQnFAYcvYlU1iuODGUyQya+hJnG1DQIIT/aPu1xslN2g==
X-Received: by 2002:a17:902:f789:b0:1fa:acf0:72b7 with SMTP id d9443c01a7336-1faacf07565mr36744995ad.15.1719578693175;
        Fri, 28 Jun 2024 05:44:53 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac15695b4sm14346255ad.225.2024.06.28.05.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 05:44:52 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com,
	jagan@edgeble.ai,
	neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v6 0/5] Add kd101ne3-40ti configuration in driver jd9365da
Date: Fri, 28 Jun 2024 20:44:39 +0800
Message-Id: <20240628124444.28152-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This kingdisplay panel uses the jd9365da controller, so add it to 
panel-jadard-jd9365da-h3.c driver, but because the init_code and timing 
are different, some variables are added in struct jadard_panel_des to 
control it.

In addition, since sending init_code in the enable() function takes a long time, 
it is moved to the prepare() function.

Changes between V6 and V5:
- PATCH 1/5: No changes.
- PATCH 2/5: No changes.
- PATCH 3/5: Convert the hex from UPPERCASE to lowercase.
- PATCH 4/5: No changes.
- PATCH 5/5: No changes..
- Link to v5: https://lore.kernel.org/all/20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V5 and V4:
- PATCH 1/5: No changes.
- PATCH 2/5: No changes.
- PATCH 3/5: New Patch, Switch jd9365da to use mipi_dsi_dcs_write_seq_multi() but no
-            functional changes.
- PATCH 4/5: Add a "_ms" suffix to the variables.
-            Use more "_multi" in the enable/disable function
-            Use mipi_dsi_dcs_write_seq_multi() in the init() function.
- PATCH 5/5: Use dev_err_probe().
- Link to v4: https://lore.kernel.org/all/20240620080509.18504-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V4 and V3:
- PATCH 1/4: Only move mipi_dsi_dcs_write_buffer from enable() function to prepare() function,
-            and no longer use mipi_dsi_dcs_write_seq_multi.
- PATCH 2/4: Move positions to keep the list sorted.
- PATCH 3/4: Use mipi_dsi_msleep.
-            Adjust the ".clock" assignment format.
-            Adjust "compatible" positions to keep the list sorted.
- PATCH 4/4: No changes.
- Link to v3: https://lore.kernel.org/all/20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
- PATCH 1/4: Modify the init_code sending method
- PATCH 2/4: Add binding for kingdisplay-kd101ne3 in jadard,jd9365da-h3.yaml
- PATCH 3/4: Add compatibility for kingdisplay-kd101ne3 in panel-jadard-jd9365da-h3.c driver,
-            and add some variables to control timing.
- PATCH 4/4: Add the function of adjusting orientation.
- Link to v2: https://lore.kernel.org/all/20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
- PATCH 1/4: Delete some unnecessary information.
- PATCH 2/4: Use the new mipi_dsi_dcs_write_seq_multi() function, deleted some unnecessary functions.
- PATCH 3/4: Add compatible for Starry-er88577.
- PATCH 4/4: Add starry panel configuration in panel-kingdisplay-kd101ne3 driver.
- Link to v1: https://lore.kernel.org/all/20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (5):
  drm/panel: jd9365da: Modify the method of sending commands
  dt-bindings: display: panel: Add compatible for kingdisplay-kd101ne3
  drm/panel: panel-jadard-jd9365da-h3: use wrapped MIPI DCS functions
  drm/panel: jd9365da: Support for kd101ne3-40ti MIPI-DSI panel
  drm/panel: jd9365da: Add the function of adjusting orientation

 .../display/panel/jadard,jd9365da-h3.yaml     |    1 +
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 1088 +++++++++++------
 2 files changed, 682 insertions(+), 407 deletions(-)

-- 
2.17.1


