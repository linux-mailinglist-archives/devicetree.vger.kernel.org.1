Return-Path: <devicetree+bounces-91734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED1794A4FF
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 12:05:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8012C1C2089F
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 10:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3511CCB2B;
	Wed,  7 Aug 2024 10:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="XjFIVe77"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C741D175C
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 10:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723025084; cv=none; b=nDpCse9URxEg1w37rgrKBGPwENYQbrNK7fTFPu6XsiWyaC0lWGiKQCk18uuorlDHXxHehFCawj9IR0xgWsVUUnj7b6VZJHcyImxvSTMxWqSqrMMFfhH6zuGkRaX4qdXvFe3AlU19fzkIRfNTbTJ/o0dkbCIXcIoTAATqLZvB2yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723025084; c=relaxed/simple;
	bh=J6qm3DrG39gvppiQ096gSYkLIREaQlXByjw7TGJNa0c=;
	h=From:To:Cc:Subject:Date:Message-Id; b=a5P4x9vHVJHzroG7sxuRK+HxxBf+QMTC9vsf+WYLFy+KHXOzTvtoB4w1u5Ts4DB0sMvckpcGQ57EkauR+INmnR+hQspHHbGJ9VvQmA0B781iZPZakUPq6bB+akWFoQZm3OdMUP3h0OJx6zheLdF6mkYUTA+TQBCqdFE+J/vN2hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=XjFIVe77; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-70d18112b60so547512b3a.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 03:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1723025082; x=1723629882; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgEGMdmx49wb7/1ddWfTMcTpQTAGqkrivezogTjL5Sw=;
        b=XjFIVe77rgi64w6/xwQ1k3/ZHhAOFUohDNzT5HblYHy9yG/ISJRRU1hWHsOmsBzpDK
         FkajAu2kny2kkZhFZ3c0fWFo4m4wCz4dkxhc0kIysjBSD5z85Imw3H60A9zHBKvjEVZH
         Wd5PnC+P0y+Go5wBPKzAU2Ni23YtUxpfBJ7W6y/iRWdMaRNDTk8KltPc/NjCLLbsFQ/d
         880oHfwCWkJ7LlBupeCj31pql6EQci/c7vyxOAkUPjpqQJjSMy2v5H9PNsm9bEwjjzvp
         PxiPXdzLYg8flITFQ6dRX4iDThByY/xebF2TqIz7fmLK82fqJV4GDQ9jhVosu4CBPtK1
         xvEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723025082; x=1723629882;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgEGMdmx49wb7/1ddWfTMcTpQTAGqkrivezogTjL5Sw=;
        b=oWQUsnsZPEIdd3q/5rA2ruufoi+zzWrXo/ueemMlr4NWWsV3BDiTcuCALQ3MgBoF6C
         EFD6Hkxo+1uLkPqYJ3UjIBcH1yqaWXYem7u0NdWWNRjoRaYFTo/6qfg43GgjQyfO6nFW
         2F+FBR6UBTNwJUP0LcCzbJn1Qz1hB8t9Wx8GPJBO8ift/4arMKmEp4bqwOzlt7MCVWrH
         SM+zF8liHzoBiFuQ2vcnsfTz5EaXk9VemvE3ki/JlWfeN06S9kEZAMQphp24OIO/oPUy
         PAy7ISlps882M6rsRoRIxQ81PalQz/UoAYi20ddSrir+ToGMtqOtyA5zsIp/IyVU0LWO
         kKGA==
X-Forwarded-Encrypted: i=1; AJvYcCVCllvwLRAi8CmFXYfFKIYAitpWaSoYyf8Vq/m3JhDxpryD2Mw+0vpoGQeF8sgjE6I4ROLNSfoft7IJmMEJRUyrvN7uHj9RLJPzWQ==
X-Gm-Message-State: AOJu0YyECyYdO6xSV8uUuNwBovuOdIzi1V18Z33h5MId2DbXP7+fyrO5
	PzXBx4/w7p7VcrwCvFknvAwbSw2sWJyD03XLp/Dv/Xsl+Y8qu4oXk7gT2lXcQ3Q=
X-Google-Smtp-Source: AGHT+IH6GVSkW+cm1e7rcncpZyCWMyA/YyxUgGYFYcAZHFnUAsi+fcpr5GbKvybufdDmOfR5fGnhnQ==
X-Received: by 2002:a05:6a00:6f12:b0:710:4e4c:a4ba with SMTP id d2e1a72fcca58-710bc916a6bmr2323815b3a.13.1723025082453;
        Wed, 07 Aug 2024 03:04:42 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ecdff89sm8119248b3a.103.2024.08.07.03.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 03:04:41 -0700 (PDT)
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
Subject: [PATCH v3 0/2] Modify the method of sending "exit sleep
Date: Wed,  7 Aug 2024 18:04:27 +0800
Message-Id: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
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

Changes between V3 and V2:
- PATCH 1/2: Modify the commit message and subject.
- PATCH 2/2: No changes.
- Link to v2: https://lore.kernel.org/all/20240806034015.11884-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
- PATCH 1/2: Modify the commit message and subject.
- PATCH 2/2: No changes.
- Link to v1: https://lore.kernel.org/all/20240725083245.12253-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  drm/panel: jd9365da: Move "exit sleep mode" and "set display on" cmds
  drm/panel: jd9365da: Modify the init code of Melfas

 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 137 +++++++++---------
 1 file changed, 71 insertions(+), 66 deletions(-)

-- 
2.17.1


