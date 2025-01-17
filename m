Return-Path: <devicetree+bounces-139235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09537A14BE3
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:14:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34D8A165635
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 09:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61E261F8ACC;
	Fri, 17 Jan 2025 09:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="C/biuGc3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1FD33D8
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737105290; cv=none; b=roQikL8oUE9EgUdfWj/9QNxW3Cqxl1KKqi2fmw2PCd3X2NZlmvYhGbPzJpQ9W7NaPnoE7NXzemwx3//i8fz6lKSvfwwoWAY2Ilt1cEPAnAau5tsq2QSpeVgVu2vcqIzWUirja4P1A41A9f9PJgKHcFwZkuM3AdmjyID0Z0DzjVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737105290; c=relaxed/simple;
	bh=iywwSilmjvCFXO5GccA3JUM798BpNkw8VFylXHV8ttI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VT9wnNErvhb6+p6+3rQWexc9+QhkM3pqDVr4Gv91rmYK1cisccbCPoTi64+84PjbWtG8V5XC4VCkOzd8uRwL5o2xTSGhL6/RKT9KzexFkeIhehxS1Od122QFYUvZXzpQUXAaaVpJ8XgaPj8b9nKPNEthfwDv96uxZ10Zu+Rn9pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=C/biuGc3; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-216426b0865so32161075ad.0
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 01:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737105288; x=1737710088; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3gWXakbHgB5iMmIuN6yvz2ugNZNRQpwCC7j+Jd2K3sY=;
        b=C/biuGc3w6kSt0PBo+T5feDr0sB5NfSc9kuY67tLRRnmEYVJiXeYnaBDoxNMeGYVyM
         8YRx+V8qenHG9PwTwRvaPfEuUtnGZuHt31b+BWOguRf2VR4k1oOeIB1oIYo9Hf+lvJ8J
         S4AfxQcPY+0RHYQQckYOeE9Z0ZwJukiM72uBuM23Z1F9WHJQGps1cL/K6bXwEG9+ajXl
         k+gPZPdYclXTaJ21kGnccyUMeOHy4wE3CloizZG08OkZzDqQp21aCBHRfZKiX7YHvsJA
         EkecByczAfJDX/j/0mJPgwV5lgcGPFmfhZ+NT54JMjAs2Tq31sucqnbr0GkEfFFc+64G
         gcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737105288; x=1737710088;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3gWXakbHgB5iMmIuN6yvz2ugNZNRQpwCC7j+Jd2K3sY=;
        b=bvXDumMISuWUzVmfjL/sQYkuofPGqrWz6QbB+RnOpNzFXeYJRWDO78wnjHkGOiJatw
         uBmtWxGfFf1jfI14jOUjzl0BsuIq5Tps3a6ytZeJWJJtQtwwUJeDbrS5Ns/tUmQ4bKdt
         b1FRSqmUQusFGT/C7m1It1kTdP55bRpWFOq9XIpY7YT7Nw2fgMEKhT5jqPow7ihjB4ZC
         XsPUIJWW9p3OvYwpeQqE2ffrYHY10GsOnHA2cMFMZViFTAf23j83ZFBmMKxdeLdoOMYN
         ihdtQDXvwVVKUeDyycuEl/4Yeq0uIgKiRCC3HtZ9e8AJmdr25BlEcQ8VObwv+AwGLaG9
         eb8Q==
X-Forwarded-Encrypted: i=1; AJvYcCW5ycXEaLyhuiUKZ1NOX3b05lo02fwIhCaKCCB8Ld5SGyzv8HblFYpI7mb7PxNNt8/GShCEsTzx6pxY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4hd690lLobV4DVc4ZhH+mySJHuAZQ0yC/gVDOlkqhjt4RCRkE
	JMqdOY0JkUJmvQekh1cw6TawYMQ6ZeUtIeSVQHJQH7Go709wy6lqlTmLiRumpx8=
X-Gm-Gg: ASbGncsVKVBsjSP8ZcaHjF9awJ4nMNIw71aYA0uuahNpIOtXklZlVb5Bh3ajzYn7gWP
	ePeMoOeaZHKIvcxNzn4sOaE10QswdWomWohvdZY15tnoeXqEBR8Zq59lIxSbd9P/LcScyD/plm6
	WzV0G3CkkGSXilDlm+YvKgs/UvmLulwCr9CuNKJ2GNKdcXpUcak0yjSvgo9TknUydVazwrWV3cB
	GsrJv2lFeBsism5u6jf9wUoNmozJvp/qJ2t86brd39rxHHUCt5LIP1MMsnxFt7hjfmCb4Dlqnfd
	KuffhkMP/xxO5lF83cHtLcbPd9eK
X-Google-Smtp-Source: AGHT+IGld8+38ABLyxgpL6rBqG8jXM4I/MF9pggqcLYDHPJGhIvYfsKXzvqLOtrAUQ1W6y5Dhp/nUA==
X-Received: by 2002:a05:6a00:2444:b0:725:e37d:cd36 with SMTP id d2e1a72fcca58-72daf929e6cmr3480886b3a.2.1737105288003;
        Fri, 17 Jan 2025 01:14:48 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab815bccsm1421548b3a.56.2025.01.17.01.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 01:14:47 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 0/4] Resend and include all necessary To entries
Date: Fri, 17 Jan 2025 17:14:34 +0800
Message-Id: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix the workflow of the previous email and resend it with all necessary recipient entries

Changes in v3:
- Link to v2: https://lore.kernel.org/all/20250117050410.933312-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/4: Add compatible for KINGDISPLAY KD110N11-51IE
- PATCH 2/4: Add compatible for STARRY 2082109QFH040022-50E
- Link to v1: https://lore.kernel.org/all/20250116130530.3010117-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (4):
  dt-bindings: display: panel: Add compatible for KINGDISPLAY
    KD110N11-51IE
  dt-bindings: display: panel: Add compatible for STARRY
    2082109QFH040022-50E
  drm/panel: boe-tv101wum-nl6: support for kingdisplay-kd110n11-51ie
    MIPI-DSI panel
  drm/panel: boe-tv101wum-nl6: support for starry-2082109qfh040022-50e
    MIPI-DSI panel

 .../display/panel/boe,tv101wum-nl6.yaml       |   4 +
 .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 270 ++++++++++++++++++
 2 files changed, 274 insertions(+)

-- 
2.34.1


