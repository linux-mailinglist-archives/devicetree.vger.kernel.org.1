Return-Path: <devicetree+bounces-87176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B44D938BFD
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:24:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB5351F217E9
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC2F1684A7;
	Mon, 22 Jul 2024 09:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="E76QfAfh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BA61607B4
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721640284; cv=none; b=nIZ3fUX0fS8kImsI3G9fyRS89mqMIpWlb4kwT6tnYBz9NkQonot/On0pWQ+znmgnhN/VIR3gujwNr6n8cdVlJ7fbMwNDr9SugQ6ucKoxvdQKZPCjSv8s5Ijxf5XCwUrvOIPf/mcn0CWGpoyDL8gz1edO+GEDGaYs1CvyMuYoBiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721640284; c=relaxed/simple;
	bh=c4VO7E8slmAUwu7CrskMROEb37MSLfQX0amVK8s9KKE=;
	h=From:To:Cc:Subject:Date:Message-Id; b=CV4R2pOPoRBiwxSjvTnp6fL0XGhOD9t31ysNpe9GUYexdxsVTJbVJSG/ncq3FSENqWk+PeScR47ms8MgUNS2cacMLr8NReOsmZ1yzJIJOVzkE8DcvLTOzWOSTz7IeDyVTy3qOPhYPD0K6WH4tm3DKGMRCw3HFhMmgi3FcBHCX8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=E76QfAfh; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1fc66fc35f2so25701845ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 02:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721640283; x=1722245083; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VumjMZEwUWBgDMHY2K8ArTMwJEHcLMaWA0OatEGrAqY=;
        b=E76QfAfhpYaVpWAOOCAYSD3J/05eiclIGrQgSUzIcd7rYbY0MwIJ52ReYqdTb6vlbi
         OuHu0hSo9Ui6eKO8QVUKLvAMWrfm11pvMP+0eNdwBSBwqLHHm3f1AHMg/wFRmHMOpXF7
         vc4GbkYFyoTamldK0ja7+GEtZopGkV2npqgYj1ZSGS+09TriR9xZti83APCwynykr8X0
         3VKTClN/DQxh6+2jZfLjSHm3taRpVUQ9Zl+tAPMpkqQddk1a3vmxT81opVvRWr0xwgai
         64a7jKGND/IeFg4L60F+8ZHJBbtKF2E7eFarRm1wWN7iMYGHNH5sKRAaNYwgY7kpYKLH
         fjnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721640283; x=1722245083;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VumjMZEwUWBgDMHY2K8ArTMwJEHcLMaWA0OatEGrAqY=;
        b=i884bJrIElvjHrB39xuXpIDzqKh2FzMQbtRPGUPfBydKxhv5Gagx0ZhCOljNTo5kD4
         M4imtpH7Ob0NlAfcQ9UpjiPm6Mrs8HpXT40bZULd/Go5o6qlpknHdB3Pz1+tHQd6I4oD
         k+j0PjyoDsYKFr3V4pzigly7m5thpxMgYO8bea8gjEMcEmEcVE7TzJRZMmmEc8ERVWWB
         jZ0n1Enk32l/XHQm+vPg8C7VRhap5sZZ+8k11t+B4N1QGvI8Dii0OeviWzdzblJSkoI5
         B6xIhTy3xyVu4Qh5r8A1lY/LdelGwFeDJ15hexS99PxYEomN93sHE3IzIRxhjNJv3Age
         UQkA==
X-Forwarded-Encrypted: i=1; AJvYcCUHVNhm8Qkb2NprU3OMZWXtXuauK8ZervXNgc8kiu8l0SYdYuHbFze8xfhas0qp/zTg0O2ZZgvJ9hHlNtecTTky4bBKpRtEutUDuQ==
X-Gm-Message-State: AOJu0Yzw7jxR9YeZa/g8opxvIF+D1Nuj6sKuHHyozbFg8B/OA6bwEvz8
	SH63pEOg9tc3rqP0w/JtJQhuCPFjYNeQcSF9zUyGp8U9GtzMLkGBh1a7H1oi94g=
X-Google-Smtp-Source: AGHT+IGJ+uvD9+yLKvevm6ajJFqdrqJc1OpiqXZiUgLLrUs/hmPSnu+ZQsCsNmS7e+iL5Byj4jAfaw==
X-Received: by 2002:a17:903:234a:b0:1fd:7432:16c8 with SMTP id d9443c01a7336-1fd743219a7mr120075385ad.10.1721640282674;
        Mon, 22 Jul 2024 02:24:42 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70d26efe61dsm1639901b3a.149.2024.07.22.02.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 02:24:42 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v3 0/2] Modify the method of obtaining porch parameters
Date: Mon, 22 Jul 2024 17:24:26 +0800
Message-Id: <20240722092428.24499-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The current driver can only obtain the porch parameters
of boe-th101mb31ig002. Modify it to obtain the porch
parameters of the panel currently being used.

Also switch to the drm_connector_helper_get_modes_fixed() function 
to get the porch parameters.

Changes between V3 and V2:
- PATCH 1/2: No changes.
- PATCH 2/2: Keep bpc settings and drm_connector_set_panel_orientation() function.
- Link to v2: https://lore.kernel.org/all/20240716121112.14435-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
- PATCH 1/2: No changes.
- PATCH 2/2: Switch to the drm_connector_helper_get_modes_fixed().
- Link to v1: https://lore.kernel.org/all/20240715031845.6687-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  drm/panel: boe-th101mb31ig002 : Fix the way to get porch parameters
  drm/panel: boe-th101mb31ig002 : using
    drm_connector_helper_get_modes_fixed()

 .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 20 +++----------------
 1 file changed, 3 insertions(+), 17 deletions(-)

-- 
2.17.1


