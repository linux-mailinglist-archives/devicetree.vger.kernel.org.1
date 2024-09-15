Return-Path: <devicetree+bounces-103068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5939795B5
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 10:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A772E2891C3
	for <lists+devicetree@lfdr.de>; Sun, 15 Sep 2024 08:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389E64965B;
	Sun, 15 Sep 2024 08:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="eLxnXmj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D45D45945
	for <devicetree@vger.kernel.org>; Sun, 15 Sep 2024 08:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726387851; cv=none; b=k6CeMK5JxXBQQHUinbrhpxBxZORMo8+eGANjs6U4kH/S7b4/5S7ef1Z8hlFJAngV1yGf/nafWXcJWQQR8Kzf/3x2MgVGexS+sd8HCGBD+IJ3hANksIiGDezLRnndADIWaDvHMk023+6BfM//x9AJPX31enqGP7OcjXiRzbGH2wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726387851; c=relaxed/simple;
	bh=ppLS5iL+qdtNfGmI67dkrKMyU77zgQ3o/IWThvEsL74=;
	h=From:To:Cc:Subject:Date:Message-Id; b=uJyhdLmhqP2yt47x57DRlTcVauHkyNpRgfl03awjsueIV482dRrWTNZBLOL+1DH68BYVjQsTE7njqLmAzDFClSAfiu+NuGKQt/iWBBfbMnWwgOnqRiktEIXxx6DKw5GWGyGgyDiHxwCfFAw/0bZGfKFBVD1HYedcYgOKi5pNbnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=eLxnXmj+; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-718e25d8b67so579583b3a.3
        for <devicetree@vger.kernel.org>; Sun, 15 Sep 2024 01:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1726387849; x=1726992649; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ZyUzb3Mdq8sdR0kQgQ7St7N5IVlDEl1Zqsb226N1tk=;
        b=eLxnXmj+CHfL8Gl+O4afEVOzIQhSoCAtwlLcmlG8Fhe2Cv1Wm3o/soe3FZYhex9hRY
         SJK+qSU4p7BaONUfx1VtY3w/cQJ50C5JHUDPd40XMee8l3//1Spq3Ut94DOuodDfqSeS
         XyrR2WtsAPdeeM1a4tdySNgF5iaHlZTCwjN4rb7kZSc8XQXcrkl58rzlY8hr5zyoh6u3
         PROyjLkngvmpMohZKeLlVehZKZFqIcG2YYMMgEZwK5mpJxQjUj2dlH9dVkds37x+DK7S
         o7agrz9fPs18hTLlI1ECJ5UNgkdzO/u5/BNvgZfLTHY1ihSWNDwcRfp4q5I73u2J2FUO
         zipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726387849; x=1726992649;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ZyUzb3Mdq8sdR0kQgQ7St7N5IVlDEl1Zqsb226N1tk=;
        b=AJkoaXFZ4JxND4p+1DzPkXBHZnng7PEpiH18ywwSSu3tbZU3w6FUMzNBAHegL95Lns
         MnbAajCx/QrXBypALfrWT60ZY0JXgsAt1voYpMUXgX57+YEYL2SID7s5wrESEae3J1Se
         H6gmwRMJWkmZJuB1UKYmkJzh4ovIV/IZEcMZ0bpiT3q56fQ4f5C7AQQ4PmrMY5L2dCFd
         UIH6IZvJeIY0YKRREioJp4CJNs2j2803MnHD2ho1CaOPP1xjjH0B8UcUwiycg9GgXhdZ
         JPgZsuP6JFpVtEMGWp6RkN15c3Mg4kqdmQuu7wMqwhbI5YQkDMSd/QIt6D2npWoimkb+
         oJKg==
X-Forwarded-Encrypted: i=1; AJvYcCXWRH0Slfari/NDH3f19jH5eya8DM9fq7o0CDbFlYVeww0lg96QL7sH2GZmUYlPdsBUHnbbh3PIwLTC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1NhFWf/dXhOf7ry0mdtjQMou2J8g+NWEcagWa6AiHppiD6vB8
	mLm3SOwFBAdMgJ8OaOX8mE9stwNK0w89nFSWHBFCqTEk+U6H85r5Vj54N1zBgRA=
X-Google-Smtp-Source: AGHT+IFqciYuNSxruvSjidW3BBxJEjz4Bx90EoR3MufHRD+vxKmEg+WY2TuKBqEmigxpyQQrEMr9nA==
X-Received: by 2002:a17:90a:f2cd:b0:2ca:7e67:d11e with SMTP id 98e67ed59e1d1-2db9ff7d413mr5718453a91.2.1726387848770;
        Sun, 15 Sep 2024 01:10:48 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dbcfd26f2csm2662672a91.31.2024.09.15.01.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Sep 2024 01:10:48 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	sam@ravnborg.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] Modify the timing of three panels
Date: Sun, 15 Sep 2024 16:08:28 +0800
Message-Id: <20240915080830.11318-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Modify the power-off sequence of the Kingdisplay/Starry/Melfas panel.

Zhaoxiong Lv (2):
  drm/panel: jd9365da: Modify Kingdisplay and  Melfas panel timing
  drm/panel: boe-th101mb31ig002: Modify Starry panel timing

 drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 11 +++++------
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c     |  6 ------
 2 files changed, 5 insertions(+), 12 deletions(-)

-- 
2.17.1


