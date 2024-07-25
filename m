Return-Path: <devicetree+bounces-88022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E30A793BE00
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 10:33:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6D57283B94
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 08:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28F3C176237;
	Thu, 25 Jul 2024 08:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="1nZXEOgt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5024172BAA
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 08:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721896382; cv=none; b=Ea16DJHj7/tRP57rgvk+NyEbE+s3mNs+zguasad7w4k8VPMaP91G196CTOPh0kOJk6gIwfvqtO5P9T5rMK1srZ2u8t9nV4ty5xBaedeB1IE1Wqw4U4sSL41skfOQMx2TRZx9diC+4NWG0m2gavjm2LxQ80Zp9dwZqmVmwSvR1DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721896382; c=relaxed/simple;
	bh=OJl20vm6Vc4udxJOVCzLs1UYtPTRZP8GQLwnGzw6P54=;
	h=From:To:Cc:Subject:Date:Message-Id; b=X+26ZZAmY5ikT3CpeBXHR+WN8Y3kLFYu1iaqmd/t2R8ql8q66V1QjjrqqBM3JoM/CuvAE94mo4QVm+Ryq9Q+qFxm/L19bPspRwoQgG26eQKdot7hKuw38Ud85DY3YuV76vfiNLobXjE/Qo1jUqTq6yXfzaIpI+E7ksJ3W657Aaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=1nZXEOgt; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1fd9e6189d5so5575935ad.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 01:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721896379; x=1722501179; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fLpK4IsZZXZzigL8BlyMfcfMZdXZGh61R5/l1I9Kec4=;
        b=1nZXEOgte9JKFP8ZbsBta9GjSlm23+zBGcbLn/9nV3rZ9YjUOOR7e0rupr5Zt2jkqm
         PfW+JG9mNVCt8mlOZqK45i1vpCSJcUyB/szK0c9Mov0dKLOSDrcxQiYGxIVvnWEsSm6r
         rhLWqKR2iWud03BCwN6SYk71hArcyKTJ4+gcZppoURF26F0lmhFcNIaHm93V7b1ftJPQ
         StxvuVT5PqVzEK3M9hPyCz0a0BroSL2HHy64UboqsTrIjjSDox+0/g+H9JnsWRL/MSCV
         GDtMBVXN+yGokYBvHTd+DK9hDnaR1sDOeUc3e5Cb9hrHxlJQPMsQCcexgVYYx6gXMwks
         NvCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721896379; x=1722501179;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fLpK4IsZZXZzigL8BlyMfcfMZdXZGh61R5/l1I9Kec4=;
        b=wGESveyzTiV0mMBG9mC5axMfV1qmmZ+YjvZDL1CGvXH1avK50CWpJemCharRFsHeoj
         nkEXihCJz3+mUZZB6pUravxzT3PD1nU71Jvq9uoDJLf3A68E9BHbrtLVa1xUQcdybltm
         LFuEf6Ugkf7TsAFJ9rQaeIPhBqAvUGzyA8RP4yZLAvcBqGHJztMZFJbnUCdtaj8ytZHZ
         lM9muwxdmYQZupNEcBG+gztn0MPBOoPCLWN1R7WT3J08DSU49wO3ZxtAQAzMVyw8Jvcy
         R1BVnrnFHHU4ddb3TL5yfY9FDcFEe1FXNIByYcc7ecut6CdDmU4JyEK5iPq8fB4yz+hs
         dC+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWdQ63YTn8aEnhg0XasLGbnn6+O8HdoyVEFKp/P7wsM9nsV2q4OcQ9IaaX6KQlcogmkSxHQAs96AJE46dfBughTPY6xyTS5OO0GJw==
X-Gm-Message-State: AOJu0Yy3lIfQyt4WUU0U5rn5y8CJyzjYEveUZcTrgWddISpbKfggRIK/
	kF1vIj5/kQoTR8fQ2iri0LWCcwQj2k9iC2AisbgOFp6ckuNleMvGan7ttSRiAVE=
X-Google-Smtp-Source: AGHT+IHy/fBf1qd+/nEshN4ReuVn5u49Z5q+4pzr0GkT9vCyfTYvvnbpFYFwUsXuej3/QfbhLNvy9w==
X-Received: by 2002:a17:902:d507:b0:1fd:ae10:7246 with SMTP id d9443c01a7336-1fed923f5d3mr12268465ad.5.1721896379132;
        Thu, 25 Jul 2024 01:32:59 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ff9086sm8595595ad.302.2024.07.25.01.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jul 2024 01:32:58 -0700 (PDT)
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
	jagan@edgeble.ai
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] Modify the method of sending 11/29 commands
Date: Thu, 25 Jul 2024 16:32:43 +0800
Message-Id: <20240725083245.12253-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This 11/29 command needs to be sent in LP mode, so move 11/29 command
to the init() function.

Modify the Melfas panel init code to satisfy the gamma value of 2.2.

Zhaoxiong Lv (2):
  drm/panel: jd9365da: Move the sending location of the 11/29 command
  drm/panel: jd9365da: Modify the init code of Melfas

 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 137 +++++++++---------
 1 file changed, 71 insertions(+), 66 deletions(-)

-- 
2.17.1


