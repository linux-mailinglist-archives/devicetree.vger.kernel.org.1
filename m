Return-Path: <devicetree+bounces-65968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE61E8C0CA6
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A795284A19
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 08:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86922147C9F;
	Thu,  9 May 2024 08:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="PU+3kcRl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FB038D
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 08:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715243705; cv=none; b=dByWwptNUZJ8ZoTYtANDxKNBvA2tkEpXFOFgrQQ5PccrrX3Ng9i6MvWIdh1ycDltBUPtTKpR9AdIx/L/Zx/X7Pdy/f6cJKg+CFcOE32Z338k7yisL+j1rIJCVzKf8l3yWC7pWk2+Jq2whirQbVNGwgStqbvrxTZdOGMbsOZkKzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715243705; c=relaxed/simple;
	bh=jT0JTlNxa6xdH3AVbQXn8A8vH3l93uTXlcMMLwiCazc=;
	h=From:To:Cc:Subject:Date:Message-Id; b=QQZJ8pg9+3M3huRzWoQd4pRoNeJOzNYEodzZABUuUAma7tMMKCHjvxoOPzrjvuIRyzeH3/2sC8jRS5HxQZQeZhGtiPoRfsttHRNMt9GoDXkul86BzS6vjJtmYN9ZanZifoCgweE3C8sJKES0FVzIFL3qgNGutq90Qq1MACw1W0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=PU+3kcRl; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5b206048ac2so258078eaf.3
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 01:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715243703; x=1715848503; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uVXaxhQDG/e+z0u9o3oNc0l0r1jC2rAcYMDmhF8XPmk=;
        b=PU+3kcRlXaLoG8oTv72f8ZNC8rqtxNXU0KUxXkzP5n+swng/Pp+6ARekyWU7at9GMF
         9Zd/8e6s3eMu1nB2jOOB2BqKPZBg4aWvY6M7ieSXgX/pFUJr1B3RPD1BD+T4sn14lF7X
         zubFlvQMaJXSSyPCguQtB6pzp9aZ1cBtqea53cUpJUk/GCDeJm39RMRoerU8jfRx/5P4
         ekJhcoAso3D/2Wdc6lCgY8xkrR3KdWvywj/HRKScTpktMVprijoOHYaRFebWbq/LhNi1
         FocCmJBOqDa2kpZcc6h+fdDS6kIHa7VzfU5BYwr+s/RUxxOT8+1Ylw04Wa9R5W/YA5nA
         qixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715243703; x=1715848503;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uVXaxhQDG/e+z0u9o3oNc0l0r1jC2rAcYMDmhF8XPmk=;
        b=vBTcnbJTd4GmWp1HFY0xoWxUdiNOpSKAzQasWpRc5Jr0ytxP1GQ8XvwdEkgx2o5bDG
         VUO5x6VpvT4V/FO15xMNxrEO5hL3a8MIxdPAV9bVwjf9lgmhN1U82Wd6plbXf2qT0zgy
         HgmnIjErRb5FiLh94TdGLEfzTNav83nPNNuaD6q/1lZLbppJZpxvLUIg8yP2ttCdizaS
         BO3B/YGWQNL4MAJ6wDOAnWC34kkHQ1BmioGkevx6BBBVg5I3qLwpTbWJHrX2CiOoOH4H
         QK1gZdk3nYhLJffn/60t2wvh8Tk2msOjdcnzZhOoumoxHaVX8ZNYdLAcXiPqfq4HibCU
         DCiw==
X-Forwarded-Encrypted: i=1; AJvYcCVtimoF8X1R0eO8NWDoxHdyDyQaHnNiaQrJRSvRhRSxyekoZitiFFdV0KobYZfeqpvODMr6BWqBmKSXFvif2ysXLZXd+iAItU5ZZw==
X-Gm-Message-State: AOJu0YyGlZy6LDuSGEYh337NXq40AS0aOQ9rMYuy+awfMLR/CBoINe/w
	C/rMiBLhIBKFRLs7B9gUibtbVaojjbEnTcB1YbG4KXkMjLMNjbeYBqQh97iLZ5U=
X-Google-Smtp-Source: AGHT+IH7FwkdXhpSDeH65odfeyLHVQOlJLZGrkXcbsYE5JHDKqIXGvBLy36PBQVCOir2q3dKH4RLxA==
X-Received: by 2002:a05:6358:8419:b0:18a:c679:39bb with SMTP id e5c5f4694b2df-192d2a131cemr599828855d.4.1715243703093;
        Thu, 09 May 2024 01:35:03 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6340c8a6967sm792643a12.44.2024.05.09.01.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 01:35:02 -0700 (PDT)
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
Subject: [PATCH v2 0/2] Add starry bindings and driver
Date: Thu,  9 May 2024 16:34:51 +0800
Message-Id: <20240509083453.14073-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add bindings and driver for starry.
---
Modifications between V1 and V2:
Kconfig and Makefile configurations added for starry driver

---

Zhaoxiong Lv (2):
  dt-bindings: display: panel: Add Starry-er88577 support
  drm/panel: starry: add new panel driver

 .../display/panel/starry,er88577.yaml         |  59 +++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-starry-er88577.c  | 444 ++++++++++++++++++
 4 files changed, 513 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/starry,er88577.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-starry-er88577.c

-- 
2.17.1


