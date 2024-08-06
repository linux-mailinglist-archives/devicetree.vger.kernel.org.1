Return-Path: <devicetree+bounces-91203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 271619487F8
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 05:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D10A41F23C7E
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 03:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8033053363;
	Tue,  6 Aug 2024 03:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="cKVo84iZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E4C6BFB0
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 03:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722915630; cv=none; b=dNk4KOIDrnlK9zoWWTgCYf44mbQElskntNxgKApekA3hT7XWpSKVn0snRN/xN1vQxycAr4ibZErKKTq5EbfFNWTx9UDmGARHxOyVEsOaNafBEWE2MB3eC+gzyf6RlmXmGX8/3B1p0T6R+jOvQTvDB9b61Vr3kt/4hXNF9o5rwco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722915630; c=relaxed/simple;
	bh=WsQjKNqa5T7o9h4tmVK9b5oVa9s/iUl6rZ+w+Y2c4sI=;
	h=From:To:Cc:Subject:Date:Message-Id; b=GEKaqPyQbbHra50u1nmQAAmsz2MVrkbWI3bXA/PLDerbIodIehOD4KKKezkXWz/AwiWzAcU+P8a1gKLfipphym4TXKBXiJhHm79e7AMCgGONdfBTYLQEAlNgb6/NVEr/EQcwC0QFDCTDhJqTJk4I1JPmPCJ1Svq82pVgoBia8qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=cKVo84iZ; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3db1270da60so109337b6e.2
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 20:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1722915627; x=1723520427; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oUtLE+GRjq8+ez1aJNrMr18S+I/P61WDmzvbeDjFvn0=;
        b=cKVo84iZbjvkNU9zOPViUSldmPSx5hIx+IdF4mSi6CLi5b4YxqdKMueq2v/0XaE31y
         0OYrHu6Gf74vZP9/u4BAdW7UecB2PRMWnQaOSc5U5cnP0sObEYd3yO//mxvq8/MT+rUW
         r9FYQRnhbUdVJwNU7xbx8k8mPkYanglKt2+3HWDAtIMWNfgnQtYbd/g0Lw4jWvV8UZYt
         +/F9D+auOBejaAlM+Mb9KyYxCzsgrAgqAnEoML917j2terY1lkv+9EGzdMJIgPFAcw4B
         VlRjGro1BVR0esaNQZiXJbrzlcEatvQk/Nc0zSf4olTFOtl4IECDGUZH3YbnLlOLgOQs
         DgDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722915627; x=1723520427;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oUtLE+GRjq8+ez1aJNrMr18S+I/P61WDmzvbeDjFvn0=;
        b=oDHffaf9SE7QWcYzatj0FujIbLwunc8MwMZjAZMVKTGhPRGLVPUGLb6NBnDDdW/SEA
         3qtbyohmnJjUNKvz6SduJiCODVRzpFip2U6tniW1csoFCCUmOUj9sH/RpiV6oLmT4m7h
         Eddtivee8/DEk5Ctacu7HLxUd8WobFBBcjHQNFho2mMdbkOS74PlAvoTI0dUST9L4JoO
         n7kfepgDhrX72DB03CK/8gUMhtTaFQue/ot1l5u4k8Z2DNgtIlUtRYqY8MQXorYt9Hne
         2z3T/NGCOM53cDomTvjINhybqa82GtTtLj8oNGpzhJLpG7LhZ95dqeSmLzQzahQyfzx6
         Tw7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXaPFmnG0M/dlnEtGhFX3kQ8CqFiMUOoqZmjnVRZCQUeUsZVOdgASx1822rd28de+HJhwqFKXP5hEWlunQoLUeogJtpL+3CSJq3sg==
X-Gm-Message-State: AOJu0YyBDrxqN/+sc4DmisA1LdVYW8iJ6kmZ2cdTlPRi2ELImrKtF4Dp
	TE4rgPEEqg4cS7PWMJI+bCD0mK6QEJlXUarXyyU5mGvKUHHlrtHSuQHgmrmrN6w=
X-Google-Smtp-Source: AGHT+IF4ObCPxoLMRKSfEYyb6QRkFWDV2npxxccZHFEYp9HPYvXbumPJc8dx4/W3Ek9myBwG1p+/Dg==
X-Received: by 2002:a05:6808:218f:b0:3da:a793:f111 with SMTP id 5614622812f47-3db557fca8emr19666426b6e.8.1722915626701;
        Mon, 05 Aug 2024 20:40:26 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ec49486sm6134074b3a.55.2024.08.05.20.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 20:40:26 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dianders@chromium.org,
	hsinyi@google.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	jagan@edgeble.ai,
	dmitry.baryshkov@linaro.org,
	jani.nikula@linux.intel.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 0/2] Modify the method of sending "exit sleep
Date: Tue,  6 Aug 2024 11:40:13 +0800
Message-Id: <20240806034015.11884-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This "exit sleep mode" and "set display on" command needs to 
be sent in LP mode, so move "exit sleep mode" and "set display 
on" command to the init() function.

Modify the Melfas panel init code to satisfy the gamma value of 2.2.

Changes between V2 and V1:
- PATCH 1/2: Modify the commit message and subject.
- PATCH 2/2: No changes.
- Link to v1: https://lore.kernel.org/all/20240725083245.12253-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  drm/panel: jd9365da: Move the location of "exit sleep mode" and "set
    display on" commands
  drm/panel: jd9365da: Modify the init code of Melfas

 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 137 +++++++++---------
 1 file changed, 71 insertions(+), 66 deletions(-)

-- 
2.17.1


