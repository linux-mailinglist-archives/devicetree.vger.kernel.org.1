Return-Path: <devicetree+bounces-82333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 756F8923E52
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 15:02:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31EE92821F1
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 13:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F36116B748;
	Tue,  2 Jul 2024 13:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="NO6ekn7W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9609A158871
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 13:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719925324; cv=none; b=mJWz5l3e26NTDQfQBLZmldgtPGgj29q4OBK+yHTEsMtKxaqfb08dcaqNLEvjiIt5rFIcw6FnFzlOtR4gIBdI+Ugs63BAdAMBfOCjbZOIXeWiBKJsYH5W+EXLZcglsl7YEoEIHT6+z8daWtdITrap0GRAsZyZO/YJQDVgmOnS5DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719925324; c=relaxed/simple;
	bh=Jdui+jlwq/em1v1SDdy3Tz5tDhSWrS0+WZkZ5BBsWOI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OtTa6zfBL2GBNQ+JraF1PjXg8K7mh1VAZahH2yrlVmj9bqDVlkBeI71RksXDObHb/e6oySqUAHqyLTd57pH1Rp+IRRq1umBtAYVL4lxQ6vZSubeg4YEmVmDI3iUjS7hkGfeMC1EvBbOAQMRSfUFAVeSf7IcAFHn/RKULJtRwyvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=NO6ekn7W; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-706b53ee183so3541301b3a.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 06:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1719925323; x=1720530123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qZtrnZ09n95IC/BfvYp8Bv1QvGg6hzmuOXjgAkx8r4U=;
        b=NO6ekn7WnFJkYgtjaR5fHEE5gBYjzrqhTD/SxJaXmYjDY+T0ORyhKfk7WeKMmREV0/
         CqB9kZG0mfCdM25sJYHq907woeYpGzV26DcjnzYM53wdqH3oEcS34qAr+boop+498sau
         Z4zsZKQickgYftUli83nTtQsWIi/1ZPIx4oN1LTOBoBsgVuYEvSgf7O3qSUD7GVO5sKg
         u1axJ8GcxxCJebvSflE/lY76SYgDGcy4XFLH9z8OtW4uUv81Sj5wVJlk7FFgyFYCfdXg
         XSpXPxMt0qPAU0POU7sYA2MDo4h8Tmm1vSzWi0cGEP1oe6x+ljFHhIkBbtxU+M3scJa/
         qBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719925323; x=1720530123;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qZtrnZ09n95IC/BfvYp8Bv1QvGg6hzmuOXjgAkx8r4U=;
        b=kz54wJtp/WLZKgtjweGVG0toAF+0+RvhBXN9AFDB5q3wI3bIVqnwYVt9q/k2PA8HVA
         /JYDvZngrg0eqC04e/fPxnA6Vk1j2n9MTGOaNUD60QuwQRsWwwfK3uHGaEqajZyakZj4
         9JRMQ1YuCVc5GPzqP3xI9FJhdnPWf6vTK/y4+7jhq4zc9FHBPPEoV69QY/Qq5CNVJNhu
         y6eA6BuEW76g62YaoKXDbrzNvIe5T11PZHSyz/YGJSSvHHRvjcFGxa1VzefHxc7U2olv
         AcNYrYOgMbrsaLkdn2rNLq8x7FQkD9EA11zbHxJE3cBznWhONjoTCOX58ZbN4cPXf6Va
         0rEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUF1PV0EzgpAMZHhdQ0n9vgncbuqkRHSkIZH0/+nQcJhzBR9YULXROelQf7+RyC3R9cZ8FOFKgUVad1pL3cD+JBcv+0edyTGoXLyg==
X-Gm-Message-State: AOJu0YyPShwEE3UlscCLDTxzdIt7mwNeHpEShVTcGikiTaxwQ+jYfCvz
	5SfeZe0LrnU7UHMZuHmG78NAPMmd390OCj+WuEn8dEzeLeq3t2RNGQX+MqlYQXM=
X-Google-Smtp-Source: AGHT+IHHwOYQGp6vYM2oRjMRQI8gLSDsunWGnK1uML0DYGFvbUO9k1Pbtg8uL4+EUK2Pgm+LWhCk4Q==
X-Received: by 2002:a05:6a21:339a:b0:1bc:e9ad:e736 with SMTP id adf61e73a8af0-1bef610ce49mr13461970637.3.1719925321416;
        Tue, 02 Jul 2024 06:02:01 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-72c6c8ec50csm6233111a12.59.2024.07.02.06.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 06:01:58 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	swboyd@chromium.org,
	airlied@gmail.com,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Cc: lvzhaoxiong@huaqin.corp-partner.google.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] Support for Melfas lmfbx101117480 MIPI-DSI panel
Date: Tue,  2 Jul 2024 21:01:36 +0800
Message-Id: <20240702130138.2543711-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Melfas lmfbx101117480 is a 10.1" WXGA TFT LCD panel with jadard-jd9365da
controller, which fits in nicely with the existing panel-jadard-jd9365da-h3
driver. Add compatible for melfas lmfbx101117480 in dt-bindings.

Cong Yang (2):
  dt-bindings: display: panel: Add compatible for melfas lmfbx101117480
  drm/panel: jd9365da: Support for Melfas lmfbx101117480 MIPI-DSI panel

 .../display/panel/jadard,jd9365da-h3.yaml     |   1 +
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 246 ++++++++++++++++++
 2 files changed, 247 insertions(+)

-- 
2.25.1


