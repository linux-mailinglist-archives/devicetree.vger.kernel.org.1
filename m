Return-Path: <devicetree+bounces-238307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 399B0C59C2F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:33:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 861864E0223
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0732C31AF38;
	Thu, 13 Nov 2025 19:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X0/uYzGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B05316188
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062331; cv=none; b=D9urR57b09UgyZSNP/nk371yM8qzE9Guz9hfqnSQdQuVOVpwca9Q28nR67JTg0DbHE3ay23h33GXl7VHoT6RWcQhXvlfLXu8zvFLeyUP2YWfGBhTomPYO1JbAzpixSCuz6ouSXGa+c60Fh+jp2jj8dKkQcj2KA9zXOzGkHvv+8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062331; c=relaxed/simple;
	bh=I5HbGkyc/sunmgY83wGJUyYGqn1DOWOkvyn3f5pY9XQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OgLSF+RJY7Ros0wkUOi5W74o1JS4rgyZfFZ7/9QhvDTETLYIBlSBMpA3WA8QJwz4ZqVSsZyWT463X3M3h3kF0vPoHunxxVj+yg+krLFWiTaVmNwATDWL1muJuunQBmm30bSAfqA96qrjlH/Pg/Cbqsj03LwXH53tVHtZi4lr5mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X0/uYzGZ; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-7c28ff7a42eso471779a34.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763062328; x=1763667128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lw/U+z5I4kWuL5rL8h4E+nT2ml8zVb8Mlz2CECK2kyU=;
        b=X0/uYzGZ9QByDOg2gwnPTSFdds30oN//WQteJn+3ZVokKNZrKc1iCQ7bmbyYZflXv7
         2NT6ss4JS1d6nJ7IDgIHmgt35/9/GjzeUMoVtUt+7B7w90e7tRErqLf3b1S2CED0JLbr
         //wkIvpQb7Kqt6UcSF351A8pcQBABTkW5p14dTmuiZOahQu0OMAfcUFYdseAyTm1cucA
         dDqiptzCdDRVKvtOHA9R3QBLppM2zmtTSm/63X9XTzT1dgK2zyk7VANjImnSRSH3zRH2
         1UrWbAxxgmcxn3xFtjYVLrhBF3EFYhSZdq8Fsedw4WfgRbsuUrtTD3JT0p3MuId5FHKU
         VM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062328; x=1763667128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lw/U+z5I4kWuL5rL8h4E+nT2ml8zVb8Mlz2CECK2kyU=;
        b=tf7mjxb18ulO/FSaiPU1M5U2NX2uAAeI1z7/ws16cAeauOaTxqAsqSe0hxFsdR7a9N
         DHP9XapHBMvQszsC8GxakFtUJVJRD/k7EjbKG3U1sdONUHwiVUYBXBFnsJnyE8uIF4WS
         zxuYMoRvH1yECQCdgYDZbKjIIOaKG1kCiM4c3TYWVMshq7424JwXHf85CiXpiGo6YqR1
         3OeJQ5tOdXAwKa+GIbGCmm27TwXeL6x/k+Mb1LQISlaKu3v6Xj4sb9KS9zICXKJksfBn
         C9403RnvOpv36DgaTPhIkufA5a0mGYYpJCLsih4T9c0MLUA8htNR2kib3QJlVz9QULZz
         0W9A==
X-Forwarded-Encrypted: i=1; AJvYcCUW+l4PHR75D7lo1b16lHI6JwfG/046u9V6ZSK97A5piMrjhlujHuecxm+s1qDbWIdrtmcvNli4csg8@vger.kernel.org
X-Gm-Message-State: AOJu0YzG97OgGu8jjcJ+NwBdF0rK57YcYr29VFkqteimA7JD48mLZP4C
	fCAG4qzjNTeGgm1z0/HzE80ldYMuvsnqlUSe4K5TMQZEXgx+hHNxnfeA
X-Gm-Gg: ASbGncuGpmnhYI0wsL1IQ5Qt1P4OdUnKXzWgyqNlt6mRUUg48TiIbnnqvOKDALVu9gG
	Hr724bzGkxa4RJL4gnZLOP2sDE1WfPG5iNmUETVUfYhhRlvvIvthHBp4vTBOJWI15VunfdVguZy
	wdXavkK/M4EtpPXzfhLcw5fPo+NhUomd8W468x4OWF51hJWLVQue4EQB1l9t6aOLiLQsillEqz8
	fJon/yOx1ZboYuvHU2sfkr32gT744S8xm/sy2pWxFlh2RweY6ZZAmCU1ocYZQy/C/oRppFN5j9Z
	24ggATkDo1W9V0U9ZBHU2xPxVI3DfSxVuowcvRiv1nWTYNpuiWoO2g4lt3/n2nasq3lHVsDFOCu
	HsA51wPIqI3Cdzy+Jg0NlZTtiwcP5bHv9a5ZzmpqHLSRIUPBGKUwD+yD94fXJ+RKal0/8UtpVsj
	3vd5TSQBbf
X-Google-Smtp-Source: AGHT+IFEgyX0ltKX3lDaJ+pACBb477rkzx0l2ZFB+JcPMhVtmDYkqFRhnbMiih50devZNHV+aa6GYw==
X-Received: by 2002:a05:6830:25d6:b0:7aa:4e01:f57d with SMTP id 46e09a7af769-7c7444fe486mr424984a34.18.1763062327571;
        Thu, 13 Nov 2025 11:32:07 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a392fa5sm1693527a34.19.2025.11.13.11.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 11:32:06 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 0/3] Add HDMI for Gameforce Ace
Date: Thu, 13 Nov 2025 13:29:36 -0600
Message-ID: <20251113192939.30031-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the micro HDMI port for the Gameforce Ace. This port does
not have a HPD pin so it requires making changes to the HDMI controller
to support this configuration.

Changes since v1:
 - Simplified checking of no-hpd parameter and changed to
   device_property_read_bool() function.

Chris Morgan (3):
  dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
  drm/bridge: dw-hdmi-qp: Add support for missing HPD
  arm64: dts: rockchip: Add HDMI to Gameforce Ace

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |  6 ++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 32 ++++++++--
 3 files changed, 97 insertions(+), 4 deletions(-)

-- 
2.43.0


