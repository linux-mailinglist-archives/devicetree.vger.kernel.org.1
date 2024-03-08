Return-Path: <devicetree+bounces-49272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73656875B97
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 01:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F38128253A
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 00:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB0C33C30;
	Fri,  8 Mar 2024 00:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="nJEX4FqH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3324C6AD9
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 00:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709858892; cv=none; b=uBX6CnS5uv1ms/5DpEQKdKZLxBJEXnk4cCjajmY09WM2OdFcMSo9BVCZXS90n4lE9LTWRCtvU6Gp6gyrod9Lmz25fbvCe7Rp9E1MD40AI5svcngCMMETivPBQ6ZuHGOrCZIzKv+zDrT8uuJ4uIgLqCujLENPqlpaa5uKAgmbE0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709858892; c=relaxed/simple;
	bh=x7i795oc4v+t1eVSTstgC0hgt1XNgHMNLBknwKT8gn0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OYKB7Z5zXT8pg5x16bEqfcTDgGp60G8bFbFedta16jCCBmjaC735tx7fP6PnQBival/g+xqtQn+d4Cq1gFfJFAwBulAavsCj84U5pAs2sM8HBGg68LWx+QnJEFzrWJBLzidWwwXyJUdbng+n32joMktyH2EmNb6neezoRtlrH9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=nJEX4FqH; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1dc1ff3ba1aso12590615ad.3
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 16:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1709858890; x=1710463690; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cRm8D61etT1wEE9ZqTXPR465tYE154OjnBr2zkyvLfY=;
        b=nJEX4FqHrGjltlxLD73vtmkl0M3EHI+vCIf9xQi9a7zNkf7mMpuncQisYybtaA4M2e
         liyiPN+1QbaQ5Ujiyd4yhXiRBJZ6sctn9YzG0b53dGGkOqYsyIo3TKdo/SoVzCPAoDCY
         wQTP5rOeoaPhedpr7HJ3QWNwF2sGtg/tiOD6vuVb50v7KkGX0Oowy6jUcFWfUYikHNVC
         gjSF6DZD3haaEgGe0gilWykHKhaCI5OmvPG757uas2plUTe+/nUyiiQ7Bt3wTIS8foKj
         sUP0pHvGWz6pibdG+ABBXzKpn1b9B3+8+XEBoC6/jJD92k8X5kxGWM85dIYJ5el6+XoU
         ZPAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709858890; x=1710463690;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cRm8D61etT1wEE9ZqTXPR465tYE154OjnBr2zkyvLfY=;
        b=Y8RhQ57QJiSToygORT/3oET/KIZTPSDB8APrAjLrtIboYm/CI+rZ1OCOWRX2cdnwXG
         Ko9Nj7arIrud55qkUiT1sLZJntc3HWxvB3slJLtwwtgUwBp2s1ooGLfEpw3jvLpcaAV+
         jJvywM/iWxjd1KSo6ef67Hm0OoRV6I/edcjkV+lgdA5gDp7Atx7iMgafbHg++fmboRlI
         XBiN6Z+0KRroO2iwh5AmkfcFU9wuFA2cQ+D3piv1BD3PhvaXrJN0WanaidXJmxxGCriF
         p6LICzn3bMKNnpieohNpwyjSDbi9YtrBtx/YUH08Rp0JvPPQl+lL1swJluYo4w4ADeFE
         R2SA==
X-Forwarded-Encrypted: i=1; AJvYcCWspwtfXjKFqC7CTQIMm5gdfaV5XqlGePoSMA9y+3+LP4YY7vA0jZxgiLdv5dAGwg8b+eV5Q1T5MnobsFJphlsOv4JJD3CCmEfVEw==
X-Gm-Message-State: AOJu0YwmXMlJccAkSWoKKxFSVxm49hEA5HAFcZmY05p36yzeQ+fJX1Ny
	9bfGQsDnMMp6j9Bha5vWMqugxS3SnoosgKeB8p5GSm3nDTV1kfjiV5jquWBrnCo=
X-Google-Smtp-Source: AGHT+IENi1OtAYtCq66iswHj76HX1V9umjMChq2vno/A5VuNp8Xeqzs/a0D0DwP3R6xNOwINfRfFcg==
X-Received: by 2002:a17:902:f705:b0:1dc:a844:a38b with SMTP id h5-20020a170902f70500b001dca844a38bmr10788072plo.67.1709858890503;
        Thu, 07 Mar 2024 16:48:10 -0800 (PST)
Received: from xu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id g12-20020a170902c38c00b001dc819f157dsm15233055plg.251.2024.03.07.16.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 16:48:10 -0800 (PST)
From: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>,
	Douglas Anderson <dianders@chromium.org>
Subject: [V2] drm/panel-edp: Add BOE NT116WHM-N44 and CMN N116BCA-EA1
Date: Fri,  8 Mar 2024 08:47:57 +0800
Message-Id: <20240308004757.1048284-1-xuxinxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the following 2 panels:
1. BOE NT116WHM-N44
2. CMN N116BCA-EA1

Signed-off-by: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

---
Changes in V2:
  - Updated the subject of commit message.
link to V1: https://patchwork.freedesktop.org/patch/msgid/20240307094433.3440431-1-xuxinxiong@huaqin.corp-partner.google.com
---
 drivers/gpu/drm/panel/panel-edp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index a0b6f69b916f..e21b4bb2bb3c 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -1952,6 +1952,7 @@ static const struct edp_panel_entry edp_panels[] = {
 	EDP_PANEL_ENTRY('B', 'O', 'E', 0x0b43, &delay_200_500_e200, "NV140FHM-T09"),
 	EDP_PANEL_ENTRY('B', 'O', 'E', 0x0b56, &delay_200_500_e80, "NT140FHM-N47"),
 	EDP_PANEL_ENTRY('B', 'O', 'E', 0x0c20, &delay_200_500_e80, "NT140FHM-N47"),
+	EDP_PANEL_ENTRY('B', 'O', 'E', 0x0cb6, &delay_200_500_e200, "NT116WHM-N44"),
 
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1132, &delay_200_500_e80_d50, "N116BGE-EA2"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1138, &innolux_n116bca_ea1.delay, "N116BCA-EA1-RC4"),
@@ -1963,6 +1964,7 @@ static const struct edp_panel_entry edp_panels[] = {
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1154, &delay_200_500_e80_d50, "N116BCA-EA2"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1157, &delay_200_500_e80_d50, "N116BGE-EA2"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x115b, &delay_200_500_e80_d50, "N116BCN-EB1"),
+	EDP_PANEL_ENTRY('C', 'M', 'N', 0x115e, &delay_200_500_e80_d50, "N116BCA-EA1"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x1247, &delay_200_500_e80_d50, "N120ACA-EA1"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x142b, &delay_200_500_e80_d50, "N140HCA-EAC"),
 	EDP_PANEL_ENTRY('C', 'M', 'N', 0x144f, &delay_200_500_e80_d50, "N140HGA-EA1"),
-- 
2.40.1


